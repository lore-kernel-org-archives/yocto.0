Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E47FE0054B
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 22:54:21 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id a10so205744qcx.11
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 22:54:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=9nSqPpLlQ9qJQkAN87Q4n+0zGVStf2FjkmFb/giM8+w=;
	b=OswLUxHdQI8/31IxBNv1NFdiMIJSAS/3WEom/2iMpPnAXw1hwOoCtaaCJ/HSmcHmgA
	fsDtZS2JGqZXSdrbqK9VN+Yuu8zYCFzvHvJjfvrYyTgWBXCkPqFf5xW7ypTjiowzrfgg
	6ZfCSphV3ci/0gpd7JSwenmWPZBkE7TDA5mj7/76A4L96mjtHS2rRqFY4mGZetFhrMHR
	8/Q40OzF6YDd2ewYajyekvyt0pe8hIUnfAU20Ye0ZI3CmMTto09erVUhnUUyqcxm6tLd
	zSoL+k7LdY+zVbzOxq2EstMnCIT4RkSRlqohV6+N0cg9mG+Ja2yssz/mLvTjnlkje3Vr
	CoOA==
MIME-Version: 1.0
X-Received: by 10.49.75.134 with SMTP id c6mr18518090qew.47.1368597260637;
	Tue, 14 May 2013 22:54:20 -0700 (PDT)
Received: by 10.49.82.41 with HTTP; Tue, 14 May 2013 22:54:20 -0700 (PDT)
In-Reply-To: <1368439993-30447-1-git-send-email-stefanx.stanacar@intel.com>
References: <1368439993-30447-1-git-send-email-stefanx.stanacar@intel.com>
Date: Tue, 14 May 2013 22:54:20 -0700
Message-ID: <CAPhnLPDgnxzcgEbbmt7nn83bi3st3QoDTBBWS1CL9VqVbVRshg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQmnxzr3/mXrUySPFQIiUJ1z2h/rVAUYVXVk2eBD8X4TpwNKu4AtXLDPExXDTfp6/I4gY39p
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] buildsteps, nightly: run bitbake-selftest
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
X-List-Received-Date: Wed, 15 May 2013 05:54:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Merged into eflanagan/yocto-autobuilder-refactor. In production tomorrow.

-b

On Mon, May 13, 2013 at 3:13 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> Added a new buildstep which calls bitbake-selftest.
>
> [YOCTO #4433]
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  buildset-config/nightly.conf                       |  1 +
>  .../autobuilder/buildsteps/RunBitbakeSelftest.py   | 28 ++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
>  create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py
>
> diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
> index ffbc271..80173a5 100644
> --- a/buildset-config/nightly.conf
> +++ b/buildset-config/nightly.conf
> @@ -51,6 +51,7 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
>                              'distro': 'poky'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> +        {'RunBitbakeSelftest': {}},
>          {'BuildImages': {'images': 'universe -c fetch'}},
>          {'TriggerBuilds': {'schedulerNames':
>                               {'build-appliance': {'waitForFinish': 'False'},
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py
> new file mode 100644
> index 0000000..7d1874f
> --- /dev/null
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py
> @@ -0,0 +1,28 @@
> +'''
> +Created on May 13, 2013
> +
> +__author__ = "Stefan Stanacar"
> +__copyright__ = "Copyright 2013, Intel Corp."
> +__credits__ = ["Stefan Stanacar"]
> +__license__ = "GPL"
> +__version__ = "2.0"
> +__maintainer__ = "Stefan Stanacar"
> +__email__ = "stefanx.stanacar@intel.com"
> +'''
> +
> +
> +from buildbot.steps.shell import ShellCommand
> +
> +class RunBitbakeSelftest(ShellCommand):
> +    haltOnFailure = False
> +    flunkOnFailure = True
> +    name = "Running bitbake-selftest"
> +    def __init__(self, factory, argdict=None, **kwargs):
> +        self.factory = factory
> +        for k, v in argdict.iteritems():
> +                setattr(self, k, v)
> +        self.description = "Running bitbake-selftest"
> +        self.timeout = 100000
> +        kwargs['timeout']=self.timeout
> +        self.command = ". ./oe-init-build-env; bitbake-selftest"
> +        ShellCommand.__init__(self, **kwargs)
> --
> 1.8.1.4
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

