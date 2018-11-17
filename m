Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0689AE00BBD; Sat, 17 Nov 2018 07:30:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 887DFE00A0A
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 07:30:28 -0800 (PST)
Received: by mail-qk1-f195.google.com with SMTP id d135so42233823qkc.12
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 07:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PFVVbylll7rHJ4kevVi7phOXv8433d3aPYhdlt1k2JA=;
	b=f8W3A9douHZrX3KeORXFKcRQIcdX7itdg0zJaRB4ASENySn4lm+pryyVVwHr6vGY5U
	WDM+Giyx88wzcc7ksWBQTeAdezhgJKah3XFj4X4OYeVGkWiBbjCkufh08bNE6ESupqkt
	jlUBMY8x5S6AYyKwTgSqCP0qNhbJk0lin9fs/GYwb5RGEXCo3Dh76dstlMmP4G5UVue5
	69o8/VYIzCOh/GcKcQZbbKSZl2+SO3cbvMOKUdzasoTDTK+rsYK1YV5vqqJvbuUxt6J9
	FIhHd2DfcWn585y/GnxM4eDe4VoS+iPI69Bvcu67pBMJR7Q0BEdD5WtVlfD/KpIpERtw
	6ptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PFVVbylll7rHJ4kevVi7phOXv8433d3aPYhdlt1k2JA=;
	b=KCqdwrsiMMXhngK1mXiISmn5YhAlBIMWJd43HoM4xknh9w4KRZpYd8fJ/NWpVwDPJE
	SBLARdmsbUuY93pZSVerEC+C5fumx28HbxPq7b5xF4Pq+sIvUvs+E3PJBt0r41IwdHz2
	qFaW+N8Ld2GKdvVq7znp21W19RC0w8SIUtn/GvFh3gTpWdyG/Y0dfrM3eekMjIetdsFZ
	Ejiw5PdHMOf66yuovkPY7M5UnuFKHG7flpEmaCpcjajt4JdkHDnlqJcwTftzdARtFMQK
	iNLEzZLBoW5JgQ9APNlkiLe+K8O+wY7cfxQ0InOTPiWSkx+fNGs7FROHNu7s3Qw/mPeD
	8hjQ==
X-Gm-Message-State: AGRZ1gIGhI2ho9GkiqIJFu7S9tTfWyw7MNjk+gaclWcpfMe4z2lkpd41
	b5jv43HeC+N5M/x/vQhpVL+XWCaeOhJBEBo2koo=
X-Google-Smtp-Source: AJdET5fFtnT3H9t5NmBbqFB+sqiU3JPQjnCyxoIXSK9+oKT1zUVpwxbgh0ECvgktls1E59qr+cgRFHcT9atmHcMVxS0=
X-Received: by 2002:ac8:16d8:: with SMTP id y24mr14591772qtk.253.1542468627660;
	Sat, 17 Nov 2018 07:30:27 -0800 (PST)
MIME-Version: 1.0
References: <4ca1c544-6dc9-128a-59d0-5c714175a8d6@gmail.com>
In-Reply-To: <4ca1c544-6dc9-128a-59d0-5c714175a8d6@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 17 Nov 2018 07:30:01 -0800
Message-ID: <CAMKF1sodMP+xmbRPpUYqs2Qbzj7ehNNqaTggHqcXORVB03t3Fw@mail.gmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: supplier workflow
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
X-List-Received-Date: Sat, 17 Nov 2018 15:30:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 17, 2018 at 12:35 AM Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
>
> Hi,
>
> I came across a scenario, which does not seem too strange, but I am not
> sure how this can be handled with OE/YP. (just nasty hacks with SSTATE)
>
> 1) Company A provides an SDK to to Company B - no source code provided
> 2) Company B provides a "binary" back to Company A - no source code povided
> 3) Company A integrates this "binary" back into some project and
> bitbakes the image
>
> Ideally Company B does not just provide a "binary" executable/library,
> but a package e.g. ipk.
>
> Company A could provide an extensible SDK and Company B could create a
> package of their stuff with it.
>
> Now comes the question: "Is it possible for Company A to add a package
> (no source code available) back into a project and bitbake this?
> If yes, how?"
>

there is some help if you inherit bin_package

> The advantage would be that Company B would be forced to bitbake it
> (with the additional checks done by OE/YP) and not just compile
> something somehow with a "classic" SDK and ship it.
>
> Regards,
>
> Robert
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

