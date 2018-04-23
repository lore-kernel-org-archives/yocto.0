Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C6C7E009F4; Mon, 23 Apr 2018 01:48:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4973BE00843
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 01:48:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3N8mQFW024575
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Apr 2018 01:48:26 -0700 (PDT)
Received: from [128.224.162.217] (128.224.162.217) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 23 Apr 2018 01:48:25 -0700
To: Armin Kuster <akuster808@gmail.com>, <yocto@yoctoproject.org>
References: <1523745199-16128-1-git-send-email-akuster@mvista.com>
From: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <9a48d3a8-bc85-666d-2a17-8fffb08fb92a@windriver.com>
Date: Mon, 23 Apr 2018 16:55:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1523745199-16128-1-git-send-email-akuster@mvista.com>
Subject: Re: [meta-selinux][PATCH] policycoreutils: remove oe_filter_out
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
X-List-Received-Date: Mon, 23 Apr 2018 08:48:32 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Jackie has sent a patch on 02/07/2018 for this:

[yocto] [meta-selinux][PATCH] policycoreutils.inc: use 
oe.utils.str_filter_out

It's still not merged yet.

Thanks
Wenzong

On 04/15/2018 06:33 AM, Armin Kuster wrote:
> bb.data_smart.ExpansionError: Failure expanding variable WARN_QA[:=], expression was ${@oe_filter_out('unsafe-references-in-scripts', 'ldflags useless-rpaths rpaths staticdev libdir xorg-driver-abi             textrel already-stripped incompatible-license files-invalid             installed-vs-shipped compile-host-path install-host-path             pn-overrides infodir build-deps             unknown-configure-option symlink-to-sysroot multilib             invalid-packageconfig host-user-contaminated uppercase-pn             ', d)} which triggered exception NameError: name 'oe_filter_out' is not defined
> 
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   recipes-security/selinux/policycoreutils.inc | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
> index 442b086..1842fd8 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -64,8 +64,8 @@ RDEPENDS_${BPN}-setsebool += "\
>   "
>   RDEPENDS_${BPN} += "selinux-python"
>   
> -WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
> -ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}"
> +WARN_QA_remove = " unsafe-references-in-scripts"
> +ERROR_QA_remove = " unsafe-references-in-scripts"
>   
>   
>   PACKAGES =+ "\
> 

