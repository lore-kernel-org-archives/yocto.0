Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E60BE00B58; Wed, 25 Apr 2018 05:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02A45E00B30
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:23:08 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id t123-v6so26565141iof.7
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CuEUFBdCUbwjBd4DTerekbB0+5h8eBYwOVTtobRpan0=;
	b=CwNYqePEPDDWQcrFhfT9AfVl+yH+xRNddAMzcZl7ZryDyfKhmlCoUMlVNBiClgwp7j
	JFEU3FADNi4ll+bAX43qvAjeSgJv+u+b7pr5cejoAbii/EqvkjqrWP5d7cP+skORRz6D
	0itVKBZW6lfZZ20vInjJp+ISW6oCEK6KK30YvlBK5PbWSTgxP0mOBRvmOe0LsPpeSWR6
	pJXx/iLF3S9w01MabrWjjbFlf8Qm0BvCa4eVzwZBfkT9zDh4qqhlcqfrB4R+NImH1O+5
	8cFomEwEYQgghny9+coWa1Lv2SnRb7HY4U8Mn6v6Fbmq8pwta1hwIvYL+sT1wfKBUYhQ
	Vtaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CuEUFBdCUbwjBd4DTerekbB0+5h8eBYwOVTtobRpan0=;
	b=C/H0NUkZ+BY4mRn+jRW7DcXqAcwGyJYx8wElQmdUzxlJHUK0q06um7IoebyTrk/ULg
	anFYx/fXt+wTATRINlfXtBYB0DgdMFdMsSdVQlkNgU/iaglE6FdJJ6ko8Bf42KG34bvV
	hnTLNwaEK5o8hKpVPKmY4uSXKYQIm5rbZyT5U8/wTfNvmGwAgm0Wc0dZ7Ytj9cJQlV5P
	Bu26idAZk89k2f4fbzacMNtyubgXLbJ/C+TnPUpO/AuykQFM+7aV4aM/Uxpeuaksj4jw
	h3WV/DMulPrwO8N0EADC3LpK0371h0JhMZmu+YDl3lThk6SffkGiLvtJ9C9R2hTeAYXJ
	5bVw==
X-Gm-Message-State: ALQs6tBSwqgCB+MZewCzrVUP64Tf0oIzuif9oOsveK7MJASK4a9TiBaf
	Gtp08KoMzi/yz/Qq94+doUV5UI5/W7taTkPsEFP3wg==
X-Google-Smtp-Source: AB8JxZp1VZ03Fhi+a/rpQycmpPinoOm8im5np0/Kc4g0M65g+djxqNO1RvKNgElHIadVCEsC1ZtZ2aPHaxJUJDzM4HY=
X-Received: by 2002:a6b:6b16:: with SMTP id
	g22-v6mr27739917ioc.20.1524658988271; 
	Wed, 25 Apr 2018 05:23:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 05:22:47 -0700 (PDT)
In-Reply-To: <87tvrzcwdq.fsf@linux.suse>
References: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
	<CAJTo0LZZo3Cy82z1c8ZnVwR9LL-9+dEuFhzELk=v+A8HhHveBw@mail.gmail.com>
	<87tvrzcwdq.fsf@linux.suse>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 13:22:47 +0100
Message-ID: <CAJTo0LbtdtL6QzzbcfO4D65-x_Xi4nF4_oqsWyMwR-DWzq-VXw@mail.gmail.com>
To: Uwe Geuder <jrswdnan22@snkmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: building recipe with buildtools, causes sanity error: Your system needs to support the en_US.UTF-8 locale.
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
X-List-Received-Date: Wed, 25 Apr 2018 12:23:10 -0000
Content-Type: text/plain; charset="UTF-8"

On 25 April 2018 at 13:18, Uwe Geuder <jrswdnan22@snkmail.com> wrote:
> On Wed, Apr 25, 2018 at 1:48 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> So my hunch is that you've a modern system with glibc 2.27 on the
>> host, so that old buildtools won't work.  Try this buildtools:
>>
>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.5_M3/buildtools/
>
> Ah, buildtools come with their own locale.
>
> So my previous message was probably not applicable for users of
> buildtools. Sorry about the noise!

Well, it's more complicated than that.

The old buildtools (including 2.4.2 because we haven't released a
2.4.3 with the fixes yet) did a fairly evil but we hoped safe thing to
save space by using the *host* locales even though the buildtools
ships its own glibc.  This was fine for a few years, until glibc 2.27
changed the locale format.

So now, you're using our glibc which is trying to read the host
locales, and failing.  The new buildtools ship their own locales to
avoid this problem, which is why I suggested trying the 2.5M3
buildtools, and we should get around to releasing 2.4.3 which will
also have this fixed.

Ross

