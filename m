Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C4EBE00CC2; Thu, 21 Sep 2017 01:47:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84639E00C01
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 01:47:08 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Sep 2017 01:47:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,424,1500966000"; d="scan'208";a="151741441"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.27.138])
	by orsmga005.jf.intel.com with ESMTP; 21 Sep 2017 01:47:06 -0700
To: yocto@yoctoproject.org
References: <20170921013617.41863-1-stephano.cetola@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <7ce6dd92-01aa-e06e-28b9-c66c621f51c0@linux.intel.com>
Date: Thu, 21 Sep 2017 09:47:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170921013617.41863-1-stephano.cetola@linux.intel.com>
Subject: Re: [yocto-autobuilder][PATCH] CheckYoctoCompat.py: rename yocto-compat-layer to yocto-check-layer
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
X-List-Received-Date: Thu, 21 Sep 2017 08:47:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 21/09/17 02:36, Stephano Cetola wrote:
> This script name was changed in the following commit:
> 
> b46e05677b342df44829ffe8bcfbfc954e906030
> 
> This patch updates the script name to match.
> 
> [YOCTO #12110]
> 
> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>   lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py
> index 134adaa51..62eddae50 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py
> @@ -41,11 +41,12 @@ class CheckYoctoCompat(BitbakeShellCommand):
>   
>           layerversioncore = int(self.getProperty("layerversion_core", "0"))
>           # yocto-compat-layer-wrapper was introduced in Pyro
> +        # it was renamed to yocto-check-layer-wrapper Rocko
>           if layerversioncore >= 10:
>               command = ". ./oe-init-build-env;"
>               for layer in self.layers:
>                   layerpath = os.path.join(builddir, layer)
> -                cmd = "yocto-compat-layer-wrapper {}".format(layerpath)
> +                cmd = "yocto-check-layer-wrapper {}".format(layerpath)

This will result in failures on Pyro (layer version 10). We should either:
a) bump the layer version check to only run this for Rocko (layer 
version 11)
b) use different program names for layer version 10 vs. layer version 11.

I'm inclined to suggest a, the yocto-compat-layer scripts only really 
became useful in the Rocko cycle.


>                   cmd = cmd + " || export CL_FAIL=1;"
>                   command = command + cmd
>               command = command + 'if [ "$CL_FAIL" = "1" ]; then exit 1; fi;'
> 

