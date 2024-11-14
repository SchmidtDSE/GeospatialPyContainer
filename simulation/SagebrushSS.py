import pysyncrosim as ps

my_session = ps.Session(location="syncrosim_linux_3_0_9")

print(my_session.packages())

SBSR = ps.library(name="SagebrushSteppeRestoration",
                        session=my_session,
                        packages=["helloworldTimePy", "stsim"])

print(SBSR)
print(SBSR.info)
print(SBSR.datasheets())
