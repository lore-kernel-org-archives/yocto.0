Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96768E009A5; Tue, 21 Jun 2016 07:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* 0.1 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0B43E00972
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:06:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2016 07:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,504,1459839600"; d="scan'208";a="1006685810"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.155])
	([10.219.5.155])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2016 07:06:18 -0700
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>,
	yocto@yoctoproject.org
References: <1466458070-20099-1-git-send-email-anibal.limon@linux.intel.com>
	<1466458070-20099-3-git-send-email-anibal.limon@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <df1ef372-888a-c6c7-bdd4-05035e84bd42@linux.intel.com>
Date: Tue, 21 Jun 2016 09:08:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <1466458070-20099-3-git-send-email-anibal.limon@linux.intel.com>
Subject: Re: [[PATCH][AUH] 3/3] upgradehelper.py: Disable _order_pkgs_to_upgrade functionality
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
X-List-Received-Date: Tue, 21 Jun 2016 14:07:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 06/20/2016 04:27 PM, Aníbal Limón wrote:
> The _order_pkgs_to_upgrade function order a set of packages to
> be upgraded based on bitbake dependency graph, currently _order_pkgs_to_upgrade
> is broken so disable it while fix.
>
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>   upgradehelper.py | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/upgradehelper.py b/upgradehelper.py
> index 386cbcc..239fd88 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -500,8 +500,9 @@ class Updater(object):
>           return pkgs_to_upgrade_ordered
>   
>       def run(self, package_list=None):
> -        pkgs_to_upgrade = self._order_pkgs_to_upgrade(
> -                self._get_packages_to_upgrade(package_list))
> +        #pkgs_to_upgrade = self._order_pkgs_to_upgrade(
> +        #        self._get_packages_to_upgrade(package_list))
are these commented lines intended to be on the patch?
> +        pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
>           total_pkgs = len(pkgs_to_upgrade)
>   
>           pkgs_ctx = {}


