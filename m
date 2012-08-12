Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0254E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 22:27:43 -0700 (PDT)
Received: by eabd1 with SMTP id d1so810583eab.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 22:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iaJCOTQmyXX6in6bO8Gx0riIil5kROOwc37VVn5SLOc=;
	b=nAaZ9o6MfL1doE9INcNGuu/+ywPNotJMbKN3EHZkvj1gIKwd6ol3yAXGbx0MWWlTPy
	0qwuzSgxCE4bkU65UFwgrKiveB02XsfCjFoxLRFboVsSTrfvRYh50H6smbSh8QpNVEMK
	5SiPAMKwSt7irhOXaO880gbidtYelypzj5N3Vi9HHL7L+nNfqtgzK9eXxc8LDvKax1Zg
	i32/Vgm7JUXbi9YkghNYXaZ8bD+3Mi7NO70NFWjnoOUaoEAmtzA/CCmXJZR6W4rI570V
	DJZaOl2ULbyR1DHo30nH4Kt2gTECC/E5VtFiaTFhPNsJqeUNbey+4GccY/Kx5LrZV6Yu
	xKjw==
Received: by 10.14.204.200 with SMTP id h48mr5144121eeo.7.1344749262133; Sat,
	11 Aug 2012 22:27:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Sat, 11 Aug 2012 22:27:10 -0700 (PDT)
In-Reply-To: <D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 11 Aug 2012 22:27:10 -0700
Message-ID: <CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
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
X-List-Received-Date: Sun, 12 Aug 2012 05:27:44 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 11, 2012 at 8:34 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>                   I added support for gcc-4.5.1 inside meta-openembedded/toolchain-layer, and got it building against the latest yocto/master branch.
>
> However, switching to gcc-4.5.1 did not fix the issue.
>

OK. You might want to downgrade the eglibc version to 2.15 and then to
2.13 if thats around.

> Elvis Dowson

