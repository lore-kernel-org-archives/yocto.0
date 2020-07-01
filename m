Subject: Generating SDK and postinstall intercepts failure #sdk #yocto #toolchain
To: yocto@lists.yoctoproject.org
From: ppayeur01@gmail.com
X-Originating-Location: Québec, Quebec, CA (65.93.10.254)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 16:15:16 -0700
Message-ID: <m2EW.1593645316191080702.G0Ix@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="urLJhyeWnBFyUZv5Wo0A"

--urLJhyeWnBFyUZv5Wo0A
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am having trouble generating the SDK for my image after upgrading from s=
umo to zeus. Here is an extract of my log.do_populate_sdk :

NOTE: Running intercept scripts:
NOTE: > Executing update_gio_module_cache-nativesdk intercept ...
NOTE: + '[' True =3D False -a nativesdk-qemuwrapper-cross '!=3D' nativesdk=
-qemuwrapper-cross ']'
+ qemu-x86_64 -r 3.2.0 -E LD_LIBRARY_PATH=3D/home/ops/next/poky/build/tmp/=
work/k700-poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1.0a/sys=
roots/x86_64-pokysdk-linux/usr/lib:/home/ops/next/poky/build/tmp/work/k700-=
poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1.0a/sysroots/x86_=
64-pokysdk-linux/lib -L /home/ops/next/poky/build/tmp/work/k700-poky-linux/=
dev-image-ops/1.0-r0/sdk/image /home/ops/next/poky/build/tmp/work/k700-poky=
-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1.0a/sysroots/x86_64-p=
okysdk-linux/usr/libexec/nativesdk-gio-querymodules /home/ops/next/poky/bui=
ld/tmp/work/k700-poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1=
.0a/sysroots/x86_64-pokysdk-linux/usr/lib/gio/modules/
NOTE: > Executing update_pixbuf_cache intercept ...
NOTE: Exit code 1. Output:
/home/ops/next/poky/build/tmp/work/k700-poky-linux/dev-image-ops/1.0-r0/in=
tercept_scripts-b57cc07ebc7fd06264e08c306ab25a797a944ba96238037685bb1148afe=
1842d/update_pixbuf_cache: line 11: /home/ops/next/poky/build/tmp/work/k700=
-poky-linux/dev-image-ops/1.0-r0/sdk/image/usr/lib/gdk-pixbuf-2.0/2.10.0/lo=
aders/../loaders.cache: No such file or directory

ERROR: The postinstall intercept hook 'update_pixbuf_cache' failed, detail=
s in /home/ops/next/poky/build/tmp/work/k700-poky-linux/dev-image-ops/1.0-r=
0/temp/log.do_populate_sdk
DEBUG: Python function do_populate_sdk finished

Seems like update_pixbuf_cache cannot find the required loaders files. I a=
m not sure why it looks in /sdk/image directly instead of the target or hos=
t rootfs in /sdk/image/opt/.../sysroots. In fact I am not sure why this pos=
tinstall intercept needs to run at all when generating the SDK.

As a bit of added info, when building my image prior to the SDK I had to m=
anually add gdk-pixbuf to the rootfs via IMAGE_INSTALL for this intercept t=
o work since the loaders files were missing. Also I noticed that some posti=
nst intercepts were already failing before upgrading to zeus (including the=
 update_pixbuf_cache one) but were only generating warnings.

Is it possible to disable this intercept as a quick (dirty) way to be able=
 to build the SDK? In the long term I'd like to find out what causes this i=
ntercept to run and why the required tools are not added automatically to m=
y image.

Any troubleshooting advice is appreciated.

Thank you,

Patrick

--urLJhyeWnBFyUZv5Wo0A
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,&nbsp;</div>
<div>&nbsp;</div>
<div>I am having trouble generating the SDK for my image after upgrading f=
rom sumo to zeus. Here is an extract of my log.do_populate_sdk :<br /><br /=
></div>
<div>
<div>NOTE: Running intercept scripts:</div>
<div>NOTE: &gt; Executing update_gio_module_cache-nativesdk intercept ...<=
/div>
<div>NOTE: + '[' True =3D False -a nativesdk-qemuwrapper-cross '!=3D' nati=
vesdk-qemuwrapper-cross ']'</div>
<div>+ qemu-x86_64 -r 3.2.0 -E LD_LIBRARY_PATH=3D/home/ops/next/poky/build=
/tmp/work/k700-poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1.0=
a/sysroots/x86_64-pokysdk-linux/usr/lib:/home/ops/next/poky/build/tmp/work/=
k700-poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1.0a/sysroots=
/x86_64-pokysdk-linux/lib -L /home/ops/next/poky/build/tmp/work/k700-poky-l=
inux/dev-image-ops/1.0-r0/sdk/image /home/ops/next/poky/build/tmp/work/k700=
-poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dist/1.1.0a/sysroots/x86=
_64-pokysdk-linux/usr/libexec/nativesdk-gio-querymodules /home/ops/next/pok=
y/build/tmp/work/k700-poky-linux/dev-image-ops/1.0-r0/sdk/image/opt/ops-dis=
t/1.1.0a/sysroots/x86_64-pokysdk-linux/usr/lib/gio/modules/</div>
</div>
<div>NOTE: &gt; Executing update_pixbuf_cache intercept ...</div>
<div>NOTE: Exit code 1. Output:</div>
<div>/home/ops/next/poky/build/tmp/work/k700-poky-linux/dev-image-ops/1.0-=
r0/intercept_scripts-b57cc07ebc7fd06264e08c306ab25a797a944ba96238037685bb11=
48afe1842d/update_pixbuf_cache: line 11: /home/ops/next/poky/build/tmp/work=
/k700-poky-linux/dev-image-ops/1.0-r0/sdk/image/usr/lib/gdk-pixbuf-2.0/2.10=
.0/loaders/../loaders.cache: No such file or directory</div>
<div>&nbsp;</div>
<div>ERROR: The postinstall intercept hook 'update_pixbuf_cache' failed, d=
etails in /home/ops/next/poky/build/tmp/work/k700-poky-linux/dev-image-ops/=
1.0-r0/temp/log.do_populate_sdk</div>
<div>DEBUG: Python function do_populate_sdk finished</div>
<div>&nbsp;</div>
<div>Seems like update_pixbuf_cache cannot find the required loaders files=
. I am not sure why it looks in /sdk/image directly instead of the target o=
r host rootfs in /sdk/image/opt/.../sysroots. In fact I am not sure why thi=
s postinstall intercept needs to run at all when generating the SDK.<br /><=
br />As a bit of added info, when building my image prior to the SDK I had =
to manually add gdk-pixbuf to the rootfs via IMAGE_INSTALL for this interce=
pt to work since the loaders files were missing. Also I noticed that some p=
ostinst intercepts were already failing before upgrading to zeus (including=
 the update_pixbuf_cache one) but were only generating warnings.</div>
<div>&nbsp;</div>
<div>Is it possible to disable this intercept as a quick (dirty) way to be=
 able to build the SDK? In the long term I'd like to find out what causes t=
his intercept to run and why the required tools are not added automatically=
 to my image.<br /><br />Any troubleshooting advice is appreciated.</div>
<div>&nbsp;</div>
<div>Thank you,</div>
<div>&nbsp;</div>
<div>Patrick</div>
<div>&nbsp;</div>

--urLJhyeWnBFyUZv5Wo0A--
