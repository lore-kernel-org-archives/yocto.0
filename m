Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F91E0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:30:11 -0700 (PDT)
Received: by eekd41 with SMTP id d41so875332eek.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=d1HscvB2wtB1DfLA4aRE/1WxLzEsZWv+0qU9IIx7p+s=;
	b=eW/CEfMFmMBY5QBNgpz7eRHK8uwJZAiqSJErcOCeMq8d5joydJBgVygdLnwP5GChf1
	EIMoOyzrYniGhdAT6mzQiVVqeH/oVJFyTxZmvdY2iRW24ypeWNgvr/dU/JOJ2Mdikjrj
	ZS6qKkgH4eBpgICFdvTy06Fjc+0oxIvEewudwrwxA14vD97e5hfKtStWpvMr1gmFcoqC
	7hVPrFwmBsKmTkF2SFiV9j2IWM9Q1pd955Gq1eTGwLKuUM4VhU+uRfbD37teg66+DNhD
	6JQjxtVaitMpSl1TB9MzVG4N3Dn/2io6GZu7wqx5czbUfqY3JRD9P6wYfcbQI83ym1FV
	RlYg==
Received: by 10.14.202.66 with SMTP id c42mr8298432eeo.35.1345825810352; Fri,
	24 Aug 2012 09:30:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Fri, 24 Aug 2012 09:29:40 -0700 (PDT)
In-Reply-To: <AC824268-7CF6-474B-90A2-0AD554E01A8F@gmail.com>
References: <940C4F71-39E0-43FF-90A0-D0802345B6C8@gmail.com>
	<AC824268-7CF6-474B-90A2-0AD554E01A8F@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Aug 2012 09:29:40 -0700
Message-ID: <CAMKF1srwWGhuvZ-H3pCVFMEfQEuaSfXdS6NUoPHh5WnyeWydUA@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Errors while creating a new PowerPC 405e tune file
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
X-List-Received-Date: Fri, 24 Aug 2012 16:30:12 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 24, 2012 at 8:44 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> The only question I have now is, should I be defining TARGET_CPU as 405fp or
> 405e ?

gcc only knows 405fp so thats what you use here

