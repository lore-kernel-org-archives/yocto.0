Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15369E0076F; Mon, 14 Jul 2014 04:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F555E0053E
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 04:31:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2014 04:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,657,1400050800"; d="scan'208";a="542994385"
Received: from snaufer-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.80])
	by orsmga001.jf.intel.com with ESMTP; 14 Jul 2014 04:31:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jul 2014 12:31:16 +0100
Message-ID: <3052948.H5WysJTnrO@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.2 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.2; x86_64; ; )
In-Reply-To: <1405002633-2125-4-git-send-email-akuster@mvista.com>
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
	<1405002633-2125-4-git-send-email-akuster@mvista.com>
MIME-Version: 1.0
Subject: Re: [meta-security][PATCH 3/3] distro: Add distro
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
X-List-Received-Date: Mon, 14 Jul 2014 11:31:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Armin,

On Thursday 10 July 2014 07:30:33 Armin Kuster wrote:
> This allows us to include security_flags.inc
> 
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  conf/distro/poky-security.conf | 4 ++++
>  1 file changed, 4 insertions(+)
>  create mode 100644 conf/distro/poky-security.conf
> 
> diff --git a/conf/distro/poky-security.conf b/conf/distro/poky-security.conf
> new file mode 100644
> index 0000000..5092dfa
> --- /dev/null
> +++ b/conf/distro/poky-security.conf
> @@ -0,0 +1,4 @@
> +require conf/distro/poky.conf
> +require conf/distro/include/security_flags.inc
> +
> +DISTRO = "poky-security"

AIUI, meta-security is supposed to be simply a layer providing additional 
recipes; thus adding a distro config to this wouldn't really be right.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

