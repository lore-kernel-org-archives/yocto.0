Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80000E007A0; Sat, 28 Mar 2015 08:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19F07E00576
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2015 08:33:42 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 28 Mar 2015 08:33:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,484,1422950400"; d="scan'208";a="705534840"
Received: from hannahwi-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.132.46])
	by orsmga002.jf.intel.com with ESMTP; 28 Mar 2015 08:33:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>
Date: Sat, 28 Mar 2015 15:33:33 +0000
Message-ID: <2229665.NuhmzlEpj1@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
References: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] nightly-weston.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Sat, 28 Mar 2015 15:33:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tracy,

On Friday 27 March 2015 18:33:08 Graydon, Tracy wrote:
> [YOCTO #6854]
> 
> A common configuration selection is to remove x11 from
> DISTRO_FEATURES. Add a nightly-weston.conf builset to allow us to test this
> via the autobuilder. Also added to nightly.conf and yoctoAB.conf.
> 
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>  buildset-config.controller/nightly-weston.conf | 24
> ++++++++++++++++++++++++ buildset-config.controller/nightly.conf        | 
> 2 +-
>  buildset-config.controller/yoctoAB.conf        |  5 +++--
>  3 files changed, 28 insertions(+), 3 deletions(-)
>  create mode 100644 buildset-config.controller/nightly-weston.conf
> 
> diff --git a/buildset-config.controller/nightly-weston.conf
> b/buildset-config.controller/nightly-weston.conf new file mode 100644
> index 0000000..d9875c6
> --- /dev/null
> +++ b/buildset-config.controller/nightly-weston.conf
> @@ -0,0 +1,24 @@
> +[nightly-weston]
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
> +        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
> +                            'distro': 'poky', 'buildhistory' : False}}, + 
>                           'atextappend' : '\nDISTRO_FEATURES_remove = "
> x11"\n'}}, +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> +        {'SyncPersistDB' : {'distro' : 'poky'}},
> +        {'GetBitbakeVersion': {}},
> +        {'BuildImages': {'images': 'core-image-weston'}},
> +        {'PublishLayerTarballs':{}},
> +        {'SendErrorReport': {}},
> +        {'UploadToasterEventlog': {}},
> +        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'md5sums']}}]
> diff --git a/buildset-config.controller/nightly.conf
> b/buildset-config.controller/nightly.conf index cf7c77c..13235bf 100644
> --- a/buildset-config.controller/nightly.conf
> +++ b/buildset-config.controller/nightly.conf
> @@ -88,7 +88,7 @@ steps: [{'SetDest':{}},
>                             'eclipse-plugin-kepler': {},
> 'eclipse-plugin-juno': {}, 'nightly-non-gpl3': {}, 'nightly-oecore': {},
> 'nightly-world':{}, 'nightly-world-lsb':{}, 'nightly-intel-gpl': {}, -     
>                      'poky-tiny': {}, 'buildtools': {},
> +                           'nightly-weston':{}, 'poky-tiny': {},
> 'buildtools': {}, 'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
> 'nightly-qa-logrotate': {}, 'nightly-qa-pam': {}, 'nightly-qa-skeleton':
> {}}}},
> diff --git a/buildset-config.controller/yoctoAB.conf
> b/buildset-config.controller/yoctoAB.conf index 5bc369d..ab771c0 100644
> --- a/buildset-config.controller/yoctoAB.conf
> +++ b/buildset-config.controller/yoctoAB.conf
> @@ -6,5 +6,6 @@ order: ['nightly', 'eclipse-plugin-juno',
>          'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
>          'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
>          'nightly-world', 'nightly-world-lsb', 'nightly-non-gpl3',
> -        'nightly-oecore', 'nightly-intel-gpl', 'poky-tiny',
> -        'build-appliance', 'nightly-qa-extras', 'nightly-qa-systemd']
> +        'nightly-oecore', 'nightly-intel-gpl', 'nightly-weston',
> +        'poky-tiny', 'build-appliance',
> +        'nightly-qa-extras', 'nightly-qa-systemd']

When I wrote the bug I was thinking more of systems with no graphics 
at all rather than with Weston replacing X11 - not that we shouldn't be 
testing Weston though I guess.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

