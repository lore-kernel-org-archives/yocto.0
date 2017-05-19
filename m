Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2AB8E00B49; Fri, 19 May 2017 01:52:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA0D5E00B43
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 01:52:10 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 May 2017 01:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,363,1491289200"; d="scan'208";a="104097732"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga005.fm.intel.com with ESMTP; 19 May 2017 01:52:08 -0700
To: yocto@yoctoproject.org,
	"Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
References: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ff8bab47-7f55-d185-cd72-efa10e8dfc6c@linux.intel.com>
Date: Fri, 19 May 2017 11:50:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: [poky/classes] [PATCH] new alternatesrc.bbclass
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
X-List-Received-Date: Fri, 19 May 2017 08:52:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2017 09:11 PM, Koehler, Yannick (HPN Aruba) wrote:

> +# alternatesrc.bbclass enables use of an optionally existing source tree, usually external
> +# to the build system to build a piece of software rather than the usual fetch/unpack
> +# process.
> +#
> +# To use, add alternatesrc to the global inherit and set ALTERNATESRC to point at the
> +# directory you want to use containing the sources e.g. from local.conf for a recipe
> +# called "myrecipe" you would do:
> +#
> +# INHERIT += "alternatesrc"
> +# ALTERNATESRC_pn-myrecipe = "/path/to/my/source/tree"

Seems to me that this use case is already handled by 'devtool modify'.

Alex


