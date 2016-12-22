Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C56E007C2; Thu, 22 Dec 2016 08:53:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93F81E005B9
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:53:52 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y68so12700613pfb.1
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=r3nCzRIHvhlKVX/gYmO58/nCMEihMbnCBY/iwG65jCQ=;
	b=inM/T+U6bal5BdQeARaLGF4gRQ+0HXRjXhcKs8hLBd88T8RIqFWlxQNmFkWZ1ff0rG
	6A3is+la3+8vuG65PIzh4f9+GfV+PIQBvciMMZh2bcvX6yqy4Lqh/wh0xll1jLdv0aWG
	sFpH05qxCn+uRocAfSue2DDEbNbbaZBZwePyXhzCcJtFBlnw2Tmdtykt0+DjbqYflH47
	+cK7cL4/U6cNVLzSb450KVYK47H80Ny+F3f7D2Y/dBl0JqHX8Z4SHgyctegtxluD0EZr
	tDjzn/bQBif8+jP4BkEZz9nha7jDffxqCEOHRjpouqxGztzr7d6sQ5Q/RxqBTXuBdQgo
	51Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=r3nCzRIHvhlKVX/gYmO58/nCMEihMbnCBY/iwG65jCQ=;
	b=KAWrhJqtWtgWj/joT3lUD/+Lxvw+SUUdcY0iL7j5HUu55cKwEjhLdN/UizqX0sw3/t
	EmgNsrPaSrfksDv3mw7FTxPn2PIYWxOit1+ja9nzIM6GVsD6yGLTCB3kqpmt7ETpTI5M
	sNw+DPtasf0y+MyZAz0xTxVPX2TVXlTgq6tyZnBPmQt04zr5HY5SEb9f0pf2TcuTV0P6
	1M7omxu6LCg3qNTSbrqUctzO9rO/sSHZUcyHCHfx4j4tdtYEbIwdl6JTsIgN37j3uXRj
	HtALdIzc9V/VISVKim9NINKkg7fShgPuts110d34PlLag0uFi5VHRT0eb28K965RuHwn
	MUig==
X-Gm-Message-State: AIkVDXI28eu1Opear+Pmf96KyUx65Qf9rfqaIBxc3mtbxwqf4fYDUtRP1BH7TC5MSkZFGQ==
X-Received: by 10.99.177.73 with SMTP id g9mr18582472pgp.32.1482425631692;
	Thu, 22 Dec 2016 08:53:51 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:dc6c:df58:7743:431c?
	([2601:646:8882:b8c:dc6c:df58:7743:431c])
	by smtp.gmail.com with ESMTPSA id
	c142sm56024083pfb.23.2016.12.22.08.53.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Dec 2016 08:53:51 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <A4E2FBE4-80AB-498B-AAFD-04B9EA293994@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Thu, 22 Dec 2016 08:53:51 -0800
In-Reply-To: <c6d9b66bf50d4dbfaa4e3b5a5191263e@FE-MBX1014.de.bosch.com>
To: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
References: <c6d9b66bf50d4dbfaa4e3b5a5191263e@FE-MBX1014.de.bosch.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6IEFkZGluZyBtdWx0aXBsZSBwYXRjaGVzIHRvIFNSQ19VUkkgaW4gYSByZWNpcGUg4oCUIFlvY3Rv?=
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
X-List-Received-Date: Thu, 22 Dec 2016 16:53:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8C4F4DFC-9DED-49DC-B002-C38992C52C2B"

--Apple-Mail=_8C4F4DFC-9DED-49DC-B002-C38992C52C2B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Vinoth

> On Dec 21, 2016, at 11:23 PM, Eswaran Vinothkumar (BEG-PT/PJ-IOT1) =
<Vinothkumar.Eswaran@de.bosch.com> wrote:
>=20
> Hi,
> =20
> I am creating a BSP to customized board using Yocto. I have some =
hundred plus patches for the Linux kernel and barebox. To include the =
patches for the Linux kernel, I have created an .scc file. In the .scc =
file I have included all the patches required.The SRC_URI option in the =
kernel recipe looks like:
> =20
>     SRC_URI +=3D =
"https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.0.9.tar.xz =
<https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.0.9.tar.xz> \
>                 file://kernelpatch.scc <file:///kernelpatch.scc> \
>                 file://kernel-4.0.9.cfg <file:///kernel-4.0.9.cfg> \
>                 "
> =20
> For the barebox, I tried to do the same, but it seems it doesn't =
support .scc files. So now I have included all the hundred plus patches =
using `file://patchname.patch` <file://patchname.patch`>  in  SRC_URI:
> =20
>             file://patches/0001-drivers.patch =
<file://patches/0001-drivers.patch> \
>             file://patches/0002-hw_random-C.patch =
<file://patches/0002-hw_random-C.patch> \
>     .
>     .
>     .
>     .
>             file://patches/0304-usb-fastbootupport.patch =
<file://patches/0304-usb-fastbootupport.patch> \
> =20
> I would like to know is there a better way for adding multiple patches =
to the SRC_URI ?

Yocto kernel tooling is special for kernel and with some effort it can =
be extended to other kconfig based packages but I dont think we do that =
yet.
so yes the .scc mechanism wont work for non linux-yocto recipes.

You can append to SRC_URI for bare box recipe directly. e.g.

SRC_URI +=3D =E2=80=9Cfile://one.patch <file:///one.patch> \
                        file:/two.patch \
                        =E2=80=A6.
                       =E2=80=9C

I would also suggest to go through

=
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#system-=
development-model =
<http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#system=
-development-model>


