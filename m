Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 854F0E010A4; Wed, 23 Sep 2015 13:13:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22AC5E00AD2
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 13:12:57 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so85583815wic.0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 13:12:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=xM1FyWC+BS8Z0dkBAl4bnrtTbfpM7DXw/R+pOcQE6nU=;
	b=FNnQhbfZuZnlTc97xj3khlcf0kHkCBeoqVWq50oahxCjsDvaOrUbXx9kjnKw05ww0Z
	49UWVoi/Brf972eg6Wg0WZyKszvLrD9yIT9T/2oNjg0xWJewGW+RMhG+R6PxTk0Ov3bZ
	jKM6wGB1zDsUFLYjBaKZ9qlWZ9dVw0gnhLEkVkPvMUZW/J0syWynL3Q0uYlnppDnLjIx
	oxnF2OBQzMMRjW7oFZHnGxgZrfJr6JsOB8pysghcpmBS/bOOw8ENj4Tg0F2cKUlGs+H/
	WaRnnuODfADGoFg0oHDicmIQLpt52Ejy2pJZjorz2G2jYv/qdqe34MaFyS8YbMkNeduh
	x9NQ==
X-Gm-Message-State: ALoCoQkUiMJzBz0zaBBgcK/kK7HEHrg93oa2DuZKF++VlZuODJP2UvIZC1qNsbZec1fKONCcbGLD
X-Received: by 10.194.112.162 with SMTP id ir2mr21283058wjb.40.1443039176255; 
	Wed, 23 Sep 2015 13:12:56 -0700 (PDT)
Received: from resin (dslb-088-067-185-139.088.067.pools.vodafone-ip.de.
	[88.67.185.139]) by smtp.gmail.com with ESMTPSA id
	ry1sm8897735wjb.24.2015.09.23.13.12.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 13:12:55 -0700 (PDT)
Date: Wed, 23 Sep 2015 23:12:53 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20150923201253.GA23493@resin>
References: <55ECF934.80902@gmail.com> <55F2304B.6070601@gmail.com>
	<CANwerB3PB=JQRQmjcHkCrpW8_fTSN1DrmPFFT70CA3WJtN6CYw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB3PB=JQRQmjcHkCrpW8_fTSN1DrmPFFT70CA3WJtN6CYw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Wed, 23 Sep 2015 20:13:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 17, 2015 at 02:14:21PM +1000, Jonathan Liu wrote:
> On 11 September 2015 at 11:37, Trevor Woerner <twoerner@gmail.com> wrote:
> > From the feedback, it looks like I'm the only one seeing this issue.
> > That's okay, but I'll update this issue with new information in case
> > it's useful to others. Today I also had some other strangeness with the
> > "make sd card image" portion of a build, this time for cubietruck
> > (meta-sunxi):
> >
> >
> >     ERROR: Error: The image creation script
> >     '/z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg'
> >     returned 1:
> >     0+0 records in
> >     0+0 records out
> >     0 bytes (0 B) copied, 3.0606e-05 s, 0.0 kB/s
> >     expr: non-integer argument
> >     WARNING:
> >     /z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg:1
> >     exit 1 from
> >       parted -s
> >     /z/tmp/build/tmp/deploy/images/cubietruck/core-image-minimal-cubietruck-20150910182624.rootfs.sunxi-sdimg
> >     unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ 2048)
> >     $(expr ${BOOT_SPACE_ALIGNED} \+ 2048 \+ 10240.0)
> >
> >
> >
> > Not only am I getting the floating point again, but it looks like
> > "BOOT_SPACE_ALIGNED" isn't getting expanded!
> >
> > The frustrating part is that simply rerunning "bitbake
> > core-image-minimal" fixes the problem. The second time it completes
> > without error.
> > --
>
> I sent a patch to openembedded-core mailing list for ROOTFS_SIZE not
> being an integer.
> It seems http://git.openembedded.org/openembedded-core/commit/?id=af37bb8ae71c4f932e2126bb620b3fb2b11cc466
> results in ROOTFS_SIZE now being set as a bitbake variable.
> meta-raspberrypi will need to be updated to not have a conflicting
> ROOTFS_SIZE variable as ${ROOTFS_SIZE} is being substituted by bitbake
> instead of the shell there.

Hi guys,

I'm testing and reviewing this as we speak. As well, it would be a good idea to drop
the sd card generation class for good and replace it completely by wic support.

Something to be done. Wnat to pick this up? I know that there were people
around testing wic and we had configuration too.

Regards,

--
Andrei Gherzan

