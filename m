Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D78C25B7A
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 09:14:33 +0000 (UTC)
Subject: Getting error when i build an image after starting the toaster
To: yocto@lists.yoctoproject.org
From: dhanyalakshmi.k@priyarajaelectronics.com
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (51.158.166.131)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 May 2024 02:14:32 -0700
Message-ID: <0Ha1.1715937272379372240.3Su9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bukfbsp4TCqdC5ZsesVp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 09:14:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63129

--bukfbsp4TCqdC5ZsesVp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm Dhanya,currently working to build an image using toaster. But the image=
 is getting build successfully but at the last in toaster message i'm getti=
ng the error as " *ERROR: Target_File matching query does not exist*."
The steps i followed is:
$ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential=
 chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutil=
s iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python=
3-subunit mesa-common-dev zstd liblz4-tool file locales

$ sudo locale-gen en_US.UTF-8

$ mkdir distro
$ cd distro
$ repo init -u https://github.com/nxp-qoriq/yocto-sdk.git -b mickledore -m =
ls-6.1.55-2.2.0_distro.xml
$ repo sync

$ source =C2=A0distro-setup-env -m ls1012afrwy
$ source toaster start
$ bitbake ls-image-main

This above steps i followed because it for my layerscape board.But i tried =
to build core-image-minimal from poky directory as well but still i got the=
 same error.

Error is:
ERROR: Target_File matching query does not exist.
Traceback (most recent call last):
File "/home/dhanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/toasterui.p=
y", line 408, in main
buildinfohelper.store_target_package_data(event)
File "/home/dhanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/buildinfohe=
lper.py", line 1364, in store_target_package_data
self.orm_wrapper.save_target_file_information(self.internal_state['build'],=
 target, filedata)
