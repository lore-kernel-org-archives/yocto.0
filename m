Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9B30E00CED; Thu, 26 Jul 2018 22:59:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41FB7E00CE0
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 22:59:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2018 22:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,407,1526367600"; d="scan'208";a="59894344"
Received: from arehm-mobl.amr.corp.intel.com (HELO localhost.localdomain)
	([10.252.51.118])
	by orsmga007.jf.intel.com with ESMTP; 26 Jul 2018 22:58:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Tue, 24 Jul 2018 10:33:32 +0200
Message-ID: <1703434.H6ZhUBsmPD@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <a08dc8b5ece1f1d3db4c1dc7278a38c980d7302f.1532341697.git.liezhi.yang@windriver.com>
References: <cover.1532341697.git.liezhi.yang@windriver.com>
	<a08dc8b5ece1f1d3db4c1dc7278a38c980d7302f.1532341697.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 1/1] import_layer.py: add -t option for layer_type
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
X-List-Received-Date: Fri, 27 Jul 2018 05:59:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday, 23 July 2018 12:30:01 PM CEST Robert Yang wrote:
> Now the logic is:
> Use options.layer_type if specified, guess if not, default to 'M'.
> 
> Note choices=['A', 'B', 'S', 'D', 'M', ''], the '' is for default='', we can't
> use default='M' here, otherwise we don't know whether the 'M' is specified by
> user or not, we don't guess if it is specified by user, otherwise, guess.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  layerindex/tools/import_layer.py | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
> index 2413cff..0d501f6 100755
> --- a/layerindex/tools/import_layer.py
> +++ b/layerindex/tools/import_layer.py
> @@ -189,6 +189,10 @@ def main():
>      parser.add_option("-s", "--subdir",
>              help = "Specify subdirectory",
>              action="store", dest="subdir")
> +    parser.add_option("-t", "--type",
> +            help = "Specify layer type. A: Base, B: Machine(BSP), S: Software, D: Distribution, M: Miscellaneous",
> +            choices=['A', 'B', 'S', 'D', 'M', ''],
> +            action="store", dest="layer_type", default='')

If it's practical to do, could you make this part of the code use 
LayerItem.LAYER_TYPE_CHOICES from models.py so that this will work
if that is extended in future? Of course that will mean initialising Django
earlier, I'm not sure if that will have any side-effects that we wouldn't want.
If you could give that a try though that would be great.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



