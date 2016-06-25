Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74208E00D65; Sat, 25 Jun 2016 03:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32170E00D50
	for <yocto@yoctoproject.org>; Sat, 25 Jun 2016 03:54:00 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id f126so47948809wma.1
	for <yocto@yoctoproject.org>; Sat, 25 Jun 2016 03:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i5EX3qFJYTPc5hDj3bIAi+IyITTU6JB3OW6ZcjSh7Aw=;
	b=lCmeGuOE+1Q9zjoZwb0jugi30mnBSHXL1Gug1Cbe5VM/itrafv/x4W5+L4Vef2jU/K
	2LepZ7zaXoO7+3uUt1QFiPyknSed9J6pQTdmxQ4Rz1UfLMeZ+B1Gw2U6qdns3RJp6gSC
	rzvwCqpptW8ZGfEnOa4k6Yi9g20Nj2ks8npOdkg9vSxtrRsLE7GPdZ0+p+e7nLwyzw9j
	HD7k8Wap8G7EljtXLuStTlw7SnxPIadw/rylC5dljKbKiy3smrBG/ToxkPmOmzlJ0b5j
	EARgkbDgZLd7O2Ho2CIalLw8zBM3mjkPYtFP8WsBY/5xumqr9I++3R0+Gbbn6a7ibvrn
	70Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i5EX3qFJYTPc5hDj3bIAi+IyITTU6JB3OW6ZcjSh7Aw=;
	b=YwEAZ3PpYxWZQRWR+hmaed2kZAY+9cIbSW4K8AgxYQGknnow3VwfZnEdyRQbbrNcsA
	PDrqjx4RjMYEB8jGw4qZIT+kXJv2OLmEF4+eMoAGWRY+VZw2YFpZCQBuLOUyz48SVrXj
	4v6DPkZYU1Dj+5oN9AQvbKUGz5NqYyf1m/bI3YoxRAgxXLYHNaivYnT4OvXDRMgwGD0h
	46zXuvetKnhWhCmW0JfNtQUdxu4s1l3dI1687bPcMc/RcYbwEWGqGlglzs6bGNioYLOj
	rdjSyNBScpBVgyw5mGmPqxKInmVdYTK2tjZFaiA3NiUa9qSte1eUFLOU9usRbMETR39e
	b2mg==
X-Gm-Message-State: ALyK8tKvi6LFk5F5d4WwqruLvsdP1l+J0AZGTqZXX6HVIxKN7AQKEVEAobcH2dFDVPF6j//8QgoDgPKK/RHQcw==
X-Received: by 10.194.162.168 with SMTP id yb8mr8633770wjb.32.1466852039043;
	Sat, 25 Jun 2016 03:53:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.151.231 with HTTP; Sat, 25 Jun 2016 03:53:58 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1606250459250.8815@localhost.localdomain>
References: <alpine.LFD.2.20.1606250459250.8815@localhost.localdomain>
From: Andrea Galbusera <gizero@gmail.com>
Date: Sat, 25 Jun 2016 12:53:58 +0200
Message-ID: <CAC+thW0kmcYA3ydhXYcKyM6bT-0eu7WJq8_4O1BoYoeM8We7fg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what other layers make extensive use of "UBOOT_CONFIG[...] = "?
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
X-List-Received-Date: Sat, 25 Jun 2016 10:54:04 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Sat, Jun 25, 2016 at 11:02 AM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
>
>   was looking for docs on proper usage of the UBOOT_CONFIG[sd]
> construct and other variations (doesn't seem to be a lot), and noticed
> that while the meta-fsl-{arm,ppc} layers make extensive use of this
> feature, i don't see much more of that across the other layers i have
> checked out.
>
>   are there any other layers that use the UBOOT_CONFIG[] to any
> extent? thanks.

i.e. meta-altera [1] does... See the machine conf files it provides.

[1] https://github.com/kraj/meta-altera