> =20
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards=20
>=20
> Vinothkumar Eswaran
> BEG-PT/PJ-IOT1
>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_8C4F4DFC-9DED-49DC-B002-C38992C52C2B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Vinoth<div class=3D""><br class=3D""><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Dec 21, 2016, at 11:23 PM, =
Eswaran Vinothkumar (BEG-PT/PJ-IOT1) &lt;<a =
href=3D"mailto:Vinothkumar.Eswaran@de.bosch.com" =
class=3D"">Vinothkumar.Eswaran@de.bosch.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span style=3D"font-size: =
10pt; font-family: Arial, sans-serif;" class=3D"">Hi,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" class=3D""><o:p=
 class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif;" class=3D"">I am creating a BSP to customized board using =
Yocto. I have some hundred plus patches for the Linux kernel and =
barebox. To include the patches for the Linux kernel, I have created an =
.scc file. In the .scc file I have included all the patches required.The =
SRC_URI option in the kernel recipe looks like:<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" class=3D""><o:p=
 class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif;" class=3D"">&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span lang=3D"DE" =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">SRC_URI +=3D "<a =
href=3D"https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.0.9.tar.xz" =
style=3D"color: rgb(149, 79, 114); text-decoration: underline;" =
class=3D"">https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.0.9.tar.xz=
</a><span class=3D"Apple-converted-space">&nbsp;</span>\<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"DE" style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;<a href=3D"file:///kernelpatch.scc" =
style=3D"color: rgb(149, 79, 114); text-decoration: underline;" =
class=3D"">file://kernelpatch.scc</a><span =
class=3D"Apple-converted-space">&nbsp;</span>\<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"DE" style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;<a href=3D"file:///kernel-4.0.9.cfg" =
style=3D"color: rgb(149, 79, 114); text-decoration: underline;" =
class=3D"">file://kernel-4.0.9.cfg</a><span =
class=3D"Apple-converted-space">&nbsp;</span>\<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"DE" style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"font-size: 10pt; =
font-family: Arial, sans-serif;" class=3D"">"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" class=3D""><o:p=
 class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif;" class=3D"">For the barebox, I tried to do the same, but it =
seems it doesn't support .scc files. So now I have included all the =
hundred plus patches using `<a href=3D"file://patchname.patch`" =
style=3D"color: rgb(149, 79, 114); text-decoration: underline;" =
class=3D"">file://patchname.patch`</a><span =
class=3D"Apple-converted-space">&nbsp;</span>&nbsp;in&nbsp; SRC_URI:<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" class=3D""><o:p=
 class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"file://patches/0001-drivers.patch" style=3D"color: rgb(149, 79, =
114); text-decoration: underline;" =
class=3D"">file://patches/0001-drivers.patch</a><span =
class=3D"Apple-converted-space">&nbsp;</span>\<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"file://patches/0002-hw_random-C.patch" style=3D"color: rgb(149, =
79, 114); text-decoration: underline;" =
class=3D"">file://patches/0002-hw_random-C.patch</a><span =
class=3D"Apple-converted-space">&nbsp;</span>\<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp; .<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 10pt; =
font-family: Arial, sans-serif;" class=3D"">&nbsp;&nbsp;&nbsp; .<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp; .<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 10pt; =
font-family: Arial, sans-serif;" class=3D"">&nbsp;&nbsp;&nbsp; .<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"file://patches/0304-usb-fastbootupport.patch" style=3D"color: =
rgb(149, 79, 114); text-decoration: underline;" =
class=3D"">file://patches/0304-usb-fastbootupport.patch</a><span =
class=3D"Apple-converted-space">&nbsp;</span>\<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" class=3D""><o:p=
 class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif;" class=3D"">I would like to know is there a better way for =
adding multiple patches to the SRC_URI ?<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif;" =
class=3D""></span></div></div></div></blockquote><div><br =
class=3D""></div><div>Yocto kernel tooling is special for kernel and =
with some effort it can be extended to other kconfig based packages but =
I dont think we do that yet.</div><div>so yes the .scc mechanism wont =
work for non linux-yocto recipes.</div><div><br class=3D""></div><div>You =
can append to SRC_URI for bare box recipe directly. e.g.</div><div><br =
class=3D""></div><div>SRC_URI +=3D =E2=80=9C<a href=3D"file:///one.patch" =
class=3D"">file://one.patch</a>&nbsp;\</div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
file:/two.patch \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=80=A6.</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=E2=80=9C</div><div><br class=3D""></div><div>I would also suggest =
to go through</div><div><br class=3D""></div><div><a =
href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html=
#system-development-model" =
class=3D"">http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.h=
tml#system-development-model</a></div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span style=3D"font-size: =
10pt; font-family: Arial, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-size: 10pt; font-family: Arial, =
sans-serif;" class=3D""><o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span lang=3D"DE" style=3D"font-size: =
10pt; font-family: Arial, sans-serif;" class=3D"">Mit freundlichen =
Gr=C3=BC=C3=9Fen / Best regards<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><br =
class=3D""><b class=3D"">Vinothkumar Eswaran<br =
class=3D"">BEG-PT/PJ-IOT1<br class=3D""></b></span><span lang=3D"DE" =
style=3D"font-size: 8pt; font-family: Arial, sans-serif;" class=3D""><br =
class=3D""><br class=3D""></span><span lang=3D"DE" class=3D""><o:p =
class=3D""></o:p></span></div></div><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: Times-Roman; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">yocto@yoctoproject.org</a><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
rgb(149, 79, 114); text-decoration: underline; font-family: Times-Roman; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></body></html>=

--Apple-Mail=_8C4F4DFC-9DED-49DC-B002-C38992C52C2B--
