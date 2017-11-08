Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92A5FE00D42; Wed,  8 Nov 2017 08:45:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B110E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:45:46 -0800 (PST)
Received: by mail-ot0-f194.google.com with SMTP id j24so2295505otb.1
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AIYWktW3CmqSOVLPkHJN0BKJou/QPWwDWZOQSSO5xzE=;
	b=clpYyhgIWRIYYFKU2SrkMDWw8cDj39gIweQXRCtX3KBz3r+Wr4kp/wXdmu+VVUBvjW
	JJ4m5lWtE70n/t3xedaxFdTamKKUDcUXG+3RaPrAhZkgHUZXkS6nmTGTbXC5DXcAOs6G
	mCpnOFobkKEKtABXatF5FEyoMx6+8ngL3IKr0Mq5CxO9rlK0S/M3Ryws45xh8wpDAnZ1
	OmCCh9ndoaZ3LARX+opNI/gj5602g5ReBtY9pqszMYG319nqheDTjT/SSRX+3I8KUSju
	1vaA7uzihyN1vKkVAozExquOccuH22qiSY+/nSXZKkXMnIGq92soSesf6IGPCn98ihZ+
	CXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AIYWktW3CmqSOVLPkHJN0BKJou/QPWwDWZOQSSO5xzE=;
	b=owZhqjm8i4wEKz31qqur6JsWLmK75OvMcdNfaOZK7WDC0kfKzNCO7FcAfG53fNvCWl
	CwlpD1miRpRl8exAaFZ13EwgJ6vH2L9gHI4TcdZoc7fPA2EOFYlxvGPZIdBuERPpuPHh
	ApFPabSii4y/Fkzikeo5077Fo6gDoDdiipPg0+wtt2D5Dt9puKIRSXoYnO5ws7ULudUV
	6EAKX45BVRgEdJlK2nLsL9Ch7MNM9CVEjlco+If6u2Fp21ZrUCoCR0Epih7lDkhlfBcn
	0FC0GbINi+ywxoLcMMCZiuS4FH0o/PdUVw58Me2jxaAT3vQetYM5qfLZoajgtlGaeqWV
	Gv1Q==
X-Gm-Message-State: AJaThX7bdih+d25CcQIwp2tVqpGnjOv0LHHLzVPuJbjK5aQf4lI2vS00
	pcQEVL6NlvtzK1CYhw4qTAIIub9QYC/aBCsxglM=
X-Google-Smtp-Source: AGs4zMZPgPY2wVU4mHLeV5LcX+HJALIy1Qy0fBEvRjhd1yC6pQETlULpqjiZP2PCByAIKKDutOnhIdp2bWaAcV3H3FY=
X-Received: by 10.157.52.71 with SMTP id v65mr718507otb.469.1510159546237;
	Wed, 08 Nov 2017 08:45:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:45:45 -0800 (PST)
In-Reply-To: <CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
References: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
	<CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:45:45 -0500
Message-ID: <CAE0QtjP=Yn32nBL0JBnMN0t8mqWNT1nh6r6074N7b5yzZ-VCVQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto documentation: no content, no PDF?
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
X-List-Received-Date: Wed, 08 Nov 2017 16:45:47 -0000
Content-Type: multipart/alternative; boundary="001a114150564ecadd055d7b6ba0"

--001a114150564ecadd055d7b6ba0
Content-Type: text/plain; charset="UTF-8"

The mega-manual should have content like: at least one line for each
chapter, so that we can have a big picture.

By the way, where is the "real docs"?




On Wed, Nov 8, 2017 at 11:30 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 8 November 2017 at 15:41, Jerry Lian <jerry.lian@gmail.com> wrote:
>
>> Just wondering:
>> * As an active project, why yocto documentation does not provide a
>> content (better be clickable)?
>>
>
> The megamanual (Complete Documentation) doesn't have a top-level table of
> contents as that basically exists to search globally.  The real docs (such
> as Tasks Manual) have a top level table of contents.
>
> * Or PDF format for easy printing.
>>
>
> That would be massive.  The source is in git as docbook so it's fairly
> simple to generate a PDF.
>
> Ross
>

--001a114150564ecadd055d7b6ba0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The mega-manual should have content like: at least on=
e line for each chapter, so that we can have a big picture.<br><br></div>By=
 the way, where is the &quot;real docs&quot;?<br><br><br><br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 11=
:30 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@in=
tel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span class=3D"">On 8 Novemb=
er 2017 at 15:41, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.=
lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote=
:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span cla=
ss=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Just wond=
ering: <br>* As an active project, why yocto documentation does not provide=
 a content (better be clickable)?<br></div></div></div></blockquote><div><b=
r></div></span><div>The megamanual (Complete Documentation) doesn&#39;t hav=
e a top-level table of contents as that basically exists to search globally=
.=C2=A0 The real docs (such as Tasks Manual) have a top level table of cont=
ents.</div><span class=3D""><div><br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr"><div><div></div>* Or PDF format for easy printing.<br></div=
></div></blockquote></span></div><br></div><div class=3D"gmail_extra">That =
would be massive.=C2=A0 The source is in git as docbook so it&#39;s fairly =
simple to generate a PDF.</div><span class=3D"HOEnZb"><font color=3D"#88888=
8"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></font></span></div>
</blockquote></div><br></div>

--001a114150564ecadd055d7b6ba0--
