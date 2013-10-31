Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39735E017BD
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 21:04:36 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id e14so3837669iej.25
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 21:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Gu89hUQp/YAN+eWN10WpFrVwFbPmR/IUa82O9uGcXlc=;
	b=GmEDK7dwkn5Vdu5l+aeUC72u7BjIf0L2uCloa3saHu7o6vVCpQZ7KcbDUAaHqk3Ygj
	5VGx9PUIrknYgLWepY57tb7wwQJsjKRC2HrjhEWfmkFMpymTcY8JvyW4J/jhfxC8ygOV
	all5w2/fN9e3y8huYd2ixhKoSwe7gJciem3yZt8jZzqaQ/gs0jKFD5DT1mx1TT93C99P
	4buJJLArsE0DI2xiMKd+fD/i6VZeU5+8dQsQVFIrV8VFfLB/OOJHKfPdekAqm9CUL9Wr
	wgp/00Kpbsq8sF1DfORDM5iiNBKiEvZt+4OzeOJF/fMUkr6zH/k8b3H/J4SuJ2b3EZxb
	uCLg==
X-Received: by 10.42.18.136 with SMTP id x8mr647254ica.11.1383192276212; Wed,
	30 Oct 2013 21:04:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 21:04:06 -0700 (PDT)
In-Reply-To: <CABwVrCqDxfdPQW4Nn+ZZi96Z8Wu8HYyGcQAcG_2KSEdpDMgACw@mail.gmail.com>
References: <CABwVrCqDxfdPQW4Nn+ZZi96Z8Wu8HYyGcQAcG_2KSEdpDMgACw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 21:04:06 -0700
Message-ID: <CAMKF1srNf4W7GjTBkwJuNVB32T-oNiyGzFW8c-+BvptdBkVGNA@mail.gmail.com>
To: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto toolchain build question
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
X-List-Received-Date: Thu, 31 Oct 2013 04:04:45 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 23, 2013 at 6:19 AM, jan alexandru vaduva
<vaduva.jan.alexandru@gmail.com> wrote:
> Hello,
>
> I have a curiosity:
> Take a toolchain that builds for a 32-bits architecture, but breaks for a
> 64-bits one.
> Is there a way to ensure that when builded with Yocto that toolchain will be
> generated and used to build target specific recipes.

I dont understand the question clearly. But generally the toolchains
are built for native architecture to run on and generate code for
target. for SDK we can generate them to have a different host to run
on and still generate code for same target as internal toolchain.

>
>
>
> Thanks,
> Alex
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

