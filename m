Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F700E00DA9; Thu, 10 Oct 2019 05:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4453AE00DA4
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 05:40:22 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id a15so4760071oic.0
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 05:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iSc+l0ff6jEqTYgUlgUIu7CFk1KSA9nBgYXgCLzkGTA=;
	b=GwLZ1uxeEVp38RcRl8xwE7/VPgcQIxUR9+t6yeUzxS/HkPnOZM6cRA6laDTM2Wfzi/
	ibRmoghnx3vF1QjNckkGVhDEF2uOigNgYSllbPksbovAOftEEQqernXXnvDHofNsP0Ds
	n4yzwttScCI75ZAaR3H5OPmZTTZtUa36PJoATv8euvUcHZIdMSGC4Bk/IbR26pKitxS1
	8feGhzTSNBWrV5zGa5YP7/xnKDd77RwL+22scL8IgxWzd2f6vlChiwDkV7jKqEKUhaxZ
	EWMCHQ7okwz1kSESTqNqik40LARpEyib9NLC+DGd/5W+/MJRrncJi4dXbYFci2Pzhbj8
	+b/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iSc+l0ff6jEqTYgUlgUIu7CFk1KSA9nBgYXgCLzkGTA=;
	b=e8uIxsAbb+mDoi9PJFJyhlJrNYJfj8YErz+3CuqGBET53xsirgXtt+/GY4qqLXB/+Z
	Z01LtZaFRj8qolAcqYrJNA0wYWCt0bZD5N3wmvO3W2iyn5E+ObdW/OIG3fc0noaUXzP+
	nd6i8Nwmgtu/8Q+HyC3r1YVUL46z+1UvUUb3BGOxqMPTiLRT2NwMeUk2r+sFPYjVUGy7
	EAYr6K33+9/lJbQz+k9fcABUzdMm7ZuFtKMAVtKpLGKREHkaqlmhPmIInbS47hRQw9Yf
	tv2ZyBIf9pYsQSLGfe4eAgJTzLDVAyWLEfnzdNGsM+NZXYHr5oVXX3Lae9HaWdjWlOpE
	VxGA==
X-Gm-Message-State: APjAAAUYsVK4o6lvydpVbFGgNN0264syGogbXrWyLKEohuoXyXssdOoh
	MYyhSVNb2hGNN8Q7w5UqLTAq0YVkR/DkA8IlBwMCvNGe9vY=
X-Google-Smtp-Source: APXvYqyYk9WktBEPKr+h8ZtRtz8i06b7Bdzxj8ymyhMwOFzEkv07jQfzscTZ+gEQp84AQDEf1EByTDLgb/nel0bbRMY=
X-Received: by 2002:aca:b4d4:: with SMTP id d203mr7320185oif.168.1570711221532;
	Thu, 10 Oct 2019 05:40:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:ce8f:0:0:0:0:0 with HTTP; Thu, 10 Oct 2019 05:40:21
	-0700 (PDT)
In-Reply-To: <8d8b0186-6319-2967-2d62-bbfea38952be@faresoftware.it>
References: <8d8b0186-6319-2967-2d62-bbfea38952be@faresoftware.it>
From: Yann Dirson <yann.dirson@blade-group.com>
Date: Thu, 10 Oct 2019 14:40:21 +0200
Message-ID: <CA+4=imZSkvtDfDtXXph=WJCrJbM4befUBOxzd4X4HvOx__407A@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: buildhistory revert
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
X-List-Received-Date: Thu, 10 Oct 2019 12:40:23 -0000
Content-Type: text/plain; charset="UTF-8"

The PR server takes care not to reuse those versions.
Apart from making sure your recipe's signature matches the one for
0.13, you probably can't (assuming you don't want to mess with your
PR's database).


2019-10-10 10:27 UTC+02:00, Mauro Ziliani <mauro@faresoftware.it>:
> Hi all
>
> I need to change the build number of a package.
>
> That is: i have the package
> kernel-4.1.15-2.0.1_4.1.15-r0.*17*_armhf.deb, but in need to turn back
> to kernel-4.1.15-2.0.1_4.1.15-r0.*13*_armhf.deb
>
>
> Can I setup manually the 17 value to 13?
>
>
> Mauro
>
>


-- 
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

