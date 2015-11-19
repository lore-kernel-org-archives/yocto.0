Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9758BE00985; Wed, 18 Nov 2015 23:03:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 479B6E008B8
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 23:03:55 -0800 (PST)
Received: by igcto18 with SMTP id to18so56730715igc.0
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 23:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=FnwprhbsQcUR3BBQVHwAcb0YH6qZygMTFGV+zqCCM34=;
	b=yjIOnkjzLkoUrsCoCnqnLNJW23r2agXxqz0LSpZr++1YJafyc8DMIk9X+VIqAcwZtR
	YOAPJRqxRGcxvBzGStsdL5tcx/sCFnIHpQGySdeMIng86Nr/c0+vVlSlPbZUbNAR9Egm
	G9j9M1Rkacvbv5JZVdISZBdS3EqgrQIbQR+/pCTyMvRFh1zFgyWmX/FijNlS35UDCJzm
	bbLRiZRtqxgrpipGrGsbLJYmwVw8oZphoOGD9um+/v+iOvfxCoCBY6aWcWxEuQYO3rC0
	OysltryJOtZIBdAroUqOHIxCG9tgWFFqftafoiCWauYfzY0SwuP+m0OuM/0duafsIZT+
	DTeg==
X-Received: by 10.50.138.3 with SMTP id qm3mr12285444igb.11.1447916635129;
	Wed, 18 Nov 2015 23:03:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Wed, 18 Nov 2015 23:03:25 -0800 (PST)
In-Reply-To: <CABatt_y2weW-YiHJP_Si9_Qk-xP0DxOuLfLZXsAjFy2q_Ph6Yw@mail.gmail.com>
References: <CABatt_y2weW-YiHJP_Si9_Qk-xP0DxOuLfLZXsAjFy2q_Ph6Yw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 Nov 2015 23:03:25 -0800
Message-ID: <CAMKF1sqPTa8B6BbV2k3RAx0SJ3k4zZBRLQCvFwOW25Q+MJjGaQ@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: aclocal warnings
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
X-List-Received-Date: Thu, 19 Nov 2015 07:03:58 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 18, 2015 at 1:23 AM, Martin Townsend
<mtownsend1973@gmail.com> wrote:
> Hi,
>
> I've created an autotools project to test out my SDK I've generated.  The
> SDK was generated from a Yocto build system based the Fido branch.
> After souring the environment setup file in the SDK, running aclocal I get
> the following warnings
> perl: warning: Setting locale failed.
> perl: warning: Please check that your locale settings:
>     LANGUAGE = "en_GB:en",
>     LC_ALL = (unset),
>     LANG = "en_GB.UTF-8"
>     are supported and installed on your system.
> perl: warning: Falling back to the standard locale ("C").
> perl: warning: Setting locale failed.
> perl: warning: Please check that your locale settings:
>     LANGUAGE = "en_GB:en",
>     LC_ALL = (unset),
>     LANG = "en_GB.UTF-8"
>     are supported and installed on your system.
> perl: warning: Falling back to the standard locale ("C").
>
> If I take the same project and build for the host aclocal works fine.
>
> Does anyone know what I can do to fix this in the SDK? even a hint as to
> where to look would be appreciated.

its using perl from SDK it seems and we dont have all locales
installed in SDK. Do you see any problems due to this ?
or is it just a warning

>
> Many Thanks,
> Martin.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

