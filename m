Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E9DBE00D00; Mon, 23 Sep 2019 07:41:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF18E00920
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:41:36 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x8NEfScw008343
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 23 Sep 2019 09:41:30 -0500
To: Hongxu Jia <hongxu.jia@windriver.com>, jason.wessel@windriver.com,
	yocto@yoctoproject.org
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
	<1569164228-26934-5-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <31b0e46c-f69c-01b3-7c81-da6a34a2a053@kernel.crashing.org>
Date: Mon, 23 Sep 2019 09:41:27 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1569164228-26934-5-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH 4/15] fipscheck: enable fipscheck on target
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
X-List-Received-Date: Mon, 23 Sep 2019 14:41:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 9/22/19 9:56 AM, Hongxu Jia wrote:
> Refer Fedora/RedHat's way
> https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/6.5_technical_notes/dracut
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  recipes-connectivity/openssh/fipscheck_1.5.0.bb | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/recipes-connectivity/openssh/fipscheck_1.5.0.bb b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> index 0a06bd3..23a4123 100644
> --- a/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> +++ b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> @@ -28,6 +28,10 @@ EXTRA_OEMAKE += " \
>      -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
>  "
>  do_install_append() {
> +    # Is't the fedora way to enable fipscheck
> +    install -d ${D}${sysconfdir}
> +    touch ${D}${sysconfdir}/system-fips
> +

After researching the system-fips, I'm wondering if it would be better to enable
this in the image recipe as part of an 'IMAGE_CLASSES'.  Basically if FIPS-140-2
is enabled, then we can touch the file as a post image generation activity.

The alternative would be to create an initscript that would check for 'fips=1'
on the kernel command line and then create that file (or remove it?) as well.

I'm not sure which is the better strategy.  (For read-only devices the image
thing is better.. since /etc/ is otherwise read-only.)

--Mark

>      install -d ${D}${libdir}/fipscheck
>  }
>  
> 

