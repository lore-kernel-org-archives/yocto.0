Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DD9C001DF
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 02:07:15 +0000 (UTC)
Subject: Yocto on Raspberry Pi 3: Error when building image from a machine conf in a new layer
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Aug 2023 19:07:05 -0700
Message-ID: <j9Ww.1691028425262426171.Vazg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W1Vi0UvUJTKtoVmhcYmK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 02:07:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60700

--W1Vi0UvUJTKtoVmhcYmK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am using Yocto to build a image for Raspberry Pi 3. I don't see a specifi=
c group for RaspberryPi and hope to get help from here.

I am using Kirkstone commit and didn't download meta-openembedded as it doe=
sn't say it is needed in README. And it works to build a image.

Now I would like to add a new machine in the my customized layer to make so=
me changes based on the original machine configuration.
So I copied raspberrypi3.conf from meta-raspberrypi to my new layer first.

But bitbake displays errors as below:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
crane@Ubuntu2204:~/yocto-pi/build$ bitbake -k farview-image-base

Loading cache: 100% |######################################################=
###############################| Time: 0:00:00

Loaded 657 entries from dependency cache.

WARNING: /home/crane/yocto-pi/sources/poky/meta/recipes-extended/images/cor=
e-image-testcontroller.bb: Exception during build_dependencies for IMAGE_BO=
OT_FILES

WARNING: /home/crane/yocto-pi/sources/poky/meta/recipes-extended/images/cor=
e-image-testcontroller.bb: Error during finalise of /home/crane/yocto-pi/so=
urces/poky/meta/recipes-extended/images/core-image-testcontroller.bb

ERROR: ExpansionError during parsing /home/crane/yocto-pi/sources/poky/meta=
/recipes-extended/images/core-image-testcontroller.bb

Traceback (most recent call last):

File "Var <IMAGE_BOOT_FILES>", line 1, in <module>

File "/home/crane/yocto-pi/sources/meta-raspberrypi/conf/machine/include/rp=
i-base.inc", line 134, in make_dtb_boot_files(d=3D<bb.data_smart.DataSmart =
object at 0x7f4952f3d9c0>):

> return ' '.join([transform(dtb) for dtb in alldtbs.split(' ') if dtb])

