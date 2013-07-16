Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A587E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 09:12:44 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id ox1so637927veb.41
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 09:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=nOyWEUNuQ2/kMvDQsWETLm2zZ11r9rBHIpZCew546C4=;
	b=WVKljcU4jPdWaGx8YwkPfx2xLKurUIP493LnzFy80vX4ymG37RuLXbowKuc2NtAayu
	Anz/JWDNe8OOTpwYDDRf+rg1tWCCYaIZ7Ol43HJLUbWJmxzPeDIC77OEjXUkynCAcYNX
	lmYnsWRS+ofVU8Nkq3Bb7q0qSELL7OSTYtYxL+7h1t7fT0fLLySgJj3YRcC94XOfsnJr
	r+lFNjZ1M8dnYWbhnpXRPEO5LLY9o8SitA97JM5qHIzcZtamsKLL2Xy8psVR3JAV0IV+
	4ZcXix+FW8iqrYyWZxkJVaTBVkiPS8dFF1yF7bv6sMnLav/i63GSG1swRWIU827ERGmw
	VSbw==
MIME-Version: 1.0
X-Received: by 10.58.249.236 with SMTP id yx12mr676274vec.25.1373991163993;
	Tue, 16 Jul 2013 09:12:43 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Tue, 16 Jul 2013 09:12:43 -0700 (PDT)
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
Date: Tue, 16 Jul 2013 09:12:43 -0700
Message-ID: <CAPhnLPAqCMf889z8HNzhGEPNiaERgRc-nFBGaLG+zDavpFtkLg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQkKJS3ijKE6G3yB77Zy32LCq6RaJl4GAc3lcptrVlTDTkYCOIC7g29nzSuQb1+4VAjyJ9vC
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
X-List-Received-Date: Tue, 16 Jul 2013 16:12:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Merged into master and production. Thanks.

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

