Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0068EE00A28; Wed, 26 Aug 2015 05:53:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC58E007AC
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 05:53:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t7QCrBjS001549
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 05:53:11 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Wed, 26 Aug 2015 05:53:11 -0700
Message-ID: <55DDB6A1.5050809@windriver.com>
Date: Wed, 26 Aug 2015 08:52:49 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: <rongqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <1440568134-25471-1-git-send-email-rongqing.li@windriver.com>
In-Reply-To: <1440568134-25471-1-git-send-email-rongqing.li@windriver.com>
Subject: Re: [PATCH][meta-virtualization] openvsitch: set CONFIGUREOPT_DEPTRACK to empty
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
X-List-Received-Date: Wed, 26 Aug 2015 12:53:16 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-08-26 01:48 AM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> compilation failed since the needed dirs maybe not created when make
> ".in" target, fix it by creating the needed dirs before, but mainstream
> thinks the needed dirs should be created when do configuration.
> at last, find CONFIGUREOPT_DEPTRACK disable the creation, so empty
> it
> http://openvswitch.org/pipermail/dev/2015-August/059189.html
>
> set CONFIGUREOPT_DEPTRACK to empty, is lower effective, but harmless,
> and can fix the parallel building issue;
> see oe-core 970e0ae6108[autotools: Disable dependency tracking

This should have gone to the meta-virtualization mailing list, but no
need to re-send .. I have it from here and have merged it.

Bruce

>
> Signed-off-by: Roy Li <rongqing.li@windriver.com>
> ---
>   recipes-networking/openvswitch/openvswitch.inc | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/recipes-networking/openvswitch/openvswitch.inc b/recipes-networking/openvswitch/openvswitch.inc
> index 58c8352..454aadf 100644
> --- a/recipes-networking/openvswitch/openvswitch.inc
> +++ b/recipes-networking/openvswitch/openvswitch.inc
> @@ -39,6 +39,7 @@ EXTRA_OECONF += "\
>   	TARGET_PYTHON=${bindir}/python \
>   	TARGET_PERL=${bindir}/perl \
>   	"
> +CONFIGUREOPT_DEPTRACK = ""
>
>   # Don't compile kernel modules by default since it heavily depends on
>   # kernel version. Use the in-kernel module for now.
>


