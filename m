Subject: devtool deploy-target with strip option: failed to preserve ownership #devtool #dunfell
To: yocto@lists.yoctoproject.org
From: florian.amstutz@scs.ch
X-Originating-Location: Zurich, CH (178.197.232.116)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Jun 2021 03:11:13 -0700
Message-ID: <zJVX.1624529473224576314.Ee3t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PHdFwwze7e11FXWqjXjK"

--PHdFwwze7e11FXWqjXjK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

when I use "devtool deploy-target" with the --strip option in the eSDK, th=
e ownership cannot be preserved during copying the files from "image" to "d=
eploy-target-stripped":

devtool deploy-target --strip --no-host-check --no-preserve less root@192.=
168.7.2
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/less':=
 Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/lesske=
y': Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/lessec=
ho': Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin': Oper=
ation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/=
man1/less.1': Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/=
man1/lesskey.1': Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/=
man1/lessecho.1': Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/=
man1': Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man'=
: Operation not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share': Op=
eration not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr': Operatio=
n not permitted
cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortexa9t2h=
f-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped': Operation no=
t permitted
INFO: Successfully deployed /home/yocto/sdk/tmp/work/cortexa9t2hf-neon-pok=
y-linux-gnueabi/less/551-r0/deploy-target-stripped

On the target, the deployed files have then the ownership of the eSDK user=
:

root@qemu:~# ls -lah /usr/bin/less
-rwx------=C2=A0 =C2=A0 1 1002=C2=A0 =C2=A0 =C2=A01003=C2=A0 =C2=A0 =C2=A0=
 116.7K Jun 24 08:53 /usr/bin/less

"devtool deploy-target" without the --strip option works as expected. The =
files are owned by root.

The eSDK has been built and installed on the same machine (tested on Ubunt=
u 16.04, 18.04 and 20.04).
Used Yocto release: 3.1.8

Thanks in advance for any help!

Best regards,
Florian

--PHdFwwze7e11FXWqjXjK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>when I use "devtool deploy-target" with the --strip option in the eSD=
K, the ownership cannot be preserved during copying the files from "image" =
to "deploy-target-stripped":</div>
<div>&nbsp;</div>
<div>devtool deploy-target --strip --no-host-check --no-preserve less root=
@192.168.7.2</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/l=
ess': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/l=
esskey': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/l=
essecho': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin':=
 Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share=
/man/man1/less.1': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share=
/man/man1/lesskey.1': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share=
/man/man1/lessecho.1': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share=
/man/man1': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share=
/man': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share=
': Operation not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr': Ope=
ration not permitted</div>
<div>cp: failed to preserve ownership for '/home/yocto/sdk/tmp/work/cortex=
a9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped': Operati=
on not permitted</div>
<div>INFO: Successfully deployed /home/yocto/sdk/tmp/work/cortexa9t2hf-neo=
n-poky-linux-gnueabi/less/551-r0/deploy-target-stripped</div>
<div>&nbsp;</div>
<div>On the target, the deployed files have then the ownership of the eSDK=
 user:</div>
<div>&nbsp;</div>
<div>root@qemu:~# ls -lah /usr/bin/less</div>
<div>-rwx------&nbsp; &nbsp; 1 1002&nbsp; &nbsp; &nbsp;1003&nbsp; &nbsp; &=
nbsp; 116.7K Jun 24 08:53 /usr/bin/less</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>"devtool deploy-target" without the --strip option works as expected.=
 The files are owned by root.</div>
<div>&nbsp;</div>
<div>The eSDK has been built and installed on the same machine (tested on =
Ubuntu 16.04, 18.04 and 20.04).</div>
<div>Used Yocto release: 3.1.8</div>
<div>&nbsp;</div>
<div>Thanks in advance for any help!</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Florian</div>

--PHdFwwze7e11FXWqjXjK--
