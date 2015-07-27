Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 613DFE00A26; Mon, 27 Jul 2015 03:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E5AE0049B
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 03:05:18 -0700 (PDT)
Received: by qged69 with SMTP id d69so47742615qge.0
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 03:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Dr+43rBlyV/biZiSYSHgjY72cN4Ozu14SJhYN4x73qI=;
	b=mm4WjD7lwUGqckkfXK5drmeA5q9TUg/AnqIkZnaSU1gDdiuN560xhouS0ccYtgg8Sf
	9FPVhd3rPT+KA75pLTtxRAmD+4URnn8Ng+RqLZv5g25xDHYjuXXePWIc3aFwGzn2vjBp
	sEhN440JUD9xt8x+XbZxmVGiQ2mcX5cfqTwyNFA7NKT+zcC2VzgB8AI6pnvAMDDOwj3k
	pf58pXJc/ahKiW7wmI1KGkMso9mMwJUQePwnoVhBhaIvbw4dctP3ixrpZAcmHCYka8tG
	Pe4Zyr3Fr1FfUKTPvQltaFxydlXODBzM82DnGk2hw6wlk31OPez9uWRwqoY8c0pP/UXl
	BKKA==
X-Gm-Message-State: ALoCoQmVZPO3eruTb7AmSZI51jOKHfaU4E1Y65z65vJFcaYcTQ2iyIeovhp8QQrBTZPFLeVbsme9
X-Received: by 10.140.235.19 with SMTP id g19mr41299298qhc.52.1437991517881;
	Mon, 27 Jul 2015 03:05:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Mon, 27 Jul 2015 03:04:58 -0700 (PDT)
In-Reply-To: <55B517E5.5080708@mentor.com>
References: <55B517E5.5080708@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 27 Jul 2015 11:04:58 +0100
Message-ID: <CAJTo0LaKRO8dkGWmA1iXkkKE7HK9e22A_KLWJgpcfK18XQfCJg@mail.gmail.com>
To: "Usman, Fahad" <Fahad_Usman@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Khandavilli,
	Arun" <Arun_Khandavalli@mentor.com>
Subject: Re: Using wic from a Bitbake task
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
X-List-Received-Date: Mon, 27 Jul 2015 10:05:21 -0000
Content-Type: multipart/alternative; boundary=001a11376dac9d1c9d051bd87d06

--001a11376dac9d1c9d051bd87d06
Content-Type: text/plain; charset=UTF-8

On 26 July 2015 at 18:24, Usman, Fahad <Fahad_Usman@mentor.com> wrote:

> Is it possible to invoke 'wic create' command from a bitbake task. As
> currently it is implemented to be run as a standalone tool and if we invoke
> it from a task, the 'bitbake -e' command fails, since more than one
> instances of bitbake cannot be run from a single build directory.


Not yet, but there's a bug for that:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7672

Ross

--001a11376dac9d1c9d051bd87d06
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 July 2015 at 18:24, Usman, Fahad <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:Fahad_Usman@mentor.com" target=3D"_blank">Fahad_Usman@mentor.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Is it possible to invoke =
&#39;wic create&#39; command from a bitbake task. As currently it is implem=
ented to be run as a standalone tool and if we invoke it from a task, the &=
#39;bitbake -e&#39; command fails, since more than one instances of bitbake=
 cannot be run from a single build directory.</blockquote></div><br>Not yet=
, but there&#39;s a bug for that:</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra"><a href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D7672">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7=
672</a><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a11376dac9d1c9d051bd87d06--
