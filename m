Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3CD8E0049D; Sun, 12 Feb 2017 15:44:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FABFE0049D
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 15:44:49 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id u25so80709699qki.2
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 15:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wVa0S5uP5O8a+fpisV54w64Z7uy7f6amWgRqlYrLpWc=;
	b=atnpa40+UYyPr00Vv566x1yqj6KXdloACELRWAWOM/2RVW7gUr4U9pqQnt+BWojMlZ
	h4nwnFmtxrI54tJQ4/dEY6FtBdcmcknGip/T3mhmW6SulJjVzLMIUB7K3tnegxudzHcB
	JDGi9L7yzl9o561Cd+FI+S3OKl6N6UYEyvdiXoFLzlLcjdNPqbsYVvbH39hTVhEYEiew
	Pcx/7gtsJ7Kt6J0IKbz93AsPGrSIK8yVqiNhkgRRgObgMhicUTiSn7f4LQb7+LO539Ag
	oiCE/mlKJSpl0GJd7wHQknbs3EMOeTf1CpSmxKpz+vPrz0nScNNSC7azpFP7rQt7Jh+l
	b7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wVa0S5uP5O8a+fpisV54w64Z7uy7f6amWgRqlYrLpWc=;
	b=sAOUcejS4DW5kLoLIlEH8A8AHVP7l4W+VS36TjVES6PMgFEfoDW1i2CIvUy3bOgZHG
	qE/w8UQRQewK7Eo01cvlZeR24A1UsMDa1HxDl4MbgA7qPEKMmcsPknsJyV7RI1sFcoNU
	LSt7sUySOCVcKbESMP6pZv3LkwJRnPkx5a0efyP3y095JWtooZYk6AJsXNmcWiKejfD2
	zWJmP8eXiIgPdGVzxT6lmzsuInLT/cH0G/FIkdNkG3y5437UOz3wnLjbult5CPBNxTGJ
	2G25YV8ugGENstQQMm87qwrLzIWH5MDPxRmsdqv7nwicnICyD5DvpF7ulFRM93brDN4A
	DJ+Q==
X-Gm-Message-State: AMke39m3TBRCgax1f1PWS4KRk4gpyAUy1yiorT7lPK5w9QFQ9luO6UBcdVk3VvA20jWEw7j11DTanfTCW9uf714Y
X-Received: by 10.55.183.133 with SMTP id h127mr20526169qkf.121.1486943089203; 
	Sun, 12 Feb 2017 15:44:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Sun, 12 Feb 2017 15:44:28 -0800 (PST)
In-Reply-To: <CAMnJoLP30N+xfxfdSdLQG_dZbmECpYs+GbXosbL4VxHV6oxvjQ@mail.gmail.com>
References: <CAMnJoLP30N+xfxfdSdLQG_dZbmECpYs+GbXosbL4VxHV6oxvjQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 12 Feb 2017 23:44:28 +0000
Message-ID: <CAJTo0LYJT7beY5Pz3CXq+L9oEuJkgybE_oypNhsLO8njSqxHoA@mail.gmail.com>
To: Suvi S <suvi.usa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gtest 1.8.0
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
X-List-Received-Date: Sun, 12 Feb 2017 23:44:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c060056a231be05485deadd

--94eb2c060056a231be05485deadd
Content-Type: text/plain; charset=UTF-8

On 12 February 2017 at 18:10, Suvi S <suvi.usa@gmail.com> wrote:

> When I do populate_sdk from my custom image, it is not including as part
> of sysroots or sdk does not have gtest, gmock libraries
>

Is gtest in the normal image that you are building a SDK for?

Ross

--94eb2c060056a231be05485deadd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 February 2017 at 18:10, Suvi S <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:suvi.usa@gmail.com" target=3D"_blank">suvi.usa@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div>When I do populate_sdk from my=
 custom image, it is not including as part of sysroots or sdk does not have=
 gtest, gmock libraries</div><div></div></blockquote></div><br>Is gtest in =
the normal image that you are building a SDK for?</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c060056a231be05485deadd--
