Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95CA1E00C5F; Thu,  8 Jun 2017 04:12:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA8EE00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 04:12:41 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id u12so36926112qth.0
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 04:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FAZwie9L7T2j+HZE4wWRXkFrBl+/GK2vdTHUi/rNRQo=;
	b=I6vTgJGLsY6nkZgaZuPCXFHrLOPWg/xXuI9SeW+ppgfyX62btZe4azEtz1z1ZMkRUj
	Qw/s3ybDX8GEKN++OTtFM78CFAN/AApluMkqEtRIMKxCLSnfzErMQxHCUWAS6NDVNVj8
	KSa8PX+NBve42yIsHaIF7xgQxQ3iGC86saMybccaD4r45kzAScKFUGDH8OOGUcclWA3U
	7YavBP1GAvfMTYxIFRig3P5eG6ozpUBTjRdN1O3RptkK8AVaKtOQrdFPRojrVG7PDcMN
	6LoqHoan4hF88aLQoG+MGQOE+Sojozr2Y8FROAdbk66yv926/+YoaTK4n0kzAVR6qjAg
	ksBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FAZwie9L7T2j+HZE4wWRXkFrBl+/GK2vdTHUi/rNRQo=;
	b=Kz2d2RAIBL427+JsvRLVSFOE4WSWVLhsUa8/uXm+bYYSsWpga4ZkVRCWgZekXljPg1
	KZnOEPjWf1m+lvt78l7VcvVanmusLlvZXTOS3vL5lNiZ3JA/zzmTXaUpDxN/F9gXsLAn
	VEMRENZSpx1lyIEOE6vj3HnXrOO131PHkwAiLZf/pIlSM69DE9OvDO3YCuRA4RcxQ8Hl
	WMoDbJVH9tX9zMvzCmLoE6Yw5YzG0QggA56G6HsVJEjKX6HlRt5mMXs3LdsQU9/3oVzZ
	2Mr2JSKWJsUdTvJpSVOprbvUKUgOzGmpA25lHeYgm8Ft/hmAWAD/E1GVPU+uIejGeMqa
	uYlA==
X-Gm-Message-State: AODbwcCi47ElM/LxV/xEQ2bQXAtnpWRfHNivVJo/mLLBjzHf0GPdekz3
	qIhMpG32IwfWKDqFSJchVICj3pnWdx76
X-Received: by 10.55.42.212 with SMTP id q81mr40856468qkq.228.1496920361094;
	Thu, 08 Jun 2017 04:12:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 8 Jun 2017 04:12:20 -0700 (PDT)
In-Reply-To: <2dcac9da-5dbb-c93c-0c2d-3a9bec5ecabc@linux.intel.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFF@IR-CENTRAL.corp.innerrange.com>
	<CAJTo0LbPvhZehFQsEJMZU72SQvxbNupHVsjpJ_8RLjS9hNYRkg@mail.gmail.com>
	<2dcac9da-5dbb-c93c-0c2d-3a9bec5ecabc@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Jun 2017 12:12:20 +0100
Message-ID: <CAJTo0LYni=4f3k6vp15=Aq8_6bk0C1dvt7W=vbkfK_-7oVJd6Q@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python 3 internal package dependencies
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
X-List-Received-Date: Thu, 08 Jun 2017 11:12:43 -0000
Content-Type: multipart/alternative; boundary="001a1147a9fc6166e4055170eeae"

--001a1147a9fc6166e4055170eeae
Content-Type: text/plain; charset="UTF-8"

On 8 June 2017 at 12:02, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> I'll bite: should we just drop the the splitting of Python modules into
> their own packages? In 2017, this is more trouble than it's worth, IMO.
>

Hard to say without data.  How big is the entire module set?  What
percentage of that goes into e.g. core-image-sato if the dependencies are
fixed so python3-modules doesn't get installed?  Are there just a few
modules that are large and a more maintainable split would be
minimal/everything (as Debian does, I believe)?

Ross

--001a1147a9fc6166e4055170eeae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 June 2017 at 12:02, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D=
"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.kana=
vin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div id=3D":64t" class=3D"a3s aXjCH m15c875fa3e5d2f66">I&#39;ll bite: shou=
ld we just drop the the splitting of Python modules into their own packages=
? In 2017, this is more trouble than it&#39;s worth, IMO.<br></div></blockq=
uote></div><div class=3D"gmail_extra"><br></div>Hard to say without data.=
=C2=A0 How big is the entire module set?=C2=A0 What percentage of that goes=
 into e.g. core-image-sato if the dependencies are fixed so python3-modules=
 doesn&#39;t get installed?=C2=A0 Are there just a few modules that are lar=
ge and a more maintainable split would be minimal/everything (as Debian doe=
s, I believe)?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--001a1147a9fc6166e4055170eeae--
