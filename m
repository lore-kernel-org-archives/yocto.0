Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237EC77B7F
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 08:00:18 +0000 (UTC)
Subject: Re: Trouble Adding Files to rootfs
To: yocto@lists.yoctoproject.org
From: "Mohammed Hassan" <hassan@blazeautomation.com>
X-Originating-Location: Hyderabad, Telangana, IN (49.205.248.162)
X-Originating-Platform: iPhone Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 May 2023 17:51:28 -0700
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
In-Reply-To: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
Message-ID: <14190.1683075088233795016@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1x2BUW3pYpefxL57rUy7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 08:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59848

--1x2BUW3pYpefxL57rUy7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 3, 2023 at 03:47 AM, Anthony Abboud wrote:

>=20
> HI Yocto Community,
>=20
> I am currently working on build a custom Boot2Qt image to learn about
> How-To's since it's my first time playing with Yocto. I am successfully
> able to build an image for my system; manually inserting and launching my
> Qt application works great.
>=20
> Now I want to include this app and some files into the rootfs of the
> image. I modified the recipe by adding the following lines at the end to
> attempt this:
>=20
> ```
> SRC_URI +=3D " \
> file://qtApp_qml \
> file://startup.sh \
> file://fb.modes \
> "
>=20
>=20

I am also a beginner but try adding S=3D${WORKDIR} and then building.

>=20
>=20
> do_install() {
> install -d ${D}/home/root
> install -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/
>=20
> install -d ${D}/etc/init.d
> install -m 755 ${WORKDIR}/startup.sh ${D}/etc/init.d/
>=20
> install -d ${D}/etc
> install -m 755 ${WORKDIR}/fb.modes ${D}/etc/
> }
>=20
> FILES_${PN} +=3D " \
> /home/root/qtApp_qml \
> /etc/init.d/startup.sh \
> /etc/fb.modes \
> "
> ```
>=20
>=20

After this run bitbake recipe. If there are no errors, then =C2=A0add the l=
ine CORE_IMAGE_EXTRA_APPEND +=3D =E2=80=9C recipe =E2=80=9C in local.conf f=
older.
Bitbake target

>=20
>=20
> But I'm simply unable to get those three files to show up at all in the
> final build (both the folders and files!).
>=20
> I've tried a few variations I saw around but still nothing. Any idea
> what's missing?
>=20
> Thanks!
> Anthony
>=20
>=20

Regards,
Hassan

--1x2BUW3pYpefxL57rUy7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 3, 2023 at 03:47 AM, Anthony Abboud wrote:<br />
<blockquote>
<div dir=3D"ltr">HI Yocto Community,
<div>&nbsp;</div>
<div>I am currently working on build a custom Boot2Qt image to learn about =
How-To's since it's my first time playing with Yocto. I am successfully abl=
e to build an image for my system; manually inserting and launching my Qt a=
pplication works great.</div>
<div>&nbsp;</div>
<div>Now I want to include this app and some files into the rootfs of the i=
mage. I modified the recipe by adding the following lines at the end to att=
empt this:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: 'Helvetica Neue',Helvetica=
,Arial,sans-serif; font-size: 14px; white-space: pre-wrap;">```</span><br s=
tyle=3D"box-sizing: border-box; color: #333333; font-family: 'Helvetica Neu=
e',Helvetica,Arial,sans-serif; font-size: 14px; white-space: pre-wrap;" />S=
RC_URI +=3D " \<br />file://qtApp_qml \<br />file://startup.sh \<br />file:=
//fb.modes \ <br />"</div>
<div>&nbsp;</div>
</div>
</blockquote>
I am also a beginner but try adding S=3D${WORKDIR} and then building.<br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
<div>do_install() {<br />&nbsp; install -d ${D}/home/root<br />&nbsp; insta=
ll -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/<br />&nbsp; <br />&nbsp; ins=
tall -d ${D}/etc/init.d<br />&nbsp; install -m 755 ${WORKDIR}/startup.sh ${=
D}/etc/init.d/<br />&nbsp; <br />&nbsp; install -d ${D}/etc<br />&nbsp; ins=
tall -m 755 ${WORKDIR}/fb.modes ${D}/etc/<br />}<br /><br />FILES_${PN} +=
=3D " \<br />&nbsp; &nbsp; &nbsp; &nbsp; /home/root/qtApp_qml \<br />&nbsp;=
 &nbsp; &nbsp; &nbsp; /etc/init.d/startup.sh \<br />&nbsp; &nbsp; &nbsp; &n=
bsp; /etc/fb.modes \<br />"<br style=3D"box-sizing: border-box; color: #333=
333; font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; font-size: 1=
4px; white-space: pre-wrap;" /><span style=3D"color: #333333; font-family: =
'Helvetica Neue',Helvetica,Arial,sans-serif; font-size: 14px; white-space: =
pre-wrap;">```<br /></span></div>
</div>
</blockquote>
After this run bitbake recipe. If there are no errors, then &nbsp;add the l=
ine CORE_IMAGE_EXTRA_APPEND +=3D &ldquo; recipe &ldquo; in local.conf folde=
r.&nbsp;<br />Bitbake target<br />
<blockquote>
<div dir=3D"ltr">
<div><span style=3D"color: #333333; font-family: 'Helvetica Neue',Helvetica=
,Arial,sans-serif; font-size: 14px; white-space: pre-wrap;">&nbsp;</span></=
div>
<div>
<div>But I'm simply unable to get those three files to show up at all in th=
e final build (both the folders and files!).</div>
<div>&nbsp;</div>
<div>I've tried a few variations I saw around but still nothing. Any idea w=
hat's missing?</div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>Anthony</div>
<div>&nbsp;</div>
</div>
</div>
</blockquote>
Regards,<br />Hassan

--1x2BUW3pYpefxL57rUy7--

