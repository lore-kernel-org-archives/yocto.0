Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E39FE006DD
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 14:30:28 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hf12so1786876vcb.15
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 14:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=byf0A9wurWN6IP/ITkaP9gkTibde8QcZ+ZvDNf7V0O4=;
	b=BBeWIE45No4SYKuQPONUB73fZqPVSneMi30k4y3/tmLA5Rw8OjI00mlE/JWOMd5z/3
	zQGN2UCAGh7+3uZjMhCe8tRV4ISkMAq/6LZQ2zrJJtGkiBr833YurI4TeqvNK27mvzxn
	SQkRVOTFieNF8YfiVVHHPjezgH4wq0vjBibZpQutUg7HwJ6shsfKOiQk24VA+Xz2TbVN
	10izuNLBtVUnmlncrxV4m9vUrFSvanJMwBQrY0kpYn1ZoPNQiQBASeP2i7SSI0/4QuW9
	y20BeY13K8EXP0Jcwq+ZIv6wGmAnFpzdI2clEZAcDjcEPBYJTquGHo2WFN7hEveTcr1d
	LoPQ==
MIME-Version: 1.0
X-Received: by 10.220.225.2 with SMTP id iq2mr2776320vcb.59.1374096628083;
	Wed, 17 Jul 2013 14:30:28 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Wed, 17 Jul 2013 14:30:27 -0700 (PDT)
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
Date: Wed, 17 Jul 2013 14:30:27 -0700
Message-ID: <CAPhnLPDOMPPOb+ZDH4mp4tZWFW_Xp-CZdWQFB=737EYLwXSsdg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>,
	Ross Burton <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQk0bM5EybIHw7pOLPD9M46BU8gGA3K77l9IG4ylm9yKiBFZ5P6SA7pVNwhkeV0qo4xqlEbX
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH 0/3] Enabling of the new testimage class for sanity tests
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
X-List-Received-Date: Wed, 17 Jul 2013 21:30:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

So, after the oe-core failure last night that was due to how we
determine when to use the new testimage, this has kind of bumped up
the need for the autobuilder to start using LAYERVERSION_* as a means
of determinating major functionality changes.

In this example, we've essentially broken backwards compatibility for
oe-core builds on the autobuilder. I put in a quick and dirty patch
last night just to get it so oe-core sanity will run using the old
sanity testing framework. I'm working on getting a GetLayerVersion
buildstep working so we can utilize it both for the new test framework
as well as to differentiate the toolchain image builds (prior to 2 we
build meta-toolchain-gmae, post core-image-sato-sdk).

I should have this implemented today. I'll need some time tonight to
get it on the AB and give it a bit more of a shakedown.

-b

On Wed, Jul 10, 2013 at 10:32 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> Hi Beth,
>
> The first two patches enable the new testimage class that has just been merged in master,
> and it needs a real AB shakedown ;).
>
> On my local AB one of the problems I've had were timeouts
> for qemu booting (when the machine was really loaded), and I've sent a patch to increase the timeout, but
> this might need a little more tweaking for the Yocto AB. Also, one more setup issue could be DISPLAY / vnc server.
> I've had some trouble with DISPLAY=localhost:1 that's why you'll notice
> I've used DISPLAY=:1, that fixed the problem out on my machine. It has something to do with how the new class starts the runqemu script
> and the enviroment.
>
>
> The last patch has nothing to do with enabling, I just thought that we should run the sanity tests
> for the sdk images too given that the new class has a gcc test. It adds a few minutes to the builds,
> keep this one out if that's problem.
>
> Cheers,
> Stefan
>
> The following changes since commit b26b257e16fddb7730d3b2a0c55c4b43a48ae54c:
>
>   Revert "buildset-config: build core-image-sato SDK" (2013-07-02 17:10:05 -0700)
>
> are available in the git repository at:
>
>   git://mirror.rb.intel.com/git.yoctoproject.org/poky-contrib stefans/yab-newsanity3
>
> for you to fetch changes up to e15d6185251e4c6f163577c7263239936d76e5b3:
>
>   buildsets: run sanity tests for core-image-sato-sdk images (2013-07-10 19:07:27 +0300)
>
> ----------------------------------------------------------------
> Stefan Stanacar (3):
>       RunSanityTests: add support for the new testimage class
>       nightly-multilib,qa-systemd.conf: enable specific tests with the new class
>       buildsets: run sanity tests for core-image-sato-sdk images
>
>  buildset-config/nightly-arm.conf                   |  2 +-
>  buildset-config/nightly-mips.conf                  |  2 +-
>  buildset-config/nightly-multilib.conf              |  8 +++----
>  buildset-config/nightly-ppc.conf                   |  2 +-
>  buildset-config/nightly-qa-systemd.conf            |  4 ++--
>  buildset-config/nightly-x86-64.conf                |  2 +-
>  buildset-config/nightly-x86.conf                   |  2 +-
>  .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
>  8 files changed, 31 insertions(+), 18 deletions(-)
>
> Stefan Stanacar (3):
>   RunSanityTests: add support for the new testimage class
>   nightly-multilib,qa-systemd.conf: enable specific tests with the new
>     class
>   buildsets: run sanity tests for core-image-sato-sdk images
>
>  buildset-config/nightly-arm.conf                   |  2 +-
>  buildset-config/nightly-mips.conf                  |  2 +-
>  buildset-config/nightly-multilib.conf              |  8 +++----
>  buildset-config/nightly-ppc.conf                   |  2 +-
>  buildset-config/nightly-qa-systemd.conf            |  4 ++--
>  buildset-config/nightly-x86-64.conf                |  2 +-
>  buildset-config/nightly-x86.conf                   |  2 +-
>  .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
>  8 files changed, 31 insertions(+), 18 deletions(-)
>
> --
> 1.8.1.4
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

