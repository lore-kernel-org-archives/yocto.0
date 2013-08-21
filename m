Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6793E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 18:05:01 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id rr4so1064277pbb.6
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 18:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=AWaWdZHpSMrm+OAgF10tYzhPh6BQh9VjxmSoIu1o0qA=;
	b=noseG82/ljNgD93k6JZxyNg/OvRFvNbzIbLxu2bVvPX7E7MBp0CJrm4vsOMDizmHjZ
	qloGLC+Lz9OsCvSVG2SJ6XmBKRbbCFsZNluuw7037UJpR+kjOzcqLCL13W+rKN0bXBBT
	4sauLFeywXpIikSTgUWzyCnUTlGjeI4mxuuC1ufK6ycCLqxIvBJCDQ0jgO7LVBL/l+ay
	YT0TtIjgCNOMO32SQFcazIW74MfH8NM7mXeTGyvxB/hH4uU8r7o78oOkV35vjEibCMCE
	AyfJqJKk8y1uJK8K+lXMyMwLzzuWsbRdh0WAyPP8nShpjqfrW4prBakCn012eJe0UM7V
	vssw==
X-Received: by 10.66.150.138 with SMTP id ui10mr6715532pab.19.1377047100669;
	Tue, 20 Aug 2013 18:05:00 -0700 (PDT)
Received: from [192.168.1.104] ([94.205.106.26])
	by mx.google.com with ESMTPSA id dg3sm4799609pbc.24.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 18:04:59 -0700 (PDT)
References: <6AEB2375-D87A-413D-878C-EF46956B7D53@gmail.com>
	<CAP71WjxRvEo+DBo41AmspUjgngQbu-AD4nxTfYB9T0kC+0V_wQ@mail.gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <CAP71WjxRvEo+DBo41AmspUjgngQbu-AD4nxTfYB9T0kC+0V_wQ@mail.gmail.com>
Message-Id: <E8E33963-5422-4956-8C67-012CF78FFC38@gmail.com>
X-Mailer: iPad Mail (10B329)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 21 Aug 2013 05:04:55 +0400
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Recipe for building an Ubuntu-12.04 root filesystem
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
X-List-Received-Date: Wed, 21 Aug 2013 01:05:04 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-255C40CC-A4B6-468C-AE6F-F3F9D2E3A8E0
Content-Transfer-Encoding: 7bit

--Apple-Mail-255C40CC-A4B6-468C-AE6F-F3F9D2E3A8E0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Aug 21, 2013, at 4:50 AM, Nicolas Dechesne <nicolas.dechesne@linaro.org> w=
rote:

>=20
> On Wed, Aug 21, 2013 at 2:24 AM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
>> The Ubuntu and Linaro websites don=E2=80=99t document how the actual bina=
ry *.deb packages were created, the just document the process of assembling a=
 rootfs from deb binary package feeds.
>>=20
>> I=E2=80=99m aware that Yocto/OpenEmbedded can be used to generate *.deb p=
ackages, but what isn=E2=80=99t clear to me is how one can go about assembli=
ng a basic Ubuntu rootfs image that will boot into the Ubuntu Unity interfac=
e.
>=20
> the short answer is that Ubuntu is not built with OE/Yocto, so you can't d=
o that. OE/Yocto can help you build a filesystem for your target, that's wha=
t it's here for, but it won't generate an Ubuntu image.
>=20
> it is correct that OE can generate .deb (or .rpm or .ipk) packages, but th=
e generated packages won't be compatible on an Ubuntu system (you won't be a=
ble to install and satisfy dependencies).=20
>=20
> Ubuntu is a 'binary' based distribution. All Ubuntu packages are built on a=
 centralized server (Launchpad), natively on 'actual' hardware. Ubuntu packa=
ges for ARM are indeed build on ARM build slaves hosted by Canonical. Launch=
pad offers 'PPA' (personal package archive) where users can upload their 'so=
urce package' and expect them to be built on Canonical build infrastructure.=
 This is the mechanism that was by at Linaro to build ARM .deb packages. Not=
e that since this is a binary distribution nobody rebuilds the entire image f=
rom scratch, instead packages are built individually whenever there is a cha=
nge in the package, and the process of making an image (like Ubuntu daily im=
age, or Linaro Ubuntu images) is just to 'assemble' existing binary .deb pac=
kages all together.
>=20
> OE/Yocto is a set of 'tools' and recipes to let you create and customize y=
our own distribution. You can create 'rebuild from scratch' distro with OE, o=
r you can even create a 'binary' distribution if you need that.

Is there a way to replicate the build infrastructure locally in my environme=
nt? I have a quad core i.MX6 platform.

Best regards,

Elvis Dowson=

--Apple-Mail-255C40CC-A4B6-468C-AE6F-F3F9D2E3A8E0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>Hi Nicolas,<br></div><div><br>On Aug 2=
1, 2013, at 4:50 AM, Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne=
@linaro.org">nicolas.dechesne@linaro.org</a>&gt; wrote:<br><br></div><blockq=
uote type=3D"cite"><div><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Wed, Aug 21, 2013 at 2:24 AM, Elvis Dowson <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:elvis.dowson@gmail.com" target=3D"_blank">e=
lvis.dowson@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pad=
ding-left:1ex"><div id=3D":2n2" style=3D"overflow:hidden">The Ubuntu and Lin=
aro websites don=E2=80=99t document how the actual binary *.deb packages wer=
e created, the just document the process of assembling a rootfs from deb bin=
ary package feeds.<br>


<br>
I=E2=80=99m aware that Yocto/OpenEmbedded can be used to generate *.deb pack=
ages, but what isn=E2=80=99t clear to me is how one can go about assembling a=
 basic Ubuntu rootfs image that will boot into the Ubuntu Unity interface.<b=
r></div>

</blockquote></div><br>the short answer is that Ubuntu is not built with OE/=
Yocto, so you can't do that. OE/Yocto can help you build a filesystem for yo=
ur target, that's what it's here for, but it won't generate an Ubuntu image.=
</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">it is correc=
t that OE can generate .deb (or .rpm or .ipk) packages, but the generated pa=
ckages won't be compatible on an Ubuntu system (you won't be able to install=
 and satisfy dependencies).&nbsp;</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ubuntu is a '=
binary' based distribution. All Ubuntu packages are built on a centralized s=
erver (Launchpad), natively on 'actual' hardware. Ubuntu packages for ARM ar=
e indeed build on ARM build slaves hosted by Canonical. Launchpad offers 'PP=
A' (personal package archive) where users can upload their 'source package' a=
nd expect them to be built on Canonical build infrastructure. This is the me=
chanism that was by at Linaro to build ARM .deb packages. Note that since th=
is is a binary distribution nobody rebuilds the entire image from scratch, i=
nstead packages are built individually whenever there is a change in the pac=
kage, and the process of making an image (like Ubuntu daily image, or Linaro=
 Ubuntu images) is just to 'assemble' existing binary .deb packages all toge=
ther.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">OE/Yocto is a=
 set of 'tools' and recipes to let you create and customize your own distrib=
ution. You can create 'rebuild from scratch' distro with OE, or you can even=
 create a 'binary' distribution if you need that.</div></div>
</div></blockquote><br><div>Is there a way to replicate the build infrastruc=
ture locally in my environment? I have a quad core i.MX6 platform.</div><div=
><br></div><div>Best regards,</div><div><br></div><div>Elvis Dowson</div></b=
ody></html>=

--Apple-Mail-255C40CC-A4B6-468C-AE6F-F3F9D2E3A8E0--
