Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A5BE00AD7; Fri, 10 Nov 2017 03:41:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA596E00AD7
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 03:41:18 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id t139so2157797wmt.1
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 03:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7vZgaIJ4kMUoAKtUDMx1uWgxmweiY8Iu5bszsHFiMMA=;
	b=c4zmu1qlbu/o/KP60pnFlAuvHrcv98082fBXg320x28u+z2o0jPRFNraQsKG+MuZnd
	itEshnQS/at1oH/d+sA0gFM2+aSTLm5vAl6DGpxKMRPx1q66u0IWMB3JYlL0FOSVNXbp
	1w+Ffonq9ThTf3Wx2pfPhvPHxXZN07ZFkoqujBbTSNo63Jpl5ZJ5mQWQAKnx6iJNumei
	qSuV4miTbw7xUWGNAH7oU+2wM5kw1/c4TeyFJxdAeqMwqa9WuPK2iqgeN7B1z/zsh7iF
	o0L33qlWGdeukvQIr+FPwr//SGXUXDQ7Wkj5Kgu4BXUREPRS0mjmsUa7NcrRjAmFtRGp
	bQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7vZgaIJ4kMUoAKtUDMx1uWgxmweiY8Iu5bszsHFiMMA=;
	b=kw49ez1hSbCMj3bCJK76Sx6h1Ffsgej9U34IQ8mEp5q0FJF/eGAcdTeQmz4nWxU/M4
	kK0vHqjABsMhKuHJY6DuvZW+6mkgT3eu6RYQtgCiZogwViGLkEgaUJ9lvWaP6Bc1OfOV
	GRUSYA8uRwrD0PoPdsFTa8/GoNss769j6OolYT80NQJk6AKAVpWRRC0UWC+YLjnWapLx
	z0ZqPkfr3BcTPa5Gr+Q1ZM3ZJGdB34o5rEbstOhsq6q7m5vN3vFr24Mpd48QcbwqNJYH
	vi6zLB4REzH0VnPY7o0hcMRInAFZjmGdeRnVIRtFpHIqzNQL8/wG6b6h1G0z5Pe1qSwN
	oXhg==
X-Gm-Message-State: AJaThX5XSVoUEHVdaxecPaf2GCDPdVDdDdFHK6jIhno372NrVKZKuIVq
	aGp0RYIIJYyLHWiTioHX9niMoN7UG4bsK0xvssQ=
X-Google-Smtp-Source: AGs4zMaVyI0PXN2ihETOR/HZpNX3LRv/1qJaTUD6DLg3iNQAesczHyGFvbmshi/Q1p1Wy6Tc/tevGQWJuKoevTRZtxM=
X-Received: by 10.28.165.4 with SMTP id o4mr58544wme.68.1510314077516; Fri, 10
	Nov 2017 03:41:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Fri, 10 Nov 2017 03:41:16 -0800 (PST)
In-Reply-To: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
References: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 10 Nov 2017 12:41:16 +0100
Message-ID: <CAGAf8Lyy=3OeSZQEiEKiVDNmWwvMan9=P8t2nuDwvL3Jk=kMaw@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Using devtool for adding a systemd service
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
X-List-Received-Date: Fri, 10 Nov 2017 11:41:20 -0000
Content-Type: multipart/alternative; boundary="001a114bab7c16f808055d9f6689"

--001a114bab7c16f808055d9f6689
Content-Type: text/plain; charset="UTF-8"

It is, after all, interesting question, you posted here, Alan!

I did something else, very different than you - I did the following!

[user@192 poky]$ pwd
/home/user/YOCTO/oe_core_embedded/poky
[user@192 poky]$ find . -name systemd*
./scripts/lib/wic/canned-wks/systemd-bootdisk.wks
./meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
./build/tmp/sysroots-components/core2-64/at-spi2-core/usr/lib/systemd
./build/tmp/sysroots-components/core2-64/rpm/usr/lib/rpm-plugins/systemd_
inhibit.so
./meta/lib/oeqa/runtime/cases/systemd.py
./meta/classes/systemd.bbclass
./meta/classes/systemd-boot.bbclass
./meta/recipes-devtools/systemd-bootchart
./meta/recipes-devtools/systemd-bootchart/systemd-bootchart_231.bb
./meta/recipes-core/systemd
./meta/recipes-core/systemd/systemd_234.bb
./meta/recipes-core/systemd/systemd-machine-units_1.0.bb
./meta/recipes-core/systemd/systemd-serialgetty
./meta/recipes-core/systemd/systemd.inc
./meta/recipes-core/systemd/systemd-boot_234.bb
./meta/recipes-core/systemd/systemd-compat-units.bb
./meta/recipes-core/systemd/systemd-systemctl-native.bb
./meta/recipes-core/systemd/systemd
./meta/recipes-core/systemd/systemd-systemctl
./meta/recipes-core/systemd/systemd-serialgetty.bb
[user@192 poky]$

