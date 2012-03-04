Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC93E0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 12:01:24 -0800 (PST)
Received: by bkcji17 with SMTP id ji17so3845353bkc.35
	for <yocto@yoctoproject.org>; Sun, 04 Mar 2012 12:01:23 -0800 (PST)
Received-SPF: pass (google.com: domain of b.hutchman@gmail.com designates
	10.204.154.139 as permitted sender) client-ip=10.204.154.139; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of b.hutchman@gmail.com
	designates 10.204.154.139 as permitted sender)
	smtp.mail=b.hutchman@gmail.com;
	dkim=pass header.i=b.hutchman@gmail.com
Received: from mr.google.com ([10.204.154.139])
	by 10.204.154.139 with SMTP id o11mr9158183bkw.4.1330891283844
	(num_hops = 1); Sun, 04 Mar 2012 12:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XPYcriRVN/mhX43l3icdoEP0OtR0OOHpSrPLYWlKPIw=;
	b=lWX+DQgwKvlL1rJe9HmXvFwg5EHblEoRBxGJ1Nd80IsDnu+QcBfzvXlnefGx+n16FN
	BobWA1NbM+4hEWdwYTxGG0noDiOFPxnN0gL2uneaj2zhj159kTN08TvbP7dHuATDLQnz
	c16uAuOY4jX4+r2pVzJRSgsD3vQbzzzs44DKgGAAVvEmFoxIacOsg4rqlG0povanTzdK
	12w5bKTE9h5piSH2N9HZ0bfTr7daiWR9H4xTffhvw2lZyCBCUoJo9+yTM9zVztlwQIbw
	+1tQSRQMpOGrKeEF7FmZoFRSpxVWPECzVzbyi6Rj4bsrYjTuav0rtyLxuxWRO7sbeh3b
	r2RA==
MIME-Version: 1.0
Received: by 10.204.154.139 with SMTP id o11mr7255293bkw.4.1330891283746; Sun,
	04 Mar 2012 12:01:23 -0800 (PST)
Received: by 10.204.229.198 with HTTP; Sun, 4 Mar 2012 12:01:23 -0800 (PST)
In-Reply-To: <4F53C63D.1000305@mlbassoc.com>
References: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com> <4F515551.50708@mlbassoc.com>
	<20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
	<20120304192728.GO24667@denix.org> <4F53C63D.1000305@mlbassoc.com>
Date: Sun, 4 Mar 2012 15:01:23 -0500
Message-ID: <CAFZh4h8OatGutHjq7LjwV4x6g9Hc+WLMqxkdSdHMVxZ5O5t8sA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Sun, 04 Mar 2012 20:01:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Mar 4, 2012 at 2:45 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> Can you explain what the toolchain problems are and why the versions in
> oe-core don't work for meta-ti?

I'd like to know this myself because I need to build 64bit & 32bit
toolchains (meta-toolchain) and currently I can only get both to build
OK under Poky (yocto trunk) but it is 4.6.x and I need to work with
meta-ti.  I can only build the 64bit toolchain under Angstrom ... for
some reason I can't get the 32bit toolchain built.

Since the Poky build did what I wanted ... I'd like to use it but I
don't know what specifically the 4.6.x toolchain won't work with when
using meta-ti.

Regards,

Brain

