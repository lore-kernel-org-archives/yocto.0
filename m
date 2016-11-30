Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06B67E00503; Wed, 30 Nov 2016 08:10:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1011E0049D
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 08:10:30 -0800 (PST)
Received: by mail-qk0-f182.google.com with SMTP id q130so26826537qke.1
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 08:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nDpT1Yh1oJ/1v6oA4NwIzFLJTyivh6PMU3hr/mpDjRE=;
	b=afMXkRjUudh9CQuhpiqPL9DfjEFpGDmbhtPzpEx30gTWxY4tkdwQWhGVjuOmgTce1y
	Q9wyLBmJRckpeBEI1YHahIB/lw7U5EfmuZ8H/OWOsQyNPLlauOvYEOE1WZPCSd2SQxqH
	rQmbxJR8ZoOdi7tyb66AnhvEeCFIe+eq7zmHFC47tsMKPihOwvdpN20ItyNuNz3UQNQG
	MDiqKNd5Lge37cWCb7RBIVaY3MeSf3VDwcJ7uWEAmePed+GATxCaI/uryTX8BPdsa49m
	0ZNm2IjTF9XTkP5O8zGeFrRVDILMxFpZTxpxzw8r42Pt+ehrMHMua+/cU7Xm1NbCUQXU
	IDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nDpT1Yh1oJ/1v6oA4NwIzFLJTyivh6PMU3hr/mpDjRE=;
	b=OZHb8vJRT5w7fgHZ3tKpxisfYWGNBBMf3wX/8BArwnd5kEA/nPXInuRTsMHqHx+UGq
	VbWxSh2pNlcF0Wh0xMJwTHHGQ27sQhph/c6ZUwKJaKO3s/tMpZddVd5/t4uGVIIC7/MY
	bu+I4a/CDtsyAaVSGE8l6+3n8dPtxNbCE+cDpsNetC/4iWeAUzW0pOJYej57Wv34ddH9
	0UnzTLgAafEmSmMRPhungdQSZDWU7tXkxUbIxjAuGYglURDCRIUHx4BcDdgTN2ZJWVza
	xLzPJfqk0uK89pfGvih1YPbPIrOMNIH/mcpRgEpJgtv0Ifr9+qQlkO/WkfFbUTHJVk+R
	MUwA==
X-Gm-Message-State: AKaTC01ilOq+M3ps9A6hztBiDpesXcf1ZTb9NvrGFSVgwdVS1e68xhHDtpRdl/bBIeLAEuC7SgX4qR3w5Lmj2zlU
X-Received: by 10.55.207.78 with SMTP id e75mr34265683qkj.36.1480522229585;
	Wed, 30 Nov 2016 08:10:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 30 Nov 2016 08:10:09 -0800 (PST)
In-Reply-To: <4f6a6c3622f646e9a01a2cec53be8615@BLUPR6801MB0051.017d.mgd.msft.net>
References: <4f6a6c3622f646e9a01a2cec53be8615@BLUPR6801MB0051.017d.mgd.msft.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 30 Nov 2016 16:10:09 +0000
Message-ID: <CAJTo0LaRNkCHKYXxs+FP5vTsx-QZJYrGvm+b0EXUzpJkPDcR2g@mail.gmail.com>
To: "Suchy, Pawel" <pawel.suchy@delphi.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CommonAPI *.so bindings
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
X-List-Received-Date: Wed, 30 Nov 2016 16:10:32 -0000
Content-Type: multipart/alternative; boundary=001a1145b7b8941c4a054286f122

--001a1145b7b8941c4a054286f122
Content-Type: text/plain; charset=UTF-8

On 30 November 2016 at 15:32, Suchy, Pawel <pawel.suchy@delphi.com> wrote:

> Questions:
> 1. How to solve best this?
>
> 2. Is it a good Yocto practice to not allow to have symbolic links in
> none-dev images?
>
> 3. Is there a way to have symbolic links to libs in */usr/lib *directory
> in none-dev images?
>

If the libraries that this piece of code is dlopen()ing are specific to
this framework and generally unversioned then you can just fix the
packaging so that they don't put the .so into the -dev package.

If it's doing dlopen() of general purpose libraries then the TODO at the
top is very relevant and no, it's not a good idea. It should support
versions.

Ross

--001a1145b7b8941c4a054286f122
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 November 2016 at 15:32, Suchy, Pawel <span dir=3D"ltr">&lt;<a href=3D=
"mailto:pawel.suchy@delphi.com" target=3D"_blank">pawel.suchy@delphi.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
"><span lang=3D"EN-US"><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Questions:<br>
1. How to solve best this?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. Is it a good Yocto practice =
to not allow to have symbolic links in none-dev images?<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3. Is there a way to have symbo=
lic links to libs in
<i>/usr/lib </i>directory in none-dev images?</span></p></blockquote></div>=
<br>If the libraries that this piece of code is dlopen()ing are specific to=
 this framework and generally unversioned then you can just fix the packagi=
ng so that they don&#39;t put the .so into the -dev package.</div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If it&#39;s doing dl=
open() of general purpose libraries then the TODO at the top is very releva=
nt and no, it&#39;s not a good idea. It should support versions.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1145b7b8941c4a054286f122--
