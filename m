Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA108E00CDD; Sun, 17 Mar 2019 22:21:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3547E00AA9
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2019 22:21:27 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id j89so1377453ljb.1
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2019 22:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=b0EVGbogYIJ2NT5oi+E/W4ymx4We47jfWSFegET5IRc=;
	b=NNtE/3K/n6/ARRrKcbOxsAKEniWV6O1uybCgb+vK3XOPdZrM2De1by1EyeUsYSklG9
	BhtqliBsUUjdxDzvzutp0wkDNLhSGezUAYS7/h0IxcXBId4Lc3dppCTdKScTxxj6N7NS
	RRZLHEH8qcblhTtQbuNdPVfyJupFMhiIFbb0MBZCQ3ZhvK5LDwm61t3Vj8oLe692ehGa
	ZVeCPqSyM/t5q7aOo6VZhyM+lqPwHzJAjgYjV1G5Myyv+KHskQgmd8xjUyKRflbAxOAm
	f09hx3xBu1NNQwA+peMNGtbKZxKwcnlqLSgT1iJnaAEQNXq7YVp+L/dX8LfFSb0ShNIC
	RBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=b0EVGbogYIJ2NT5oi+E/W4ymx4We47jfWSFegET5IRc=;
	b=j/aGDzhQXusjBIoK9JG5uy3wFsvhdq7kuM5BJpimMlU69u4F/4r9/5hQ+Pl7JSSRAP
	vWjOgvNjRI58M0Ihdy76FzicARB5SzdCByEf2+mNeJb8raXLl/p+DhwzzwdHVfwfJHog
	SE9ZyQdw7z/NeqplxbSGHZAs4erKEVQA2KX6Djf5dWWy77P4dsz4IqVj/zkJBEhlEYHf
	hurhGD/97QMENiWKVDsF+888QX3f1xlJzrT7+trZ0y/hDh7W//9nMz7OQbNsxH1JacAM
	wLtDpI8qlA5Fc0KBcXYN78WMOXruh7ZSTXgOEPE9ltslWI/KEJ0MZ1UkEZB1g602OOYf
	kvAw==
X-Gm-Message-State: APjAAAUGQFZdA8AoSdUM18HDbdva18yNDE0tGmCS0tBJ+1b9rK3PIQ1m
	PN5jB5pKP9gD1O92OOchhma4qcIjSztUIbswCe0=
X-Google-Smtp-Source: APXvYqyYxRowF6VMvpgal/WvPqlaQESGDwCvH2Lt+/YDlwPKs5JMoKX9/mz9FDwJZpOFNDiAet7VmDwAMJdH+ADmJh8=
X-Received: by 2002:a2e:5518:: with SMTP id j24mr7679788ljb.167.1552886486987; 
	Sun, 17 Mar 2019 22:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
	<e91ee356-42ba-1e7c-8490-49e0ab076da0@mvista.com>
In-Reply-To: <e91ee356-42ba-1e7c-8490-49e0ab076da0@mvista.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Mon, 18 Mar 2019 07:21:15 +0200
Message-ID: <CAAmVmroW=-u6NMC5DnEo8UY50bNooqfd7aR_UTk=p-a_OBF6Zw@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: yocto@yoctoproject.org
Subject: Re: SDK build fails at latest thud
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
X-List-Received-Date: Mon, 18 Mar 2019 05:21:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 15, 2019 at 2:17 AM akuster <akuster@mvista.com> wrote:
>
>
>
> On 3/13/19 9:50 PM, Teemu K wrote:
>
> Hi,
>
> I noticed that when trying to build sdk on thud it fails on latest
> version. Actually it broke somewhere between commits:
>
> 1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
> 7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)
>
> I'm using it with meta-freescale - layer to build image to iMX8.
>
> I'm using command 'populate_sdk' and it works fine on older version,
> but newer version it fails with error:
>
> Can you provide the steps to reproduce?
bitbake my-image-name -c populate_sdk

>
> ==
> The following packages have unmet dependencies:
>  target-sdk-provides-dummy : Conflicts: coreutils
> E: Unable to correct problems, you have held broken packages.
>
>
> There is a change sitting in stable/thud-next:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&id=af5cf78b275ab5226354337d25d8dc1c41a08904
>
> which might be related. Can you try that branch?
>
> git://git.yoctoproject.org/poky-contrib  stable/thud-next
That did not solve the problem. I have coreutils in my image and it
kept conflicting. When I removed coreutils from my image it solved
that problem, but there were some problems with perl etc. From the
working version all those are missing from
target-sdk-provices-dummy.bb and my original image works just fine.

-Teemu

