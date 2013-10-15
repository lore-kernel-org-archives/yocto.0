Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0E3E01706
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:08:07 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id qd12so11129682ieb.5
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=lA5CQSrzwh8db6NGVfMSgcD0iY5kfzUnBMFGl89UPY0=;
	b=lGCtL3enjaorwZEv0VvT/Ou9aPaAjSXCeGAaEfEAEhMLFlMNgqnaHUY8scytLfonvD
	joLpkNyZczdzLx7Q0LI9SyhpUMDYMnjJ0On9n90BWzxxXNvFT94Td9++6nMLE1vw0lW0
	ek2Q/2ccI+7GVCenznq6+/zTRT4ITWeJ83AX0QAXdivJwcBTbAZnay+ss/D+YVjAaEXL
	kwcntytxuNYOY4BK7U0r4VOCLqafkcwawEYKXbAc7GXRU12JjTAdf/0jiK9dGwbzYqWq
	flgaakf36+wcdcOoqWUhBBGGU7D1x8Jzf8skoVwFqXj8uTrAq7eV4A0FxvZbJydxaB6H
	jCpQ==
X-Received: by 10.50.13.66 with SMTP id f2mr19121605igc.17.1381871286576; Tue,
	15 Oct 2013 14:08:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 15 Oct 2013 14:07:46 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 15 Oct 2013 18:07:46 -0300
Message-ID: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Custom defconfig is not used
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Oct 2013 21:08:08 -0000
Content-Type: multipart/alternative; boundary=089e0118460e29731104e8cdfbb7

--089e0118460e29731104e8cdfbb7
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I created the following bbapend recipe for linux-mainline_3.8.bb (from
meta-beagleboard on dylan branch) for beaglebone.
meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://0019-mine.patch \
             file://defconfig \
             "

But the defconfig and .config files on ${S} and ${WORKDIR} used are from
meta-beagleboad, not from my bbappend.

I tried to follow the instructions to add config fragments on the page
below but it did not worked too.
http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configuration

The strange thing is: My patch is applied but my defconfig, or config
fragment is not used.
I just want to add CONFIG_WATCHDOG_NOWAYOUT=y.

I already did a cleasstate but no success.

Any hints?


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--089e0118460e29731104e8cdfbb7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>I created the following bb=
apend recipe for <a href=3D"http://linux-mainline_3.8.bb">linux-mainline_3.=
8.bb</a> (from meta-beagleboard on dylan branch) for beaglebone.</div><div =
style>

meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:<br></div><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div style>=
<div style>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</div>

</div><div style><div style>SRC_URI +=3D &quot; file://0019-mine.patch \<br=
></div></div><div style><div style>=A0 =A0 =A0 =A0 =A0 =A0 =A0file://defcon=
fig \</div></div><div style><div style>=A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;</d=
iv></div></blockquote><div style>

<div style>But the defconfig and .config files on ${S} and ${WORKDIR} used =
are from meta-beagleboad, not from my bbappend.</div></div><div><br></div><=
div>I tried to follow the instructions to add config fragments on the page =
below but it did not worked too.</div>

<div><a href=3D"http://www.yoctoproject.org/docs/current/kernel-dev/kernel-=
dev.html#changing-the-configuration">http://www.yoctoproject.org/docs/curre=
nt/kernel-dev/kernel-dev.html#changing-the-configuration</a></div><div><br>

</div><div style>The strange thing is: My patch is applied but my defconfig=
, or config fragment is not used.</div><div style>I just want to add=A0CONF=
IG_WATCHDOG_NOWAYOUT=3Dy.</div><div style><br></div><div style>I already di=
d a cleasstate but no=A0success.</div>

<div style><br></div><div style>Any hints?</div><div><br></div><div><br cle=
ar=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*d=
S<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--089e0118460e29731104e8cdfbb7--
