Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74872E009CE; Wed, 31 Aug 2016 13:26:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46DA8E009BF
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 13:26:33 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga102.jf.intel.com with ESMTP; 31 Aug 2016 13:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,263,1470726000"; 
   d="scan'208";a="3205388"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.7.133])
	by fmsmga005.fm.intel.com with ESMTP; 31 Aug 2016 13:26:31 -0700
Message-ID: <1472675189.2904.22.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Wed, 31 Aug 2016 21:26:29 +0100
In-Reply-To: <1472571975-24370-1-git-send-email-anibal.limon@linux.intel.com>
References: <1472571975-24370-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [PATCH][yocto-autobuilder] nightly-qa-systemd.conf: Add create_eventlog property
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
X-List-Received-Date: Wed, 31 Aug 2016 20:26:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-08-30 at 10:46 -0500, Aníbal Limón wrote:
> This buildset also needs the create_eventlog property for only
> enable the toaster event log creation when required. See rev [1].
> 
> [1] 0b083509beaf7421f1dde4b679a934741ac4a3bc

Pushed to master, thanks!

Joshua

> 
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>  buildset-config.controller/nightly-qa-systemd.conf | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/buildset-config.controller/nightly-qa-systemd.conf
> b/buildset-config.controller/nightly-qa-systemd.conf
> index f95021dc..662caa6 100644
> --- a/buildset-config.controller/nightly-qa-systemd.conf
> +++ b/buildset-config.controller/nightly-qa-systemd.conf
> @@ -4,6 +4,10 @@ repos: [{'poky':
>              {'repourl':'git://git.yoctoproject.org/poky',
>               'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-
> bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
>               'branch':'master'}}]
> +props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
> +                       'choices': ['False', 'True'],
> +                       'name': 'create_eventlog',
> +                       'label':'<hr>Create Toaster event log as part
> of image creation?:'}}]
>  steps: [{'SetDest':{}},
>          {'CheckOutLayers': {}},
>          {'RunPreamble': {}},

