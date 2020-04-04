Subject: Python modules missing #yocto #python
To: yocto@lists.yoctoproject.org
From: zidouhzakaria@gmail.com
X-Originating-Location: Paris, Île-de-France, FR (77.204.198.3)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Apr 2020 20:29:31 -0700
Message-ID: <ov4c.1585970971927964887.70rX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="U2fwWDuPk9LDhhbYx4Qz"

--U2fwWDuPk9LDhhbYx4Qz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to install numpy module in my image using "pipoe". When i bitb=
ake my recipe i got this :

Log data follows:
| DEBUG: Executing shell function do_compile
| ERROR: python3 setup.py build_ext execution failed.
| numpy/random/_bounded_integers.pxd.in has not changed
| Processing numpy/random/_mt19937.pyx
| Traceback (most recent call last):
|=C2=A0=C2=A0 File "path/to/build/work/aarch64-poky-linux/python3-numpy/1.=
18.2-r0/numpy-1.18.2/tools/cythonize.py", line 61, in process_pyx
|=C2=A0=C2=A0=C2=A0=C2=A0 from Cython.Compiler.Version import version as c=
ython_version
| ImportError: No module named 'Cython'

I installed Cython also with pipoe and added : RDEPENDS_${PN} =3D "${PYTHO=
N_PN}-cython" to numpy recipe but nothing changed. Any idea ?

Thank you

--U2fwWDuPk9LDhhbYx4Qz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, <br /><br />I am trying to install numpy module in my image using "p=
ipoe". When i bitbake my recipe i got this : <br /><br />Log data follows:<=
br />| DEBUG: Executing shell function do_compile<br />| ERROR: python3 set=
up.py build_ext execution failed.<br />| numpy/random/_bounded_integers.pxd=
.in has not changed<br />| Processing numpy/random/_mt19937.pyx<br />| Trac=
eback (most recent call last):<br />|&nbsp;&nbsp; File "path/to/build/work/=
aarch64-poky-linux/python3-numpy/1.18.2-r0/numpy-1.18.2/tools/cythonize.py"=
, line 61, in process_pyx<br />|&nbsp;&nbsp;&nbsp;&nbsp; from Cython.Compil=
er.Version import version as cython_version<br />| ImportError: No module n=
amed 'Cython'<br /><br />I installed Cython also with pipoe and added : RDE=
PENDS_${PN} =3D "${PYTHON_PN}-cython" to numpy recipe but nothing changed. =
Any idea ?<br /><br />Thank you

--U2fwWDuPk9LDhhbYx4Qz--
