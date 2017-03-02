Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E65EE0049D; Thu,  2 Mar 2017 08:20:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.177 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C575CE00A81
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:19:54 -0800 (PST)
Received: by mail-qk0-f177.google.com with SMTP id m67so16394701qkf.2
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kkxE7HmyAwORjP0RpcyBVC6CbS4yJH4QBBw26xXhCEw=;
	b=VV5oZz9rax3NfHh5GTplO1Jc0v9v7bH4YQrFGX+EsdRYoMoVnAnsioHwNb1j7vQDsq
	CPbdjcRi6ABQFjzmpeREAhv1UPU3JTcnbWPAWBT7bby3BaBawToqTLtz5Wf3V5wtJS6x
	3W7BJYDeZwmkYCVC13p4muEngQT7yND7O08aXQCoP3nO5N+DGuT4vs7Mpl7jOWQ5y4tF
	cEv1MnDpDT+P5PAne914xUjLyFDxa3ktAXMQBdAUWJ1aoX0+A20Q2Pj6v6Ks9fJP7Pc0
	wITO0StgCHGHtdRSN1MrEcbF5BO06HGN6QY20Aip4llif4Jbbk4VZg+btQQVJbSWVoM5
	i/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kkxE7HmyAwORjP0RpcyBVC6CbS4yJH4QBBw26xXhCEw=;
	b=FO/4pV5iTJtRdm965d5sbcGxBGV7u+hsn8fDwc/gKuGTZN75USLvFh5WGsKQ2R0nv8
	im9LYmPg2tMHFeTzOqfpnz9tUaHJfejxHhE0EeLepiRiRl/hpBsohRRZrPJGIuLn+KV4
	1QUk7K6u2P8sC91egKyJAIQ4jqsWOc2ygYNSMromYxuaokREFi9aYMiC/B4TJf3aSc7i
	4cd2pWofJTtSw7tz/Ju4FkE8Ubue3wFwultr9jYEyNnvo82RsnZFHflI/AR1Rh7LJWjU
	aMtXHSiSh0hQbFB1PZZdt5j++vGbtq8g4i5QqsEnofYla1p+xCZp8PSvsQ/FmMsY8hym
	f8LQ==
X-Gm-Message-State: AMke39k/1sEBTHb3QkU3LUBInpoIqj3c3dC3TtBgXJ0YixXCFwjljOoXB5aA9mnQ5duMvRdHT4zZH6Di1OT5fyfy
X-Received: by 10.55.175.195 with SMTP id y186mr17258124qke.26.1488471593839; 
	Thu, 02 Mar 2017 08:19:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 2 Mar 2017 08:19:33 -0800 (PST)
In-Reply-To: <CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Mar 2017 16:19:33 +0000
Message-ID: <CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:20:06 -0000
Content-Type: multipart/alternative; boundary=94eb2c06093c9c05860549c1cc47

--94eb2c06093c9c05860549c1cc47
Content-Type: text/plain; charset=UTF-8

On 2 March 2017 at 16:14, SatyaNarayana Sampangi <satya.2891@gmail.com>
wrote:

> I am using beagle bone black, for which meta-ti layer and poky versions
> compatible is daisy 1.6 as mention in the official website of yocto. If I
> upgrade the poky to the latest version, then compatibity will be lost. Pls
> help me out here.
>

http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/ has branches for krogoth
(2.1) and morty (2.2).  Where did you see that 1.6 is the last release
supported?

Ross

--94eb2c06093c9c05860549c1cc47
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 March 2017 at 16:14, SatyaNarayana Sampangi <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:satya.2891@gmail.com" target=3D"_blank">satya.2891@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex"><div>I am using beagle bone black=
, for which meta-ti layer and poky versions compatible is daisy 1.6 as ment=
ion in the official website of yocto. If I upgrade the poky to the latest v=
ersion, then compatibity will be lost. Pls help me out here.</div><div></di=
v></blockquote></div><br><a href=3D"http://git.yoctoproject.org/cgit/cgit.c=
gi/meta-ti/">http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/</a> has bra=
nches for krogoth (2.1) and morty (2.2).=C2=A0 Where did you see that 1.6 i=
s the last release supported?<br></div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--94eb2c06093c9c05860549c1cc47--
