Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BC00E0086B; Mon, 22 Sep 2014 01:36:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
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
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BD0E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 01:36:47 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tr6so6899861ieb.12
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 01:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TArdFzyE1BbrkSeQ76O5ZZFyMO54RBtFZ/H8gczUjnc=;
	b=HLawNx3SIYzISRz0n6FHTGsPOmlCkx7F+NwwBTCMhhV6VIU3cvOTlQBfSy61PkB9XE
	AhIb0V4CC6ZPdlxibQl++llMwfliyqRnJjIgrJvvwE9ZVJQwTe/pVTTwWxY+9TJp3iLd
	hspe3XDWgLwbDJV9llNdpFSJQpa7sp/qyo7dsdgQk9KF1Kdai+P/l9Q94R8xRb1+G+UW
	cGxOsHI8MoVivNN8vPs7vEefhz3KfuXOMzFiyYWdTGXCfnTlE2VhDjjNROW9Q+QyCW1h
	dTbZnlE8zmy0rjdp8VlU1p9rSYWJNt0u4lTxZ/hL5S0DSxlwAEHNXcASMcpBvGT5hLiU
	DZ5w==
X-Received: by 10.50.87.99 with SMTP id w3mr1613689igz.4.1411375006953; Mon,
	22 Sep 2014 01:36:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.217 with HTTP; Mon, 22 Sep 2014 01:36:26 -0700 (PDT)
In-Reply-To: <26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1srWLwFN9-t70Yz=pLV6v77xapE2Y_=y-SrtY=1Mke-90Q@mail.gmail.com>
	<CA+Z6RkWwt9Xyd4jj7mRQHEBNK4O-wFWpmoN0kKaDDu6=_-ADyA@mail.gmail.com>
	<26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 22 Sep 2014 14:06:26 +0530
Message-ID: <CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Navani Srivastava <navani.srivastava@lnttechservices.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Mon, 22 Sep 2014 08:36:55 -0000
Content-Type: multipart/alternative; boundary=089e0111b854ef37440503a359dd

--089e0111b854ef37440503a359dd
Content-Type: text/plain; charset=UTF-8

I have to generate toolchain which contain qt related tools also like qmake
and qjson, so we are using meta-toolchain-qte to generate the toolchain..
Do you suggest it's better to integrate meta-toolchain-qte somehow with
populate_sdk so that we can make life easier?

Regards
Navani

On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
> > We are not using populatesdk ... we need to generate it through
> > meta-toolchain-qte only so i am trying with the solution provided by
> randy..
>
> Can I ask why? I'd like to understand where -c populate_sdk needs further
> improvement.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0111b854ef37440503a359dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have to generate toolchain which contain qt related tool=
s also like qmake and qjson, so we are using meta-toolchain-qte to generate=
 the toolchain..=C2=A0<div>Do you suggest it&#39;s better to integrate meta=
-toolchain-qte somehow with populate_sdk so that we can make life easier?=
=C2=A0</div><div><br></div><div>Regards</div><div>Navani</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 22, 2014 at =
1:45 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleto=
n@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sunday =
21 September 2014 09:26:07 Navani Srivastava wrote:<br>
&gt; We are not using populatesdk ... we need to generate it through<br>
&gt; meta-toolchain-qte only so i am trying with the solution provided by r=
andy..<br>
<br>
</span>Can I ask why? I&#39;d like to understand where -c populate_sdk need=
s further<br>
improvement.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--089e0111b854ef37440503a359dd--
