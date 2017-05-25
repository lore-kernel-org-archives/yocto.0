Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4632E0085D; Wed, 24 May 2017 22:38:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 672D5E00724
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 22:38:40 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id l18so268137609oig.2
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 22:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IYCGaCQxuKIwgrxYUP8rQcEjqaN2rSguX+M7Zt/hpio=;
	b=Jxh65x/aGqpLawuzUtBTKWQ69t0AcPJ44XmMY8PYhRWAejsikYaCQ+/pL8SMuCnbBU
	TV9Kbq1bG5eUjgm6B7kuFOcpJMsA/DKPiaVharhf1MLcWOGV9HDo4/yxW5I/LINxTFpT
	ScBZt7LlyqIjoUDUARHXXXO2vSM+Cdx+SCc4H99NyCELcRoe2Mg+rQmB5n7sXSAb8FE9
	2OADNlHw40EfYiHJWPOF85CzK6/TmplQoIvt5pTj0P4bgmmCEoreyw+9WAQC0AgRYy1y
	OxccQXzD+aV/7PaR/5GyH7yFuBPOt0tFxb9XPP0V4JMPZ4TiqGOUbGu/hPeoV1cxfAjb
	qigA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IYCGaCQxuKIwgrxYUP8rQcEjqaN2rSguX+M7Zt/hpio=;
	b=d1NZs5lm8H4IJSUBQFLQ7ZM5hUrdKmcdHOdj37Alw5jR8qMMLxklEG/SEdVIKC9lte
	oUXdNU1X+rP9+BS1byB1u5vXS4OHRPt+TP8u/iNKM6EvuLxvKuUeey4PCMkN4ybxdwyc
	Jm4e30fQFxoDSoMpff7hV4i4L2SQbGAetPAwUUhQ7o0Gu1hKk4fASlC98VnP3BLlAJHV
	ccsJxboMeqPuBSOE3AUTDblOvRiofOaHWZksmRgvDF2PYIRb1amHtUD9zUrXJ0CeN/tn
	xrdOvoIRY0oCzBWmTuoLByga8skAGTKw5UVBhZ4rVNhG1mkO9EpiBrZjoYC0W2pjyGh8
	Eu6w==
X-Gm-Message-State: AODbwcBOuMRXIfCdaVuKpunjgJrfjcyr6KBB5MnVhKFljtC14c7liTF8
	u5yL+lRWE1Qsf7HjAYCwiM42k/RPCA==
X-Received: by 10.202.199.69 with SMTP id x66mr16989022oif.215.1495690720440; 
	Wed, 24 May 2017 22:38:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Wed, 24 May 2017 22:38:39 -0700 (PDT)
Received: by 10.157.24.107 with HTTP; Wed, 24 May 2017 22:38:39 -0700 (PDT)
In-Reply-To: <CAHUNapQ=Axu8GV4XDBBhOc94u4D+kcw4tZH_gPGrC1Wm=X0nVA@mail.gmail.com>
References: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
	<CAHUNapQ=Axu8GV4XDBBhOc94u4D+kcw4tZH_gPGrC1Wm=X0nVA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 25 May 2017 07:38:39 +0200
Message-ID: <CAC+thW3Wo2zBbEB-nwU8QmYz8Fvw1twkoMSC3hm_dyJnavu=Ug@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Thu, 25 May 2017 05:38:46 -0000
Content-Type: multipart/alternative; boundary="001a11c1866615f68f055052a202"

--001a11c1866615f68f055052a202
Content-Type: text/plain; charset="UTF-8"

Il 25 mag 2017 6:12 AM, "Trevor Woerner" <twoerner@gmail.com> ha scritto:

Hi Yannick,

This is a feature many people have been wanting for a while, but
getting there has been slow. So slow, in fact, that many projects have
simply gone ahead and implemented their own solutions, all of which
are different from each other, making it all that much harder to get
everyone back together to support one idea :-(

As Gary mentions, "repo" is a popular solution. See, for example, how
the Linaro people have done it with their "rpb" distro and associated
setup tools/scripts:

https://github.com/96boards/oe-rpb-manifest

The freescale project was the first such instance I saw (but I can't
say whether they were the first or not):

https://github.com/Freescale/fsl-community-bsp-platform
http://freescale.github.io/#download

Mark Hatle (windriver) has been working on and releasing a tool
they've been using internally for a while:

https://www.openembedded.org/wiki/OEDEM_2016#Windriver_.E2.
80.98setup.E2.80.99_Demo

I'm sure there are better links for Mark's work, but I can't find them
at the moment. Hopefully someone jumps in and fills in the blanks :-)


https://github.com/Wind-River/wr-lx-setup


I'm sure there are other such examples.
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--001a11c1866615f68f055052a202
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">Il 25 mag 2017 6:12 AM, &quot;Trevor Woerner&quot; &lt;<a href=3D=
"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; ha scritto:<br type=
=3D"attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">Hi Yannick,<br>
<br>
This is a feature many people have been wanting for a while, but<br>
getting there has been slow. So slow, in fact, that many projects have<br>
simply gone ahead and implemented their own solutions, all of which<br>
are different from each other, making it all that much harder to get<br>
everyone back together to support one idea :-(<br>
<br>
As Gary mentions, &quot;repo&quot; is a popular solution. See, for example,=
 how<br>
the Linaro people have done it with their &quot;rpb&quot; distro and associ=
ated<br>
setup tools/scripts:<br>
<br>
<a href=3D"https://github.com/96boards/oe-rpb-manifest" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/96boards/<wbr>oe-rpb-manifest</a><br>
<br>
The freescale project was the first such instance I saw (but I can&#39;t<br=
>
say whether they were the first or not):<br>
<br>
<a href=3D"https://github.com/Freescale/fsl-community-bsp-platform" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/Freescale/<wbr>fsl-communi=
ty-bsp-platform</a><br>
<a href=3D"http://freescale.github.io/#download" rel=3D"noreferrer" target=
=3D"_blank">http://freescale.github.io/#<wbr>download</a><br>
<br>
Mark Hatle (windriver) has been working on and releasing a tool<br>
they&#39;ve been using internally for a while:<br>
<br>
<a href=3D"https://www.openembedded.org/wiki/OEDEM_2016#Windriver_.E2.80.98=
setup.E2.80.99_Demo" rel=3D"noreferrer" target=3D"_blank">https://www.opene=
mbedded.org/<wbr>wiki/OEDEM_2016#Windriver_.E2.<wbr>80.98setup.E2.80.99_Dem=
o</a><br>
<br>
I&#39;m sure there are better links for Mark&#39;s work, but I can&#39;t fi=
nd them<br>
at the moment. Hopefully someone jumps in and fills in the blanks :-)<br></=
blockquote></div></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<a href=3D"https://github.com/Wind-River/wr-lx-setup">https://github.com/Wi=
nd-River/wr-lx-setup</a><br></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote clas=
s=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
<br>
I&#39;m sure there are other such examples.<br>
<div class=3D"elided-text">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></blockquote></div><br></div></div></div>

--001a11c1866615f68f055052a202--
