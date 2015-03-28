Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1E24E00924; Fri, 27 Mar 2015 21:23:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68FAAE0091F
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 21:23:30 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 27 Mar 2015 21:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,483,1422950400"; d="scan'208";a="547559289"
Received: from jhaines-mobl2.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.254.104.191])
	by orsmga003.jf.intel.com with ESMTP; 27 Mar 2015 21:23:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Beth Flanagan <elizabeth.flanagan@intel.com>
Date: Sat, 28 Mar 2015 04:23:26 +0000
Message-ID: <1779560.QYRt8DUNQe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-docs] poky.ent: Ubuntu based systems need xlstproc
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
X-List-Received-Date: Sat, 28 Mar 2015 04:23:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Beth,

On Friday 27 March 2015 15:03:10 Beth Flanagan wrote:
> xlstproc is needed for doc building. I'm sure others are
> effected as well.
> 
> Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  documentation/poky.ent | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/documentation/poky.ent b/documentation/poky.ent
> index 5d12fc1..a8fe99f 100644
> --- a/documentation/poky.ent
> +++ b/documentation/poky.ent
> @@ -59,7 +59,7 @@
>  <!ENTITY OE_INIT_PATH "&YOCTO_POKY;/oe-init-build-env">
>  <!ENTITY OE_INIT_FILE "oe-init-build-env">
>  <!ENTITY UBUNTU_HOST_PACKAGES_ESSENTIAL "gawk wget git-core diffstat unzip
> texinfo gcc-multilib \ -     build-essential chrpath socat">
> +     build-essential chrpath socat xsltproc">
>  <!ENTITY FEDORA_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip
> python unzip perl patch \ diffutils diffstat git cpp gcc gcc-c++
> glibc-devel texinfo chrpath \ ccache perl-Data-Dumper perl-Text-ParseWords
> perl-Thread-Queue socat">

Which doc building? Our manuals or docs as part of recipes? Can you give an 
example of a failure?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