File "/home/dhanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/buildinfohe=
lper.py", line 562, in save_target_file_information
parent_obj =3D Target_File.objects.get(target =3D target_obj, path =3D pare=
nt_path, inodetype =3D Target_File.ITYPE_DIRECTORY)
File "/home/dhanyalakshmi/.local/lib/python3.10/site-packages/django/db/mod=
els/manager.py", line 85, in manager_method
return getattr(self.get_queryset(), name)(*args, **kwargs)
File "/home/dhanyalakshmi/.local/lib/python3.10/site-packages/django/db/mod=
els/query.py", line 435, in get
raise self.model.DoesNotExist(
orm.models.Target_File.DoesNotExist: Target_File matching query does not ex=
ist.

ERROR: expected string or bytes-like object
Traceback (most recent call last):
File "/home/dhanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/toasterui.p=
y", line 362, in main
buildinfohelper.scan_image_artifacts()
File "/home/dhanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/buildinfohe=
lper.py", line 1782, in scan_image_artifacts
real_image_name =3D re.sub(r'^defaultpkgname', image_target.target,
File "/usr/lib/python3.10/re.py", line 209, in sub
return _compile(pattern, flags).sub(repl, string, count)
TypeError: expected string or bytes-like object

WARNING: Return value is 2

I'm unable to understand this,like is a problem with toaster itself? Is the=
ir anything that i could do to resolve this issue. Does this relates to ima=
ge not getting build successfully?
Please help me to resolve this
Hoping for the reply.
Thank You.

--bukfbsp4TCqdC5ZsesVp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I'm Dhanya,currently working to build an image using toaster. B=
ut the image is getting build successfully but at the last in toaster messa=
ge i'm getting the error as "<strong>ERROR: Target_File matching query does=
 not exist</strong>."<br />The steps i followed is:<br />
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">$ s=
udo apt install gawk wget git diffstat unzip texinfo gcc build-essential ch=
rpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils i=
putils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python3-s=
ubunit mesa-common-dev zstd liblz4-tool file locales&nbsp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">&nb=
sp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">$ s=
udo locale-gen en_US.UTF-8</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">&nb=
sp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">$ m=
kdir distro</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">$ c=
d distro<br />$ repo init -u <a class=3D"moz-txt-link-freetext" href=3D"htt=
ps://github.com/nxp-qoriq/yocto-sdk.git">https://github.com/nxp-qoriq/yocto=
-sdk.git</a> -b mickledore -m ls-6.1.55-2.2.0_distro.xml<br />$ repo sync</=
div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">&nb=
sp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">$ s=
ource &nbsp;distro-setup-env -m&nbsp;<span style=3D"background-color: trans=
parent; font-family: ui-monospace,SFMono-Regular,'SF Mono',Menlo,Consolas,'=
Liberation Mono',monospace; font-size: 13.6px; color: #1f2328;">ls1012afrwy=
<br /></span>$ source toaster start</div>
<div class=3D"gmail_default" style=3D"font-family: verdana,sans-serif;">$ b=
itbake ls-image-main<br /><br /><span style=3D"background-color: transparen=
t; font-family: ui-monospace,SFMono-Regular,'SF Mono',Menlo,Consolas,'Liber=
ation Mono',monospace; font-size: 13.6px; color: #1f2328;">This above steps=
 i followed because it for my layerscape board.But i tried to build core-im=
age-minimal from poky directory as well but still i got the same error.<br =
/><br />Error is:<br />ERROR: Target_File matching query does not exist.<br=
 />Traceback (most recent call last):<br />&nbsp; File "/home/dhanyalakshmi=
/distro/sources/poky/bitbake/lib/bb/ui/toasterui.py", line 408, in main<br =
/>&nbsp; &nbsp; buildinfohelper.store_target_package_data(event)<br />&nbsp=
; File "/home/dhanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/buildinfo=
helper.py", line 1364, in store_target_package_data<br />&nbsp; &nbsp; self=
.orm_wrapper.save_target_file_information(self.internal_state['build'], tar=
get, filedata)<br />&nbsp; File "/home/dhanyalakshmi/distro/sources/poky/bi=
tbake/lib/bb/ui/buildinfohelper.py", line 562, in save_target_file_informat=
ion<br />&nbsp; &nbsp; parent_obj =3D Target_File.objects.get(target =3D ta=
rget_obj, path =3D parent_path, inodetype =3D Target_File.ITYPE_DIRECTORY)<=
br />&nbsp; File "/home/dhanyalakshmi/.local/lib/python3.10/site-packages/d=
jango/db/models/manager.py", line 85, in manager_method<br />&nbsp; &nbsp; =
return getattr(self.get_queryset(), name)(*args, **kwargs)<br />&nbsp; File=
 "/home/dhanyalakshmi/.local/lib/python3.10/site-packages/django/db/models/=
query.py", line 435, in get<br />&nbsp; &nbsp; raise self.model.DoesNotExis=
t(<br />orm.models.Target_File.DoesNotExist: Target_File matching query doe=
s not exist.<br /><br />ERROR: expected string or bytes-like object<br />Tr=
aceback (most recent call last):<br />&nbsp; File "/home/dhanyalakshmi/dist=
ro/sources/poky/bitbake/lib/bb/ui/toasterui.py", line 362, in main<br />&nb=
sp; &nbsp; buildinfohelper.scan_image_artifacts()<br />&nbsp; File "/home/d=
hanyalakshmi/distro/sources/poky/bitbake/lib/bb/ui/buildinfohelper.py", lin=
e 1782, in scan_image_artifacts<br />&nbsp; &nbsp; real_image_name =3D re.s=
ub(r'^defaultpkgname', image_target.target,<br />&nbsp; File "/usr/lib/pyth=
on3.10/re.py", line 209, in sub<br />&nbsp; &nbsp; return _compile(pattern,=
 flags).sub(repl, string, count)<br />TypeError: expected string or bytes-l=
ike object<br /><br />WARNING: Return value is 2<br /><br />I'm unable to u=
nderstand this,like is a problem with toaster itself? Is their anything tha=
t i could do to resolve this issue. Does this relates to image not getting =
build successfully?&nbsp;<br />Please help me to resolve this&nbsp;<br />Ho=
ping for the reply.<br />Thank You.<br /></span></div>

--bukfbsp4TCqdC5ZsesVp--

