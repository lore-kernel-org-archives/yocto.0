Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 593DBE00C59; Tue, 11 Jul 2017 04:02:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF9F1E00C4B
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 04:02:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2017 04:02:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,346,1496127600"; d="scan'208";a="1150323685"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.0.217])
	by orsmga001.jf.intel.com with ESMTP; 11 Jul 2017 04:02:11 -0700
Message-ID: <1499770930.3497.11.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
Date: Tue, 11 Jul 2017 12:02:10 +0100
In-Reply-To: <20170710210446.45687-1-stephano.cetola@linux.intel.com>
References: <20170710210446.45687-1-stephano.cetola@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] add force bash option on build and preamble
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
X-List-Received-Date: Tue, 11 Jul 2017 11:02:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-07-10 at 14:04 -0700, Stephano Cetola wrote:
> Certain distros (Ubuntu) use a less desirable shell for /bin/sh
> (dash). In some edge cases, if we source oe-init-build-env from
> outside the OEROOT folder, the script will fail (as stated in the
> oe-init-build-env script). By adding a variable to force bash as the
> shell, we can call "bash -c" to ensure that a compatible shell is
> used.
> 
> Currently, refkit is the only build that suffers from this edge case.

Thanks for the fix! I split the patch into two before merging, one for
the buildstep logic change and a follow-on to update the buildset-
config.controller. Hope you don't mind.

Joshua

> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>  buildset-config.controller/nightly-refkit.conf                    |
> 3 ++-
>  lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py |
> 3 +++
>  lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py |
> 3 +++
>  3 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/buildset-config.controller/nightly-refkit.conf
> b/buildset-config.controller/nightly-refkit.conf
> index 1d2487da6..cbc8508d7 100644
> --- a/buildset-config.controller/nightly-refkit.conf
> +++ b/buildset-config.controller/nightly-refkit.conf
> @@ -11,7 +11,7 @@ repos: [{'poky':
>               'submodules': True}}]
>  steps: [{'SetDest':{}},
>          {'CheckOutLayers': {'submodules': True}},
> -        {'RunPreamble': {'altcmd': 'refkit/oe-init-build-env'}},
> +        {'RunPreamble': {'forcebash': True, 'altcmd': 'refkit/oe-
> init-build-env'}},
>          {'GetDistroVersion' : {'distro': 'refkit'}},
>          {'CreateAutoConf': {'machine': 'intel-corei7-64',
> 'packages': 'ipk',
>                              'distro': 'refkit', 'buildhistory' :
> False,
> @@ -44,6 +44,7 @@ steps: [{'SetDest':{}},
>          {'ScrapeTargets': {'source': 'refkit/meta-
> refkit/conf/distro/include/refkit-ci.inc',
>                             'targetsvar':
> 'REFKIT_CI_BUILD_TARGETS'}},
>          {'BuildImages': {'images': '#SCRAPEDTARGETS',
> +                         'forcebash': True,
>                           'oeinit': 'refkit/oe-init-build-env',
>                           'overrideenv':
> ['BITBAKEDIR=#YPDIR/bitbake', 'OEROOT=#YPDIR/meta']}},
>          {'ScrapeTargets': {'source': 'refkit/meta-
> refkit/conf/distro/include/refkit-ci.inc',
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py
> index 60ce07ff7..0406fd2e9 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py
> @@ -23,6 +23,7 @@ class BuildImages(BitbakeShellCommand):
>      haltOnFailure = False
>      flunkOnFailure = True
>      name = "BuildImages"
> +    forcebash = False
>      def __init__(self, factory, argdict=None, **kwargs):
>          self.layerversion_yoctobsp=0
>          self.machine=""
> @@ -163,6 +164,8 @@ class BuildImages(BitbakeShellCommand):
>                  if self.minnowExists is None or self.minnowExists ==
> "True":
>                      self.command = env + ". ./" + self.oeinit + ";
> bitbake " + bitbakeflags + self.images
>                      self.description = ["Building " +
> str(self.images)]
> +        if self.forcebash:
> +            self.command = ['bash', '-c', self.command]
>          ShellCommand.start(self)
>  
>      def describe(self, done=False):
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/RunPreamble.py b/lib/python2.7/site-
> packages/autobuilder/buildsteps/RunPreamble.py
> index e9de3c76c..23c4ace2b 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/RunPreamble.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/RunPreamble.py
> @@ -16,6 +16,7 @@ class RunPreamble(ShellCommand):
>      haltOnFailure = False
>      flunkOnFailure = True
>      name = "RunPreamble"
> +    forcebash = False
>  
>      def __init__(self, factory, argdict=None, **kwargs):
>          self.factory = factory
> @@ -27,4 +28,6 @@ class RunPreamble(ShellCommand):
>              self.command = ". ./oe-init-build-env"
>          else:
>              self.command = ". ./" + self.altcmd
> +        if self.forcebash:
> +            self.command = ['bash', '-c', self.command]
>          ShellCommand.__init__(self, **kwargs)
> -- 
> 2.13.2
> 

