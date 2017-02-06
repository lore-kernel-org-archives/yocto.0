Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E52DE00992; Mon,  6 Feb 2017 03:45:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61E05E007BA
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2017 03:45:40 -0800 (PST)
Received: by mail-qt0-f179.google.com with SMTP id w20so97245661qtb.1
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2017 03:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s7zQxo6wEyD2mm0Co6Fcf/1vhg4u5HicC1/ihKd9E7g=;
	b=LZdyMpXMoXj/nD5156b+OMqygOys0twhFMVEcdoX+JCdn4Bf4FwFxvILKYgb0DnElv
	Syy09H7B7jpT5U1X2ZC8D9913o2WFWDAH8qlTrkp8TiUe2t6d7xycGgmlg9nDALedGJy
	IaJrf4wkvzO4UIi9EPrPhGPOS5yZGVDmmf/7aLYH6Nqk3renVvTc+XxbkhfehybyByca
	rGm5CtE9xCpUReAhn9xmNAWfy3+kmL+AC7vhP827CBgtPac5aUmw3p5zUATLBEDdoo9R
	EAWW9CRtB7Yx03BBSaGGzKeVNNPLoV0myN8elXsoTO6JNDTFMAAacUfmGsUO1LZNC9HN
	08pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s7zQxo6wEyD2mm0Co6Fcf/1vhg4u5HicC1/ihKd9E7g=;
	b=sHtXSUtIL9DrKKwy8Y8CQlA6i0ap0r0hKjz92a95xfgLpqXmALljX/f/d2y4CbYj8a
	/e0iQ42kg7clToLbLd7N5rSSpkQ5aSALQooAsNeTUdcbebcxlTeE433aCTrWm8Ih256N
	QoKSBD6n87E0AyKstiCqrovzQsBfVnGqaYNncnjifmXCOYfrDqbqpCCTT3udBBzkArjX
	nuGemOTGafHN6Wq9jee2EZ2oP4yoMntiFZcId+1JgE1jXLbHXYrDCXl8us3Sb4yazKwf
	V7VSeqhdcMRKiQ/t9HYUb7etdC5q/5yvPMutDp5xMhkZrtJQznZMhXZDljldNDbNjQMr
	tc5A==
X-Gm-Message-State: AMke39muVyRo32iRfgyb4Jkaaltl0VrCaJcpNku/rKz77zFrTz0HJvFBk5dJT3JOy6lo8Zr0qWM4sqyG2w5nWdeH
X-Received: by 10.237.36.208 with SMTP id u16mr9629984qtc.105.1486381539452;
	Mon, 06 Feb 2017 03:45:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 6 Feb 2017 03:45:19 -0800 (PST)
In-Reply-To: <CAA2DH4sy_BxdFqVRa=R5VC7BAuSNqu-mwGPdTxXsZoh7k+p2ag@mail.gmail.com>
References: <CAA2DH4sy_BxdFqVRa=R5VC7BAuSNqu-mwGPdTxXsZoh7k+p2ag@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Feb 2017 11:45:19 +0000
Message-ID: <CAJTo0LbDJqmja5a1PSp3im35eicbexo74SSzMyS=t+6kjR-6Zg@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build only one specific C source from git clone with many C files
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
X-List-Received-Date: Mon, 06 Feb 2017 11:45:43 -0000
Content-Type: multipart/alternative; boundary=001a114104cea8ff070547db2be0

--001a114104cea8ff070547db2be0
Content-Type: text/plain; charset=UTF-8

On 6 February 2017 at 11:27, Prasant J <pj0585@gmail.com> wrote:

> Is it possible to modify SRC_URI to take only one source file from a
> git clone and build it?
>

No, you can't do that with git.

One way would be to use the http fetcher to get the file directly from the
web interface to the kernel.

Ross

--001a114104cea8ff070547db2be0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 February 2017 at 11:27, Prasant J <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:pj0585@gmail.com" target=3D"_blank">pj0585@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":26o" class=3D"a3s aXjCH m=
15a132f516bfe187">Is it possible to modify SRC_URI to take only one source =
file from a<br>
git clone and build it?<br></div></blockquote></div><br>No, you can&#39;t d=
o that with git.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">One way would be to use the http fetcher to get the file directl=
y from the web interface to the kernel.</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">Ross</div></div>

--001a114104cea8ff070547db2be0--
