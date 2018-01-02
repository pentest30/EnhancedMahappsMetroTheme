using Autofac;
using Restauration.App;
using Restauration.App.Data;
using Restauration.Data;

namespace MetroRibbon
{
    public static class RegistrarObjects
    {
        private static IContainer Container { get; set; }

        public  static void ObjectsRegistrar()
        {
            var builder = new ContainerBuilder();
            builder.RegisterType<FoodDbContext>().As<IDbContext>();
            builder.RegisterGeneric(typeof(EfRepository<>)).As(typeof(IRepository<>)).InstancePerDependency();
            Container = builder.Build();
        }

        public static void ResolveContext()
        {
            Container.Resolve<IDbContext>();
        }

        public static IRepository<T> ResoleRepository<T>() where T : BaseEntity
        {
           return Container.Resolve<IRepository<T>>();
        }
    }
}
