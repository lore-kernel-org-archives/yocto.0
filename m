Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3400FE006E5
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 05:35:31 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id gd11so2884596vcb.19
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 05:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=22Gnk63MuMTcjHSzqmfxF7tTPjDAh7PldNFcHLBpL18=;
	b=ffJekTovhYgEWr+lU6uyiROnKr5aaqLXlcxQK3EQhKn9sHw5gtztlN/f8AGqrpUxDN
	BYKujSWi1Mw0gsQqIDhhjLHWA7+XLDm214pT1998e/BrYmvEqmJM3Al26S+Yf57eHpZY
	PcCMjH79mONZOQ904+KpGM3ktu40O7nBYUbOciiMc2Iwntag7NyXwUm88k/jXLjjaxJy
	3bTbLSzVjR4qPqKse0OWGNtpxMBBi0GaLwqNqxvw+CBFLZr2M2FNWumgOdSuB6e8Hh8m
	PxtlaaFb5bZA3j3Q7xnIH05PgHmCkfTj8IDR2EHLfh0QUc9re1P+pu0sUr3o9PTu5LV3
	G/sg==
X-Gm-Message-State: ALoCoQkEZ0WDMLW8OWc+j1jxHUbkicqQ2DB4bzCIJuUXFky4ZWG1jj7V5Te251vhGBVtfwEeT9Cy
X-Received: by 10.221.56.194 with SMTP id wd2mr23433901vcb.7.1378125331069;
	Mon, 02 Sep 2013 05:35:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 2 Sep 2013 05:35:10 -0700 (PDT)
In-Reply-To: <52241C84.2090605@gna.org>
References: <52241C84.2090605@gna.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Sep 2013 13:35:10 +0100
Message-ID: <CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
To: Christian Gagneraud <chgans@gna.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Mon, 02 Sep 2013 12:35:32 -0000
Content-Type: text/plain; charset=UTF-8

On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> wrote:
> So right now, I'm thinking about:
> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 threads)
> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can speed up the
> builds)
> - RAM: i don't really know, maybe 8 or 16 GB or more?

At least 16GB of RAM for the vast amount of disk cache that will give
you.  32GB or more will mean you can easily put the TMPDIR or WORKDIR
into a tmpfs (there's been discussion about this a few weeks ago).
I've 16GB of RAM and a 8GB tmpfs with rm_work was sufficient for
WORKDIR which gave a 10% speedup (and massive reduction on disk wear).
 Others have machines with 64GB RAM and use it for all of TMPDIR, at
which point you'll be almost entirely CPU-bound.

Ross