But we have there both packages??? We do, we do?!

*./meta/recipes-core/systemd/systemd*
*./meta/recipes-core/systemd/systemd-systemctl*

So, systemd is still present as package in basic poky master tree:
./meta/recipes-core/systemd/systemd
./meta/recipes-core/systemd/systemd-systemctl

And, here are the heads from tree posted from the qemux86-64 target
(/etc/build/):

-----------------------
Build Configuration:  |
-----------------------
DISTRO = poky
DISTRO_VERSION = 2.4
-----------------------
Layer Revisions:      |
-----------------------
meta                  = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
modified
meta-poky         = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
modified
meta-yocto-bsp = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 -- modified

And, when I queried on the QEMU (qemux86-64) target both systemd and
systemctl, I get nothing (at all), which is VERY strange!?
Target CLI transcript follows:

sh-4.4# uname -r
4.12.12-yocto-standard
sh-4.4# which systemd
sh-4.4# which systemctl
sh-4.4#

Do we really have problem here, YOCTO maintainers??? Please, could you post
sound and logical explanation for NOT having these services in the default
YOCTO?

Thank you,
Zoran

On Fri, Nov 10, 2017 at 11:07 AM, Alan Martinovic <alan.martinovic@senic.com
> wrote:

> Hi,
> I need to add a systemd service that needs no additional sources
> compiled, but just needs an available command executed at boot.
>
> I've created a basis for the recipe in my layer:
>
> nrf52-usb-systemd/
> |-- files
> |   `-- btattach-nrf-acm.service
> `-- nrf52-usb-systemd.bb
>
>
> together with a recipe template (nrf52-usb-systemd.bb)
> for which I don't know if works yet.
>
>   SUMMARY = "Writes patterns to the fb device"
>   LICENSE = "MIT"
>   LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=
> 3da9cfbcb788c80a0384361b4de20420"
>
>   inherit systemd
>
>   REQUIRED_DISTRO_FEATURES= "systemd"
>
>   SRC_URI = "file://btattach-nrf-acm.service"
>
>   do_install () {
>
>       install -m 0644 ${WORKDIR}/btattach-nrf-acm.service
> ${D}${sysconfdir}/systemd/system
>    }
>
>   NATIVE_SYSTEMD_SUPPORT = "1"
>   SYSTEMD_PACKAGES = "${PN}"
>   SYSTEMD_SERVICE_${PN} = "fb-draw.service"
>
>
> I'm not sure I got the install command right and
> if the service file is making it way to the proper location.
>
> Instead of building the whole image, flashing and checking
> it out, I would like to test how devtool could help here.
>
> I execute:
>
> devtool build nrf52-usb-systemd
>
> this results in a creation of a workspace with the sources files.
> What I am not seeing is a creation of a device sysroot which would
> show me that the do_install was correctly written.
>
> Given that the device sysroot directory on the host would be called
> "sysroot" was hoping to be able do confirm that the following took
> place
>
> ${D}${sysconfdir}/systemd/system -> .sysroot/etc/ssytemd/system
>
> and confirming there is a
>
> .sysroot/etc/ssytemd/system/btattach-nrf-acm.service
>
>
> Is this possible with devtool, or am I misinterpreting
> what it's purpose is?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114bab7c16f808055d9f6689
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It is, after all, interesting question, you posted here, A=
lan!<div><br></div><div>I did something else, very different than you - I d=
id the following!</div><div><br></div><div>[user@192 poky]$ pwd<br></div><d=
iv><div><div>/home/user/YOCTO/oe_core_<wbr>embedded/poky</div><div>[user@19=
2 poky]$ find . -name systemd*</div><div>./scripts/lib/wic/canned-wks/<wbr>=
systemd-bootdisk.wks</div><div>./meta-yocto-bsp/lib/oeqa/<wbr>selftest/case=
s/systemd_boot.py</div><div>./build/tmp/sysroots-<wbr>components/core2-64/a=
t-spi2-<wbr>core/usr/lib/systemd</div><div>./build/tmp/sysroots-<wbr>compon=
ents/core2-64/rpm/usr/<wbr>lib/rpm-plugins/systemd_<wbr>inhibit.so</div><di=
v>./meta/lib/oeqa/runtime/cases/<wbr>systemd.py</div><div>./meta/classes/sy=
stemd.bbclass</div><div>./meta/classes/systemd-boot.<wbr>bbclass</div><div>=
./meta/recipes-devtools/<wbr>systemd-bootchart</div><div>./meta/recipes-dev=
tools/<wbr>systemd-bootchart/<a href=3D"http://systemd-bootchart_231.bb" ta=
rget=3D"_blank">systemd-<wbr>bootchart_231.bb</a></div><div>./meta/recipes-=
core/systemd</div><div>./meta/recipes-core/systemd/<a href=3D"http://system=
d_234.bb" target=3D"_blank">sy<wbr>stemd_234.bb</a></div><div>./meta/recipe=
s-core/systemd/<a href=3D"http://systemd-machine-units_1.0.bb" target=3D"_b=
lank">sy<wbr>stemd-machine-units_1.0.bb</a></div><div>./meta/recipes-core/s=
ystemd/<wbr>systemd-serialgetty</div><div>./meta/recipes-core/systemd/<wbr>=
systemd.inc</div><div>./meta/recipes-core/systemd/<a href=3D"http://systemd=
-boot_234.bb" target=3D"_blank">sy<wbr>stemd-boot_234.bb</a></div><div>./me=
ta/recipes-core/systemd/<a href=3D"http://systemd-compat-units.bb" target=
=3D"_blank">sy<wbr>stemd-compat-units.bb</a></div><div>./meta/recipes-core/=
systemd/<a href=3D"http://systemd-systemctl-native.bb" target=3D"_blank">sy=
<wbr>stemd-systemctl-native.bb</a></div><div>./meta/recipes-core/systemd/<w=
br>systemd</div><div>./meta/recipes-core/systemd/<wbr>systemd-systemctl</di=
v><div>./meta/recipes-core/systemd/<a href=3D"http://systemd-serialgetty.bb=
" target=3D"_blank">sy<wbr>stemd-serialgetty.bb</a></div><div>[user@192 pok=
y]$=C2=A0</div></div><div><br></div><div>But we have there both packages???=
 We do, we do?!</div><div><b><i><u>./meta/recipes-core/systemd/<wbr>systemd=
