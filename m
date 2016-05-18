Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61AE6E00C70; Wed, 18 May 2016 03:39:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15383E00C4F
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 03:38:58 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id m9so24859687ige.1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 03:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fKHg71dYaaNYS2snO81XGxTSz97iDLiqrXQs/BSLsAo=;
	b=vXtHlMO7nMoAFsFheC2PIRm7XLpk7SOnUlGfRFUUY6h3MXuwXoQQoaoPd9B3G2/FYS
	NXGztNNHHsuHUZisP8JlOnVT7CwoYXgVjCX3GVa0lI6zOo0vh67mtwHKfiIpWO0Re4Ho
	7c/W8tiBLsiPH4h9fAfV21kIEqDT4iX1ECl6zZICQdmKYnEoLx8XBi+pDxDMEFY6aW+n
	er1ie3g6UK69M+gcELWS2C5CtAaDJwSRgx1jo67B327jX08yc0RtSyuP5kXlWvvJRBpt
	ql0anuaTeVb9Id94dFBEAR9taIzYkCR6mVLKRfE0WbjUv+zWAVwPkPB/YFOrscMU+3UU
	1Qlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fKHg71dYaaNYS2snO81XGxTSz97iDLiqrXQs/BSLsAo=;
	b=M4B/P0OhP8l4YsMbO7OsoEQapK5nXtoVscer5h16Xip9U1EzBu8tf4RT2WbIvh5MyY
	Pe3WnuBXlhSozquBGdEAfPPholNG3yrh+VqCrNZ0PaBy8VaR/KhrkmZA++tsvj6zAhGt
	j0vFDAw+ldhKm29kFufJ9oZir3+DGVszh5Uc+CMfzNA/qSEkZjGac8CG6fNxfBOK1C+y
	0H4hHMLB+KPQ8kVrswoKh459KM9L6ozICzHqxvkB7dTIu+9HNPbcG+p3I68MuMWeYuTJ
	Lj2GewOe2lSa6qvEEE9fulc1K3duxbxvjqfNOh7n6X7IpvAeuvnbsdsqPbk1OiE5EwsH
	RkBw==
X-Gm-Message-State: AOPr4FVrI+0AgsYbO55s4I68sh9ox0PTx9Dl3q44+oieaVionQbIySF9QMMNwF4EWBylEdMMD+1KcqFZq8y5d8Qx
X-Received: by 10.50.60.132 with SMTP id h4mr17928781igr.78.1463567938330;
	Wed, 18 May 2016 03:38:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 18 May 2016 03:38:38 -0700 (PDT)
In-Reply-To: <4be89ee9-9d84-ede0-ee24-cd55c9c4cf8a@fos4x.de>
References: <bf3219da-4a88-f071-fa00-b46b2872afc5@fos4x.de>
	<CAMKF1sqkeLzhgppY0Pf2rUXwYHOXwjQo+L=arawCmUF52vtO0A@mail.gmail.com>
	<4be89ee9-9d84-ede0-ee24-cd55c9c4cf8a@fos4x.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 May 2016 11:38:38 +0100
Message-ID: <CAJTo0La7EH5dwtpQMxYnjTytpQKaRJRoSRdMq248qGYneqYgcw@mail.gmail.com>
To: Christian Fuchs <christian.fuchs@fos4x.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Curl recipe not applying DISTRO_FEATURES
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
X-List-Received-Date: Wed, 18 May 2016 10:39:03 -0000
Content-Type: multipart/alternative; boundary=bcaec5015c9b11bda005331b77ba

--bcaec5015c9b11bda005331b77ba
Content-Type: text/plain; charset=UTF-8

On 18 May 2016 at 08:58, Christian Fuchs <christian.fuchs@fos4x.de> wrote:

> I just checked and EXTRA_OECONF is not correctly expanded. It is missing
> the "ac_cv_sizeof_off_t=8" part that is present on the Ubuntu machine.
>

Have you verified that DISTRO_FEATURES is identical on both?

Ross

--bcaec5015c9b11bda005331b77ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 May 2016 at 08:58, Christian Fuchs <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:christian.fuchs@fos4x.de" target=3D"_blank">christian.fuchs@fos4x.de<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":854" cl=
ass=3D"a3s aXjCH">I just checked and EXTRA_OECONF is not correctly expanded=
. It is missing the &quot;ac_cv_sizeof_off_t=3D8&quot; part that is present=
 on the Ubuntu machine.<br></div></blockquote></div><br>Have you verified t=
hat DISTRO_FEATURES is identical on both?</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--bcaec5015c9b11bda005331b77ba--
