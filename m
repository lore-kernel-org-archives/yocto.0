Return-Path: <smoosvi.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0380FE0080C; Tue,  2 Dec 2014 11:45:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (smoosvi.work[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DD6E002F9
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 11:45:07 -0800 (PST)
Received: by mail-vc0-f174.google.com with SMTP id id10so6146932vcb.19
	for <yocto@yoctoproject.org>; Tue, 02 Dec 2014 11:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=s1DhS++fajnfTKs9H2YL/hewnHP/CJ9j8y+PghREdds=;
	b=ltrx3BVYckqAkGD6fI1ns13y3Ot2kxI8g/+jm/IfIbLILPxLO46rmPfj18dMb/ahXg
	hT8gWPYwvOg0+OHovC2myFC1A5n8DXphQnLFrBvSoxsU2cck9llPcem8lNnHvLOm837g
	wUGUKs56pveuVD0YZ0ekfR4SpqDBaQsCIOA9sChpm554qbmaATzRmQ6BlUTZXOLcde6d
	BDeS/bNZTxx2ocaT7jGi5RMyIWBrXCRAXwPvsW59dVo8U1uVFVSe6V4hC3hGy9POtYm2
	pTOY2FJETtQ9fXXTKXbGbvvavgBW6yS6SUZhfj1yphZErLo2nC0JG9oWUlUTuDc8mcJI
	eYQg==
MIME-Version: 1.0
X-Received: by 10.220.81.196 with SMTP id y4mr690138vck.25.1417549506601; Tue,
	02 Dec 2014 11:45:06 -0800 (PST)
Received: by 10.31.33.65 with HTTP; Tue, 2 Dec 2014 11:45:06 -0800 (PST)
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDB561C71@MSXBEBVT12.planar.net>
References: <CADuAu8Qw_EZdNBN15LMoYz9tLX8PBP7pYWc_AgXd-+41yrPEFA@mail.gmail.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FDB561C71@MSXBEBVT12.planar.net>
Date: Tue, 2 Dec 2014 19:45:06 +0000
Message-ID: <CADuAu8RKxbAHrm2JaYErf3vTu7UnRmnqMAvhb9pzqo8EQ0+oaA@mail.gmail.com>
From: Syed Moosvi <smoosvi.work@gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Headers missing in generated SDK
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
X-List-Received-Date: Tue, 02 Dec 2014 19:45:11 -0000
Content-Type: multipart/alternative; boundary=001a11c1f022cae769050940f61e

--001a11c1f022cae769050940f61e
Content-Type: text/plain; charset=UTF-8

Hi Matt,

               I added the following but still not getting headers in the
generated SDK.

 *RDEPENDS_${PN}-dev = ""*        # added to openssl bb file

TOOLCHAIN_TARGET_TASK_append = " openssl-dev"   # added to local.conf file

Also, I don't get any errors when I don't add RDEPENDS_ but I think
you were getting some errors.
Any clues as to what I may be missing?

Thanks,

Syed


On Wed, Nov 26, 2014 at 6:07 PM, Matt Schuckmann <Matt.Schuckmann@planar.com
> wrote:

> Syed,
>
> Your problem sounds similar to a problem I had getting my own headers and
> static library included in the SDK.
> Check out this thread to see if it helps.
>
> https://lists.yoctoproject.org/pipermail/yocto/2014-September/021678.html
>
> Matt S.
>
>

--001a11c1f022cae769050940f61e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Matt,<br><br></div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I added the followin=
g but still not getting headers in the generated SDK.<br><br>=C2=A0<i>RDEPE=
NDS_${PN}-dev =3D &quot;&quot;</i>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 # added to openssl bb file <br><pre>TOOLCHAIN_TARGET_TASK_append =3D &q=
uot; openssl-dev&quot;   # added to local.conf file<br><br></pre><pre><span=
 style=3D"font-family:arial,helvetica,sans-serif">Also, I don&#39;t get any=
 errors when I don&#39;t add RDEPENDS_ but I think you were getting some er=
rors. <br>Any clues as to what I may be missing?<br><br></span></pre><pre><=
span style=3D"font-family:arial,helvetica,sans-serif">Thanks,<br></span></p=
re><pre><span style=3D"font-family:arial,helvetica,sans-serif">Syed</span><=
/pre></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed=
, Nov 26, 2014 at 6:07 PM, Matt Schuckmann <span dir=3D"ltr">&lt;<a href=3D=
"mailto:Matt.Schuckmann@planar.com" target=3D"_blank">Matt.Schuckmann@plana=
r.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Syed,<br>
<br>
Your problem sounds similar to a problem I had getting my own headers and s=
tatic library included in the SDK.<br>
Check out this thread to see if it helps.<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-September/02=
1678.html" target=3D"_blank">https://lists.yoctoproject.org/pipermail/yocto=
/2014-September/021678.html</a><br>
<br>
Matt S.<br>
<br>
</blockquote></div><br></div>

--001a11c1f022cae769050940f61e--
