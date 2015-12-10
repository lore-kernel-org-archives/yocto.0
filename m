Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2337DE00BEE; Thu, 10 Dec 2015 13:55:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E71C1E0071A
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:54:57 -0800 (PST)
Received: by igbxm8 with SMTP id xm8so25885316igb.1
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mwweFP+vbkm4KTCpzD7anJ6OtHCsndjTJ+xT+GEVGnE=;
	b=1HT6vygR7flhEinTbW90RADY4S0M8MDeG9ISRRseQv6/lWOKRVnY+HE30BF5k7VrNx
	f6tYk2dpqb5qA769zAivhap0TCsMvKC0LDHNfy21Lmj5D5GvLicgEffgm6sxi3qy3hKD
	ULa6pdJDyQgWJn6qYwLQEEgsEDDzk+1rEKrU7a82J9oM+GJz7CDyQWFstkfAgTc4V5ki
	er0CUWJAqBiiMLf1aRdBSQlM/HKm7LV0mOrkk80yRuucHCeMxI+QKFrE6gToYMOBrv+s
	2IAX5/AsVLOJ3xNepf/eSO6E+IMuPEdntaRI/WbcClXV6sNGzN3zekUJ/HhdnajCiJ91
	QFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mwweFP+vbkm4KTCpzD7anJ6OtHCsndjTJ+xT+GEVGnE=;
	b=Vi0T4rXMZU+zYFnrrhPVT9tpk0BSpibRrWMm7bYMy8Os5zMZja5iiExt1++6kgOBMj
	DEldJLK1tbXCNO+Jmv6PT01A38V61/n79Aja8WBR05HV2jqbe6UcSOMJz+I+bnuXjcZu
	F3Izj78FHcBzCZvAeKFpTafUNm8XJDhz/ShkMgxTPbHQhACGc+1t4TXv9pTgMGNLvzwN
	iB8pCfC4jLfZQ4iCHv8pDlgYFkua+Uy/99+XnRfffLYOwW+Orn3x+hfayct0LKUODtme
	CKflRvruE4bLT7ILJuaplf6vKSrMFSTbTdloFMMGStNTVxPCCKrx+hJFw48DUITSrFkX
	gIOQ==
X-Gm-Message-State: ALoCoQmRIFf5Y5utHX8jn/qqCOIpoBoYVRncjXWG//YUJQ3YRXy818tUE5W78m9na6N2zTOfJvdyZFFNmoN8NlvZ3CKFDY3OgaOtjQZ5oM+/cWGygiPEw3I=
X-Received: by 10.50.152.98 with SMTP id ux2mr1326388igb.64.1449784497028;
	Thu, 10 Dec 2015 13:54:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Thu, 10 Dec 2015 13:54:37 -0800 (PST)
In-Reply-To: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
References: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 Dec 2015 21:54:37 +0000
Message-ID: <CAJTo0LYeq6+bW4Db5UsLMtRF1M6gijfeSiSyS2frvyHSXzjrRg@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for building a large amount of source files
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
X-List-Received-Date: Thu, 10 Dec 2015 21:55:05 -0000
Content-Type: multipart/alternative; boundary=089e0149baaaf25d270526924142

--089e0149baaaf25d270526924142
Content-Type: text/plain; charset=UTF-8

On 10 December 2015 at 21:16, Michael Habibi <mikehabibi@gmail.com> wrote:

> What is the best option for adding all of these and compiling? As far as I
> know, you have to do one of the following:
>
> 1) Use a fetch that fetches a tarball with all your source, or a repo with
> all of your source
> 2) Use a million-line long SRC_URI assignment to include every file that
> your application uses.
>
> Is there a third (or fourth) option that I may have missed?
>

(1) is definitely my recommendation, separate the application development
from the recipe to build the application.

Ross

--089e0149baaaf25d270526924142
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 December 2015 at 21:16, Michael Habibi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>What is the best =
option for adding all of these and compiling? As far as I know, you have to=
 do one of the following:</div><div><br></div><div>1) Use a fetch that fetc=
hes a tarball with all your source, or a repo with all of your source</div>=
<div>2) Use a million-line long SRC_URI assignment to include every file th=
at your application uses.</div><div><br></div><div>Is there a third (or fou=
rth) option that I may have missed?</div></blockquote></div><br>(1) is defi=
nitely my recommendation, separate the application development from the rec=
ipe to build the application.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--089e0149baaaf25d270526924142--
