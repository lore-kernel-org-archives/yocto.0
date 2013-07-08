Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A5EE01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 08:37:50 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hv10so3449699vcb.36
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 08:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=mTXix1Ve2U28554I0ev8OLd+jsK0Q0ebh+SvEfKhOEQ=;
	b=cEDSYYIAwcT9mUqsVCarRATWxNMDUsX4978p9q4JymMvK78U25Zk2vnrKx9VBCYq+A
	iinD86OoCQHvLZZx8h0atSOuoKmAoGQOuwd2DfMWtcwmYf6L0/bmp/oLw/5jpP/tUBjh
	KMGNtkg2Q46L4u/Cqsz2OdEmAmsMo3POABTljIQe6EhaSUaBRXV7301ID943Ky5QbNZ7
	DQadgU4bCGWCIRIrYcDhoqhFdWNJXWccmvcpWaICSBNv6ru9pqzmGyQHBD1lIZ8Dte5z
	1CuedVwixCRjHPQcqqSOxiewPdlfsodbFLgFHVTbf90ueVhJBsdtQxhc5Yi4Gg4Ndd0j
	vOPw==
X-Received: by 10.58.171.4 with SMTP id aq4mr13920382vec.26.1373297869910;
	Mon, 08 Jul 2013 08:37:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 8 Jul 2013 08:37:29 -0700 (PDT)
In-Reply-To: <CE00932F.2D481%belen.barros.pena@intel.com>
References: <CE00932F.2D481%belen.barros.pena@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Jul 2013 16:37:29 +0100
Message-ID: <CAJTo0LaoiT4=q2f51NH3UFt50c7D5-gVLZJcjs91vaGGNDRG5Q@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
X-Gm-Message-State: ALoCoQnsiQvENn7gWKwt+VB4pSEZ8OH4QZ2vVf1G7lUp+EFebUg+VqZ2GLP3fav0VzRZzb6Qzp91
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: naming .bb files
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
X-List-Received-Date: Mon, 08 Jul 2013 15:37:51 -0000
Content-Type: text/plain; charset=UTF-8

On 8 July 2013 16:02, Barros Pena, Belen <belen.barros.pena@intel.com> wrote:
> There seem to be certain rules regarding .bb files naming, but apparently
> those are not written anywhere. Some of those rules seem to be:
>
> * No spaces
> * Underscores can only by used to separate name and version
> * No ASCII special characters
> * No non-ASCII characters
> * No uppercase letters
>
> Does anybody know of any others we should be aware of?

I wasn't aware of any restrictions on uppercase, but the recipe name
part is probably restricted to ASCII alphanumeric (a-z, 0-9) and ASCII
hyphens, then a underscore for the version separator, which is
alphanumeric and periods.

Ross

