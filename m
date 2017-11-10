Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FE32E00CE2; Fri, 10 Nov 2017 04:23:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FBAE00AD7
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 04:23:17 -0800 (PST)
Received: by mail-ot0-f177.google.com with SMTP id n74so7994676ota.8
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 04:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CBcfKPa8SgK7c2z4Vs9bLSFRpdl2X98ETKQr3k7aJtQ=;
	b=A4LSD/mF4IRmiKxzFtkb3HX+AlPcFSbD3dfAX+Ny8UKxuXOZ8henmL1sqpq82aDyEV
	QMaDsARjHrA78sdUGXVAyN6KqyIMa1z2UcY3Nr9hkJgWG0qBjgRVyaIlen27aBGbLOCl
	9+ZUG/UbaalUkGKkh+28kyxRJbne18r2uir4Pa248YkS7PB2DCcUtXYa0iobh2GovzvE
	XtR0c22zuGYOOEg7sSJFi5lq6d1h4vkHkj/VXgPEFhxffIuSlSX35zX/I/fUeVLQa8jG
	vRZnoYCEnBtKbyHB72pPvMSV71jvYezOLH1ELCfPq+PsIDJQa778AIGNlxpttdSJCXvM
	ZrrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CBcfKPa8SgK7c2z4Vs9bLSFRpdl2X98ETKQr3k7aJtQ=;
	b=N1iJICIjjmHPm15qApwjox0hLOO5yDdk7aJkr3IlrG6s9lan8yjSWPecqel+KwFAsh
	w1/VK30R9N00WlqMK7YloxuvLRU2463+mnJ6C0zdxMSC22fjiG7Qei1pDCeQmm9XNe+E
	HDKBcyxCSdZqKVBZlp2ZquVNrKf+BzUfHf+zIk43aq7xYeiutI6LrBNk+eFUkX9vSbn/
	P2b9wwQCArORsHeLnbkOu5DmVY1IjmDyBH9pz8Ih03Y2zoDtIdG92lyVYVxDNDXQhwUi
	qGBhcd3mq9uvgGDYxlkZ6p4mgIbguVhWGkcX3xTCjVt4EqWdNk8c/FZdEfMnTuJjSPYA
	/ZRw==
X-Gm-Message-State: AJaThX5BkpUgbqNudM8viutO1NCsS9LigbQAxk5X+jFcdLzRustEgV4D
	bdUcpoQIt2I3y1ZcmVAhA0f5MugE6YYz1PguuyOF2A==
X-Google-Smtp-Source: AGs4zMYKISQPiEimbniEM+V83Vhu08686CSTY385PVGNVCHt97p29cyr91n8h80vb1MFeh9RYsK9E4kruqkkMI3/QtA=
X-Received: by 10.157.15.67 with SMTP id 61mr128784ott.198.1510316596751; Fri,
	10 Nov 2017 04:23:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Fri, 10 Nov 2017 04:23:16 -0800 (PST)
In-Reply-To: <CAGAf8Lyy=3OeSZQEiEKiVDNmWwvMan9=P8t2nuDwvL3Jk=kMaw@mail.gmail.com>
References: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
	<CAGAf8Lyy=3OeSZQEiEKiVDNmWwvMan9=P8t2nuDwvL3Jk=kMaw@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 10 Nov 2017 13:23:16 +0100
Message-ID: <CAOT_U5bNfmk1AxT-vTvSvcPN1XT0g+XGvQ7rb2XS50Zo+wg9qQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
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
X-List-Received-Date: Fri, 10 Nov 2017 12:23:19 -0000
Content-Type: multipart/alternative; boundary="94eb2c04d54c3f94d6055d9ffc23"

--94eb2c04d54c3f94d6055d9ffc23
Content-Type: text/plain; charset="UTF-8"

Hey Zoran,
this doesn't really have anything to do with my question.
Would suggest you to rephrase it to make it more clear.

But we have there both packages??? We do, we do?!

Do we really have problem here, YOCTO maintainers??? Please, could you post
> sound and logical explanation for NOT having these services in the default
> YOCTO?


Also would suggest you perhaps reiterate on your question style a bit,
it might result in more people responding.

