Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9055.1578997016662179416
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 02:16:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=Rjvc57L3;
 spf=softfail (domain: soccasys.com, ip: 140.211.169.56, mailfrom: laurent.gauthier@soccasys.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41611E013FF; Tue, 14 Jan 2020 02:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D80AE01380
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 02:16:52 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id o187so3451270vka.2
        for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 02:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0DwUKQeUjz1yZS80aPEY7J16Z/1sGvn685J4hQfQJfU=;
        b=Rjvc57L3pStFzVhtuj3ghLakDwHd8fewIIbXXaKuj1n9UAX9QSdRSC5sowZvexQna/
         zweJJUbdGAn6y37rH7wcfMttCCXuJTLMHVvUijjBv0RwRat1e76UAdMNtaYT0fYgGYio
         eO9j4YA1u1f3TndkBa5VLxZdyT+CVq25WbGClxwrAUOYjnxNkcmaUfcNnEeQ2vaETjY7
         Xd3bmi/xEZba9SBzUxgFpFIUPP/gJLx/MippcHJVnL6iJKDQk/q3e7DyGdbjOTwZYSM2
         NRA0zMlvYhgVxu8c4kKHg1lzw2yFmn1BWQwlLdXF9uYQILiTBHtTBBM8qzXMj7ArO6nH
         CByA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0DwUKQeUjz1yZS80aPEY7J16Z/1sGvn685J4hQfQJfU=;
        b=ujAJY0veKH0DilTW2wm51xSjXRm+2lD1aRLVPGuLkjc3+nDTI6eMTXlZGXKDbAyWzD
         jwxHhc9pgfSdlFEVBSi91yOLFkBMjh7Tg0efoetIUZizyrO5m7tZTYf5+mR+QgtzqBRY
         IHboItGdmnMuSfpDSVnlzLCxwuONF1+W9TF203v2nCCjsenUpWzVmRStFVtYfzlPpr7F
         j9y0CjFCRALbAdOgkNAsXVyp5rud8u8FvZSOS+XuCE/IIPs3z8UINMCizQykCk5uWQxI
         iGr9JYw2UFFyCxv9k9CovWdwkMQtClp5oXKI3OlvsbU8NmhkHIOZ5b9eFT8+fYASp1JL
         ++3A==
X-Gm-Message-State: APjAAAWHTmOU8DXpWwbsAjiqArfhKqRhjXZRu7scwjyoha3LQ6ixzk2Q
	WuWd5+urRkSKQ/IzlpTd6nrVMBoZJlb/ZRsZkiVndQ==
X-Google-Smtp-Source: APXvYqxv/J+ARoWVqzcvuu12Zk/LB+8QzLVm9Zf0JRRyFdsGwQI3W3KbSwYydoJEEvdj7DJN3i+1IIHbXWaM8tchgGk=
X-Received: by 2002:a1f:5385:: with SMTP id h127mr10163697vkb.56.1578997011908;
 Tue, 14 Jan 2020 02:16:51 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQeNV4X2cxfX0FuVCCFhM-gQULO_z1bVw2JvgeZ7rdJWA@mail.gmail.com>
 <CAM9ZRVsSmb5QrgAjFh=qJKVohseLBEajb80higHnW9vBNmB=Kg@mail.gmail.com>
In-Reply-To: <CAM9ZRVsSmb5QrgAjFh=qJKVohseLBEajb80higHnW9vBNmB=Kg@mail.gmail.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 14 Jan 2020 11:13:06 +0100
Message-ID: <CAGbd71TYX0bvyUfbW9jeHOw8oAan8rOXR5dQpGBv4XoFjrDqPA@mail.gmail.com>
Subject: Re: [yocto] zeus build errors
To: Paul Barker <pbarker@konsulko.com>
Cc: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi there,

On Tue, 14 Jan 2020 at 09:49, JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I had no problems to build thud, but after updating thud by zeus, I
> was not able to build it, what I could be missing?

Questions based on experience:
* Doesn't your network require you to use a network proxy to access
URLs that are external to your network?

If so:
* Do you have the right environment variables setup to use that proxy?
(typically http_proxy/https_proxy or similar)
* Is this proxy healthy and alive?

Good luck, Laurent.
--
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
