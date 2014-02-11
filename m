Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9837EE007B1
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 21:54:08 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id lj1so7177911pab.40
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 21:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=P21aS8iJPSv1bDQjTFTRPZ9TYXMIoTnKYQelt6F6+Vs=;
	b=CjvjkZEVOSnXobdvjlSVVCG1TY85Jh9LPYu0faa5gZfcjabfQ141n6IePLO3qkfYcj
	KJLto6tO8/N6g2c9iR6GKlewKH6aUpV7QLsMCOL0L1z9wXPRMs7dmfWoFBJhbCftrtxA
	8JDy545DHuxF9rDnHKrBiLi3nhnSBDGVGmA5Lkqe4ghxXPbA/6aD84ZKkjxnN0WaW/KK
	W/crHKJU23PCoYvV5vpiCN+Q2e7lYGa0YdpX7HnOdlUGAHlNVnxcI4Aa8HRrcfsOWhDe
	GKEE6XMCHfVGVbO9hdUJzGPoKN9csB0xJ7MDUpZ/XqZUfpIkH8ylR+9vPff38RJkcvGV
	yCEQ==
X-Received: by 10.68.96.99 with SMTP id dr3mr42411557pbb.40.1392098048547;
	Mon, 10 Feb 2014 21:54:08 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30])
	by mx.google.com with ESMTPSA id e6sm48812384pbg.4.2014.02.10.21.54.02
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 10 Feb 2014 21:54:06 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <17797116383D4341B029FDF34C22BF6A72FEFCE970@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Mon, 10 Feb 2014 21:53:57 -0800
Message-Id: <3191CAF4-6496-4EA5-9D3F-4A1B206CA248@gmail.com>
References: <17797116383D4341B029FDF34C22BF6A72FEFCE970@GUREXMB01.ASIAN.AD.ARICENT.COM>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
X-Mailer: Apple Mail (2.1827)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error in configuring multilib ie libstdc++ for c++
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
X-List-Received-Date: Tue, 11 Feb 2014 05:54:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E1FB694A-AC0E-488F-B511-8A846AF31C60"

--Apple-Mail=_E1FB694A-AC0E-488F-B511-8A846AF31C60
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Jan 26, 2014, at 10:51 PM, Rohit2 Jindal <rohit2.jindal@aricent.com> =
wrote:

> Hi,
> =20
> I am trying to compile both c and c++ multilib for elf toolchain but =
its giving error in configuring the same for c++. Logs are attached with =
this mail. And EXTRA_OECONF passed are as below:
> =20
> EXTRA_OECONF +=3D =
"--with-sysroot=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/lib/mips32-nlm-elf.g=
cc-cross-initial/gcc/mips64-nlm-elf/4.6.3 \

you are trying to mix bare metal compiler toolchain with hosted =
toolchain targeting Linux ?
OpenEmbedded has concept of TARGET_OS and now you could unset it but =
thats a untreated territory. If you explain in essence what you are =
trying to do. May be there is a solution.

>                 --enable-threads \
>                 --enable-multilib \
>                 --disable-libmudflap \
>                 --disable-libssp \
>                 --disable-libstdcxx-pch \
>                 --with-gnu-as \
>                 --with-gnu-ld \
>                 --with-mips-plt \
>                  --enable-languages=3Dc,c++ \
>                 --enable-lto \
>                 --disable-nls \
>                 --disable-shared \
>                 --disable-threads \
>                 --disable-libgomp \
>                 --without-headers \
>                 --with-newlib \
>                 --disable-decimal-float \
>                 --disable-libffi \
>                 --disable-libquadmath \
>                 --disable-libitm \
>                 --enable-poison-system-directories \
>                 =
--with-gxx-include-dir=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/${TARGET_SYS}=
/usr/include/c++ \
>                 --enable-cxx-flags=3D'-G0 -mno-gpopt' \
> =20
> Please suggest me the way to resolve this issue.
> =20
> Regards,
> Rohit Jindal
> =20
>=20
>=20
>=20
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> <error in configuring multilib for =
c++.log>_______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_E1FB694A-AC0E-488F-B511-8A846AF31C60
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On Jan 26, 2014, at 10:51 PM, Rohit2 =
Jindal &lt;<a =
href=3D"mailto:rohit2.jindal@aricent.com">rohit2.jindal@aricent.com</a>&gt=
; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div class=3D"WordSection1" =
style=3D"page: WordSection1;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;">Hi,<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">I am =
trying to compile both c and c++ multilib for elf toolchain but its =
giving error in configuring the same for c++. Logs are attached with =
this mail. And EXTRA_OECONF passed are as below:<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">EXTRA_OECONF +=3D =
"--with-sysroot=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/lib/mips32-nlm-elf.g=
cc-cross-initial/gcc/mips64-nlm-elf/4.6.3 =
\</div></div></div></blockquote><div><br></div><div>you are trying to =
mix bare metal compiler toolchain with hosted toolchain targeting Linux =
?</div><div>OpenEmbedded has concept of TARGET_OS and now you could =
unset it but thats a untreated territory. If you explain in essence what =
you are trying to do. May be there is a solution.</div><br><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div class=3D"WordSection1" =
style=3D"page: WordSection1;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-threads \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-multilib \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libmudflap =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--disable-libssp \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libstdcxx-pch =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gnu-as \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gnu-ld \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-mips-plt \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--enable-languages=3Dc,c++ =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-lto \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-nls \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-shared \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-threads \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libgomp \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --without-headers \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-newlib \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-decimal-float =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libffi \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libquadmath =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libitm \<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-poison-system-directories =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
--with-gxx-include-dir=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/${TARGET_SYS}=
/usr/include/c++ \<o:p></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-cxx-flags=3D'-G0 -mno-gpopt' =
\<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif;"><o:p>&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;">Please suggest me the way to resolve this =
issue.<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">Regards,<o:p></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;">Rohit =
Jindal<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, =
sans-serif;"><o:p>&nbsp;</o:p></div></div><br><font face=3D"Arial" =
color=3D"Gray" =
size=3D"2"><br><br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Please refer to<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://www.aricent.com/legal/email_disclaimer.html" =
style=3D"color: purple; text-decoration: =
underline;">http://www.aricent.com/legal/email_disclaimer.html</a><br>for =
important disclosures regarding this electronic =
communication.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></font><span>&lt;error in configuring =
multilib for =
c++.log&gt;</span>_______________________________________________<br>yocto=
 mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color:=
 purple; text-decoration: underline;">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: =
underline;">https://lists.yoctoproject.org/listinfo/yocto</a></div></block=
quote></div><br></body></html>=

--Apple-Mail=_E1FB694A-AC0E-488F-B511-8A846AF31C60--