bb.data_smart.ExpansionError: Failure expanding variable IMAGE_BOOT_FILES, =
expression was bootfiles/* ${@make_dtb_boot_files(d)} ${@bb.utils.contains(=
'RPI_USE_U_BOOT', '1', 'zImage u-boot.bin;kernel7.img boot.scr', 'zImage;ke=
rnel7.img', d)} which triggered exception TypeError: sequence item 61: expe=
cted str instance, NoneType found

The variable dependency chain for the failure is: IMAGE_BOOT_FILES

ERROR: Parsing halted due to errors, see error messages above

Summary: There were 2 WARNING messages.

Summary: There were 2 ERROR messages, returning a non-zero exit code.

crane@Ubuntu2204:~/yocto-pi/build$

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

I don't understand why it tries to parse core-image-testcontroller.bb, whic=
h I don't intentionally use at all.
I am afraid that the process to create a new machine is not correct.

Does anyone can help with understanding what is missing here? Or it is not =
the correct way to create a new machine for raspberrypi?

Thanks!
Crane

--W1Vi0UvUJTKtoVmhcYmK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica, sans-=
serif; font-size: 14.3px;">Hello,</span><br style=3D"border: none; margin: =
0px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, s=
ans-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; pa=
dding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-ser=
if; font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Robot=
o, Arial, Helvetica, sans-serif; font-size: 14.3px;">I am using Yocto to bu=
ild a image for Raspberry Pi 3. I don't see a specific group for RaspberryP=
i and hope to get help from here.<br /></span><br style=3D"border: none; ma=
rgin: 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvet=
ica, sans-serif; font-size: 14.3px;" /><span style=3D"color: #555555; font-=
family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;">I am usin=
g Kirkstone commit and didn't download meta-openembedded as it doesn't say =
it is needed in README. And it works to build a image.</span><br style=3D"b=
order: none; margin: 0px; padding: 0px; color: #555555; font-family: Roboto=
, Arial, Helvetica, sans-serif; font-size: 14.3px;" /><br style=3D"border: =
none; margin: 0px; padding: 0px; color: #555555; font-family: Roboto, Arial=
, Helvetica, sans-serif; font-size: 14.3px;" /><span style=3D"color: #55555=
5; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;">N=
ow I would like to add a new machine in the my customized layer to make som=
e changes based on the original machine configuration.</span><br style=3D"b=
order: none; margin: 0px; padding: 0px; color: #555555; font-family: Roboto=
, Arial, Helvetica, sans-serif; font-size: 14.3px;" /><span style=3D"color:=
 #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.=
3px;">So I copied raspberrypi3.conf from meta-raspberrypi to my new layer f=
irst.</span><br style=3D"border: none; margin: 0px; padding: 0px; color: #5=
55555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px=
;" /><br style=3D"border: none; margin: 0px; padding: 0px; color: #555555; =
font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;" /><s=
pan style=3D"color: #555555; font-family: Roboto, Arial, Helvetica, sans-se=
rif; font-size: 14.3px;">But bitbake displays errors as below:</span><br st=
yle=3D"border: none; margin: 0px; padding: 0px; color: #555555; font-family=
: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;" /><br style=3D"=
border: none; margin: 0px; padding: 0px; color: #555555; font-family: Robot=
o, Arial, Helvetica, sans-serif; font-size: 14.3px;" /><span style=3D"color=
: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14=
.3px;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</span><br style=3D"border: none; margin: 0px; padding: 0=
px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font=
-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, Arial=
, Helvetica, sans-serif; font-size: 14.3px;">crane@Ubuntu2204:~/yocto-pi/bu=
ild$ bitbake -k farview-image-base</span><br style=3D"border: none; margin:=
 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, =
sans-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; p=
adding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-se=
rif; font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Robo=
to, Arial, Helvetica, sans-serif; font-size: 14.3px;">Loading cache: 100% |=
###########################################################################=
##########| Time: 0:00:00</span><br style=3D"border: none; margin: 0px; pad=
ding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-seri=
f; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; padding: 0=
px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font=
-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, Arial=
, Helvetica, sans-serif; font-size: 14.3px;">Loaded 657 entries from depend=
ency cache.</span><br style=3D"border: none; margin: 0px; padding: 0px; col=
or: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: =
14.3px;" /><br style=3D"border: none; margin: 0px; padding: 0px; color: #55=
5555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;=
" /><span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica, s=
ans-serif; font-size: 14.3px;">WARNING: /home/crane/yocto-pi/sources/poky/m=
eta/recipes-extended/images/core-image-testcontroller.bb: Exception during =
build_dependencies for IMAGE_BOOT_FILES</span><br style=3D"border: none; ma=
rgin: 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvet=
ica, sans-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0=
px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sa=
ns-serif; font-size: 14.3px;" /><span style=3D"color: #555555; font-family:=
 Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;">WARNING: /home/c=
rane/yocto-pi/sources/poky/meta/recipes-extended/images/core-image-testcont=
roller.bb: Error during finalise of /home/crane/yocto-pi/sources/poky/meta/=
recipes-extended/images/core-image-testcontroller.bb</span><br style=3D"bor=
der: none; margin: 0px; padding: 0px; color: #555555; font-family: Roboto, =
Arial, Helvetica, sans-serif; font-size: 14.3px;" /><br style=3D"border: no=
ne; margin: 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, =
Helvetica, sans-serif; font-size: 14.3px;" /><span style=3D"color: #555555;=
 font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;">ERR=
OR: ExpansionError during parsing /home/crane/yocto-pi/sources/poky/meta/re=
cipes-extended/images/core-image-testcontroller.bb</span><br style=3D"borde=
r: none; margin: 0px; padding: 0px; color: #555555; font-family: Roboto, Ar=
ial, Helvetica, sans-serif; font-size: 14.3px;" /><br style=3D"border: none=
; margin: 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, He=
lvetica, sans-serif; font-size: 14.3px;" /><span style=3D"color: #555555; f=
ont-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;">Trace=
back (most recent call last):</span><br style=3D"border: none; margin: 0px;=
 padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-=
serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; paddin=
g: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; =
font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, A=
rial, Helvetica, sans-serif; font-size: 14.3px;">File "Var &lt;IMAGE_BOOT_F=
ILES&gt;", line 1, in &lt;module&gt;</span><br style=3D"border: none; margi=
n: 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica=
, sans-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px;=
 padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-=
serif; font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Ro=
boto, Arial, Helvetica, sans-serif; font-size: 14.3px;">File "/home/crane/y=
octo-pi/sources/meta-raspberrypi/conf/machine/include/rpi-base.inc", line 1=
34, in make_dtb_boot_files(d=3D&lt;bb.data_smart.DataSmart object at 0x7f49=
52f3d9c0&gt;):</span><br style=3D"border: none; margin: 0px; padding: 0px; =
color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-siz=
e: 14.3px;" /><br style=3D"border: none; margin: 0px; padding: 0px; color: =
#555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3=
px;" /><span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica=
, sans-serif; font-size: 14.3px;">&gt; return ' '.join([transform(dtb) for =
dtb in alldtbs.split(' ') if dtb])</span><br style=3D"border: none; margin:=
 0px; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, =
sans-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; p=
adding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-se=
rif; font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Robo=
to, Arial, Helvetica, sans-serif; font-size: 14.3px;">bb.data_smart.Expansi=
onError: Failure expanding variable IMAGE_BOOT_FILES, expression was bootfi=
les/* ${@make_dtb_boot_files(d)} ${@bb.utils.contains('RPI_USE_U_BOOT', '1'=
, 'zImage u-boot.bin;kernel7.img boot.scr', 'zImage;kernel7.img', d)} which=
 triggered exception TypeError: sequence item 61: expected str instance, No=
neType found</span><br style=3D"border: none; margin: 0px; padding: 0px; co=
lor: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size:=
 14.3px;" /><br style=3D"border: none; margin: 0px; padding: 0px; color: #5=
55555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px=
;" /><span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica, =
sans-serif; font-size: 14.3px;">The variable dependency chain for the failu=
re is: IMAGE_BOOT_FILES</span><br style=3D"border: none; margin: 0px; paddi=
ng: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;=
 font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; padding: 0px=
; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-s=
ize: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, Arial, =
Helvetica, sans-serif; font-size: 14.3px;">ERROR: Parsing halted due to err=
ors, see error messages above</span><br style=3D"border: none; margin: 0px;=
 padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-=
serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; paddin=
g: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; =
font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, A=
rial, Helvetica, sans-serif; font-size: 14.3px;">Summary: There were 2 WARN=
ING messages.</span><br style=3D"border: none; margin: 0px; padding: 0px; c=
olor: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size=
: 14.3px;" /><br style=3D"border: none; margin: 0px; padding: 0px; color: #=
555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3p=
x;" /><span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica,=
 sans-serif; font-size: 14.3px;">Summary: There were 2 ERROR messages, retu=
rning a non-zero exit code.</span><br style=3D"border: none; margin: 0px; p=
adding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-se=
rif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; padding:=
 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; fo=
nt-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, Ari=
al, Helvetica, sans-serif; font-size: 14.3px;">crane@Ubuntu2204:~/yocto-pi/=
build$</span><br style=3D"border: none; margin: 0px; padding: 0px; color: #=
555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3p=
x;" /><br style=3D"border: none; margin: 0px; padding: 0px; color: #555555;=
 font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14.3px;" /><=
span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica, sans-s=
erif; font-size: 14.3px;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br style=3D"border: none; margin: 0px=
; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans=
-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; paddi=
ng: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;=
 font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, =
Arial, Helvetica, sans-serif; font-size: 14.3px;">I don't understand why it=
 tries to parse core-image-testcontroller.bb, which I don't intentionally u=
se at all.</span><br style=3D"border: none; margin: 0px; padding: 0px; colo=
r: #555555; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 1=
4.3px;" /><span style=3D"color: #555555; font-family: Roboto, Arial, Helvet=
ica, sans-serif; font-size: 14.3px;">I am afraid that the process to create=
 a new machine is not correct.</span><br style=3D"border: none; margin: 0px=
; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans=
-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; paddi=
ng: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif;=
 font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto, =
Arial, Helvetica, sans-serif; font-size: 14.3px;">Does anyone can help with=
 understanding what is missing here? Or it is not the correct way to create=
 a new machine for raspberrypi?</span><br style=3D"border: none; margin: 0p=
x; padding: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, san=
s-serif; font-size: 14.3px;" /><br style=3D"border: none; margin: 0px; padd=
ing: 0px; color: #555555; font-family: Roboto, Arial, Helvetica, sans-serif=
; font-size: 14.3px;" /><span style=3D"color: #555555; font-family: Roboto,=
 Arial, Helvetica, sans-serif; font-size: 14.3px;">Thanks!</span><br style=
=3D"border: none; padding: 0px; color: #555555; font-family: Roboto, Arial,=
 Helvetica, sans-serif; font-size: 14.3px; margin: 0px 0px 0px !important 0=
px;" /><span style=3D"color: #555555; font-family: Roboto, Arial, Helvetica=
, sans-serif; font-size: 14.3px;">Crane</span>

--W1Vi0UvUJTKtoVmhcYmK--

