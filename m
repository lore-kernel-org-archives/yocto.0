Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AC4AE00E4F; Thu,  7 Jul 2016 08:27:01 -0700 (PDT)
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
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF56BE00E4F
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 08:27:00 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id f89so1337944qtd.0
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 08:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ES06lOsgvKpIhLuExwE2mUcVC+gOxoVOiiaglz5pcV8=;
	b=isRIKpehdEN8HyIGsYO55ts4ElNpF9hQcKvq/Gb+08E4HT+tltCE+DcYzeqRBjBGGL
	LbqcWdEtIaPvuENzcCQv76ad4rj7BnOoasOE+dqWrDp8UcDgpAvwGNQniCbP3srAnOwk
	fbuXhLLh08b5LGCvzQHUA71hXT/QU5inK/x8Yz86q2hCrASZ6l5bUgiBxs8GuUwrzLf2
	BZ+LA/7jK9BZWjGhmgXIoV+9pSz5OOiDyjHUAEH61+SLxybLYlbxJ4m7GDCdEGuxDpJZ
	MFIu9jLDtg1Ikmg+bNyYkk12vz0jPch2PqzKNL26ar2aCnLZm2N1irdDcgPHJl3dBAD+
	I6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ES06lOsgvKpIhLuExwE2mUcVC+gOxoVOiiaglz5pcV8=;
	b=GcA2jMrURM0kGYTDhtg6kmqNIx6tJqUcSkB4XFdJ7Y7g4hHxj7WK6UD70voxrNzMdm
	YuyaTMXqBzbpudpCZoklwNyIwLX7wv2FHcM3f0ynrD8Pv+8pczphNsNK7ZhHmsBLDcMS
	5Matr+lMqLTpjq0VkAjRdGjY2Vvar6UEhqlI4TS3xvl+C8s4i0rKl2WmLgqa8n6+Hw3G
	6OI47X/QjjEXop7OtFkDT9yLoqZlV9g8eihkHoW2ZpVbKGZNjNt3m/zwSnuYMkTQqezc
	1e0Oi4K3SCEXcaS30T2jPii0n+o+V7XEnk5bQ2izAfV+QrzHDTAT2wDjEmbaLYcn/5F5
	g/mQ==
X-Gm-Message-State: ALyK8tI8UeKqa6+yVcE9NWOm9lfOsePjqrFXHAS5OFdO5WwTXosFkonRrHFuQnKzflat6OLJ98Hwpqk7NfCm7g==
X-Received: by 10.200.51.76 with SMTP id u12mr1096155qta.55.1467905219243;
	Thu, 07 Jul 2016 08:26:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 7 Jul 2016 08:26:29 -0700 (PDT)
In-Reply-To: <CAFBcLwK0iSdL_oBNJV+PTdgBFR=sGuVWjXXeaxtvVs7-N0Z8Kg@mail.gmail.com>
References: <CAFBcLwK0iSdL_oBNJV+PTdgBFR=sGuVWjXXeaxtvVs7-N0Z8Kg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jul 2016 08:26:29 -0700
Message-ID: <CAMKF1sptzMNiA7z8AWY=vuYD5XOgwDMCXkdTO-0Kk4G=5YzNbg@mail.gmail.com>
To: Alfonso Lima Astor <alfonsolimaastor@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confused on how to use native sdk correctly
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
X-List-Received-Date: Thu, 07 Jul 2016 15:27:01 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 7, 2016 at 12:40 AM, Alfonso Lima Astor
<alfonsolimaastor@gmail.com> wrote:
> Hello all,
>
> I am working on a project that creates applications for host and target
> architectures. The target SDK works fine, but I am struggling to understand
> how to use the host SDK. In my project, we have tools using QT libraries,
> OpenCV libraries and headers and libraries from other packages.
>
> How am I supposed to use these libraries for the host build? just installing
> them on my computer or adding them to the native sdk? What people do for other
> projects?
>
> Having a look to the SDK environment setup script, it seems to me that
> the native
> SDK is meant to hold tools to support the cross compilation but not supposed to
> be used for the native build. Is this correct?

thats is correct

>
> Thank you
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

