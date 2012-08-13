Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B9B0E0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:02:06 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1207432eab.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=KtufIed/XABEmb78NQ5SLpKBGernDDRuyN5D19PCK6s=;
	b=g3ICF/9r8OyqN2QfrRqqhgzNcckDHTWN60SzyFMPFRJ4+w8UjnNmUMG0PrT5uPBODK
	F/JffCOU/QfhgsLfksHWt6yk5qrrr1t/Sn3MYM8+koBrCMs+Bryd3nBnHpGNpsT3KvwC
	668ZvYdMDgdk3AKkgWMDa4paN82AfQhlBeCkRKdmqNUwzZXNhI9mLVkqqvl/W5MZz3f3
	k6SehffuFHrQjIMaXMMPfKjii6iLVII3kIIiRZWI9xpqCW16rlUh/KNeUNHzZr6Ezvn7
	DPT9t6if/DffXRm73TfX1fGxDiEuKfpER96CI3GAG9mwKKeIhBv2atqHBKVUV76Pomyk
	0Hhw==
Received: by 10.14.5.67 with SMTP id 43mr14915432eek.15.1344877324791; Mon, 13
	Aug 2012 10:02:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Mon, 13 Aug 2012 10:01:34 -0700 (PDT)
In-Reply-To: <651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 Aug 2012 10:01:34 -0700
Message-ID: <CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Mon, 13 Aug 2012 17:02:06 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 13, 2012 at 9:48 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> OK. You might want to downgrade the eglibc version to 2.15 and then to
> 2.13 if thats around.
>
>
> Success, at last!! :-) I switch to eglib 2.13, and everything works fine!!
> The problem was with eglibc 2.16. It is broken for powerpc 440 soft float,
> not sure if the same situation manifests for other target architectures as
> well.

OK good. Now we should find what broke eglibc. Did you try 2.15 as
well ? Want to make sure how far back it goes.

