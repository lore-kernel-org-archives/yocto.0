Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB85EE00726; Thu, 25 May 2017 02:31:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E04FE00349
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 02:31:11 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id h16so88471604vkd.2
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 02:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1XP2c59RLaFbz/M3An+yg6L+qP841b5ORk31vvhmwiE=;
	b=ZsC/mAdoWdVpzNz157qBbX+k1MZEeIshxUIktLJB326qVGAZaKi1B+u+ugJRXZSrKH
	Kiomeb8kJpIcn9SzmK1Rl7l6hld5MSpXyeDgtb/qFI7A3OMJqkbb9+X+muKX10MJtSG/
	dBUgOXISeqJBBjd32xe2pveLlMiEHXR5EyFgrNFuMmtQNKLNatT8Cc6BQ+Ci7eRsmqoT
	IBcBpU3xZ8gHXBh29B7YL1fRDQvloaXnEqhD+WgCVHfIBvKzia9H2XlKfCcaLWK8i+af
	jZnuPfdIl39mobkWqPMN+4ta+xfMVBtWuHtjFPWJuMxZBxr81EL4ENuqEKKtZBoRTGgs
	Or9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1XP2c59RLaFbz/M3An+yg6L+qP841b5ORk31vvhmwiE=;
	b=Exr4/Yf4DndmfGKRWQM5MMpKRvHOwRyPVUrkaUVrbWrvH0bZbQrVXiXdKIH70tLhPV
	TMml8glUDAKCeihd/KXJfNc5n7dWbfd8zvEYdzTb36cJztsdxoOJ6tiqAKQlChIoJB4Q
	VtE8f85tbLgOduOAuPPok8QCr85xHQJbJDC/yAQq+kV8c4WUT//bSJt24rlO2UBsNtpY
	iy/861O4gCBeMrbTiLyYDe4pmO3SaCF1Cc+f8G+/xzC3Q7+2rGxBPmFPo9GJ9dAGBbiW
	sRtJWYWpavMInpn3y/9t/f7PNHK4qYb6789psoxQJLduy9z8KoxcmFqiGlViGb2coHcD
	AJhg==
X-Gm-Message-State: AODbwcCQGYHqjYaR4Odeb6Y9xW5uZ0E4rt8WIgF7VO9qzA0QhvKuIE7C
	XU8KAvgT+En7ezk6nvfWZ/0XU3Rm0Ocl
X-Received: by 10.31.76.132 with SMTP id z126mr9552591vka.137.1495704671133;
	Thu, 25 May 2017 02:31:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Thu, 25 May 2017 02:31:10 -0700 (PDT)
In-Reply-To: <713d15f8-240b-a20d-9a4a-6c340412a529@mlbassoc.com>
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
	<CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
	<713d15f8-240b-a20d-9a4a-6c340412a529@mlbassoc.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 25 May 2017 05:31:10 -0400
Message-ID: <CAHUNapQCtxq1BS08e=SENiPc3JF=QA4hae2_Y4+HxQ7ZFVgXPA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: etnaviv image
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
X-List-Received-Date: Thu, 25 May 2017 09:31:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 25, 2017 at 5:01 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Would you mind sharing your configuration (conf/local.conf,
> conf/bblayers.conf)?
> I'm mostly interested in trying this on my RaspberryPi3.

Absolutely!

I'm hoping to do a couple blog posts about it soon-ish showing
comparative results of glmark2-es2

