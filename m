Return-Path: <kapllaj.elvis@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD16BC4332F
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 21:38:27 +0000 (UTC)
Subject: Re: unable to install nmcli
To: yocto@lists.yoctoproject.org
From: kapllaj.elvis@gmail.com
X-Originating-Location: Padova, Veneto, IT (5.91.17.106)
X-Originating-Platform: Linux Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Nov 2022 14:38:22 -0700
References: <679ffc7e-a0bf-c33b-6509-b304315ffe85@mistywest.com>
In-Reply-To: <679ffc7e-a0bf-c33b-6509-b304315ffe85@mistywest.com>
Message-ID: <27361.1667425102484238162@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bnteoIw6rLqtkOMqwYRJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 21:38:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58473

--bnteoIw6rLqtkOMqwYRJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I don't know it there is a mistake on your message, but you inserted the li=
nes on:

* recipes-packages/images/ *sample-image-cp-lwb5plus*.bb

but then you are searching the tar on image name "

* tmp/deploy/images/machine-name/ *my-image-smarc-rzv2l-* <date>.rootfs.tar=
.bz2

Unless you include/inherit the file sample-image-cp-lwb5plus.bb on my-image=
-smarc-rzv2l.bb file, this wouldn't work.
You should make sure the IMAGE_INSTALL is correctly appended on the image f=
ile you are compiling. To debug this, you could print the IMAGE_INSTALL var=
iable for the image, and see if the nmcli package is there:

bitbake -e sample-image-cp-lwb5plus | grep "IMAGE_INSTALL=3D"

Another way to check what is installed on the image is to open the manifest=
 file on the deploy directory (*.manifest)

--bnteoIw6rLqtkOMqwYRJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br />I don't know it there is a mistake on your message, but you ins=
erted the lines on:</p>
<ul>
<li>recipes-packages/images/<strong>sample-image-cp-lwb5plus</strong>.bb</l=
i>
</ul>
but then you are searching the tar on image name "<br />
<ul>
<li>tmp/deploy/images/machine-name/<strong>my-image-smarc-rzv2l-</strong>&l=
t;date&gt;.rootfs.tar.bz2</li>
</ul>
<p>Unless you include/inherit the file sample-image-cp-lwb5plus.bb on my-im=
age-smarc-rzv2l.bb file, this wouldn't work.<br />You should make sure the =
IMAGE_INSTALL is correctly appended on the image file you are compiling. To=
 debug this, you could print the IMAGE_INSTALL variable for the image, and =
see if the nmcli package is there:</p>
<p>bitbake -e sample-image-cp-lwb5plus | grep "IMAGE_INSTALL=3D"<br /><br /=
>Another way to check what is installed on the image is to open the manifes=
t file on the deploy directory (*.manifest)</p>

--bnteoIw6rLqtkOMqwYRJ--

