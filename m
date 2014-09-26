Return-Path: <f.deldegan@endian.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C0B3E00873; Thu, 25 Sep 2014 20:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57CDAE00790
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 20:00:21 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id kx10so12140065pab.5
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 20:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=bG1dhbU/ElhHRvQn571cPvIFIwa9sUBD/TDTQoIJOjY=;
	b=blPrrqbN/SHjXboFGHv3+xmAo++6qd42q20eDeQretuje8ugyOOJ2ohCBYPth0+WJs
	qea9tGEfgDgdp+B1B0NA9l+mR6LdzGLI4CeXCmPhoZSMrDcyeCSvpKtdtV775QpIcMWY
	FNjX6JMbwGAdNvDwm2so4TLvX13W5rEb1msdFHj7GFQQ+nRMYtGa6VQh5Wuz4DByXU9h
	L0CLpkYwf5+PS6Zzv+2PW0/V6KpFp4Kaqq9DqIPptPzaVRIXc8FwG5pSkhwZ0dgT6nZC
	KCphrNSPiG1NOVkTJrKCfCR52KWFt8TGTAGkT78pK4+NqXfH1mPhl40oEaYzvVt8JGoM
	MHYQ==
X-Gm-Message-State: ALoCoQk5n2Feo/fAXAJIDBHn9ebvl1fobCUl8WA0FI69CYRjRgkgXKw5FvC6R/EpM1Ju372DE8K4
MIME-Version: 1.0
X-Received: by 10.70.88.198 with SMTP id bi6mr34070640pdb.64.1411700421223;
	Thu, 25 Sep 2014 20:00:21 -0700 (PDT)
Received: by 10.70.61.230 with HTTP; Thu, 25 Sep 2014 20:00:21 -0700 (PDT)
X-Originating-IP: [93.49.10.177]
In-Reply-To: <CAJTo0LZGT0ogEA-PDfZOYVznJew0BP069d=_UU75qX-z2pPSyg@mail.gmail.com>
References: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>
	<CAJTo0LYf-qWXia8EuKSnck5=yYLGspckqm27y3kxMDESSdL5Og@mail.gmail.com>
	<54249BD8.1030702@windriver.com>
	<CAJTo0LZGT0ogEA-PDfZOYVznJew0BP069d=_UU75qX-z2pPSyg@mail.gmail.com>
Date: Fri, 26 Sep 2014 05:00:21 +0200
Message-ID: <CALNVO6bKcz5f_nhK_vYqC83z4_cw4W=L3FYVL7oOenY6PhCQog@mail.gmail.com>
From: Francesco Del Degan <f.deldegan@endian.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH] bash: update to latest (025) patchset (fixes CVE-2014-6271)
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
X-List-Received-Date: Fri, 26 Sep 2014 03:00:27 -0000
Content-Type: multipart/alternative; boundary=001a11c2481e2302810503ef1ed5

--001a11c2481e2302810503ef1ed5
Content-Type: text/plain; charset=UTF-8

Yes, patch 026 that fixes CVE-2014-7169 is underway, should be pushed out
today:

http://www.openwall.com/lists/oss-security/2014/09/26/1

bash-4.2 (as in dora) got patch048 for CVE-2014-6179 and should receive
patch049 as well.

I'm going to send bash 3.2 and 4.2  patches in oe core ml.


On Fri, Sep 26, 2014 at 1:15 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 25 September 2014 23:48, Mark Hatle <mark.hatle@windriver.com> wrote:
> > So I would recommend that someone get the 025 patch (don't forget to
> patch
> > bash 3.2 as well) in.. and we should wait until their is an official one
> for
> > 7169.
>
> Agreed, and patches sent.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
--
:: e n d i a n
:: security with passion

:: Francesco Del Degan
:: software engineer
:: http://www.endian.com  :: f.deldegan (AT) endian.com

--001a11c2481e2302810503ef1ed5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, patch 026 that fixes CVE-2014-7169 is underway, shoul=
d be pushed out today:<div><br></div><div><a href=3D"http://www.openwall.co=
m/lists/oss-security/2014/09/26/1">http://www.openwall.com/lists/oss-securi=
ty/2014/09/26/1</a></div><div><br></div><div>bash-4.2 (as in dora) got patc=
h048 for CVE-2014-6179 and should receive patch049 as well.</div><div><br><=
/div><div><div>I&#39;m going to send bash 3.2 and 4.2 =C2=A0patches in oe c=
ore ml.</div></div><div><br></div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Fri, Sep 26, 2014 at 1:15 AM, Burton, Ross <span =
dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">=
ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><span class=3D"">On 25 September 2014 23:48, Mark Hatle &lt;<a href=3D"m=
ailto:mark.hatle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br>
&gt; So I would recommend that someone get the 025 patch (don&#39;t forget =
to patch<br>
&gt; bash 3.2 as well) in.. and we should wait until their is an official o=
ne for<br>
&gt; 7169.<br>
<br>
</span>Agreed, and patches sent.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr">--<br>:: e n d i a n<br>:: security with passion<div><span=
><br><font color=3D"#888888" style=3D"color:rgb(136,136,136)">:: Francesco =
Del Degan<br>:: software engineer<br>::=C2=A0<a href=3D"http://www.endian.c=
om/" style=3D"color:rgb(17,85,204)" target=3D"_blank">http://www.endian.com=
</a>=C2=A0=C2=A0:: f.deldegan (AT)=C2=A0<a href=3D"http://endian.com/" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">endian.com</a></font></span><b=
r></div></div>
</div>

--001a11c2481e2302810503ef1ed5--
