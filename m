Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59F72E00AAB; Thu, 10 Oct 2019 16:05:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C0B0E00A49
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 16:05:33 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9AN5Sb7004416
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Thu, 10 Oct 2019 18:05:29 -0500
To: Hongxu Jia <hongxu.jia@windriver.com>, jason.wessel@windriver.com,
	yocto@yoctoproject.org
References: <1570609727-34587-1-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <79316a98-6316-6f89-f8cb-b0eb9b2cba1f@kernel.crashing.org>
Date: Thu, 10 Oct 2019 18:05:28 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1570609727-34587-1-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH] README.build/image.inc: add missing openssl-fips to image
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
X-List-Received-Date: Thu, 10 Oct 2019 23:05:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

merged.

--Mark

On 10/9/19 3:28 AM, Hongxu Jia wrote:
> For Yocto and WRLinux, openssl fips works only if installing
> package openssl-fips
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  README.build                             | 1 +
>  templates/feature/openssl-fips/image.inc | 1 +
>  2 files changed, 2 insertions(+)
>  create mode 100644 templates/feature/openssl-fips/image.inc
> 
> diff --git a/README.build b/README.build
> index c65555e..50bd9a5 100644
> --- a/README.build
> +++ b/README.build
> @@ -132,6 +132,7 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
>      prebuilt tar archive.
>  
>      For Yocto, in your build directory, edit conf/local.conf, add:
> +      IMAGE_INSTALL_append = " openssl-fips"
>        OPENSSL_FIPS_ENABLED = "1"
>        OPENSSL_FIPS_PREBUILT = "<path>"
>  
> diff --git a/templates/feature/openssl-fips/image.inc b/templates/feature/openssl-fips/image.inc
> new file mode 100644
> index 0000000..0d62e44
> --- /dev/null
> +++ b/templates/feature/openssl-fips/image.inc
> @@ -0,0 +1 @@
> +IMAGE_INSTALL += "openssl-fips"
> 

