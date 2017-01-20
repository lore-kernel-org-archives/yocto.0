Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08296E0049D; Thu, 19 Jan 2017 19:30:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B99AE003DB
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 19:30:25 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id 35so51817363uak.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 19:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iW1rCvlNql+naO4xbB+aFInSq9mYJ7kR1L7dob/oAPc=;
	b=Ff/0mmZ9Ftr2V32bKK1YX8rK6icgjZuDgicmYihqZ/KCjiHYB5s089TnZejMOdl/X4
	RCFjvy3QhJh78z0xC1IcL227KPP1iNzQELOd79bDvmO1Zq5VdR8UkHx7OezhzAdz7FNS
	JxnkARqUM9Rh/mfJTvlNhs9VFNSd0LZ1yReyZe4v0WL4XlWtQ4H8qBCB28mjO5KMjXnV
	E068aGbrEVeMxjqncFFj2UuL6bb4AoXJ1AEsOoeqmIh5evENEarLKmFQ7Tgc2Q9+OkrD
	Fs4F+Hytt0HJWNz/JB8WVVxD0qftPE7N/xZgx4LTo958cDkHn2ookGC1DNq+stCe/XTZ
	GoIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iW1rCvlNql+naO4xbB+aFInSq9mYJ7kR1L7dob/oAPc=;
	b=VoiTHK+eEfsSh/ztMfmm1EaQ5YgTobYDEG8mCoqh197JdLaKYsS3nSngpnfoQbtYyB
	dFH7QNxbuEdRMdvSN+ebQXMAviwVZuq4Bgo7Yn9dfK3Gn+UF+lIFGGDd/KtEqDyUo0vI
	r2Uh7cRA49SFl5/goT/fD5AXNf3twqXn8PEs9TidADnbObmzjZx1fZnmWGnCFDOshPu8
	OtLZZicr6nUb8YXRf/UFUZ3cQAEl4mmCkYS/9sv29xOmevQgbjyI3nR+jjs+ACsNpkzd
	JDxecg/ne2Dv2JZGf6N/ixc9EGhPWdKsqb4SlXeDt+pruA9yXLsdNT3/qlbHh9cgVIwP
	3RuA==
X-Gm-Message-State: AIkVDXK1nEmB4j6LUXSDjWDkgq3hSNI1A8GVidX7Sg10QTBtA1Z8ijGQ57Lx9/V2Wg9/+T9hVKBvfMJdkC1z8w==
X-Received: by 10.176.66.66 with SMTP id i60mr6705346uai.131.1484883024477;
	Thu, 19 Jan 2017 19:30:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 19 Jan 2017 19:29:54 -0800 (PST)
In-Reply-To: <CADh9ykEXWXtxG42PML_y9ADA7m-p3pxQiSWD62pZ76=fVoHdLg@mail.gmail.com>
References: <CADh9ykEXWXtxG42PML_y9ADA7m-p3pxQiSWD62pZ76=fVoHdLg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Jan 2017 19:29:54 -0800
Message-ID: <CAMKF1sp_SWDPQ3fnsjcNs-30fx-RmZ0XQbWzkTptr04c9ypfvg@mail.gmail.com>
To: Ronald Oakes <ron@ron-oakes.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Labeling Release
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
X-List-Received-Date: Fri, 20 Jan 2017 03:30:28 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 19, 2017 at 2:53 PM, Ronald Oakes <ron@ron-oakes.us> wrote:
> I need to label a release of my image, including all of the Open Source
> components and the ones I've added in a way that I can both reproduce the
> exact build at any point in the future, and I can give something relitively
> compact to our general configuration manager (who is not used to doing CM on
> complex software images, but full hardware systems) for storage.
>
> Any suggestions?

you could create an internal mirror to store the opensource tarballs
from downloads/ directory
and setup own-mirrors.bbclass to point to your internal mirror. this
will make sure that you have
copies of opensource pieces that you need even when they might
disappear from www.

Then you would tag your metadata repositories, This would effectively
also lock the components to a
version since it either uses a given release of locks to given SRCREVs
if a component is built from
a SCM. Once you tag the metadata, then it should be possible to go
back to this version later when you checkout this label/tag you should
be able to rebuild it. It wont be bit-to-bit identical though.

>
> My code freeze is tomorrow at noon MST, but I can work on the labeling and
> any tools after that. I'll need to go offsite to download anything not
> already on our system, so that may impact my decision on how to go forward.
>
> Ron Oakes
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

