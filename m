Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6CE9E004DD
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 07:05:16 -0800 (PST)
Received: by mail-lb0-f170.google.com with SMTP id w7so328517lbi.15
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 07:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Qk/JszCiX4CXRabJY67r2dvFdZSyhDumI/PJZDDbJgw=;
	b=yoJwe1jNtGXaSxsGOU1oGzYsBSAPkcAHu93aCqRv1zBXU0s4FKARUBQLZ5WIIkBTRY
	H85tbRXDlNumnSnTQmePfQy5wfsw9NPXXcZ/JRnKB7ftbfgAzzQGEh8huKOSISv1PPEI
	chyE4S1GnuPO05IueYsnSn3Y9iXAtU74XnYokfXbVmrfwvSOi9GkUQmb1sp5P3ZKJ1q6
	kfNUzaUuCbG2lsb+smRL6ptsv2/6qKSskgx2nPmd8oSXSa2TdLuvZI7G87yW7y8ZRtCN
	rDvbT7rYzBS5NijxrhZ6iU+sDZf7Z4dmnCezn3IxjQtiUJbKr20QwXcAN4yeh8ZGHVTg
	LD0A==
X-Received: by 10.152.116.109 with SMTP id jv13mr7263352lab.30.1384700715197; 
	Sun, 17 Nov 2013 07:05:15 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Sun, 17 Nov 2013 07:04:55 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311170734160.20107@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<1530936.srmMeFasFY@helios>
	<alpine.DEB.2.02.1311170626370.18680@oneiric>
	<13190111.cIECxPcJYb@helios>
	<alpine.DEB.2.02.1311170734160.20107@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 17 Nov 2013 08:04:55 -0700
X-Google-Sender-Auth: N6hLxzRph8NOO7Dmu_Y7CUPX2XA
Message-ID: <CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: why is "package-management" defined as a PACKAGE_GROUP?
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
X-List-Received-Date: Sun, 17 Nov 2013 15:05:20 -0000
Content-Type: multipart/alternative; boundary=001a11c3675e3fe9a004eb60c28a

--001a11c3675e3fe9a004eb60c28a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 17, 2013 at 5:45 AM, Robert P. J. Day <rpjday@crashcourse.ca>wr=
ote:

>   leaving aside the bug report, i am now hopelessly confused. are you
> saying this line:
>
> PACKAGE_GROUP_package-management =3D "${ROOTFS_PKGMANAGE}"
>
> from core-image.bbclass is currently *necessary* to properly support
> the image feature of "package-management" in core images? i don't see
> how or why. using that logic, you'd also need lines of that form for
> "read-only-rootfs" and "debug-tweaks", which certainly don't exist.
>
>   are you sure you're answering the question i'm asking?
>
> rday
>
> p.s.  i just don't see how that line has any value based on a few
> simple tests i ran. using dora to build for a beagle xm, i can display
> some variables:
>
> $ bb show -r core-image-base IMAGE_FEATURES
> Parsing recipes..done.
> IMAGE_FEATURES=3D"debug-tweaks splash"
> $ bb show -r core-image-base
> EXTRA_IMAGE_FEATURES
> Parsing recipes..done.
> EXTRA_IMAGE_FEATURES=3D"debug-tweaks"
> $
>
> which looks correct. now let's edit my local.conf and change:
>
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
>
> to
>
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks package-management"
>
> save, exit and verify:
>
> $ bb show -r core-image-base IMAGE_FEATURES
> Parsing recipes..done.
> IMAGE_FEATURES=3D"debug-tweaks splash package-management"
> $ bb show -r core-image-base
> EXTRA_IMAGE_FEATURES
> Parsing recipes..done.
> EXTRA_IMAGE_FEATURES=3D"debug-tweaks package-management"
>
> good. and now, let's edit core-image.bbclass and remove the line:
>
> PACKAGE_GROUP_package-management =3D "${ROOTFS_PKGMANAGE}"
>
> save, exit and test:
>
> $ bb show -r core-image-base IMAGE_FEATURES
> Parsing recipes..done.
> IMAGE_FEATURES=3D"debug-tweaks splash package-management"
> $ bb show -r core-image-base
> EXTRA_IMAGE_FEATURES
> Parsing recipes..done.
> EXTRA_IMAGE_FEATURES=3D"debug-tweaks package-management"
> $
>
>   seems like the "package-management" image feature is being picked up
> just fine.
>

