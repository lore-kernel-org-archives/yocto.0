Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10D2EE0027F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:36:06 -0700 (PDT)
Received: by eekd41 with SMTP id d41so877785eek.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MbjAvefwy8XxFhST9/QSWsqZpAu20HZmblMdnTTco3k=;
	b=uztHWWgFCb6XgANquFvL3ObfCWII7KHZPa0t1sScOLSPDZr8yWQbtNKCAAlqQKDDm8
	upGRgZjtMnSzDWJxBZtXc/ygzULArT7K8KsSOSHyCZlyhysHuYUq+u+S9nOrr9c15sDv
	CCsMcM60huPKSU3T0x246ka+RLFaY+2/NsNPCx5yYkC4VY1cLLs3TcD1v5XIiojqXfPM
	HVxsgprtnrmJptPsAXDeeAGTEuS4lcWW/EkZVf8uIDJJuJPSerg37jnFflKQpXKDin0b
	Xh6JmTuy/0SBbYnk9Xp2czypoALRYzcp4/0JELDvhDEZ7qe4RuXHgaxD4CGxhcp/Exjp
	nXmA==
Received: by 10.14.204.72 with SMTP id g48mr8246191eeo.45.1345826166258; Fri,
	24 Aug 2012 09:36:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Fri, 24 Aug 2012 09:35:34 -0700 (PDT)
In-Reply-To: <B69A6542-B9AD-4E9E-9806-8C344D30B29F@gmail.com>
References: <B69A6542-B9AD-4E9E-9806-8C344D30B29F@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Aug 2012 09:35:34 -0700
Message-ID: <CAMKF1srGqCXGdYPmOh9XXOV3uXTj4P6NvD6QdsBrNsiXC1e6_A@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: TARGET_FPU not getting populated for powerpc 405/440 fpu-hard targets
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
X-List-Received-Date: Fri, 24 Aug 2012 16:36:07 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 24, 2012 at 9:27 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>        I just observed that TARGET_FPU is not getting populated, when you do
> a build for fpu-hard targets. For fpu-soft targets, it displays TARGET_FPU =
> "soft", but for fpu-hard targets, it display TARGET_FPU = "".

that means default is hard for this architecture. This option is
essentially used to configure gcc
unless your fpu is special like fsl one's you are good here.

