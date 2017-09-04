Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4619AE00C94; Mon,  4 Sep 2017 08:01:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6625CE00C82
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 08:01:34 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 04 Sep 2017 08:01:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,475,1498546800"; d="scan'208";a="147322883"
Received: from unknown (HELO jlock-mobl3.ger.corp.intel.com) ([10.252.1.230])
	by fmsmga005.fm.intel.com with ESMTP; 04 Sep 2017 08:01:33 -0700
To: yocto@yoctoproject.org
References: <20170830172710.23531-1-sonia.leon.bautista@intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <10fee317-6a89-c3a4-009e-ca6f98a46359@linux.intel.com>
Date: Mon, 4 Sep 2017 16:01:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170830172710.23531-1-sonia.leon.bautista@intel.com>
Subject: Re: [PATCH][yocto-autobuilder] buildset-config.yocto-qa: Update the nightly-qa-distro.conf
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
X-List-Received-Date: Mon, 04 Sep 2017 15:01:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 30/08/17 18:27, Sonia Leon Bautista wrote:
> From: Aníbal Limón <anibal.limon@linux.intel.com>
> 
> Some buildsets was removed:
> 
> nigthly-{deb,ipk,rpm}: Merge into nigthly-packagemanagers, see rev
>      faabab725053b4.
> nigthly-qa*: Merge into nigthly-qa-extras, see rev 363a472366a61.
> nightly-intel-gpl: Removed on rev 61355851e575.

Merged, thanks.

Joshua

> Signed-off-by: Sonia Leon Bautista <sonia.leon.bautista@intel.com>
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>   buildset-config.yocto-qa/nightly-deb.conf             | 1 -
>   buildset-config.yocto-qa/nightly-ipk.conf             | 1 -
>   buildset-config.yocto-qa/nightly-packagemanagers.conf | 1 +
>   buildset-config.yocto-qa/nightly-qa-distro.conf       | 9 +--------
>   buildset-config.yocto-qa/nightly-qa-logrotate.conf    | 1 -
>   buildset-config.yocto-qa/nightly-qa-pam.conf          | 1 -
>   buildset-config.yocto-qa/nightly-qa-skeleton.conf     | 1 -
>   buildset-config.yocto-qa/nightly-qa-systemd.conf      | 1 -
>   buildset-config.yocto-qa/nightly-qa-targetbuilds.conf | 1 -
>   buildset-config.yocto-qa/nightly-rpm.conf             | 1 -
>   10 files changed, 2 insertions(+), 16 deletions(-)
>   delete mode 120000 buildset-config.yocto-qa/nightly-deb.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-ipk.conf
>   create mode 120000 buildset-config.yocto-qa/nightly-packagemanagers.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-qa-logrotate.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-qa-pam.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-qa-skeleton.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-qa-systemd.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-qa-targetbuilds.conf
>   delete mode 120000 buildset-config.yocto-qa/nightly-rpm.conf
> 
> diff --git a/buildset-config.yocto-qa/nightly-deb.conf b/buildset-config.yocto-qa/nightly-deb.conf
> deleted file mode 120000
> index 4ae053c..0000000
> --- a/buildset-config.yocto-qa/nightly-deb.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-deb.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-ipk.conf b/buildset-config.yocto-qa/nightly-ipk.conf
> deleted file mode 120000
> index 4f92036..0000000
> --- a/buildset-config.yocto-qa/nightly-ipk.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-ipk.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-packagemanagers.conf b/buildset-config.yocto-qa/nightly-packagemanagers.conf
> new file mode 120000
> index 0000000..8e69fc0
> --- /dev/null
> +++ b/buildset-config.yocto-qa/nightly-packagemanagers.conf
> @@ -0,0 +1 @@
> +../buildset-config.controller/nightly-packagemanagers.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-qa-distro.conf b/buildset-config.yocto-qa/nightly-qa-distro.conf
> index d7c6c0d..0d02d15 100644
> --- a/buildset-config.yocto-qa/nightly-qa-distro.conf
> +++ b/buildset-config.yocto-qa/nightly-qa-distro.conf
> @@ -35,9 +35,7 @@ steps: [{'SetDest':{}},
>                'schedulerNames': {
>                    'nightly-oe-selftest': {},
>                    'nightly-oecore': {},
> -                 'nightly-rpm': {},
> -                 'nightly-deb': {},
> -                 'nightly-ipk': {},
> +                 'nightly-packagemanagers': {},
>                    'nightly-world': {},
>                    'nightly-arm': {},
>                    'nightly-multilib': {},
> @@ -45,12 +43,7 @@ steps: [{'SetDest':{}},
>                    'nightly-x86': {},
>                    'nightly-x32': {},
>                    'poky-tiny': {},
> -                 'nightly-qa-systemd': {},
>                    'nightly-qa-extras': {},
> -                 'nightly-qa-targetbuilds': {},
> -                 'nightly-qa-skeleton': {},
> -                 'nightly-qa-logrotate': {},
> -                 'nightly-qa-pam': {},
>                    'buildtools': {}},
>                    'eclipse-plugin-neon': {},
>                'schedulerNames_nowait': {}}},]
> diff --git a/buildset-config.yocto-qa/nightly-qa-logrotate.conf b/buildset-config.yocto-qa/nightly-qa-logrotate.conf
> deleted file mode 120000
> index 9cdb7b3..0000000
> --- a/buildset-config.yocto-qa/nightly-qa-logrotate.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-qa-logrotate.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-qa-pam.conf b/buildset-config.yocto-qa/nightly-qa-pam.conf
> deleted file mode 120000
> index fe05369..0000000
> --- a/buildset-config.yocto-qa/nightly-qa-pam.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-qa-pam.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-qa-skeleton.conf b/buildset-config.yocto-qa/nightly-qa-skeleton.conf
> deleted file mode 120000
> index 516b3fb..0000000
> --- a/buildset-config.yocto-qa/nightly-qa-skeleton.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-qa-skeleton.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-qa-systemd.conf b/buildset-config.yocto-qa/nightly-qa-systemd.conf
> deleted file mode 120000
> index bc4b7ed..0000000
> --- a/buildset-config.yocto-qa/nightly-qa-systemd.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-qa-systemd.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-qa-targetbuilds.conf b/buildset-config.yocto-qa/nightly-qa-targetbuilds.conf
> deleted file mode 120000
> index 316746a..0000000
> --- a/buildset-config.yocto-qa/nightly-qa-targetbuilds.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-qa-targetbuilds.conf
> \ No newline at end of file
> diff --git a/buildset-config.yocto-qa/nightly-rpm.conf b/buildset-config.yocto-qa/nightly-rpm.conf
> deleted file mode 120000
> index 7051b63..0000000
> --- a/buildset-config.yocto-qa/nightly-rpm.conf
> +++ /dev/null
> @@ -1 +0,0 @@
> -../buildset-config.controller/nightly-rpm.conf
> \ No newline at end of file
> 

