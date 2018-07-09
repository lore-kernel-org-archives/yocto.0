Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1949DE0086E; Mon,  9 Jul 2018 02:18:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 101D8E0086E
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 02:18:32 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id q11-v6so8993729oic.12
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 02:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=y+Fz0wsjFe3qgBW1+HdHGT32ibxV9XGEsuxkMeTbuS0=;
	b=n6HL7mbBaM8nsZeTomhLV6lEdnNwPkePVoXispWmLpwlKMvUGAfyfBpDn//AT0f2+b
	Xf/sLl3uCLV80xRjKPsi0sLXapzBSusGrMw1FhqPfikoNeo1/H+GKgIcdEcqAempCLof
	NSGhZN0XV168qiw5olH7vhtv12+j3dP9QfVnizOmp/bTppexoDObkT0nD+uMKCxBCJ5z
	/kR0BdphU4XU9ydnWaPHrQAYxY2Rr0jHce0d7lIOiKhMAa9yW7ocfVzajstWGCsxjx5t
	HCvgDtuCYhbcT+3ZoCzvf1VMCEGy9fsOeadkavuwauGbHUNIjnSBNGaMjG4dJgusPPjI
	Z0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=y+Fz0wsjFe3qgBW1+HdHGT32ibxV9XGEsuxkMeTbuS0=;
	b=ow7eJqfYdiFImlsqF/u5kVNZ5VXZORkl+05vjGCnjjEoG/yjZ6eCGin6ie65iUDVNK
	3ONsYf1lh6mEboRIoc9u1D5WGAs9TdPB11nnqkfCzOLxlcFCGQ74oP515fbo9LbOtDoX
	acbhZSr68J8MdFc6EAcaOQ5RK84xqCck+roNyj6R3v4X4Bcj7ZbE8Xw65ZekJfPOl2RN
	6Wak/pnlo0b/IVcBvuGsjG7ouQqWmc77Py8FbyejqvOqoChUv2VjXa23B3n/MWcutK7k
	oZCZUdjhOi0qJrWICQcWF7dt7wzyGfrEo/jj6zIvSZvbaJvUKARCCLKwbKvD2QLrRHl6
	X++w==
X-Gm-Message-State: APt69E2mIkSsXNePw5jIc2JzUBa+WKN73FBlKt5sFOt1JWYJo+1G3Fol
	3lLrm508sVYFcD+jxoeHsDQijpNyoZEUJ5A+8yCFkw==
X-Google-Smtp-Source: AAOMgpfDZ84BV4QvEGA8fgNJbwrw9C/zeu7gpMG0AU+TaNWxesUoHhDu6a56fCCAF0X29mrCkzbcqtdHHLYlwgbqRYA=
X-Received: by 2002:aca:2808:: with SMTP id
	8-v6mr23028560oix.235.1531127912421; 
	Mon, 09 Jul 2018 02:18:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 02:18:11 -0700 (PDT)
In-Reply-To: <CALYZMnnjxb=Vp3tmnW=Ftu20uGxWLZLaBC1kVieV_M-jd=Dc2g@mail.gmail.com>
References: <CALYZMnnjxb=Vp3tmnW=Ftu20uGxWLZLaBC1kVieV_M-jd=Dc2g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jul 2018 10:18:11 +0100
Message-ID: <CAJTo0Laz4w7aqe_j5uSTQO=1j3wZfKQkrdF9MWnePkYgNDmKnA@mail.gmail.com>
To: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Issue in extracting Yocto Sdk
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
X-List-Received-Date: Mon, 09 Jul 2018 09:18:34 -0000
Content-Type: multipart/alternative; boundary="000000000000536f4b05708d7f27"

--000000000000536f4b05708d7f27
Content-Type: text/plain; charset="UTF-8"

Some comments inline, including where I think your problem is:

On 9 July 2018 at 10:04, AKASH BHARDWAJ <akash12bhardwaj@gmail.com> wrote:

> LICENSE = "CLOSED"
>>
>
Why are you setting LICENSE in local.conf?


> PACKAGE_FEED_URIS = " http://git.yoctoproject.org/cgit/cgit.cgi/meta-
>> raspberrypi/tree/recipes-devtools/wiringPi/wiringpi_git.bb?h=master
>> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/
>> recipes-devtools/i2c-tools/i2c-tools_4.0.bb https://github.com/
>> eMakerStudio/meta-rpi/tree/morty/recipes-devtools/pi-
>> blaster/pi-blaster_git.bbappend https://git.pengutronix.de/
>> cgit/imx/sdma-firmware"
>>
>
This isn't what PACKAGE_FEED_URIS is for


> DISTRO_FEATURES_append += "virtualization"
>>
>
Missing whitespace before virtualization when using append.


> IMAGE_INSTALL = "packagegroup-core-boot \
>>     packagegroup-core-x11 \
>>     packagegroup-lxde-base \
>>     kernel-modules \
>> "
>>
>
Why are you overriding IMAGE_INSTALL in local.conf?  Write your own image
recipe.


> PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk "
>>
>
You only need to put more than one entry here if you're testing the
packaging infrastructure, you can remove the entries you don't use.

PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk "
>>
>
Again.

TOOLCHAIN_HOST_TASK += "nativesdk-cmake-dev"
>>
>
I suspect that here you are overriding the default value which is set using
?=, which is why you have a broken SDK.  Use _append.


> IMAGE_INSTALL_APPEND = "git apt dpkg opkg rpm sudo wiringpi wiringpi-dev
>> cmake connman connman-client tzdata i2c-tools i2c-tools-dev  pi-blaster
>> pi-blaster-dev"
>>
>
That's not a variable anything uses.


