Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3611C77B78
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 08:12:48 +0000 (UTC)
Subject: Re: Trouble Adding Files to rootfs
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 May 2023 01:12:44 -0700
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
In-Reply-To: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
Message-ID: <14190.1683101564095576045@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dKb9ke5bQ3eyjTVVuyWY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 08:12:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59850

--dKb9ke5bQ3eyjTVVuyWY
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
>=20
>=20

Ignore my previous posts Ive made some mistakes there.
1) Create a custom recipe file.

>=20
>=20
> SRC_URI +=3D " \
> file://qtApp_qml \
> file://startup.sh \
> file://fb.modes \
> "
>=20
>=20

Add line S=3D"${WORKDIR}"

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

Run bitbake recipename
If it runs successfully,=C2=A0 then add the below in your local.conf folder=
.
CORE_IMAGE_EXTRA_INSTALL_append +=3D " recipename "
Next bitbake target

>=20
>=20
> But I'm simply unable to get those three files to show up at all in the
> final build (both the folders and files!).
>=20
> I've tried a few variations I saw around but still nothing. Any idea
> what's missing?
>=20

Would it be possible for you to share what changes you have tried. To be ho=
nest I am a beginner too and want too learn more, so I got curious.
Also the above will most probably work, but in case you solve it with any o=
ther method, then please post here for other's reference.

>=20
>=20
>=20
> Thanks!
> Anthony
>=20

Best Regards,
Hassan

>=20
>=20
>

--dKb9ke5bQ3eyjTVVuyWY
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
,Arial,sans-serif; font-size: 14px; white-space: pre-wrap;">```<br /></span=
></div>
</div>
</blockquote>
Ignore my previous posts Ive made some mistakes there.<br />1) Create a cus=
tom recipe file.<br />
<blockquote>
<div dir=3D"ltr">
<div><span style=3D"color: #333333; font-family: 'Helvetica Neue',Helvetica=
,Arial,sans-serif; font-size: 14px; white-space: pre-wrap;"></span><br styl=
e=3D"box-sizing: border-box; color: #333333; font-family: 'Helvetica Neue',=
Helvetica,Arial,sans-serif; font-size: 14px; white-space: pre-wrap;" />SRC_=
URI +=3D " \<br />file://qtApp_qml \<br />file://startup.sh \<br />file://f=
b.modes \ <br />"</div>
<div>&nbsp;</div>
</div>
</blockquote>
Add line S=3D"${WORKDIR}"<br />
<blockquote>
<div dir=3D"ltr">
<div><br />do_install() {<br />&nbsp; install -d ${D}/home/root<br />&nbsp;=
 install -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/<br />&nbsp; <br />&nbs=
p; install -d ${D}/etc/init.d<br />&nbsp; install -m 755 ${WORKDIR}/startup=
.sh ${D}/etc/init.d/<br />&nbsp; <br />&nbsp; install -d ${D}/etc<br />&nbs=
p; install -m 755 ${WORKDIR}/fb.modes ${D}/etc/<br />}<br /><br />FILES_${P=
N} +=3D " \<br />&nbsp; &nbsp; &nbsp; &nbsp; /home/root/qtApp_qml \<br />&n=
bsp; &nbsp; &nbsp; &nbsp; /etc/init.d/startup.sh \<br />&nbsp; &nbsp; &nbsp=
; &nbsp; /etc/fb.modes \<br />"<br style=3D"box-sizing: border-box; color: =
#333333; font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; font-siz=
e: 14px; white-space: pre-wrap;" /><span style=3D"color: #333333; font-fami=
ly: 'Helvetica Neue',Helvetica,Arial,sans-serif; font-size: 14px; white-spa=
ce: pre-wrap;">```</span></div>
<div>
<div>&nbsp;</div>
</div>
</div>
</blockquote>
Run bitbake recipename<br />If it runs successfully,&nbsp; then add the bel=
ow in your local.conf folder.<br />CORE_IMAGE_EXTRA_INSTALL_append +=3D " r=
ecipename "<br />Next bitbake target<br />
<blockquote>
<div dir=3D"ltr">
<div>
<div>&nbsp;</div>
<div>But I'm simply unable to get those three files to show up at all in th=
e final build (both the folders and files!).</div>
<div>&nbsp;</div>
<div>I've tried a few variations I saw around but still nothing. Any idea w=
hat's missing?</div>
</div>
</div>
</blockquote>
Would it be possible for you to share what changes you have tried. To be ho=
nest I am a beginner too and want too learn more, so I got curious.<br />Al=
so the above will most probably work, but in case you solve it with any oth=
er method, then please post here for other's reference.&nbsp;<br />
<blockquote>
<div dir=3D"ltr">
<div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>Anthony</div>
</div>
</div>
</blockquote>
<br />Best Regards,<br />Hassan<br />
<blockquote>
<div dir=3D"ltr">
<div>
<div>&nbsp;</div>
</div>
</div>
</blockquote>

--dKb9ke5bQ3eyjTVVuyWY--

