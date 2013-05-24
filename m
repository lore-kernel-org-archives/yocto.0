Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5727DE014E9
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 10:04:07 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id pb11so1496676veb.23
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 10:04:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=ThSS9lG59YSi309suYLCLsdZFAfw3z1lV68WNU8jYMo=;
	b=U49GQm2/BknfnBf23gBtSTG5rUOEKCrNSW8ZyqLU4QraPg8yZDiBqo0V0OObcMuLao
	cVAg/4pn1Afk+qAWWZJTZBHbtnA6QoFZDfkxVB7HE/E2lDIZtmnkGmLLHSYctrdQc2mN
	erWcdOQCjudNooR1pPZoiycBWn/3lsS3jFebfojJPZyx/uzpDvHptXXG3nuLDgmMeL+g
	SndCEp6Kr26kwirY/Ga2oumkice81kxB4doMZSuKRTN/STmnFJlLwOvsw/5zPwwin6/D
	QJUA5YWBCzE4bHOL5Fin8LKCCDRoIvvoDD7KcyPC7TY61vrYcJrQxcxiSz0ObQGN2H7D
	a9QQ==
MIME-Version: 1.0
X-Received: by 10.58.133.81 with SMTP id pa17mr9153574veb.37.1369415046386;
	Fri, 24 May 2013 10:04:06 -0700 (PDT)
Received: by 10.52.38.7 with HTTP; Fri, 24 May 2013 10:04:06 -0700 (PDT)
In-Reply-To: <1369410740-28744-1-git-send-email-stefanx.stanacar@intel.com>
References: <1369410740-28744-1-git-send-email-stefanx.stanacar@intel.com>
Date: Fri, 24 May 2013 10:04:06 -0700
Message-ID: <CAPhnLPCSJ-gKBtohNgLZOTf8Qizwp=H7HN9QMTnoTJ-ZDgeGjQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQnyqCQEEj19o8h/7Jr4pw7r+TrkSA6Esp1un+tonmnBheG61wKsp50MDXFKv9Pn9m/ompBP
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] buildsteps: fix passing timeout arg for two steps
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
X-List-Received-Date: Fri, 24 May 2013 17:04:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

merged. Thanks!

-b

On Fri, May 24, 2013 at 8:52 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> RunSanityTests and RunPreamble weren't passing kwargs to
> ShellCommand so timeout was ignored.
> For RunSanityTests I've changed the default to 1200 which should be
> enough in most cases, but I've updated one build where
> two images are actually tested (btrfs and ext4)
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  buildset-config/nightly-qa-extras.conf                               | 2 +-
>  lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py    | 2 +-
>  lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py | 5 +++--
>  3 files changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
> index 1846764..1bdb0f0 100644
> --- a/buildset-config/nightly-qa-extras.conf
> +++ b/buildset-config/nightly-qa-extras.conf
> @@ -11,7 +11,7 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
> -        {'RunSanityTests': {'images': 'core-image-sato'}},
> +        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : '2400'}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
>          {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
> index d6476d6..5df2a7c 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
> @@ -30,7 +30,7 @@ class RunPreamble(ShellCommand):
>          # Timeout needs to be passed to LoggingBuildStep as a kwarg
>          self.timeout = 100000
>          kwargs['timeout']=self.timeout
> -        ShellCommand.__init__(self)
> +        ShellCommand.__init__(self, **kwargs)
>
>      def describe(self, done=False):
>          description = ShellCommand.describe(self,done)
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
> index 1a428be..82fb044 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
> @@ -24,6 +24,8 @@ class RunSanityTests(ShellCommand):
>          self.factory = factory
>          self.images=""
>          self.scene=None
> +        # the default of 1200 seconds is enough for running sanity tests in most cases
> +        self.timeout = 1200
>          for k, v in argdict.iteritems():
>              setattr(self, k, v)
>          self.description = "Running Sanity Tests"
> @@ -36,10 +38,9 @@ class RunSanityTests(ShellCommand):
>              command = command + "echo 'TEST_SCEN = \"" + self.scene + "\"'" + " >> ./conf/auto.conf;"
>          command = command + "DISPLAY=localhost:1 bitbake " + self.images + " -c qemuimagetest_standalone"
>          # Timeout needs to be passed to LoggingBuildStep as a kwarg
> -        self.timeout = 100000
>          kwargs['timeout']=self.timeout
>          self.command = command
> -        ShellCommand.__init__(self)
> +        ShellCommand.__init__(self, **kwargs)
>
>      def describe(self, done=False):
>          description = ShellCommand.describe(self,done)
> --
> 1.8.1.4
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