Be Well,
Alan


On Fri, Nov 10, 2017 at 12:41 PM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> It is, after all, interesting question, you posted here, Alan!
>
> I did something else, very different than you - I did the following!
>
> [user@192 poky]$ pwd
> /home/user/YOCTO/oe_core_embedded/poky
> [user@192 poky]$ find . -name systemd*
> ./scripts/lib/wic/canned-wks/systemd-bootdisk.wks
> ./meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> ./build/tmp/sysroots-components/core2-64/at-spi2-core/usr/lib/systemd
> ./build/tmp/sysroots-components/core2-64/rpm/usr/lib/rpm-
> plugins/systemd_inhibit.so
> ./meta/lib/oeqa/runtime/cases/systemd.py
> ./meta/classes/systemd.bbclass
> ./meta/classes/systemd-boot.bbclass
> ./meta/recipes-devtools/systemd-bootchart
> ./meta/recipes-devtools/systemd-bootchart/systemd-bootchart_231.bb
> ./meta/recipes-core/systemd
> ./meta/recipes-core/systemd/systemd_234.bb
> ./meta/recipes-core/systemd/systemd-machine-units_1.0.bb
> ./meta/recipes-core/systemd/systemd-serialgetty
> ./meta/recipes-core/systemd/systemd.inc
> ./meta/recipes-core/systemd/systemd-boot_234.bb
> ./meta/recipes-core/systemd/systemd-compat-units.bb
> ./meta/recipes-core/systemd/systemd-systemctl-native.bb
> ./meta/recipes-core/systemd/systemd
> ./meta/recipes-core/systemd/systemd-systemctl
> ./meta/recipes-core/systemd/systemd-serialgetty.bb
> [user@192 poky]$
>
> But we have there both packages??? We do, we do?!
>
> *./meta/recipes-core/systemd/systemd*
> *./meta/recipes-core/systemd/systemd-systemctl*
>
> So, systemd is still present as package in basic poky master tree:
> ./meta/recipes-core/systemd/systemd
> ./meta/recipes-core/systemd/systemd-systemctl
>
> And, here are the heads from tree posted from the qemux86-64 target
> (/etc/build/):
>
> -----------------------
> Build Configuration:  |
> -----------------------
> DISTRO = poky
> DISTRO_VERSION = 2.4
> -----------------------
> Layer Revisions:      |
> -----------------------
> meta                  = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
> modified
> meta-poky         = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
> modified
> meta-yocto-bsp = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
> modified
>
> And, when I queried on the QEMU (qemux86-64) target both systemd and
> systemctl, I get nothing (at all), which is VERY strange!?
> Target CLI transcript follows:
>
> sh-4.4# uname -r
> 4.12.12-yocto-standard
> sh-4.4# which systemd
> sh-4.4# which systemctl
> sh-4.4#
>
> Do we really have problem here, YOCTO maintainers??? Please, could you
> post sound and logical explanation for NOT having these services in the
> default YOCTO?
>
> Thank you,
> Zoran
>
> On Fri, Nov 10, 2017 at 11:07 AM, Alan Martinovic <
> alan.martinovic@senic.com> wrote:
>
>> Hi,
>> I need to add a systemd service that needs no additional sources
>> compiled, but just needs an available command executed at boot.
>>
>> I've created a basis for the recipe in my layer:
>>
>> nrf52-usb-systemd/
>> |-- files
>> |   `-- btattach-nrf-acm.service
>> `-- nrf52-usb-systemd.bb
>>
>>
>> together with a recipe template (nrf52-usb-systemd.bb)
>> for which I don't know if works yet.
>>
>>   SUMMARY = "Writes patterns to the fb device"
>>   LICENSE = "MIT"
>>   LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cf
>> bcb788c80a0384361b4de20420"
>>
>>   inherit systemd
>>
>>   REQUIRED_DISTRO_FEATURES= "systemd"
>>
>>   SRC_URI = "file://btattach-nrf-acm.service"
>>
>>   do_install () {
>>
>>       install -m 0644 ${WORKDIR}/btattach-nrf-acm.service
>> ${D}${sysconfdir}/systemd/system
>>    }
>>
>>   NATIVE_SYSTEMD_SUPPORT = "1"
>>   SYSTEMD_PACKAGES = "${PN}"
>>   SYSTEMD_SERVICE_${PN} = "fb-draw.service"
>>
>>
>> I'm not sure I got the install command right and
>> if the service file is making it way to the proper location.
>>
>> Instead of building the whole image, flashing and checking
>> it out, I would like to test how devtool could help here.
>>
>> I execute:
>>
>> devtool build nrf52-usb-systemd
>>
>> this results in a creation of a workspace with the sources files.
>> What I am not seeing is a creation of a device sysroot which would
>> show me that the do_install was correctly written.
>>
>> Given that the device sysroot directory on the host would be called
>> "sysroot" was hoping to be able do confirm that the following took
>> place
>>
>> ${D}${sysconfdir}/systemd/system -> .sysroot/etc/ssytemd/system
>>
>> and confirming there is a
>>
>> .sysroot/etc/ssytemd/system/btattach-nrf-acm.service
>>
>>
>> Is this possible with devtool, or am I misinterpreting
>> what it's purpose is?
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--94eb2c04d54c3f94d6055d9ffc23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Zoran,<div>this doesn&#39;t really have anything to do=
 with my question.</div><div>Would suggest you to rephrase it to make it mo=
