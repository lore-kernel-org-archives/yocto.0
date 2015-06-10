Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D26BE0095D; Wed, 10 Jun 2015 08:47:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C862E007B6
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 08:47:24 -0700 (PDT)
Received: by igbzc4 with SMTP id zc4so38804840igb.0
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 08:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3k6aEcfeV5JbOHRncc5ncQh4l8/nP+HrTeL2hS+838c=;
	b=Q2tANu7rkXSQMYwsyevz9wIpSZ0JsWQ5Yyv5400iGr1OlSWGRnKiM+1BFTpRprDzEU
	LXXyzFJ8S/VZhWF/hORtpEv32vz1aHzsYEZ4u7gZ+/54pHW7+1le2H41puj61LxT+P9M
	6RpyKIVrozgwsFpisOfPGDEi68cZ6neDOXAkx8ihgDZ6NsGdWRgSR3ICn3sq7HlL3Qb1
	0bCL7JG9Bf0h38pT7qqKH5qt/pp+myyertoXFtrrPIW7+sJn7cHKofL5RXg4QfMdGKPL
	7dGW3gN6qIuDdx9G00iIqK2EAerbqV9Aj/5g1gQa9JzLPpXIOvqQ41l6REcpZtJTzix4
	sjaw==
X-Received: by 10.107.6.28 with SMTP id 28mr5221186iog.54.1433951243981; Wed,
	10 Jun 2015 08:47:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.83 with HTTP; Wed, 10 Jun 2015 08:46:53 -0700 (PDT)
In-Reply-To: <CAJuK9Ta-4bgWo9R0W=6p3z3SHfBiYgzH3Fm8i=VtXeZCTW1_Hw@mail.gmail.com>
References: <CAJuK9Ta-4bgWo9R0W=6p3z3SHfBiYgzH3Fm8i=VtXeZCTW1_Hw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 10 Jun 2015 11:46:53 -0400
Message-ID: <CAMKF1spdx4-=YRoQ9QHYeatJ6He-NtNTyaCJmOvEvDiKrcrm8g@mail.gmail.com>
To: Sai Prasad B <saiprasad.b@pathpartnertech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Node.js dependency issues
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
X-List-Received-Date: Wed, 10 Jun 2015 15:47:28 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 10, 2015 at 1:01 AM, Sai Prasad B
<saiprasad.b@pathpartnertech.com> wrote:
> Hi ,
>
>    I hope this is correct place for my doubts on yocto. If not please ignore
> this mail.
>
>    I am trying to install node.js on yocto. I added the nodejs recipe and
> when i do bitbake an rpm package is generated, but when i try to install it
> i see that there are lot of dependency issues and hence the installation is
> failed. Please find the error logs as below.
>
>    error: Failed dependencies:
>         libgcc1 >= 4.7.2 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libssl1.0.0 >= 1.0.1e is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libdl.so.2(GLIBC_2.4) is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libm.so.6(GLIBC_2.4) is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libgcc_s.so.1 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libpthread.so.0(GLIBC_2.4) is needed by
> nodejs-0.10.25-r7.armv7a_vfp_neon
>         curl is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libstdc++.so.6 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libcrypto.so.1.0.0 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
>         libgcc_s.so.1(GCC_3.5) is needed by nodejs-0.10.25-r7.armv7a_vfp_neo
>
>
> Any help would be really grateful.

if you want to install the dependencies automatically then you have two options

1. Add the package to your image itself ?
2. Create and enable online feeds and enable it in your device too
then opkg install nodejs would be what you need

>
> Thanks and Regards,
> Sai
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

