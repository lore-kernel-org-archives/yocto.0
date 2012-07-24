Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0541E00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 12:36:34 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so8280032ggn.35
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 12:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=gGE5tn+JU3hjozoIfdAUl3qdpMiw+aKLdhcH/UF206w=;
	b=xFBu/vJ5BGq3M1HlK0/Lcw84KYflL1hKaSsDAvZ2c4VifxrbqIV/pzaan6z6cIKyur
	t+tFWRNcANXLsGIVylsb4LAAk3GoGmaE4O1VsMiyxFoXOEhadvwgkDH56GXsnfOelV3a
	Xaztvnj46s/HtPRfYMd6WEHJOnb4sG4Cqf7VomOnIUGT2eWhDfrBZlruJPSMkXb58H53
	cyGwLdcFtdpzcWGenHbhcJsXo6n0jXZ2qYdcBQAo6D6RvSebmSKifB+FyYKNTtzi4zRT
	wuHy25kyzgj4xZ6ZCyUoDyiRRgfvANWjc0g1HyXO0jsH+T0LUe7CTZLkF3LlJnN4VoGc
	WnvA==
Received: by 10.66.87.66 with SMTP id v2mr6945066paz.71.1343158593561;
	Tue, 24 Jul 2012 12:36:33 -0700 (PDT)
Received: from [192.168.1.120] ([94.205.108.162])
	by mx.google.com with ESMTPS id hx9sm1660172pbc.68.2012.07.24.12.36.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Jul 2012 12:36:32 -0700 (PDT)
References: <3E35CC86-5BD8-4B88-99EE-F7C8A5742F50@gmail.com>
	<CAEsOVNegFwoe+83-n88-XVAEh13cbXaX1dsY4gM9rEeuvgytCg@mail.gmail.com>
In-Reply-To: <CAEsOVNegFwoe+83-n88-XVAEh13cbXaX1dsY4gM9rEeuvgytCg@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <2D733773-9752-489E-BB14-46E2F8025356@gmail.com>
X-Mailer: iPad Mail (9B206)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Tue, 24 Jul 2012 23:36:28 +0400
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get login prompt for Xilinx ML507 PowerPC440 target development board
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jul 2012 19:36:35 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-226019C5-A13A-48C7-A4E8-4559388F4139

--Apple-Mail-226019C5-A13A-48C7-A4E8-4559388F4139
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Jul 24, 2012, at 11:15 PM, McClintock Matthew-B29882 <B29882@freescale.co=
m> wrote:

> On Tue, Jul 24, 2012 at 12:03 PM, Elvis Dowson <elvis.dowson@gmail.com> wr=
ote:
>> Hi,
>>      I have progressed somewhat further with getting Yocto to build a
>> kernel image and rootfilesystem for the Xilinx ML507 PowerPC440 target
>> development board.
>>=20
>> For some reason, I'm unable to get a login prompt. The serial console dev=
ice
>> is ttyUL0. If someone could help me figure out what's going wrong, it wou=
ld
>> be great. I have checked /etc/securetty and it does contain an entry for
>> ttyUL0.
>=20
> You don't use /etc/inittab to spawn consoles?
>=20
=20
It is set as follows:
0:2345:respawn:/sbin/agetty 115200 ttyUL0
Best regards,

Elvis=

--Apple-Mail-226019C5-A13A-48C7-A4E8-4559388F4139
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head></head><body bgcolor=3D"#FFFFFF"><div>Hi,</div><div><br></div><d=
iv>On Jul 24, 2012, at 11:15 PM, McClintock Matthew-B29882 &lt;<a href=3D"ma=
ilto:B29882@freescale.com">B29882@freescale.com</a>&gt; wrote:<br><br></div>=
<div></div><blockquote type=3D"cite"><div><span>On Tue, Jul 24, 2012 at 12:0=
3 PM, Elvis Dowson &lt;<a href=3D"mailto:elvis.dowson@gmail.com">elvis.dowso=
n@gmail.com</a>&gt; wrote:</span><br><blockquote type=3D"cite"><span>Hi,</sp=
an><br></blockquote><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;I have progressed somewhat further with getting Yocto to build a</spa=
n><br></blockquote><blockquote type=3D"cite"><span>kernel image and rootfile=
system for the Xilinx ML507 PowerPC440 target</span><br></blockquote><blockq=
uote type=3D"cite"><span>development board.</span><br></blockquote><blockquo=
te type=3D"cite"><span></span><br></blockquote><blockquote type=3D"cite"><sp=
an>For some reason, I'm unable to get a login prompt. The serial console dev=
ice</span><br></blockquote><blockquote type=3D"cite"><span>is ttyUL0. If som=
eone could help me figure out what's going wrong, it would</span><br></block=
quote><blockquote type=3D"cite"><span>be great. I have checked /etc/securett=
y and it does contain an entry for</span><br></blockquote><blockquote type=3D=
"cite"><span>ttyUL0.</span><br></blockquote><span></span><br><span>You don't=
 use /etc/inittab to spawn consoles?</span><br><br><blockquote type=3D"cite"=
><span></span></blockquote><blockquote type=3D"cite"><span></span></blockquo=
te><blockquote type=3D"cite"><span></span></blockquote></div></blockquote>&n=
bsp;<div>It is set as follows:<br><pre style=3D"padding-top: 1em; padding-ri=
ght: 1em; padding-bottom: 1em; padding-left: 1em; border-top-width: 1px; bor=
der-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; bord=
er-top-style: solid; border-right-style: solid; border-bottom-style: solid; b=
order-left-style: solid; border-top-color: rgb(187, 204, 221); border-right-=
color: rgb(187, 204, 221); border-bottom-color: rgb(187, 204, 221); border-l=
eft-color: rgb(187, 204, 221); background-color: rgb(235, 241, 245); overflo=
w-x: auto; overflow-y: auto; "><font class=3D"Apple-style-span" face=3D"Helv=
etica"><span class=3D"Apple-style-span" style=3D"white-space: normal;">0:234=
5:respawn:/sbin/agetty 115200 ttyUL0</span></font><span class=3D"Apple-style=
-span" style=3D"color: rgb(34, 34, 34); font-family: monospace; font-size: 1=
3px; line-height: 1.1em; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.292=
969); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit=
-composition-frame-color: rgba(77, 128, 180, 0.230469); ">
</span></pre><div style=3D"font-family: sans-serif; font-size: 13px; line-he=
ight: 19px; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.292969); -webkit=
-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-=
frame-color: rgba(77, 128, 180, 0.230469); ">Best regards,</div><div style=3D=
"font-family: sans-serif; font-size: 13px; line-height: 19px; -webkit-tap-hi=
ghlight-color: rgba(26, 26, 26, 0.292969); -webkit-composition-fill-color: r=
gba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(77, 128,=
 180, 0.230469); "><br></div><div style=3D"font-family: sans-serif; font-siz=
e: 13px; line-height: 19px; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.=
292969); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -web=
kit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">Elvis</div></di=
v></body></html>=

--Apple-Mail-226019C5-A13A-48C7-A4E8-4559388F4139--
