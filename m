Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05CA0E00D72; Thu,  9 Jun 2016 09:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514CAE00D6E
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 09:04:09 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id 5so41971508ioy.1
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 09:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Iv55natdIjw/1EVYgUe9F5DZMB4RF0Vp20Qw3lLU8K0=;
	b=quGZrwn/1e+ESBZ/nlIXUKQ656+41+ZOV5ooVb5iXVg4RntbwXP4U2W2k4XEcTvlQj
	bQsnA70u1ZIyX2MsBWoEH5slxzgrc+pUeUBPi83dSibvpteXKL/GwSUPs7G2TOWcxgsF
	WyfW/SdYF7ZeVWkpo12o7BKG2ZblsyQ4zEoc2hYm0a7MyiFuyD+ZI9OrTrtkpRj1co2k
	D8cmcIrScUvsoY5eFkFp3gZ9Db/nNgJcxIHWWYWujMtlgONUJYTwthgUwlodqih0GGZ6
	VUZd/Nu7Ymf/etn+9GuqfugLM2GmorQY9+SxXoTopD17qp7E3WyhAUCjU1xn2HHsbHK/
	01vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Iv55natdIjw/1EVYgUe9F5DZMB4RF0Vp20Qw3lLU8K0=;
	b=XuTzGqnwCsyTlIr6NAYrDj0cuTgk1xqbuFU6VWlYKSaa/MjErtVeTvWfajtRQd02Pq
	9DC8Ir0y1EP9xKf3CrL/gDirRG7JMOQIDp11ThXLePEegUSZP8s+71kVisXdl39ZolRj
	Bcamf8RhuyqYp76YIejnaEyCSIxhQYpVon2S1m440wpNfO7vhIJA5JoSt5rX3ede/pa3
	WkzJ0YHuMJQahoKjEZKXnq8ckzp/ZMp9d+yVSp/bUA6l3inSXzjcTKZiKh3a9A7STaBX
	O4fJ2jESrIxUHNmY9pq/WKQW9RpclpiD3iLC6wYNdN5sAR7nImYCewuyAoB+2yvZ76qz
	prPg==
X-Gm-Message-State: ALyK8tKKV9E8vyTWYYbroYC4fXp5d08iGXypE/Z7YmKmkY/hC0TSARfHdYDP+hHcixKzxiYshXUEmnUro8/vrnG2
X-Received: by 10.107.138.201 with SMTP id c70mr17799234ioj.148.1465488249461; 
	Thu, 09 Jun 2016 09:04:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 9 Jun 2016 09:03:50 -0700 (PDT)
In-Reply-To: <CAGMdoFnEYZ_qPL4=zem10xHfogbcVRB+Zo9yZdWium0OwvXYsw@mail.gmail.com>
References: <CAGMdoFnEYZ_qPL4=zem10xHfogbcVRB+Zo9yZdWium0OwvXYsw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Jun 2016 17:03:50 +0100
Message-ID: <CAJTo0LazbRgW=xxF5cHMv0LtvUUxh7fjh8WQPoTOc7STtWpzfg@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module from git repo recipe
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
X-List-Received-Date: Thu, 09 Jun 2016 16:04:32 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6a883e690534da9260

--001a113e8e6a883e690534da9260
Content-Type: text/plain; charset=UTF-8

On 9 June 2016 at 16:58, Edward Wingate <edwingate8@gmail.com> wrote:

> Does anyone have an example of a recipe that installs a python module
> from a git repo?  There is a python module that is not regularly
> updated on PyPI, but its git repo is up to date.  All the examples of
> python module recipes I can find uses PyPI:
>

Just change the SRC_URI to a git URI, that's all you need to do.

Ross

--001a113e8e6a883e690534da9260
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2016 at 16:58, Edward Wingate <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:edwingate8@gmail.com" target=3D"_blank">edwingate8@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":491" class=3D"a3=
s aXjCH m15535e3cb0a463eb">Does anyone have an example of a recipe that ins=
talls a python module<br>
from a git repo?=C2=A0 There is a python module that is not regularly<br>
updated on PyPI, but its git repo is up to date.=C2=A0 All the examples of<=
br>
python module recipes I can find uses PyPI:</div></blockquote></div><br>Jus=
t change the SRC_URI to a git URI, that&#39;s all you need to do.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--001a113e8e6a883e690534da9260--