re clear.</div><div><br></div><div><blockquote style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gma=
il_quote">But we have there both packages??? We do, we do?!</blockquote></d=
iv><div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote">Do we really have=
 problem here, YOCTO maintainers??? Please, could you post sound and logica=
l explanation for NOT having these services in the default YOCTO?</blockquo=
te></div><div><br></div><div>Also would suggest you perhaps reiterate on yo=
ur question style a bit,</div><div>it might result in more people respondin=
g.</div><div><br></div><div>Be Well,</div><div>Alan</div><div><br></div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Nov 10=
, 2017 at 12:41 PM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">It is, after all, interesting question, you posted here, Alan!<div=
><br></div><div>I did something else, very different than you - I did the f=
ollowing!</div><div><br></div><div>[user@192 poky]$ pwd<br></div><div><div>=
<div>/home/user/YOCTO/oe_core_embed<wbr>ded/poky</div><div>[user@192 poky]$=
 find . -name systemd*</div><div>./scripts/lib/wic/canned-wks/s<wbr>ystemd-=
bootdisk.wks</div><div>./meta-yocto-bsp/lib/oeqa/self<wbr>test/cases/system=
d_boot.py</div><div>./build/tmp/sysroots-component<wbr>s/core2-64/at-spi2-c=
ore/usr/<wbr>lib/systemd</div><div>./build/tmp/sysroots-component<wbr>s/cor=
e2-64/rpm/usr/lib/rpm-<wbr>plugins/systemd_inhibit.so</div><div>./meta/lib/=
oeqa/runtime/cases/<wbr>systemd.py</div><div>./meta/classes/systemd.bbclass=
</div><div>./meta/classes/<a href=3D"http://systemd-boot.bb">systemd-boot.b=
b</a><wbr>class</div><div>./meta/recipes-devtools/system<wbr>d-bootchart</d=
iv><div>./meta/recipes-devtools/system<wbr>d-bootchart/<a href=3D"http://sy=
stemd-bootchart_231.bb" target=3D"_blank">systemd-bootchart_<wbr>231.bb</a>=
</div><div>./meta/recipes-core/systemd</div><div>./meta/recipes-core/system=
d/<a href=3D"http://systemd_234.bb" target=3D"_blank">sy<wbr>stemd_234.bb</=
a></div><div>./meta/recipes-core/systemd/<a href=3D"http://systemd-machine-=
units_1.0.bb" target=3D"_blank">sy<wbr>stemd-machine-units_1.0.bb</a></div>=
<div>./meta/recipes-core/systemd/sy<wbr>stemd-serialgetty</div><div>./meta/=
recipes-core/systemd/sy<wbr>stemd.inc</div><div>./meta/recipes-core/systemd=
/<a href=3D"http://systemd-boot_234.bb" target=3D"_blank">sy<wbr>stemd-boot=
_234.bb</a></div><div>./meta/recipes-core/systemd/<a href=3D"http://systemd=
-compat-units.bb" target=3D"_blank">sy<wbr>stemd-compat-units.bb</a></div><=
div>./meta/recipes-core/systemd/<a href=3D"http://systemd-systemctl-native.=
bb" target=3D"_blank">sy<wbr>stemd-systemctl-native.bb</a></div><div>./meta=
/recipes-core/systemd/sy<wbr>stemd</div><div>./meta/recipes-core/systemd/sy=
<wbr>stemd-systemctl</div><div>./meta/recipes-core/systemd/<a href=3D"http:=
//systemd-serialgetty.bb" target=3D"_blank">sy<wbr>stemd-serialgetty.bb</a>=
</div><div>[user@192 poky]$=C2=A0</div></div><div><br></div><div>But we hav=
e there both packages??? We do, we do?!</div><div><b><i><u>./meta/recipes-c=
ore/systemd/sy<wbr>stemd<br></u></i></b></div><div><b><i><u>./meta/recipes-=
core/systemd/sy<wbr>stemd-systemctl</u></i></b></div><div><br></div></div><=
div>So, systemd is still present as package in basic poky master tree:</div=
><div>./meta/recipes-core/systemd/sy<wbr>stemd</div><div>./meta/recipes-cor=
e/systemd/sy<wbr>stemd-systemctl</div><div><br></div><div>And, here are the=
 heads from tree posted from the qemux86-64 target (/etc/build/):</div><div=
