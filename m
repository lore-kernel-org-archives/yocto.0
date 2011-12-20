Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84208E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 00:28:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@googlemail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so11047887wgb.11
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 00:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CRzJ0o+YZHF0dKV4cLdOgsMXAmOpgaaFuWiOO/7NAIE=;
	b=WwoW48mHD6Z1HtQD5oRDkfLeGxOKeYDSlB5BjGkOx/5RqQOg5aGO2pcgwFg3ftQk8j
	cK4/bViy+aM9vOIqiSvnAqJBdBrapBOQDyEHZJxRfNucdndtpOv+D9u9OwjTx8dWzz5F
	2GZGAfhmqzHwlwfAGe7LiE/I96H8WEuWiQhRE=
MIME-Version: 1.0
Received: by 10.227.208.133 with SMTP id gc5mr1014754wbb.25.1324369710243;
	Tue, 20 Dec 2011 00:28:30 -0800 (PST)
Received: by 10.223.78.136 with HTTP; Tue, 20 Dec 2011 00:28:30 -0800 (PST)
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
Date: Tue, 20 Dec 2011 09:28:30 +0100
Message-ID: <CAGiJk9fSjJj+0M=xKX2=aeh=o3QadOf3VQz0=kG7HfBwk5qOkQ@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: "Wang, Shane" <shane.wang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Uriel Liu <uriell@wicresoft.com>
Subject: Re: RFC: Web UI design for bitbake
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Dec 2011 08:28:32 -0000
Content-Type: text/plain; charset=UTF-8

2011/12/20 Wang, Shane <shane.wang@intel.com>:
> Hi all,
>
> Web UI interface is the next what we are going to do. Uriel drafted the first iteration of the architecture design and I posted it onto https://wiki.yoctoproject.org/wiki/Web_UI.
>
> Looking forward to your feedbacks.
>
> --
> Shane
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

It sounds like you want to build it all from scratch, quite a lot of
work to build a fully featured web build system,
in this case compatibility to other systems would be nice.


For web builds with bitbake, Jenkins-CI (a fork of the continuous
integration system Hudson) [1] could be worth a look,
it is more than just a build tool.

There is also Autobuilder, but I guess for end users it is too much
configuration effort?
Jenkins-CI was very easy to setup and with a plug-in it could be as
simple as pointing the web-UI to the Bitbake path,
managing cluster/cloud/slave-pc entities is easy too.

Just my 0.02 cents in the case that you didn't already cast it in concrete.
IMHO it looks like Jenkins and the concept-pdf are very similar,
only difference seems to be: you want to invent it all by yourself?


[1] Jenkins-CI : http://jenkins-ci.org/

-- 
Regards
Samuel

