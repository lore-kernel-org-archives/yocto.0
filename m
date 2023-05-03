Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F1EC77B75
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 01:06:46 +0000 (UTC)
Subject: Re: Trouble Adding Files to rootfs
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (49.205.248.162)
X-Originating-Platform: iPhone Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 May 2023 18:06:41 -0700
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
In-Reply-To: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
Message-ID: <27463.1683076001431200572@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XLBVPPU0hgEgrKxAymap"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 01:06:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59846

--XLBVPPU0hgEgrKxAymap
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2023 at 03:17 PM, Anthony Abboud wrote:

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

Add S=3D${WORKDIR}

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
> ``
>=20
>=20

Run bitbake recipename
if it builds successfully then add the recipe to local.conf folder by appen=
ding the line CORE_IMAGE_EXTRA_INSTALL +=3D =E2=80=9C recipename =E2=80=9C

Save and run bitbake target

I've tried a few variations I saw around but still nothing. Any idea what's=
 missing?
Can you please elaborate on all variations you have tried.

I am also a beginner on yocto so my additions may not work, but give it a t=
ry and let me know once the files are loaded.

Regards,
Hassan

--XLBVPPU0hgEgrKxAymap
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2023 at 03:17 PM, Anthony Abboud wrote:<br />
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
Add S=3D${WORKDIR}<br />
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
pre-wrap;">``<br /></span></div>
</div>
</blockquote>
<p>Run bitbake recipename<br />if it builds successfully then add the recip=
e to local.conf folder by appending the line CORE_IMAGE_EXTRA_INSTALL +=3D =
&ldquo; recipename &ldquo;</p>
<p>Save and run bitbake target</p>
<div dir=3D"ltr">
<div>I've tried a few variations I saw around but still nothing. Any idea w=
hat's missing?<br />Can you please elaborate on all variations you have tri=
ed.<br /><br /></div>
<div>I am also a beginner on yocto so my additions may not work, but give i=
t a try and let me know once the files are loaded.<br /><br />Regards,<br /=
>Hassan</div>
</div>

--XLBVPPU0hgEgrKxAymap--

