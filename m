Subject: [zeus] python3-numpy: No module named 'numpy.core._multiarray_umath' #yocto #zeus #python
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Hammam Sousse, Gouvernorat de Sousse, TN (197.240.104.182)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 May 2021 09:14:49 -0700
Message-ID: <W4Wv.1620749689544013808.s8FD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PGRI3vz8PD1tixJht6Kt"

--PGRI3vz8PD1tixJht6Kt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,
I integrated python3-numpy in my image and when trying to import it I get =
this error: (python3 version: 3.7.7)

------
>>> import cv2
OpenCV bindings requires "numpy" package.
Install it via command:
pip install numpy
Traceback (most recent call last):
File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py", line 17, i=
n <module>
from . import multiarray
File "/usr/lib/python3.7/site-packages/numpy/core/multiarray.py", line 14,=
 in <module>
from . import overrides
File "/usr/lib/python3.7/site-packages/numpy/core/overrides.py", line 7, i=
n <module>
from numpy.core._multiarray_umath import (
ModuleNotFoundError: No module named 'numpy.core._multiarray_umath'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
File "<stdin>", line 1, in <module>
File "/usr/lib/python3.7/site-packages/cv2/__init__.py", line 8, in <modul=
e>
import numpy
File "/usr/lib/python3.7/site-packages/numpy/__init__.py", line 142, in <m=
odule>
root@menzu-media:~# python3
Python 3.7.7 (default, Apr 22 2021, 09:42:29)
[GCC 9.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import cv2
OpenCV bindings requires "numpy" package.
Install it via command:
pip install numpy
Traceback (most recent call last):
File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py", line 17, i=
n <module>
from . import multiarray
File "/usr/lib/python3.7/site-packages/numpy/core/multiarray.py", line 14,=
 in <module>
from . import overrides
File "/usr/lib/python3.7/site-packages/numpy/core/overrides.py", line 7, i=
n <module>
from numpy.core._multiarray_umath import (
ModuleNotFoundError: No module named 'numpy.core._multiarray_umath'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
File "<stdin>", line 1, in <module>
File "/usr/lib/python3.7/site-packages/cv2/__init__.py", line 8, in <modul=
e>
import numpy
File "/usr/lib/python3.7/site-packages/numpy/__init__.py", line 142, in <m=
odule>
from . import core
File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py", line 47, i=
n <module>
raise ImportError(msg)
ImportError:

IMPORTANT: PLEASE READ THIS FOR ADVICE ON HOW TO SOLVE THIS ISSUE!

Importing the numpy c-extensions failed.
- Try uninstalling and reinstalling numpy.
- If you have already done that, then:
1. Check that you expected to use Python3.7 from "/usr/bin/python3",
and that you have no directories in your PATH or PYTHONPATH that can
interfere with the Python and numpy version "1.17.0" you're trying to use.
2. If (1) looks fine, you can open a new issue at
https://github.com/numpy/numpy/issues.=C2=A0 Please include details on:
- how you installed Python
- how you installed numpy
- your operating system
- whether or not you have multiple versions of Python installed
- if you built from source, your compiler versions and ideally a build log

- If you're working with a numpy git repository, try `git clean -xdf`
(removes all files not under version control) and rebuild numpy.

Note: this error has many possible causes, so please don't comment on
an existing issue about this - open a new one instead.

Original error was: No module named 'numpy.core._multiarray_umath'
----------

Did any one encounter this issue?

Thanks,
Talel

--PGRI3vz8PD1tixJht6Kt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br />I integrated python3-numpy in my image and when trying to impo=
rt it I get this error: (python3 version: 3.7.7)<br /><br />------<br />
<div>&gt;&gt;&gt; import cv2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;</div>
<div>OpenCV bindings requires "numpy" package.</div>
<div>Install it via command:</div>
<div>&nbsp; &nbsp; pip install numpy</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py"=
, line 17, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from . import multiarray</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/multiarray.p=
y", line 14, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from . import overrides</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/overrides.py=
", line 7, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from numpy.core._multiarray_umath import (</div>
<div>ModuleNotFoundError: No module named 'numpy.core._multiarray_umath'</=
div>
<div>&nbsp;</div>
<div>During handling of the above exception, another exception occurred:</=
div>
<div>&nbsp;</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "&lt;stdin&gt;", line 1, in &lt;module&gt;</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/cv2/__init__.py", line =
8, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; import numpy</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/__init__.py", lin=
e 142, in &lt;module&gt;</div>
<div>root@menzu-media:~# python3</div>
<div>Python 3.7.7 (default, Apr 22 2021, 09:42:29)&nbsp;</div>
<div>[GCC 9.2.0] on linux</div>
<div>Type "help", "copyright", "credits" or "license" for more information=
.</div>
<div>&gt;&gt;&gt; import cv2</div>
<div>OpenCV bindings requires "numpy" package.</div>
<div>Install it via command:</div>
<div>&nbsp; &nbsp; pip install numpy</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py"=
, line 17, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from . import multiarray</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/multiarray.p=
y", line 14, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from . import overrides</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/overrides.py=
", line 7, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from numpy.core._multiarray_umath import (</div>
<div>ModuleNotFoundError: No module named 'numpy.core._multiarray_umath'</=
div>
<div>&nbsp;</div>
<div>During handling of the above exception, another exception occurred:</=
div>
<div>&nbsp;</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "&lt;stdin&gt;", line 1, in &lt;module&gt;</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/cv2/__init__.py", line =
8, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; import numpy</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/__init__.py", lin=
e 142, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; from . import core</div>
<div>&nbsp; File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py"=
, line 47, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; raise ImportError(msg)</div>
<div>ImportError:&nbsp;</div>
<div>&nbsp;</div>
<div>IMPORTANT: PLEASE READ THIS FOR ADVICE ON HOW TO SOLVE THIS ISSUE!</d=
iv>
<div>&nbsp;</div>
<div>Importing the numpy c-extensions failed.</div>
<div>- Try uninstalling and reinstalling numpy.</div>
<div>- If you have already done that, then:</div>
<div>&nbsp; 1. Check that you expected to use Python3.7 from "/usr/bin/pyt=
hon3",</div>
<div>&nbsp; &nbsp; &nbsp;and that you have no directories in your PATH or =
PYTHONPATH that can</div>
<div>&nbsp; &nbsp; &nbsp;interfere with the Python and numpy version "1.17=
.0" you're trying to use.</div>
<div>&nbsp; 2. If (1) looks fine, you can open a new issue at</div>
<div>&nbsp; &nbsp; &nbsp;https://github.com/numpy/numpy/issues.&nbsp; Plea=
se include details on:</div>
<div>&nbsp; &nbsp; &nbsp;- how you installed Python</div>
<div>&nbsp; &nbsp; &nbsp;- how you installed numpy</div>
<div>&nbsp; &nbsp; &nbsp;- your operating system</div>
<div>&nbsp; &nbsp; &nbsp;- whether or not you have multiple versions of Py=
thon installed</div>
<div>&nbsp; &nbsp; &nbsp;- if you built from source, your compiler version=
s and ideally a build log</div>
<div>&nbsp;</div>
<div>- If you're working with a numpy git repository, try `git clean -xdf`=
</div>
<div>&nbsp; (removes all files not under version control) and rebuild nump=
y.</div>
<div>&nbsp;</div>
<div>Note: this error has many possible causes, so please don't comment on=
</div>
<div>an existing issue about this - open a new one instead.</div>
<div>&nbsp;</div>
<div>Original error was: No module named 'numpy.core._multiarray_umath'<br=
 />----------<br /><br />Did any one encounter this issue?<br /><br />Thank=
s,<br />Talel</div>

--PGRI3vz8PD1tixJht6Kt--