<br></u></i></b></div><div><b><i><u>./meta/recipes-core/systemd/<wbr>system=
d-systemctl</u></i></b></div><div><br></div></div><div>So, systemd is still=
 present as package in basic poky master tree:</div><div>./meta/recipes-cor=
e/systemd/<wbr>systemd</div><div>./meta/recipes-core/systemd/<wbr>systemd-s=
ystemctl</div><div><br></div><div>And, here are the heads from tree posted =
from the qemux86-64 target (/etc/build/):</div><div><br></div><div><div cla=
ss=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px">-----------------------</span><br style=3D"font-size:12.8px"><span styl=
e=3D"font-size:12.8px">Build Configuration:=C2=A0 |</span><br style=3D"font=
-size:12.8px"><span style=3D"font-size:12.8px">-----------------------</spa=
n><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISTRO =
=3D poky</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px">DISTRO_VERSION =3D 2.4</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">-----------------------</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">Layer Revisions:=C2=A0 =C2=A0 =C2=
=A0 |</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"=
>-----------------------</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D rocko:65d23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- mo=
dified</span><br></div><div class=3D"gmail_extra" style=3D"font-size:12.8px=
">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D rocko:<span style=3D"font-=
size:12.8px">65d23bd7986615fdfb0f1717<wbr>b615534a2a14ab80 -- modified</spa=
n></div><div class=3D"gmail_extra" style=3D"font-size:12.8px">meta-yocto-bs=
p =3D rocko:<span style=3D"font-size:12.8px">65d23bd7986615fdfb0f1717<wbr>b=
615534a2a14ab80 -- modified</span></div></div><div class=3D"gmail_extra" st=
yle=3D"font-size:12.8px"><span style=3D"font-size:12.8px"><br></span></div>=
<div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-s=
ize:12.8px">And, when I queried on the QEMU (qemux86-64) target both system=
d and systemctl, I get nothing (at all), which is VERY strange!?</span></di=
v><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font=
-size:12.8px">Target CLI transcript follows:</span><br></div><div class=3D"=
gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"><b=
r></span></div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span =
style=3D"font-size:12.8px">sh-4.4# uname -r</span></div><div class=3D"gmail=
_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">4.12.12=
-yocto-standard</span></div><div class=3D"gmail_extra" style=3D"font-size:1=
2.8px"><span style=3D"font-size:12.8px">sh-4.4# which systemd</span></div><=
div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-si=
ze:12.8px">sh-4.4# which systemctl</span></div><div class=3D"gmail_extra" s=
tyle=3D"font-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4#</span><s=
pan style=3D"font-size:12.8px"><br></span></div><div><br></div><div>Do we r=
eally have problem here, YOCTO maintainers??? Please, could you post sound =
and logical explanation for NOT having these services in the default YOCTO?=
</div><div><br></div><div>Thank you,</div><div>Zoran</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Nov 10, 2017 at 11:=
07 AM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martino=
vic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div>I need to =
add a systemd service that needs no additional sources</div><div>compiled, =
but just needs an available command executed at boot.=C2=A0</div><div><br><=
/div><div>I&#39;ve created a basis for the recipe in my layer:</div><div><b=
r></div><div><div>nrf52-usb-systemd/</div><div>|-- files</div><div>|=C2=A0 =
=C2=A0`-- btattach-nrf-acm.service</div><div>`-- <a href=3D"http://nrf52-us=
b-systemd.bb" target=3D"_blank">nrf52-usb-systemd.bb</a></div></div><div><b=
r></div><div><br></div><div>together with a recipe template (<a href=3D"htt=
p://nrf52-usb-systemd.bb" target=3D"_blank">nrf52-usb-systemd.bb</a>)</div>=
<div> for which I don&#39;t know if works yet.</div><div><br></div><div><di=
v>=C2=A0 SUMMARY =3D &quot;Writes patterns to the fb device&quot;</div><div=
>=C2=A0 LICENSE =3D &quot;MIT&quot;</div><div>=C2=A0 LIC_FILES_CHKSUM =3D &=
quot;file://COPYING.MIT;md5=3D<wbr>3da9cfbcb788c80a0384361b4de204<wbr>20&qu=
ot;</div><div><br></div><div>=C2=A0 inherit systemd</div><div><br></div><di=
v>=C2=A0 REQUIRED_DISTRO_FEATURES=3D &quot;systemd&quot;</div><div><br></di=
v><div>=C2=A0 SRC_URI =3D &quot;file://btattach-nrf-acm.<wbr>service&quot;<=
/div><div><br></div><div>=C2=A0 do_install () {<br></div><div><br></div><di=
v>=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/btattach-nrf-acm.<wbr>ser=
vice ${D}${sysconfdir}/systemd/<wbr>system</div><div>=C2=A0 =C2=A0}</div><d=
iv><br></div><div>=C2=A0 NATIVE_SYSTEMD_SUPPORT =3D &quot;1&quot;</div><div=
>=C2=A0 SYSTEMD_PACKAGES =3D &quot;${PN}&quot;</div><div>=C2=A0 SYSTEMD_SER=
VICE_${PN} =3D &quot;fb-draw.service&quot;</div></div><div><br></div><div><=
br></div><div>I&#39;m not sure I got the install command right and</div><di=
v>if the service file is making it way to the proper location.</div><div><b=
r></div><div>Instead of building the whole image, flashing and checking=C2=
=A0</div><div>it out, I would like to test how devtool could help here.</di=
v><div><br></div><div>I execute:</div><div><br></div><div>devtool build nrf=
52-usb-systemd<br></div><div><br></div><div>this results in a creation of a=
 workspace with the sources files.</div><div>What I am not seeing is a crea=
tion of a device sysroot which would</div><div>show me that the do_install =
was correctly written.<br></div><div><br></div><div>Given that the device s=
ysroot directory on the host would be called</div><div>&quot;sysroot&quot; =
was hoping to be able do confirm that the following took=C2=A0</div><div>pl=
ace</div><div><br></div><div>${D}${sysconfdir}/systemd/<wbr>system -&gt; .s=
ysroot/etc/ssytemd/system<br></div><div><br></div><div>and confirming there=
 is a=C2=A0</div><div><br></div><div>.sysroot/etc/ssytemd/system/<wbr>btatt=
ach-nrf-acm.service</div><div><br></div><div><br></div><div>Is this possibl=
e with devtool, or am I misinterpreting=C2=A0</div><div>what it&#39;s purpo=
se is?</div><div><br></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114bab7c16f808055d9f6689--
