Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A019E00DF2; Tue, 30 Jan 2018 03:46:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5BF3E00D5F
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 03:46:27 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w0UBkJNM027566
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 30 Jan 2018 11:46:20 GMT
Message-ID: <1517312779.3090.32.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross.burton@intel.com>, yocto@yoctoproject.org
Date: Tue, 30 Jan 2018 11:46:19 +0000
In-Reply-To: <20180130112531.11781-1-ross.burton@intel.com>
References: <20180130112531.11781-1-ross.burton@intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH][meta-mingw] gcc-crosssdk: use oe.utils.str_filter_out
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
X-List-Received-Date: Tue, 30 Jan 2018 11:46:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2018-01-30 at 11:25 +0000, Ross Burton wrote:
> oe_filter_out has been removed from oe-core so use the replacement
> function.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  recipes-devtools/gcc/gcc-crosssdk_%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend b/recipes-
> devtools/gcc/gcc-crosssdk_%.bbappend
> index b3b843a..d52a16b 100644
> --- a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
> +++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
> @@ -1,4 +1,4 @@
> -EXTRA_OECONF_mingw32 := "${@oe_filter_out('--with-linker-hash-
> style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
> +EXTRA_OECONF_mingw32 := "${@oe.utils.str_filter_out('--with-linker-
> hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"

Why aren't we using 
EXTRA_OECONF_remove_mingw32 = "--with-linker-hash-style=${LINKER_HASH_STYLE}"
out of interest?

I thought (hoped) the filter-out stuff was dead now?

Cheers,

Richard



