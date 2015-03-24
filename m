Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55B30E0091D; Tue, 24 Mar 2015 14:51:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F1AE008D4
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 14:51:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 24 Mar 2015 14:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,460,1422950400"; d="scan'208";a="703614498"
Received: from bitbang.jf.intel.com ([10.7.201.37])
	by orsmga002.jf.intel.com with ESMTP; 24 Mar 2015 14:51:52 -0700
Message-ID: <5511DC78.6010005@linux.intel.com>
Date: Tue, 24 Mar 2015 14:51:52 -0700
From: Randy Witt <randy.e.witt@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Graydon, Tracy" <tracy.graydon@intel.com>, yocto@yoctoproject.org
References: <1427236868-26847-1-git-send-email-tracy.graydon@intel.com>
In-Reply-To: <1427236868-26847-1-git-send-email-tracy.graydon@intel.com>
Subject: Re: nightly-world-lsb.conf: Do world builds for poky-lsb
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
X-List-Received-Date: Tue, 24 Mar 2015 21:51:57 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/24/2015 03:41 PM, Graydon, Tracy wrote:
> [YOCTO #7261]
>
> Do world builds for poky-lsb. This patch adds the new nightly-world-lsb buildset
> to fix bug #7261. Also added it to the normal nightly.conf trigger
> and yoctoAB.conf.
>
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>   buildset-config.controller/nightly-world-lsb.conf | 22 ++++++++++++++++++++++
>   buildset-config.controller/nightly.conf           |  4 +---
>   buildset-config.controller/yoctoAB.conf           |  6 +++---
>   3 files changed, 26 insertions(+), 6 deletions(-)
>   create mode 100644 buildset-config.controller/nightly-world-lsb.conf
>
> diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
> new file mode 100644
> index 0000000..e9782a9
> --- /dev/null
> +++ b/buildset-config.controller/nightly-world-lsb.conf
> @@ -0,0 +1,22 @@
> +[nightly-world-lsb]
> +builders: 'example-worker'
> +repos: [{'poky':
> +            {'repourl':'git://git.yoctoproject.org/poky',
> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
> +             'branch':'master'}},
> +        {'meta-qt3':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
> +             'branch':'master'}}]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'RunPreamble': {}},
> +        {'GetDistroVersion' : {'distro': 'poky'}},
> +        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
> +                            'buildhistory' : False, 'multilib': True,
> +                            'distro': 'poky-lsb'}},
> +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> +        {'BuildImages': {'images': 'world'}},
> +        {'SendErrorReport': {}},
> +        {'UploadToasterEventlog': {}},
> +        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
> +
> diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
> index e8498f1..e422ede 100644
> --- a/buildset-config.controller/nightly.conf
> +++ b/buildset-config.controller/nightly.conf
> @@ -75,10 +75,8 @@ steps: [{'SetDest':{}},
>           {'BuildImages': {'images': 'universe -c fetch'}},
>           {'TriggerBuilds': {'schedulerName': 'main-build', 'waitForFinish': 'True',
>                              'schedulerNames': {'minnow': {}, 'minnow-lsb': {},
> -                           'nightly-arm': {}, 'nightly-arm-lsb': {},
>                              'nightly-fsl-arm': {}, 'nightly-fsl-arm-lsb': {},
>                              'nightly-fsl-ppc': {}, 'nightly-fsl-ppc-lsb': {},
> -                           'nightly-mips': {}, 'nightly-mips-lsb': {},

I'll admit that I'm not that familiar with the autobuilder, but this looks like 
some builds are being turned off, but the commit message doesn't mention that.

>                              'nightly-multilib': {}, 'nightly-x32': {},
>                              'nightly-ppc': {}, 'nightly-ppc-lsb': {},
>                              'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
> @@ -87,7 +85,7 @@ steps: [{'SetDest':{}},
>                              'schedulerNames_nowait' : {'build-appliance': {},
>                              'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
>                              'nightly-non-gpl3': {}, 'nightly-oecore': {},
> -                           'nightly-world':{}, 'nightly-intel-gpl': {},
> +                           'nightly-world':{}, 'nightly-world-lsb':{}, 'nightly-intel-gpl': {},
>                              'poky-tiny': {}, 'buildtools': {},
>                              'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
>                              'nightly-qa-logrotate': {}, 'nightly-qa-pam': {},
> diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-config.controller/yoctoAB.conf
> index 9a07512..c087628 100644
> --- a/buildset-config.controller/yoctoAB.conf
> +++ b/buildset-config.controller/yoctoAB.conf
> @@ -1,10 +1,10 @@
>   [BuildSets]
>   order: ['nightly', 'eclipse-plugin-juno',
>           'eclipse-plugin-kepler', 'eclipse-plugin-luna',
> -        'nightly-arm', 'nightly-arm-lsb', 'nightly-mips',
> -        'nightly-mips-lsb', 'nightly-ppc', 'nightly-ppc-lsb',
> +        'nightly-ppc', 'nightly-ppc-lsb',
>           'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
>           'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
> -        'nightly-world', 'nightly-non-gpl3', 'nightly-oecore',
> +        'nightly-world', 'nightly-world-lsb',
> +        'nightly-non-gpl3', 'nightly-oecore',
>           'nightly-intel-gpl', 'poky-tiny', 'build-appliance',
>           'nightly-qa-extras', 'nightly-qa-systemd']
>


