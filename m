Subject: Permission denied with NFS shared download and sstate-cache
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 22 Sep 2021 09:47:57 -0700
Message-ID: <3heP.1632329277788400018.EkfO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="g1YcnT2jZ6p61c03tCnD"

--g1YcnT2jZ6p61c03tCnD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I have a server that's holding downloads and sstate-cache.

I have a docker-compose file with nfs server that exposes the dowloads/ssta=
te-cache volume.

When I mount that in my PC and set the path into DL_DIR and SSTATE_DIR, I g=
et this error :

---------------
ERROR: grub-efi-native-2.04-r0 do_configure: Build of do_configure failed
ERROR: grub-efi-native-2.04-r0 do_configure: Traceback (most recent call la=
st):
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", =
line 644, in exec_task
return _exec_task(fn, task, d, quieterr)
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", =
line 618, in _exec_task
event.fire(TaskSucceeded(task, fn, logfn, localdata), localdata)
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", =
line 215, in fire
fire_class_handlers(event, d)
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", =
line 122, in fire_class_handlers
execute_handler(name, handler, event, d)
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", =
line 94, in execute_handler
ret =3D handler(event)
File "/home/talel/Desktop/YoctoWork/sources/poky/meta/classes/sstate.bbclas=
s", line 1094, in sstate_eventhandler
bb.siggen.dump_this_task(sstatepkg + '_' + taskname + ".tgz" ".siginfo", d)
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/siggen.py",=
 line 648, in dump_this_task
bb.parse.siggen.dump_sigtask(fn, task, outfile, "customfile:" + referencest=
amp)
File "/home/talel/Desktop/YoctoWork/sources/poky/meta/lib/oe/sstatesig.py",=
 line 202, in dump_sigtask
super(bb.siggen.SignatureGeneratorBasicHash, self).dump_sigtask(fn, task, s=
tampbase, runtime)
File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/siggen.py",=
 line 362, in dump_sigtask
fd, tmpfile =3D tempfile.mkstemp(dir=3Dos.path.dirname(sigfile), prefix=3D"=
sigtask.")
File "/usr/lib/python3.8/tempfile.py", line 470, in mkstemp
return _mkstemp_inner(dir, prefix, suffix, flags, output_type)
File "/usr/lib/python3.8/tempfile.py", line 389, in _mkstemp_inner
fd =3D _os.open(file, flags, 0o600)
PermissionError: [Errno 13] Permission denied: '/home/talel/Desktop/YoctoSh=
are/tethys-cache/ubuntu-20.04/dd/sigtask.dgjx7ngq'

ERROR: Task (virtual:native:/home/talel/Desktop/YoctoWork/sources/poky/meta=
/recipes-bsp/grub/grub-efi_2.04.bb:do_configure) failed with exit code '1'
---------------

I can modify the mounted folder by creating a directory or a file, but it f=
ails with yocto.

How can I solve the issue?

Thanks,
Talel

--g1YcnT2jZ6p61c03tCnD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I have a server that's holding downloads and sstate-cach=
e.<br /><br />I have a docker-compose file with nfs server that exposes the=
 dowloads/sstate-cache volume.<br /><br />When I mount that in my PC and se=
t the path into DL_DIR and SSTATE_DIR, I get this error :<br /><br />------=
---------<br />ERROR: grub-efi-native-2.04-r0 do_configure: Build of do_con=
figure failed<br />ERROR: grub-efi-native-2.04-r0 do_configure: Traceback (=
most recent call last):<br />&nbsp; File "/home/talel/Desktop/YoctoWork/sou=
rces/poky/bitbake/lib/bb/build.py", line 644, in exec_task<br />&nbsp;&nbsp=
;&nbsp; return _exec_task(fn, task, d, quieterr)<br />&nbsp; File "/home/ta=
lel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", line 618, in _=
exec_task<br />&nbsp;&nbsp;&nbsp; event.fire(TaskSucceeded(task, fn, logfn,=
 localdata), localdata)<br />&nbsp; File "/home/talel/Desktop/YoctoWork/sou=
rces/poky/bitbake/lib/bb/event.py", line 215, in fire<br />&nbsp;&nbsp;&nbs=
p; fire_class_handlers(event, d)<br />&nbsp; File "/home/talel/Desktop/Yoct=
oWork/sources/poky/bitbake/lib/bb/event.py", line 122, in fire_class_handle=
rs<br />&nbsp;&nbsp;&nbsp; execute_handler(name, handler, event, d)<br />&n=
bsp; File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.=
py", line 94, in execute_handler<br />&nbsp;&nbsp;&nbsp; ret =3D handler(ev=
ent)<br />&nbsp; File "/home/talel/Desktop/YoctoWork/sources/poky/meta/clas=
ses/sstate.bbclass", line 1094, in sstate_eventhandler<br />&nbsp;&nbsp;&nb=
sp; bb.siggen.dump_this_task(sstatepkg + '_' + taskname + ".tgz" ".siginfo"=
, d)<br />&nbsp; File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/l=
ib/bb/siggen.py", line 648, in dump_this_task<br />&nbsp;&nbsp;&nbsp; bb.pa=
rse.siggen.dump_sigtask(fn, task, outfile, "customfile:" + referencestamp)<=
br />&nbsp; File "/home/talel/Desktop/YoctoWork/sources/poky/meta/lib/oe/ss=
tatesig.py", line 202, in dump_sigtask<br />&nbsp;&nbsp;&nbsp; super(bb.sig=
gen.SignatureGeneratorBasicHash, self).dump_sigtask(fn, task, stampbase, ru=
ntime)<br />&nbsp; File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake=
/lib/bb/siggen.py", line 362, in dump_sigtask<br />&nbsp;&nbsp;&nbsp; fd, t=
mpfile =3D tempfile.mkstemp(dir=3Dos.path.dirname(sigfile), prefix=3D"sigta=
sk.")<br />&nbsp; File "/usr/lib/python3.8/tempfile.py", line 470, in mkste=
mp<br />&nbsp;&nbsp;&nbsp; return _mkstemp_inner(dir, prefix, suffix, flags=
, output_type)<br />&nbsp; File "/usr/lib/python3.8/tempfile.py", line 389,=
 in _mkstemp_inner<br />&nbsp;&nbsp;&nbsp; fd =3D _os.open(file, flags, 0o6=
00)<br />PermissionError: [Errno 13] Permission denied: '/home/talel/Deskto=
p/YoctoShare/tethys-cache/ubuntu-20.04/dd/sigtask.dgjx7ngq'<br /><br />ERRO=
R: Task (virtual:native:/home/talel/Desktop/YoctoWork/sources/poky/meta/rec=
ipes-bsp/grub/grub-efi_2.04.bb:do_configure) failed with exit code '1'<br /=
>---------------<br /><br />I can modify the mounted folder by creating a d=
irectory or a file, but it fails with yocto.<br /><br />How can I solve the=
 issue?<br /><br />Thanks,<br />Talel

--g1YcnT2jZ6p61c03tCnD--