><br></div><div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span=
 style=3D"font-size:12.8px">-----------------------</span><br style=3D"font=
-size:12.8px"><span style=3D"font-size:12.8px">Build Configuration:=C2=A0 |=
</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">----=
-------------------</span><br style=3D"font-size:12.8px"><span style=3D"fon=
t-size:12.8px">DISTRO =3D poky</span><br style=3D"font-size:12.8px"><span s=
tyle=3D"font-size:12.8px">DISTRO_VERSION =3D 2.4</span><br style=3D"font-si=
ze:12.8px"><span style=3D"font-size:12.8px">-----------------------</span><=
br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Layer Revisi=
ons:=C2=A0 =C2=A0 =C2=A0 |</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">-----------------------</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D rocko:65d23bd7986615fdfb0f1717<wbr>b=
615534a2a14ab80 -- modified</span><br></div><div class=3D"gmail_extra" styl=
e=3D"font-size:12.8px">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D rocko=
:<span style=3D"font-size:12.8px">65d23bd7986615fdfb0f1717<wbr>b615534a2a14=
ab80 -- modified</span></div><div class=3D"gmail_extra" style=3D"font-size:=
12.8px">meta-yocto-bsp =3D rocko:<span style=3D"font-size:12.8px">65d23bd79=
86615fdfb0f1717<wbr>b615534a2a14ab80 -- modified</span></div></div><div cla=
ss=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px"><br></span></div><div class=3D"gmail_extra" style=3D"font-size:12.8px">=
<span style=3D"font-size:12.8px">And, when I queried on the QEMU (qemux86-6=
4) target both systemd and systemctl, I get nothing (at all), which is VERY=
 strange!?</span></div><div class=3D"gmail_extra" style=3D"font-size:12.8px=
"><span style=3D"font-size:12.8px">Target CLI transcript follows:</span><br=
></div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D=
"font-size:12.8px"><br></span></div><div class=3D"gmail_extra" style=3D"fon=
t-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4# uname -r</span></di=
v><div class=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font=
-size:12.8px">4.12.12-yocto-standard</span></div><div class=3D"gmail_extra"=
 style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">sh-4.4# which =
