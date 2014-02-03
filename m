Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52123E00444
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 08:20:11 -0800 (PST)
Received: by mail-qa0-f53.google.com with SMTP id cm18so10399310qab.12
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 08:20:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FQv6ZsKfwsrZsd5vU0wYppK5aKy+icbdOikeZeHQbPM=;
	b=MPfAyJ3jYynBcTbW2uzFtGydhsnCgs9LTiJ16rMF1jzyQJtg/SoaMs0altNKIQ7M0a
	Tdu2b/HBE2WgfZXacD35QI1E0i1y2cOAujGP4lyw+VATEixipWbOx8L9IkMAJxntn6Dg
	JaRCeJ26iAESud6Zh2aFB12b6h87OgwV6kg2/FLYrZoL5hnU3yPIO3m/rpZ/OQO/RMeu
	wMWmSN+mSUymyDWYmO7MEmUHWkKu9U30cq6LP6mzKp4yLEWewybksT9JEqH49Sw54wEe
	75UKibclqYNJnNB4mCIG7vi+TmgyKMrSBG2UV++ys+VuEobUwLZzo3bbBfSrl+4acMvu
	GzOg==
X-Gm-Message-State: ALoCoQl9Vh/CsSB8BUQ9nzJlx4Osnrh36sIkKa059WH3Ip8MKBp7rUSBp/mU9cSppdeS9R/S3r4k
X-Received: by 10.140.42.180 with SMTP id c49mr54801163qga.24.1391444410900;
	Mon, 03 Feb 2014 08:20:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Mon, 3 Feb 2014 08:19:50 -0800 (PST)
In-Reply-To: <47A3F29D-1AE0-4097-A025-0BE897698EA9@padamj.com>
References: <05301278-AC33-4DBC-A381-DE2F5CB1E73B@padamj.com>
	<CAJTo0LZ-RgJw+x1C5MmmOhUm1Pd-TdYoiZgABPOrESD876aoLg@mail.gmail.com>
	<0268212B-3E3E-4B1D-93EC-F0619C6EA499@padamj.com>
	<47A3F29D-1AE0-4097-A025-0BE897698EA9@padamj.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Feb 2014 16:19:50 +0000
Message-ID: <CAJTo0LaWjPeqxV0JqsmAOvdTuQSDXrr0ZdyT_7+4wUx3L1DQxw@mail.gmail.com>
To: "Padam J. Singh" <me@padamj.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with ipset bitbake files
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
X-List-Received-Date: Mon, 03 Feb 2014 16:20:12 -0000
Content-Type: text/plain; charset=UTF-8

On 3 February 2014 05:13, Padam J. Singh <me@padamj.com> wrote:
> What could be the possible reasons for a recipe to get packaged correctly in an
> RPM, shows as being installed in the final image generation, yet none of the files actually
> show up in the rootfs?

That's a very good question, and for what it's worth your recipe
builds and installs fine into rootfs for me.

Try checking the rootfs log to confirm that it's being installed, and
the rootfs before it goes into a filesystem in
tmp/work/MACHINE/IMAGE/VERSION/rootfs.

Ross

