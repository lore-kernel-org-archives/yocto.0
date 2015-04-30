Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5913E007B6; Thu, 30 Apr 2015 14:22:09 -0700 (PDT)
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
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF358E0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 14:22:03 -0700 (PDT)
Received: by qgfi89 with SMTP id i89so30777051qgf.1
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 14:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Gnobiw+jao2HMsssmu0LN/ERnmmNXwd0EsPcR+7g9VM=;
	b=bG3ZwaNsPgiZ7tFKfyH1x90OO8M4ho6yOUrbhdR1HIJ5Mb0Bghm7YrHYrxKNtzqVGh
	zT7b0NjweKqLaB7wbu30HBOU6esI7oHuG6RJRYM/esN42RXjWi310jyKKN59MPGpGHhn
	NXGKkPv2tTpBtMbHRlpGlBTm5sfR+RnnSuCRwkUokycuuesvdNFDEIUgRMhff653aI8A
	b3ycw25t24UAeZdbNDDgDPnWJMp8qgPom1Sf2b9YBKMOG+u3XJ4CqH2D3BPfIdOZ+qvF
	IDYUQk5h6parn5BosG1GtjffzDO8M8W3HcDf80DcjBbPs3/HOWxhcv6pvBME2WluBCrs
	itCw==
X-Gm-Message-State: ALoCoQms0FxMLM9Q48GPOu/sxzJ5aJiNyzk71r4DI+/xgjoNuVDgEdvJenDz7NB5QEbgeiSYfbVu
X-Received: by 10.229.37.200 with SMTP id y8mr7397769qcd.28.1430428922433;
	Thu, 30 Apr 2015 14:22:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 30 Apr 2015 14:21:41 -0700 (PDT)
In-Reply-To: <554290FC.7040104@reliableembeddedsystems.com>
References: <5542706A.4070807@reliableembeddedsystems.com>
	<554283F9.6030108@mlbassoc.com>
	<554290FC.7040104@reliableembeddedsystems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Apr 2015 22:21:41 +0100
Message-ID: <CAJTo0LYFX96KpPv0_gYVt4i7-dukEpv38szbHO3MNbsNgHLhQQ@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fido: funny ipk behavior
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
X-List-Received-Date: Thu, 30 Apr 2015 21:22:09 -0000
Content-Type: multipart/alternative; boundary=001a11c2b180cc85a20514f7affd

--001a11c2b180cc85a20514f7affd
Content-Type: text/plain; charset=UTF-8

On 30 April 2015 at 21:30, Robert Berger <gmane@reliableembeddedsystems.com>
wrote:

> Nothing, since I forgot
>
> EXTRA_IMAGE_FEATURES_append = " package-management"
>

That will be it then - your image doesn't have a package database so any
dependencies won't be able to be satisfied.

Either force the installation or rebuild the image with package-management
enabled.

Ross

--001a11c2b180cc85a20514f7affd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 April 2015 at 21:30, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gmane@reliableembeddedsystems.com" target=3D"_blank">gmane@reliableem=
beddedsystems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div id=3D":28x" class=3D"a3s" style=3D"overflow:hidden">Nothing, since I fo=
rgot<br>
<br>
EXTRA_IMAGE_FEATURES_append =3D &quot; package-management&quot;<br></div></=
blockquote></div><br>That will be it then - your image doesn&#39;t have a p=
ackage database so any dependencies won&#39;t be able to be satisfied.</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Either for=
ce the installation or rebuild the image with package-management enabled.</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--001a11c2b180cc85a20514f7affd--
