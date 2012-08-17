Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BECFE0027E
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 22:49:00 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1172697eab.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 22:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZodXY1vt5QtFdGfL6LPndBsinnRr4LNBj95ZZrVHMtg=;
	b=VtWF8Uj4TfWFiuh6Gi0MePoHSABf3DE20v99bAgmidDR/X+dMzDKd0MBXoJltbOVe/
	8xSYjxvHT7QvJ4ofVWT1OETyo702On8JWi7anQpKERz6DUzHC79hEDnoeoRG4B3A0cFs
	VQAQkpeM64UyTdhbxckUyJTaXZqjoPFp0r/hFIVTCYwTJXC3LG5mVMNLzSN7lV2NHzIr
	MrpJLKg5Hg1QkVW1hoW9IwAShLXTFcxazmwqoy23jM5Ft+lTh62/sk/tIDk3+sDbL2a+
	rtc3ZIFQqowY7RnMJa9GMi5AoGV1z3PbhJejT/RiAweGpEWBKcXMAxmjsXhDl+hEUQ5w
	rYpw==
Received: by 10.14.202.131 with SMTP id d3mr3200476eeo.32.1345182539453; Thu,
	16 Aug 2012 22:48:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Thu, 16 Aug 2012 22:48:29 -0700 (PDT)
In-Reply-To: <4855B040-2194-4E0F-8B88-6C10385DBE8F@gmail.com>
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
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
	<4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
	<B3DEA1FA-A170-46D6-9BCA-82555C89523C@gmail.com>
	<4855B040-2194-4E0F-8B88-6C10385DBE8F@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Aug 2012 22:48:29 -0700
Message-ID: <CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
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
X-List-Received-Date: Fri, 17 Aug 2012 05:49:00 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 14, 2012 at 7:26 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
> There are differences in eglibc.inc and initrd recipes. Try to see if they
> make difference
> Also the libgcc one after the above two

Elvis

Did you try the above ?
I have pushed a patch into my contrib tree.

http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/misc&id=502a61792cdb219c1ee35bb9474b8f0c4b007385

can you try that out and see if it helps with gcc 4.7

