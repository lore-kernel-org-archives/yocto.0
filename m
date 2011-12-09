Return-Path: <twoerner@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2360AE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 15:16:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadi14 with SMTP id i14so4761952dad.35
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2011 15:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zb28GBflhYzn1tIDxK6BHuB6sPhZ6oJ8fSiSodijnvk=;
	b=Y7/F5nMGfH2f3CQi4stoPDs/p4+P2MIOeslluYsYqLFp3HfsdNFLezqW9xxmacqFAT
	r2qoA0sLmIVREjvd+j1WKE+Q/tbUkEDC3QELSBb0z0a/QgWk1iZw6g5s4w4xk9ddUoW2
	lTedxpTn3kP9es4X/wv8x3Ebcdk3jcDH7qge0=
MIME-Version: 1.0
Received: by 10.68.73.71 with SMTP id j7mr10059769pbv.54.1323472600797; Fri,
	09 Dec 2011 15:16:40 -0800 (PST)
Received: by 10.68.25.4 with HTTP; Fri, 9 Dec 2011 15:16:40 -0800 (PST)
In-Reply-To: <1323384424.5309.85.camel@ted>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
	<4EE106CB.6080104@linux.intel.com> <1323384424.5309.85.camel@ted>
Date: Fri, 9 Dec 2011 18:16:40 -0500
Message-ID: <CAHUNapTq0QfpxwOpHjrriaXYdhjpT263juD4zYsWpLd=08jgdw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: =?ISO-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Darren Hart <dvhart@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Fri, 09 Dec 2011 23:16:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Dec 8, 2011 at 5:47 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Having said that, if you enable sstate checksums on the stamp files, you
> will get a system that is *much* more responsive to change. With that
> enabled you could:

Isn't this the default behaviour (i.e. sstate checksums enabled on the
stamp files)?