> CORE_IMAGE_EXTRA_INSTALL=" rpm opkg dpkg git sudo wiringpi apt
>> wiringpi-dev cmake tzdata localedef i2c-tools i2c-tools-dev connman
>> connman-client  pi-blaster pi-blaster-dev"
>>
>
Unused as you're resetting IMAGE_INSTALL above.

I strongly recommend that you make your own distro file for distro-wide
configuration (distro features, etc) and then your own image recipe.
Jamming everything into local.conf just gets messy and unmaintainable.

Ross

--000000000000536f4b05708d7f27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some comments inline, including where I think your pr=
oblem is:</div><div><br></div>On 9 July 2018 at 10:04, AKASH BHARDWAJ <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:akash12bhardwaj@gmail.com" target=3D"_bl=
ank">akash12bhardwaj@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail=
_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>LICENSE =3D=
 &quot;CLOSED&quot;<br></div></blockquote></div></blockquote><div><br></div=
><div>Why are you setting LICENSE in local.conf?</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div>PACKAGE_FEED_URIS =3D &quot; <a href=3D"http://git.=
yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-devtools/wirin=
gPi/wiringpi_git.bb?h=3Dmaster" target=3D"_blank">http://git.yoctoproject.o=
rg/<wbr>cgit/cgit.cgi/meta-<wbr>raspberrypi/tree/recipes-<wbr>devtools/wiri=
ngPi/wiringpi_<wbr>git.bb?h=3Dmaster</a> <a href=3D"https://git.yoctoprojec=
t.org/cgit.cgi/poky/plain/meta/recipes-devtools/i2c-tools/i2c-tools_4.0.bb"=
 target=3D"_blank">https://git.yoctoproject.org/<wbr>cgit.cgi/poky/plain/me=
ta/<wbr>recipes-devtools/i2c-tools/<wbr>i2c-tools_4.0.bb</a> <a href=3D"htt=
ps://github.com/eMakerStudio/meta-rpi/tree/morty/recipes-devtools/pi-blaste=
r/pi-blaster_git.bbappend" target=3D"_blank">https://github.com/<wbr>eMaker=
Studio/meta-rpi/tree/<wbr>morty/recipes-devtools/pi-<wbr>blaster/pi-blaster=
_git.<wbr>bbappend</a> <a href=3D"https://git.pengutronix.de/cgit/imx/sdma-=
firmware" target=3D"_blank">https://git.pengutronix.de/<wbr>cgit/imx/sdma-f=
irmware</a>&quot;<br></div></blockquote></div></blockquote><div><br></div><=
div>This isn&#39;t what PACKAGE_FEED_URIS is for</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div>DISTRO_FEATURES_append +=3D &quot;virtualization&qu=
ot;<br></div></blockquote></div></blockquote><div><br></div><div>Missing wh=
itespace before virtualization when using append.</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div>IMAGE_INSTALL =3D &quot;packagegroup-core-boot \<b=
r>=C2=A0=C2=A0=C2=A0 packagegroup-core-x11 \<br>=C2=A0=C2=A0=C2=A0 packageg=
roup-lxde-base \<br>=C2=A0=C2=A0=C2=A0 kernel-modules \<br>&quot;</div></bl=
ockquote></div></blockquote><div><br></div><div>Why are you overriding IMAG=
E_INSTALL in local.conf?=C2=A0 Write your own image recipe.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div>PACKAGE_CLASSES ?=3D &quot;package_rp=
m package_deb package_ipk &quot;<br></div></blockquote></div></blockquote><=
div><br></div><div>You only need to put more than one entry here if you&#39=
;re testing the packaging infrastructure, you can remove the entries you do=
n&#39;t use.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div>PACKAGE_CLASSE=
S ?=3D &quot;package_rpm package_deb package_ipk &quot;<br></div></blockquo=
te></div></blockquote><div><br></div><div>Again.</div><div><br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div>TOOLCHAIN_HOST_TASK +=3D &quot;nativesdk-cmake-dev&qu=
ot;<br></div></blockquote></div></blockquote><div><br></div><div>I suspect =
that here you are overriding the default value which is set using ?=3D, whi=
ch is why you have a broken SDK.=C2=A0 Use _append.</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div>IMAGE_INSTALL_APPEND =3D &quot;git apt dpkg opkg=
 rpm sudo wiringpi wiringpi-dev cmake connman connman-client tzdata i2c-too=
ls i2c-tools-dev=C2=A0 pi-blaster pi-blaster-dev&quot;<br></div></blockquot=
e></div></blockquote><div><br></div><div>That&#39;s not a variable anything=
 uses.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div>CORE_IMAGE_EXTRA_I=
NSTALL=3D&quot; rpm opkg dpkg git sudo wiringpi apt wiringpi-dev cmake tzda=
ta localedef i2c-tools i2c-tools-dev connman connman-client=C2=A0 pi-blaste=
r pi-blaster-dev&quot;<br></div></blockquote></div></blockquote><div><br></=
div><div>Unused as you&#39;re resetting IMAGE_INSTALL above.</div><div><br>=
</div><div>I strongly recommend that you make your own distro file for dist=
ro-wide configuration (distro features, etc) and then your own image recipe=
.=C2=A0 Jamming everything into local.conf just gets messy and unmaintainab=
le.</div><div><br></div><div>Ross</div></div></div></div>

--000000000000536f4b05708d7f27--