This test you did makes no sense. Of course it=E2=80=99s in IMAGE_FEATURES,=
 you put
it there. What you didn=E2=80=99t check is whether ${ROOTFS_PKGMANAGE} ende=
d up
being installed in the image, which it won=E2=80=99t be.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3675e3fe9a004eb60c28a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Nov 17, 2013 at 5:45 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":l0" style=3D"overflow:hidden">=
=C2=A0 leaving aside the bug report, i am now hopelessly confused. are you<=
br>
saying this line:<br>
<br>
PACKAGE_GROUP_package-management =3D &quot;${ROOTFS_PKGMANAGE}&quot;<br>
<br>
from core-image.bbclass is currently *necessary* to properly support<br>
the image feature of &quot;package-management&quot; in core images? i don&#=
39;t see<br>
how or why. using that logic, you&#39;d also need lines of that form for<br=
>
&quot;read-only-rootfs&quot; and &quot;debug-tweaks&quot;, which certainly =
don&#39;t exist.<br>
<br>
=C2=A0 are you sure you&#39;re answering the question i&#39;m asking?<br>
<br>
rday<br>
<br>
p.s. =C2=A0i just don&#39;t see how that line has any value based on a few<=
br>
simple tests i ran. using dora to build for a beagle xm, i can display<br>
some variables:<br>
<br>
$ bb show -r core-image-base IMAGE_FEATURES<br>
Parsing recipes..done.<br>
IMAGE_FEATURES=3D&quot;debug-tweaks splash&quot;<br>
$ bb show -r core-image-base<br>
EXTRA_IMAGE_FEATURES<br>
Parsing recipes..done.<br>
EXTRA_IMAGE_FEATURES=3D&quot;debug-tweaks&quot;<br>
$<br>
<br>
which looks correct. now let&#39;s edit my local.conf and change:<br>
<br>
EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks&quot;<br>
<br>
to<br>
<br>
EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks package-management&quot;<br>
<br>
save, exit and verify:<br>
<br>
$ bb show -r core-image-base IMAGE_FEATURES<br>
Parsing recipes..done.<br>
IMAGE_FEATURES=3D&quot;debug-tweaks splash package-management&quot;<br>
$ bb show -r core-image-base<br>
EXTRA_IMAGE_FEATURES<br>
Parsing recipes..done.<br>
EXTRA_IMAGE_FEATURES=3D&quot;debug-tweaks package-management&quot;<br>
<br>
good. and now, let&#39;s edit core-image.bbclass and remove the line:<br>
<br>
PACKAGE_GROUP_package-management =3D &quot;${ROOTFS_PKGMANAGE}&quot;<br>
<br>
save, exit and test:<br>
<br>
$ bb show -r core-image-base IMAGE_FEATURES<br>
Parsing recipes..done.<br>
IMAGE_FEATURES=3D&quot;debug-tweaks splash package-management&quot;<br>
$ bb show -r core-image-base<br>
EXTRA_IMAGE_FEATURES<br>
Parsing recipes..done.<br>
EXTRA_IMAGE_FEATURES=3D&quot;debug-tweaks package-management&quot;<br>
$<br>
<br>
=C2=A0 seems like the &quot;package-management&quot; image feature is being=
 picked up<br>
just fine.</div></blockquote></div><br>This test you did makes no sense. Of=
 course it=E2=80=99s in IMAGE_FEATURES, you put it there. What you didn=E2=
=80=99t check is whether ${ROOTFS_PKGMANAGE} ended up being installed in th=
e image, which it won=E2=80=99t be.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c3675e3fe9a004eb60c28a--