systemd</span></div><div class=3D"gmail_extra" style=3D"font-size:12.8px"><=
span style=3D"font-size:12.8px">sh-4.4# which systemctl</span></div><div cl=
ass=3D"gmail_extra" style=3D"font-size:12.8px"><span style=3D"font-size:12.=
8px">sh-4.4#</span><span style=3D"font-size:12.8px"><br></span></div><div><=
br></div><div>Do we really have problem here, YOCTO maintainers??? Please, =
could you post sound and logical explanation for NOT having these services =
in the default YOCTO?</div><div><br></div><div>Thank you,</div><div>Zoran</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On Fri, Nov 10, 2017 at 11:07 AM, Alan Martinovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank"=
>alan.martinovic@senic.com</a>&gt;</span> wrote:<br></div></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr">Hi,<div>I need =
to add a systemd service that needs no additional sources</div><div>compile=
d, but just needs an available command executed at boot.=C2=A0</div><div><b=
r></div><div>I&#39;ve created a basis for the recipe in my layer:</div><div=
><br></div><div><div>nrf52-usb-systemd/</div><div>|-- files</div><div>|=C2=
=A0 =C2=A0`-- btattach-nrf-acm.service</div><div>`-- <a href=3D"http://nrf5=
2-usb-systemd.bb" target=3D"_blank">nrf52-usb-systemd.bb</a></div></div><di=
v><br></div><div><br></div><div>together with a recipe template (<a href=3D=
"http://nrf52-usb-systemd.bb" target=3D"_blank">nrf52-usb-systemd.bb</a>)</=
div><div> for which I don&#39;t know if works yet.</div><div><br></div><div=
><div>=C2=A0 SUMMARY =3D &quot;Writes patterns to the fb device&quot;</div>=
<div>=C2=A0 LICENSE =3D &quot;MIT&quot;</div><div>=C2=A0 LIC_FILES_CHKSUM =
=3D &quot;file://COPYING.MIT;md5=3D3da9cf<wbr>bcb788c80a0384361b4de20420&qu=
ot;</div><div><br></div><div>=C2=A0 inherit systemd</div><div><br></div><di=
v>=C2=A0 REQUIRED_DISTRO_FEATURES=3D &quot;systemd&quot;</div><div><br></di=
v><div>=C2=A0 SRC_URI =3D &quot;file://btattach-nrf-acm.servi<wbr>ce&quot;<=
/div><div><br></div><div>=C2=A0 do_install () {<br></div><div><br></div><di=
v>=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/<a href=3D"http://btattac=
h-nrf-acm.se">btattach-nrf-acm.se</a><wbr>rvice ${D}${sysconfdir}/systemd/s=
yst<wbr>em</div><div>=C2=A0 =C2=A0}</div><div><br></div><div>=C2=A0 NATIVE_=
SYSTEMD_SUPPORT =3D &quot;1&quot;</div><div>=C2=A0 SYSTEMD_PACKAGES =3D &qu=
ot;${PN}&quot;</div><div>=C2=A0 SYSTEMD_SERVICE_${PN} =3D &quot;fb-draw.ser=
vice&quot;</div></div><div><br></div><div><br></div><div>I&#39;m not sure I=
 got the install command right and</div><div>if the service file is making =
it way to the proper location.</div><div><br></div><div>Instead of building=
 the whole image, flashing and checking=C2=A0</div><div>it out, I would lik=
e to test how devtool could help here.</div><div><br></div><div>I execute:<=
/div><div><br></div><div>devtool build nrf52-usb-systemd<br></div><div><br>=
</div><div>this results in a creation of a workspace with the sources files=
.</div><div>What I am not seeing is a creation of a device sysroot which wo=
uld</div><div>show me that the do_install was correctly written.<br></div><=
div><br></div><div>Given that the device sysroot directory on the host woul=
d be called</div><div>&quot;sysroot&quot; was hoping to be able do confirm =
that the following took=C2=A0</div><div>place</div><div><br></div><div>${D}=
${sysconfdir}/systemd/syst<wbr>em -&gt; .sysroot/etc/ssytemd/system<br></di=
v><div><br></div><div>and confirming there is a=C2=A0</div><div><br></div><=
div>.sysroot/etc/ssytemd/system/bt<wbr>attach-nrf-acm.service</div><div><br=
></div><div><br></div><div>Is this possible with devtool, or am I misinterp=
reting=C2=A0</div><div>what it&#39;s purpose is?</div><div><br></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--94eb2c04d54c3f94d6055d9ffc23--
