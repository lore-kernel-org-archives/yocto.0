Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 763F5D15DBA
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 16:30:29 +0000 (UTC)
Subject: reading tgz file and uncompress in rootfs
To: yocto@lists.yoctoproject.org
From: umeshyv@gmail.com
X-Originating-Location: Brixton Hill, England, GB (90.216.134.194)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Oct 2024 08:54:23 -0700
Message-ID: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6DOo9YPt1Xd07MBTECCD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 16:30:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64070

--6DOo9YPt1Xd07MBTECCD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I have requirement where recipe file reads set of .tgz files and it sho=
uld store in a location in rootfs and untar them(on freescale board). Can y=
ou please show some pointers.

SUMMARY =3D " Tools"
LICENSE =3D "CLOSED"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRCREV =3D "${AUTOREV}"

SRC_URI =3D "file://tool1.tgz
file://tool2.tgz ( file://tool2.tgz/ )
file://tool3.tgz ( file://tool3.tgz/ )
file://tool4.tgz ( file://tool4.tgz/ ) "

do_install () {
install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools

for file in ${WORKDIR}/.tgz;do

tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/<folder>

done

Alternatively instead of for loop tried below

tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>

But when I build following is the error

DEBUG: Python function extend_recipe_sysroot finished

DEBUG: Executing shell function do_install tar (child): Cannot connect to f=
ile: resolve failed gzip: stdin: unexpected end of file tar: Child returned=
 status 128 tar: Error is not recoverable: exiting now

Can you please suggest to resolve errors and provide solutions

Thanks

--6DOo9YPt1Xd07MBTECCD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">Hi, I have requirement wh=
ere recipe file reads set of .tgz files and it should store in a location i=
n rootfs and untar them(on freescale board). Can you please show some point=
ers.</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">SUMMARY =3D " Tools"<br s=
tyle=3D"outline: none !important;" />LICENSE =3D "CLOSED"</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">FILESEXTRAPATHS_prepend :=
=3D "${THISDIR}/files:"</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">SRCREV =3D "${AUTOREV}"</=
p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">SRC_URI =3D "file://tool1=
.tgz<br class=3D"atl-forced-newline" style=3D"outline: none !important;" />=
<a class=3D"external-link" style=3D"outline: none !important; color: #0052c=
c; text-decoration: var(--aui-link-decoration); cursor: pointer;" href=3D"f=
ile://tool2.tgz/" target=3D"_blank" rel=3D"nofollow noopener">file://tool2.=
tgz</a><br class=3D"atl-forced-newline" style=3D"outline: none !important;"=
 /><a class=3D"external-link" style=3D"outline: none !important; color: #00=
52cc; text-decoration: var(--aui-link-decoration); cursor: pointer;" href=
=3D"file://tool3.tgz/" target=3D"_blank" rel=3D"nofollow noopener">file://t=
ool3.tgz</a><br class=3D"atl-forced-newline" style=3D"outline: none !import=
ant;" /><a class=3D"external-link" style=3D"outline: none !important; color=
: #0052cc; text-decoration: var(--aui-link-decoration); cursor: pointer;" h=
ref=3D"file://tool4.tgz/" target=3D"_blank" rel=3D"nofollow noopener">file:=
//tool4.tgz</a>"</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">do_install () {<br style=
=3D"outline: none !important;" /><tt style=3D"outline: none !important;">in=
stall -d ${IMAGE_ROOTFS}/usr/share/sigma-tools</tt></p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">for file in ${WORKDIR}/.t=
gz;do</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">tar -xvzf $file -C ${IMAG=
E_ROOTFS}/usr/share/&lt;folder&gt;</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">done</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">Alternatively instead of =
for loop tried below</p>
<div class=3D"code panel" style=3D"outline: none !important; margin: 9px 0p=
x; padding: 0px; border: 1px solid #c1c7d0; background: #f4f5f7; font-size:=
 12px; line-height: 1.33333; font-family: monospace; border-radius: 3px; co=
lor: #111111; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial;">
<div class=3D"codeContent panelContent" style=3D"outline: none !important; =
margin: 0px; padding: 9px 12px;">
<pre class=3D"code-none" style=3D"outline: none !important; margin: 0px; pa=
dding: 0px; counter-reset: lines 0; max-height: 30em; overflow: auto; white=
-space: pre-wrap; overflow-wrap: normal;">tar -xvzf file://tool1.tgz -C ${I=
MAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;</pre=
>
</div>
</div>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">But when I build followin=
g is the error</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">DEBUG: Python function ex=
tend_recipe_sysroot finished</p>
<div class=3D"table-wrap" style=3D"outline: none !important; margin: 0px; p=
adding: 0px; color: #111111; font-family: -apple-system, BlinkMacSystemFont=
, 'Segoe UI', Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica=
 Neue', sans-serif; font-size: 14px; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: normal; background-color: #ffffff; text-decoration-thickness: initial; t=
ext-decoration-style: initial; text-decoration-color: initial;">
<table class=3D"confluenceTable" style=3D"outline: none !important; border-=
collapse: collapse; margin: 5px 0px 5px 2px; width: auto; word-break: break=
-all;">
<tbody style=3D"outline: none !important;">
<tr style=3D"outline: none !important;">
<td class=3D"confluenceTd" style=3D"outline: none !important; border: 1px s=
olid #c1c7d0; padding: 3px 4px;">DEBUG: Executing shell function do_install=
</td>
</tr>
<tr style=3D"outline: none !important;">
<td class=3D"confluenceTd" style=3D"outline: none !important; border: 1px s=
olid #c1c7d0; padding: 3px 4px;">tar (child): Cannot connect to file: resol=
ve failed</td>
</tr>
<tr style=3D"outline: none !important;"></tr>
<tr style=3D"outline: none !important;">
<td class=3D"confluenceTd" style=3D"outline: none !important; border: 1px s=
olid #c1c7d0; padding: 3px 4px;">gzip: stdin: unexpected end of file</td>
</tr>
<tr style=3D"outline: none !important;">
<td class=3D"confluenceTd" style=3D"outline: none !important; border: 1px s=
olid #c1c7d0; padding: 3px 4px;">tar: Child returned status 128</td>
</tr>
<tr style=3D"outline: none !important;">
<td class=3D"confluenceTd" style=3D"outline: none !important; border: 1px s=
olid #c1c7d0; padding: 3px 4px;">tar: Error is not recoverable: exiting now=
</td>
</tr>
</tbody>
</table>
</div>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">Can you please suggest to=
 resolve errors and provide solutions</p>
<p style=3D"outline: none !important; margin: 10px 0px 0px; padding: 0px; c=
olor: #111111; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', =
Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-s=
erif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial;">Thanks</p>
</div>

--6DOo9YPt1Xd07MBTECCD--

