Return-Path: <patryk.seregiet@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B37C3DA49
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 19:21:52 +0000 (UTC)
Subject: Diff / Delta file between two rootfs images #toolchain #yocto
To: yocto@lists.yoctoproject.org
From: "patryk seregiet" <patryk.seregiet@gmail.com>
X-Originating-Location: London, England, GB (212.30.36.63)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Jul 2024 12:21:43 -0700
Message-ID: <6g1V.1722367303704451398.Bigm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WL86Wadaaurk3v3gXltP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 19:21:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63611

--WL86Wadaaurk3v3gXltP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'd like to create a diff/delta file between two rootfs images. I
thought it would be as easy as using diff / rsync with some options,
but it doesn't seem to be possible with just that, at least I couldn't
manage it. So I wrote my own tool and it works, but it requires root
to manipulate the files owned by other UIDs and GIDs (especially
root).

I know there's fakeroot, but my images have files owned by root and
another ordinary users, so I cannot just make everything be owned by
root. Here's the breakdown of my program and what I tried. I'd like
any suggestion on how to achieve this easier and without sudo / root
account.

Oh and btw I am using ext4 images because I am using Mender (the over
the air update software - https://mender.io/ ) and their final "mender
artifact" is just the ext4 rootfs image with some extra metadata. I'd
like to make a system that can produce a delta between these images.
But if that's not possible I can just use the tarball created by Yocto
(I'd just need to keep both or maybe Mender can be configured to use
tarballs... not sure).

Mount ext4 images at dir1 and dir2 (can be done without root
using fuse2fs, but in that case no files can be listed when using
sudo... strange)

For all files in dir1 check if it exists in dir2, if not, write its name
to ".deleted" file

For all files in dir2 check if file exists in dir1. If not, copy it to
output-dir

If both files exist compare them (size, uid, guid, st_mode, finally
calculate and compare a hash)

if any of the above is different, copy it (using cp -a, which preserves
all attributes). Also make all the directories for that file (mkdir -p).

For all directories in output-dir check if it exists in dir2, if yes
then copy all its attributes (stat -> chmod + chown).
This is needed for all the directories we created using mkdir -p

This leaves us with all the files that were different in output-dir
and a list of files to be removed.

Here's what I thought of doing:
Do this in a docker image as a root (without the docker itself having
any privileges). Can't make it work with ext4 being mounted, docker
container can't access it (mountpoint is owned by root).

--WL86Wadaaurk3v3gXltP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-ser=
if; font-size: small; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;">Hello,</span><br style=3D"color: #222222; font-family: Aria=
l, Helvetica, sans-serif; font-size: small; font-style: normal; font-varian=
t-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transf=
orm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; wh=
ite-space: normal; background-color: #ffffff; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial;" /><=
span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small; font-style: normal; font-variant-ligatures: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgroun=
d-color: #ffffff; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial; display: inline !important; floa=
t: none;">I'd like to create a diff/delta file between two rootfs images. I=
</span><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-ser=
if; font-size: small; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;" /><span style=3D"color: #=
222222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-s=
tyle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; white-space: normal; background-color: #ffffff; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial; display: inline !important; float: none;">thought it w=
ould be as easy as using diff / rsync with some options,</span><br style=3D=
"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: smal=
l; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;" /><span style=3D"color: #222222; font-family=
: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: normal; background-color: #ffffff; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
; display: inline !important; float: none;">but it doesn't seem to be possi=
ble with just that, at least I couldn't</span><br style=3D"color: #222222; =
font-family: Arial, Helvetica, sans-serif; font-size: small; font-style: no=
rmal; font-variant-ligatures: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: normal; background-color: #ffffff; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial;" /><span style=3D"color: #222222; font-family: Arial, Helvetic=
a, sans-serif; font-size: small; font-style: normal; font-variant-ligatures=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: =
normal; background-color: #ffffff; text-decoration-thickness: initial; text=
-decoration-style: initial; text-decoration-color: initial; display: inline=
 !important; float: none;">manage it. So I wrote my own tool and it works, =
but it requires root</span><br style=3D"color: #222222; font-family: Arial,=
 Helvetica, sans-serif; font-size: small; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: normal; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial;" /><sp=
an style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font=
-size: small; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-=
color: #ffffff; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial; display: inline !important; float:=
 none;">to manipulate the files owned by other UIDs and GIDs (especially</s=
pan><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif;=
 font-size: small; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial;" /><span style=3D"color: #222=
222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial; display: inline !important; float: none;">root).</span><b=
r style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-=
size: small; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-c=
olor: #ffffff; text-decoration-thickness: initial; text-decoration-style: i=
nitial; text-decoration-color: initial;" /><br style=3D"color: #222222; fon=
t-family: Arial, Helvetica, sans-serif; font-size: small; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, =
sans-serif; font-size: small; font-style: normal; font-variant-ligatures: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: nor=
mal; background-color: #ffffff; text-decoration-thickness: initial; text-de=
coration-style: initial; text-decoration-color: initial; display: inline !i=
mportant; float: none;">I know there's fakeroot, but my images have files o=
wned by root and</span><br style=3D"color: #222222; font-family: Arial, Hel=
vetica, sans-serif; font-size: small; font-style: normal; font-variant-liga=
tures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-sp=
ace: normal; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial;" /><span s=
tyle=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-siz=
e: small; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-colo=
r: #ffffff; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; display: inline !important; float: non=
e;">another ordinary users, so I cannot just make everything be owned by</s=
pan><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif;=
 font-size: small; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial;" /><span style=3D"color: #222=
222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial; display: inline !important; float: none;">root. Here's th=
e breakdown of my program and what I tried. I'd like</span><br style=3D"col=
or: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial;" /><span style=3D"color: #222222; font-family: Ar=
ial, Helvetica, sans-serif; font-size: small; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tran=
sform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
white-space: normal; background-color: #ffffff; text-decoration-thickness: =
initial; text-decoration-style: initial; text-decoration-color: initial; di=
splay: inline !important; float: none;">any suggestion on how to achieve th=
is easier and without sudo / root</span><br style=3D"color: #222222; font-f=
amily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; white-space: normal; background-color: #ffffff; text-decoration-th=
ickness: initial; text-decoration-style: initial; text-decoration-color: in=
itial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, san=
s-serif; font-size: small; font-style: normal; font-variant-ligatures: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial; display: inline !impo=
rtant; float: none;">account.</span><br style=3D"color: #222222; font-famil=
y: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; white-space: normal; background-color: #ffffff; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l;" /><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-seri=
f; font-size: small; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial;" /><span style=3D"color: #2=
22222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial; display: inline !important; float: none;">Oh and btw I =
am using ext4 images because I am using Mender (the over</span><br style=3D=
"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: smal=
l; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;" /><span style=3D"color: #222222; font-family=
: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: normal; background-color: #ffffff; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
; display: inline !important; float: none;">the air update software -<span>=
&nbsp;</span></span><a style=3D"color: #1155cc; font-family: Arial, Helveti=
ca, sans-serif; font-size: small; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; background-color: #ffffff;" href=3D"https://mender.io/" target=3D"=
_blank" rel=3D"noopener noreferrer" data-saferedirecturl=3D"https://www.goo=
gle.com/url?q=3Dhttps://mender.io/&amp;source=3Dgmail&amp;ust=3D17224530097=
77000&amp;usg=3DAOvVaw2cw6bmmwFmHS_JqPliaOMV">https://mender.io/</a><span s=
tyle=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-siz=
e: small; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-colo=
r: #ffffff; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; display: inline !important; float: non=
e;">) and their final "mender</span><br style=3D"color: #222222; font-famil=
y: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; white-space: normal; background-color: #ffffff; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-se=
rif; font-size: small; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; ba=
ckground-color: #ffffff; text-decoration-thickness: initial; text-decoratio=
n-style: initial; text-decoration-color: initial; display: inline !importan=
t; float: none;">artifact" is just the ext4 rootfs image with some extra me=
tadata. I'd</span><br style=3D"color: #222222; font-family: Arial, Helvetic=
a, sans-serif; font-size: small; font-style: normal; font-variant-ligatures=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: =
normal; background-color: #ffffff; text-decoration-thickness: initial; text=
-decoration-style: initial; text-decoration-color: initial;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial; display: inline !important; float: none;">=
like to make a system that can produce a delta between these images.</span>=
<br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fon=
t-size: small; font-style: normal; font-variant-ligatures: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background=
-color: #ffffff; text-decoration-thickness: initial; text-decoration-style:=
 initial; text-decoration-color: initial;" /><span style=3D"color: #222222;=
 font-family: Arial, Helvetica, sans-serif; font-size: small; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; display: inline !important; float: none;">But if that's not p=
ossible I can just use the tarball created by Yocto</span><br style=3D"colo=
r: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small; fo=
nt-style: normal; font-variant-ligatures: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; =
text-decoration-thickness: initial; text-decoration-style: initial; text-de=
coration-color: initial;" /><span style=3D"color: #222222; font-family: Ari=
al, Helvetica, sans-serif; font-size: small; font-style: normal; font-varia=
nt-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-s=
pacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: normal; background-color: #ffffff; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; dis=
play: inline !important; float: none;">(I'd just need to keep both or maybe=
 Mender can be configured to use</span><br style=3D"color: #222222; font-fa=
mily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; white-space: normal; background-color: #ffffff; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans=
-serif; font-size: small; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;=
 background-color: #ffffff; text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial; display: inline !impor=
tant; float: none;">tarballs... not sure).</span><br style=3D"color: #22222=
2; font-family: Arial, Helvetica, sans-serif; font-size: small; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; white-space: normal; background-color: #ffffff; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoration-=
color: initial;" /><br style=3D"color: #222222; font-family: Arial, Helveti=
ca, sans-serif; font-size: small; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; background-color: #ffffff; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial; display: inline !important; float: none;">=
Mount ext4 images at dir1 and dir2 (can be done without root</span><br styl=
e=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: =
small; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: =
#ffffff; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial;" /><span style=3D"color: #222222; font-fa=
mily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; white-space: normal; background-color: #ffffff; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial; display: inline !important; float: none;">using fuse2fs, but in that =
case no files can be listed when using</span><br style=3D"color: #222222; f=
ont-family: Arial, Helvetica, sans-serif; font-size: small; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: normal; background-color: #ffffff; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica=
, sans-serif; font-size: small; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #ffffff; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial; display: inline =
!important; float: none;">sudo... strange)</span><br style=3D"color: #22222=
2; font-family: Arial, Helvetica, sans-serif; font-size: small; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; white-space: normal; background-color: #ffffff; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoration-=
color: initial;" /><br style=3D"color: #222222; font-family: Arial, Helveti=
ca, sans-serif; font-size: small; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; background-color: #ffffff; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial; display: inline !important; float: none;">=
For all files in dir1 check if it exists in dir2, if not, write its name</s=
pan><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif;=
 font-size: small; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial;" /><span style=3D"color: #222=
222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial; display: inline !important; float: none;">to ".deleted" f=
ile</span><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-=
serif; font-size: small; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #ffffff; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial;" /><br style=3D"color: =
#222222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #ffffff; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial;" /><span style=3D"color: #222222; font-family: Arial,=
 Helvetica, sans-serif; font-size: small; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: normal; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial; displa=
y: inline !important; float: none;">For all files in dir2 check if file exi=
sts in dir1. If not, copy it to</span><br style=3D"color: #222222; font-fam=
ily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: normal; background-color: #ffffff; text-decoration-thic=
kness: initial; text-decoration-style: initial; text-decoration-color: init=
ial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-=
serif; font-size: small; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #ffffff; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;">output-dir</span><br style=3D"color: #222222; font-famil=
y: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; white-space: normal; background-color: #ffffff; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l;" /><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-seri=
f; font-size: small; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial;" /><span style=3D"color: #2=
22222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial; display: inline !important; float: none;">If both files=
 exist compare them (size, uid, guid, st_mode, finally</span><br style=3D"c=
olor: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; white-space: normal; background-color: #fffff=
f; text-decoration-thickness: initial; text-decoration-style: initial; text=
-decoration-color: initial;" /><span style=3D"color: #222222; font-family: =
Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: normal; background-color: #ffffff; text-decoration-thickness=
: initial; text-decoration-style: initial; text-decoration-color: initial; =
display: inline !important; float: none;">calculate and compare a hash)</sp=
an><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; =
font-size: small; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #ffffff; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;" /><br style=3D"color: #222222=
; font-family: Arial, Helvetica, sans-serif; font-size: small; font-style: =
normal; font-variant-ligatures: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; white-space: normal; background-color: #ffffff; text-decor=
ation-thickness: initial; text-decoration-style: initial; text-decoration-c=
olor: initial;" /><span style=3D"color: #222222; font-family: Arial, Helvet=
ica, sans-serif; font-size: small; font-style: normal; font-variant-ligatur=
es: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space=
: normal; background-color: #ffffff; text-decoration-thickness: initial; te=
xt-decoration-style: initial; text-decoration-color: initial; display: inli=
ne !important; float: none;">if any of the above is different, copy it (usi=
ng cp -a, which preserves</span><br style=3D"color: #222222; font-family: A=
rial, Helvetica, sans-serif; font-size: small; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 white-space: normal; background-color: #ffffff; text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial;" =
/><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif;=
 font-size: small; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">all attributes). Also make all the directories for that file (=
mkdir -p).</span><br style=3D"color: #222222; font-family: Arial, Helvetica=
, sans-serif; font-size: small; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #ffffff; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial;" /><br style=3D"=
color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffff=
ff; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial;" /><span style=3D"color: #222222; font-family:=
 Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font-v=
ariant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lett=
er-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
 display: inline !important; float: none;">For all directories in output-di=
r check if it exists in dir2, if yes</span><br style=3D"color: #222222; fon=
t-family: Arial, Helvetica, sans-serif; font-size: small; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: normal; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, =
sans-serif; font-size: small; font-style: normal; font-variant-ligatures: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: nor=
mal; background-color: #ffffff; text-decoration-thickness: initial; text-de=
coration-style: initial; text-decoration-color: initial; display: inline !i=
mportant; float: none;">then copy all its attributes (stat -&gt; chmod + ch=
own).</span><br style=3D"color: #222222; font-family: Arial, Helvetica, san=
s-serif; font-size: small; font-style: normal; font-variant-ligatures: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial;" /><span style=3D"col=
or: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial; display: inline !important; float: none;">This is=
 needed for all the directories we created using mkdir -p</span><br style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial;" /><br style=3D"color: #222222; font-famil=
y: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; white-space: normal; background-color: #ffffff; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-se=
rif; font-size: small; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; ba=
ckground-color: #ffffff; text-decoration-thickness: initial; text-decoratio=
n-style: initial; text-decoration-color: initial; display: inline !importan=
t; float: none;">This leaves us with all the files that were different in o=
utput-dir</span><br style=3D"color: #222222; font-family: Arial, Helvetica,=
 sans-serif; font-size: small; font-style: normal; font-variant-ligatures: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: no=
rmal; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial;" /><span style=3D=
"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: smal=
l; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial; display: inline !important; float: none;">and=
 a list of files to be removed.</span><br style=3D"color: #222222; font-fam=
ily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: normal; background-color: #ffffff; text-decoration-thic=
kness: initial; text-decoration-style: initial; text-decoration-color: init=
ial;" /><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-se=
rif; font-size: small; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; ba=
ckground-color: #ffffff; text-decoration-thickness: initial; text-decoratio=
n-style: initial; text-decoration-color: initial;" /><span style=3D"color: =
#222222; font-family: Arial, Helvetica, sans-serif; font-size: small; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #ffffff; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; display: inline !important; float: none;">Here's what=
 I thought of doing:</span><br style=3D"color: #222222; font-family: Arial,=
 Helvetica, sans-serif; font-size: small; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: normal; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial;" /><sp=
an style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font=
-size: small; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-=
color: #ffffff; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial; display: inline !important; float:=
 none;">Do this in a docker image as a root (without the docker itself havi=
ng</span><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-s=
erif; font-size: small; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; b=
ackground-color: #ffffff; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial;" /><span style=3D"color:=
 #222222; font-family: Arial, Helvetica, sans-serif; font-size: small; font=
-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; te=
xt-decoration-thickness: initial; text-decoration-style: initial; text-deco=
ration-color: initial; display: inline !important; float: none;">any privil=
eges). Can't make it work with ext4 being mounted, docker</span><br style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial;" /><span style=3D"color: #222222; font-fam=
ily: Arial, Helvetica, sans-serif; font-size: small; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: normal; background-color: #ffffff; text-decoration-thic=
kness: initial; text-decoration-style: initial; text-decoration-color: init=
ial; display: inline !important; float: none;">container can't access it (m=
ountpoint is owned by root).</span></div>

--WL86Wadaaurk3v3gXltP--

