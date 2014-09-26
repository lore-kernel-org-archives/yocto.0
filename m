Return-Path: <f.deldegan@endian.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D72E007A2; Thu, 25 Sep 2014 20:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FE7E00790
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 20:10:46 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id eu11so10721617pac.10
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 20:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=a+wz57L6mOLRLoyO12kqAGTB1zFYt9hT0jR90rlQkgU=;
	b=drrz4nW0uxaCjs0zEKMgTT7j+GJJPkUyTjjjO/EbQPElhFZNlBzsvSiM/kLJIxOdiI
	6eOMCwTG2OClwWKRRnx8I7H+D+RStChdS+LGJvIHiZIfLIzlnEozIU9Hp2PPONP3MXOB
	HGJW8/qZviwCSVIE9kVwerIke9YBnFtHflbu75CZPYtc80ga7ta2i0GgBvMvBV78UCCm
	yI1OcG9B/YxkzCeHWnoPDYdk9/5vot1P8TBntXrziKLU+NsVbrVhUg+V0bBTVH2DJQQ9
	m2Q+tgbIdtG/9bAjWVjRzhBfBh0BnqgeVhEaOAk/b6ah2HBoy8zhBmRPk/Bk+BAyme1U
	KeGw==
X-Gm-Message-State: ALoCoQl/crbFtdRvyOCTMOWkwXpoYgfQQYYr6g12Tx6nuxflV4vpO/pEWAk9R6lQasC+tO8D2DTO
MIME-Version: 1.0
X-Received: by 10.70.126.41 with SMTP id mv9mr26830150pdb.129.1411701045902;
	Thu, 25 Sep 2014 20:10:45 -0700 (PDT)
Received: by 10.70.61.230 with HTTP; Thu, 25 Sep 2014 20:10:45 -0700 (PDT)
X-Originating-IP: [93.49.10.177]
In-Reply-To: <CAJTo0LYf-qWXia8EuKSnck5=yYLGspckqm27y3kxMDESSdL5Og@mail.gmail.com>
References: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>
	<CAJTo0LYf-qWXia8EuKSnck5=yYLGspckqm27y3kxMDESSdL5Og@mail.gmail.com>
Date: Fri, 26 Sep 2014 05:10:45 +0200
Message-ID: <CALNVO6Yc++-3WKXKCqOo9EjgjUB9FUfEa5AGdNqhTfJuG8_RJQ@mail.gmail.com>
From: Francesco Del Degan <f.deldegan@endian.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] bash: update to latest (025) patchset (fixes CVE-2014-6271)
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
X-List-Received-Date: Fri, 26 Sep 2014 03:10:52 -0000
Content-Type: multipart/alternative; boundary=001a11c3636e5ed6c10503ef436e

--001a11c3636e5ed6c10503ef436e
Content-Type: text/plain; charset=UTF-8

Ross, I picked up all set of patches because i saw in dora

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/bash/bash_4.2.bb?h=dora

it was made in that way, so i assumed that it was the way to go.

Furthermore, analyzing the entire patchset it fixes several hangs, loops
and other bugs, so it would be interesting to have more fixed bash as well.

Last reason, is that PATCHLEVEL macro is printed out as well, so it would
be easily recognizable to have

GNU bash, version 4.3.25(1)-release

in bash --version output and just see that is good revision.




On Fri, Sep 26, 2014 at 12:40 AM, Burton, Ross <ross.burton@intel.com>
wrote:

> Hu Francesco,
>
> On 25 September 2014 11:35, Francesco Del Degan <f.deldegan@endian.com>
> wrote:
> > Updated to reflect the latest patchset in bash 4.3.
> > Fixes the CVE-2014-6271.
>
> I'm hearing that this isn't a complete fix, so lets wait for more patches.
>
> Is it possible to cherry-pick just the security fixes, instead of
> every patch they've released?
>
> Finally, patches for oe-core should go to openembedded-core@, not yocto@.
>
> Ross
>



-- 
--
:: e n d i a n
:: security with passion

:: Francesco Del Degan
:: software engineer
:: http://www.endian.com  :: f.deldegan (AT) endian.com

--001a11c3636e5ed6c10503ef436e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ross, I picked up all set of patches because i saw in dora=
<div><br></div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/tree/meta/recipes-extended/bash/bash_4.2.bb?h=3Ddora">http://git.yoctopr=
oject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/bash/bash_4.2.bb?h=
=3Ddora</a></div><div><br></div><div>it was made in that way, so i assumed =
that it was the way to go.</div><div><br></div><div>Furthermore, analyzing =
the entire patchset it fixes several hangs, loops and other bugs, so it wou=
ld be interesting to have more fixed bash as well.</div><div><br></div><div=
>Last reason, is that PATCHLEVEL macro is printed out as well, so it would =
be easily recognizable to have</div><div><br></div><div>GNU bash, version 4=
.3.25(1)-release</div><div><br></div><div>in bash --version output and just=
 see that is good revision.</div><div><br></div><div><br><div><br></div></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, =
Sep 26, 2014 at 12:40 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Hu Francesco,<br>
<span class=3D""><br>
On 25 September 2014 11:35, Francesco Del Degan &lt;<a href=3D"mailto:f.del=
degan@endian.com">f.deldegan@endian.com</a>&gt; wrote:<br>
&gt; Updated to reflect the latest patchset in bash 4.3.<br>
&gt; Fixes the CVE-2014-6271.<br>
<br>
</span>I&#39;m hearing that this isn&#39;t a complete fix, so lets wait for=
 more patches.<br>
<br>
Is it possible to cherry-pick just the security fixes, instead of<br>
every patch they&#39;ve released?<br>
<br>
Finally, patches for oe-core should go to openembedded-core@, not yocto@.<b=
r>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr">--<br>:: e n d i a n<br>:: security with passion<div><sp=
an><br><font color=3D"#888888" style=3D"color:rgb(136,136,136)">:: Francesc=
o Del Degan<br>:: software engineer<br>::=C2=A0<a href=3D"http://www.endian=
.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">http://www.endian.c=
om</a>=C2=A0=C2=A0:: f.deldegan (AT)=C2=A0<a href=3D"http://endian.com/" st=
yle=3D"color:rgb(17,85,204)" target=3D"_blank">endian.com</a></font></span>=
<br></div></div>
</div>

--001a11c3636e5ed6c10503ef436e--
