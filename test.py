import numpy as np
import jpype

jpype.startJVM(jpype.getDefaultJVMPath())
a = np.random.random(100).astype(np.byte)
jarr = jpype.JArray(jpype.JByte)(a)
