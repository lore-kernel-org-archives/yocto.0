Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 119AEE0077F; Wed,  6 Apr 2016 15:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C54D2E0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 15:23:21 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id f1so140829501igr.1
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 15:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DQVDg3lCwfBuLEV9GeAvZPUDqoZAABebCHLLQli5EgY=;
	b=XapcXPqFZ6SPzj8d+pdbxSekCPw9QuLblo4CrdM9zH4Oxs/Hf0fEIXsqtrBaVDZ8NS
	4ZffePG61Kgk3qm+bQIOYfgz7U7IL4JVjje8ccZBPqlnvMuiKEOiPGQEK8T6BFMBi/xs
	QXwpBl+M6lITF5UWWsmLbbA9Nwc3QrAI2y5IyPVZBL/FdSuKVcgVTc2IYLLnbVjsdq4H
	IawnQTwX+fGTscxVkXyvlhvD2TkWkiNNahdVVl8q5VPprqG4Y0Ps5CpH/qQqkCNV8oc0
	CBsGTxN1sRGcWIR0NvsVMX4B8VbJAXEFCENPKJFLUXH8rre5SUxkhkIcINh35l97EO2O
	QDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DQVDg3lCwfBuLEV9GeAvZPUDqoZAABebCHLLQli5EgY=;
	b=dCiPTquLiL/GBNMCQT82oLEQWgKvcjt6g5LjptE+q/Nq1T6jF1QIrWJ1029oB8V1MB
	Cw4wTIMNAHogow90CL5MwRNa4U++EYuDCXTwppFuaZteENnIhIUVFvp8NutWwdh1UyFV
	G5Ymy24H7H/nvj4ensUIZ1n6BXjzJXesZK79dTFevrgSsc5tAsqAEoqwo5bLOGNOpfoY
	siduaa9sB91PaX/+qRCDXdcpTSx6RapLNmZb7Ykj6S61fzgF5Lj+6PkCycTRpz2gAsCj
	CbPz9FmYqb023/0Cn7OHFTkkPHH6MxuyYh2ToVj5yfWEWvaUYekhZLaTcdO1HEYMySNj
	YFRA==
X-Gm-Message-State: AD7BkJLEs0t4xHKcrtGCJdS+zLmEy4rp1mXg0Gf9tIoK874P+zj/3APeCSoipmlE7mnwzyWY/GBoo8va1zRTYT6E
X-Received: by 10.50.78.8 with SMTP id x8mr358063igw.78.1459981400695; Wed, 06
	Apr 2016 15:23:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 15:23:01 -0700 (PDT)
In-Reply-To: <CALRMKQqD+DpqOP7HK1TPK8VY8ce6n-0wVAeSZWMa7zUWjX_nrQ@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
	<CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
	<CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
	<CALRMKQri=KgPhxk-0iTUxD59PU-K0i6bfvcxkVF6i_J7UX_Agw@mail.gmail.com>
	<CAJTo0LYQO0GhOL1otLHBj7QR-b2uAxqH+CQjac_5DZT6R2_Zug@mail.gmail.com>
	<CALRMKQqD+DpqOP7HK1TPK8VY8ce6n-0wVAeSZWMa7zUWjX_nrQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 23:23:01 +0100
Message-ID: <CAJTo0LZ3jZqs5hZw85+=1sDab-4XK00_YW1Ts6E3Ukgc574Lvg@mail.gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Wed, 06 Apr 2016 22:23:25 -0000
Content-Type: multipart/alternative; boundary=089e01183a4cc47f47052fd868b6

--089e01183a4cc47f47052fd868b6
Content-Type: text/plain; charset=UTF-8

On 6 April 2016 at 20:55, Ronald Oakes <ronaldo@brc2.com> wrote:

> For what it's worth, I may be able to work around this by using the
> Poky-Tiny distribution, which is closer to what I'll need for the
> minimalist system we need in the end.
>

If you need a minimal system then you might want to look at oe-core from
git, which has musl support integrated.  musl appears to be superiour to
uclibc and we'll be releasing 2.1 this month.  There's a good chance that
uclibc will be removed from oe-core entirely for the 2.2 release as musl is
only slightly larger than uclibc but more capable.

Ross

--089e01183a4cc47f47052fd868b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 April 2016 at 20:55, Ronald Oakes <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ronaldo@brc2.com" target=3D"_blank">ronaldo@brc2.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":gl7" class=3D"a3s" style=
=3D"overflow:hidden">For what it&#39;s worth, I may be able to work around =
this by using the<br>
Poky-Tiny distribution, which is closer to what I&#39;ll need for the<br>
minimalist system we need in the end.</div></blockquote></div><br>If you ne=
ed a minimal system then you might want to look at oe-core from git, which =
has musl support integrated. =C2=A0musl appears to be superiour to uclibc a=
nd we&#39;ll be releasing 2.1 this month.=C2=A0 There&#39;s a good chance t=
hat uclibc will be removed from oe-core entirely for the 2.2 release as mus=
l is only slightly larger than uclibc but more capable.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e01183a4cc47f47052fd868b6--
