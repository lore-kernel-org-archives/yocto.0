Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2073.1574542805705180633
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Nov 2019 13:00:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B536E00EBF; Sat, 23 Nov 2019 13:00:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E0CE00963
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 13:00:03 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xANKxuF3015897
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Sat, 23 Nov 2019 14:59:57 -0600
Subject: Re: [meta-openssl102-fips][PATCH 1/3] fix typo: openssl-fips -> openssl-fips-dev
To: Hongxu Jia <hongxu.jia@windriver.com>, yocto@yoctoproject.org
References: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <9b43fb80-5728-9603-c894-cb354e0d6891@kernel.crashing.org>
Date: Sat, 23 Nov 2019 14:59:55 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Sorry for the delay this and the other patches have been merged.

Thanks!
--Mark

On 10/12/19 3:17 AM, Hongxu Jia wrote:
> The working fips package is openssl-fips-dev rather than openssl-fips.
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  README.build                             | 2 +-
>  templates/feature/openssl-fips/image.inc | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/README.build b/README.build
> index 50bd9a5..b4e8f2e 100644
> --- a/README.build
> +++ b/README.build
> @@ -132,7 +132,7 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
>      prebuilt tar archive.
>  
>      For Yocto, in your build directory, edit conf/local.conf, add:
> -      IMAGE_INSTALL_append = " openssl-fips"
> +      IMAGE_INSTALL_append = " openssl-fips-dev"
>        OPENSSL_FIPS_ENABLED = "1"
>        OPENSSL_FIPS_PREBUILT = "<path>"
>  
> diff --git a/templates/feature/openssl-fips/image.inc b/templates/feature/openssl-fips/image.inc
> index 0d62e44..3616432 100644
> --- a/templates/feature/openssl-fips/image.inc
> +++ b/templates/feature/openssl-fips/image.inc
> @@ -1 +1 @@
> -IMAGE_INSTALL += "openssl-fips"
> +IMAGE_INSTALL += "openssl-fips-dev"
> 
