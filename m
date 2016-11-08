Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E578DE007E8; Tue,  8 Nov 2016 02:01:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADED0E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 02:01:14 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id x190so208270546qkb.0
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 02:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cQvCSYsix0BpQD0TfIdIiZ7yQ44b0mChya79thbEoi8=;
	b=nmyBqQ25HmaUz56FlwMgcqJ+puS+ZBPEwci2Q+F7U3wFEKGp4QSc099d17lcgm6OyI
	F4RIF7sDLvwv1LZHwP975+oFoGc4Dsy3ULTDrH+0ts3zj0hV+6tZs62mwoqHhMM44xxI
	/Xijm5DiFW0hgZ3x1xHG9xC0r0YW6TkLjkufFGQvyEsVfX67YPEQ1RPBmfHTyGfar0H6
	Mw5y/0wtcAW8Vpf+3LgcaIuo/7iH4qmg//BIbfHRAP2eWrEM4Q3Wk1oaVeCCP8QCSCvB
	tD4PVLmDLh+G47pEnKbS++k/vZxShaL0CtTfFc4TtP1tSIK5IZnQqDuvTX4OgkYGHUrz
	zaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cQvCSYsix0BpQD0TfIdIiZ7yQ44b0mChya79thbEoi8=;
	b=EWfyWbX/hIZ7ALI6Zs6M2xc2d8Fx2/IduNtDPdug9B0AxJIFLxLdrkOxalEovlwjB0
	NfMqR77f4soX29+LsCHBXaSSnFVUHbvy2pbT4vINlHcWAj9ILQGYnT4kXamYWbkWayMG
	ye60gKxjCzC2qIBD0MERyC69ZsUXSVovKCSOs6c8wUZA75Q8fWdh2JxbqWij/0qvCpYV
	JxdiSYd+qRuV3yuGgOlYiAut7SgTACnx8VL9lgOiyLZyG8Tfk/bUZMbg/85uYhRqoERs
	XdNr10/DmTGuY6zYCeqOGhWqjUE70Ntf3EW7XxW09WePiT4Wey6Ay2ntt1xSBRElnME3
	1QJA==
X-Gm-Message-State: ABUngvfFFgkuyzG+/0KyvSLZlHknCDNO8QgAsOOooMTLCcauXn5YRvoIwroRp/H4Jix6E5fl8x+OEH5pBYVdjKmp
X-Received: by 10.55.5.145 with SMTP id 139mr11325563qkf.77.1478599273755;
	Tue, 08 Nov 2016 02:01:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Tue, 8 Nov 2016 02:00:53 -0800 (PST)
In-Reply-To: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 8 Nov 2016 10:00:53 +0000
Message-ID: <CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 10:01:18 -0000
Content-Type: multipart/alternative; boundary=001a114c8f847a50280540c7386e

--001a114c8f847a50280540c7386e
Content-Type: text/plain; charset=UTF-8

On 8 November 2016 at 04:52, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote:

> Our SDK has the Yocto Project 1.7 Dizzy version and it supports cmake
> 2.8.12 version as show below:
> ./meta/recipes-devtools/cmake/cmake_2.8.12.2.bb
> ./meta/recipes-devtools/cmake/cmake-native_2.8.12.2.bb
>
> We need to pulling the cmake 3.x.x version for our sdk-dslink-c recipe
> build.
>
> I found  git://git.openembedded.org/openembedded-core has version  3.6.x
> So I tried to pull it in. But this version got a trace back when
> integrated to our SDK Yocto Dizzy.
>
> Can you advise which open embedded-core version/git location to pull in
> to SDK Dizzy version for cmake 3.x.x version
>

There is no official dizzy recipe for cmake 3.  If you share what the error
is, then we may be able to help backporting the recipe to dizzy.

Ross

--001a114c8f847a50280540c7386e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 November 2016 at 04:52, Dinh Nguyen (dinhn) <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:dinhn@cisco.com" target=3D"_blank">dinhn@cisco.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"color:rgb(0,0,0=
)"><div><span style=3D"font-size:16px"><font face=3D"Arial">Our SDK has the=
 Yocto Project 1.7 Dizzy version and it=C2=A0supports cmake 2.8.12 version =
as show below:</font></span></div>
</div>
<span id=3D"m_-8845536722181187454OLK_SRC_BODY_SECTION">
<div style=3D"word-wrap:break-word">
<div style=3D"color:rgb(0,0,0)">
<div><font face=3D"Arial" style=3D"font-size:16px">./meta/recipes-devtools/=
cmake/<a href=3D"http://cmake_2.8.12.2.bb" target=3D"_blank"><wbr>cmake_2.8=
.12.2.bb</a></font></div>
<div><font face=3D"Arial" style=3D"font-size:16px">./meta/recipes-devtools/=
cmake/<a href=3D"http://cmake-native_2.8.12.2.bb" target=3D"_blank"><wbr>cm=
ake-native_2.8.12.2.bb</a></font></div>
</div>
<div style=3D"color:rgb(0,0,0)"><font face=3D"Arial" style=3D"font-size:16p=
x"><br>
</font></div>
<div style=3D"color:rgb(0,0,0)"><font face=3D"Arial" style=3D"font-size:16p=
x">We need to pulling the cmake 3.x.x version for our sdk-dslink-c recipe b=
uild.</font></div>
<div style=3D"color:rgb(0,0,0)"><font face=3D"Arial" style=3D"font-size:16p=
x"><br>
</font></div>
<div style=3D"color:rgb(0,0,0)"><font face=3D"Arial" style=3D"font-size:16p=
x">I found =C2=A0<span style=3D"color:rgb(51,51,51);background-color:rgb(25=
5,255,255)">git://<a href=3D"http://git.openembedded.org/openembedded-core"=
 target=3D"_blank">git.openembedded.org/<wbr>openembedded-core</a> has vers=
ion =C2=A03.6.x=C2=A0</span></font></div>
<div style=3D"color:rgb(0,0,0)"><font face=3D"Arial" style=3D"font-size:16p=
x"><font color=3D"#333333">S</font><span style=3D"background-color:rgb(255,=
254,254)"><font color=3D"#333333">o=C2=A0</font><font color=3D"#333333">I</=
font><font color=3D"#333333">=C2=A0tried
 to pull it in. But this version got a trace back when integrated to our SD=
K Yocto Dizzy.</font></span></font></div>
<div style=3D"color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,254=
,254);font-size:16px"><font color=3D"#333333" face=3D"Arial"><br>
</font></span></div>
<div><span style=3D"font-size:16px"><font face=3D"Arial"><span style=3D"col=
or:rgb(0,0,0);background-color:rgb(255,254,254)"><font color=3D"#333333">Ca=
n you advise which=C2=A0</font></span><font color=3D"#333333">open
 embedded-core version/git location<font color=3D"#000000">=C2=A0to pull in=
 to SDK Dizzy version for cmake 3.x.x version</font></font></font></span></=
div>
<div style=3D"color:rgb(0,0,0)"></div></div></span></blockquote></div><br>T=
here is no official dizzy recipe for cmake 3.=C2=A0 If you share what the e=
rror is, then we may be able to help backporting the recipe to dizzy.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a114c8f847a50280540c7386e--
