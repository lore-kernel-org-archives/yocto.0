Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D8FE00A28; Tue,  3 Nov 2015 16:58:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D3E4E009C5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 16:58:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tA3LAVLF007795
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Nov 2015 13:11:16 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Tue, 3 Nov 2015 13:10:31 -0800
To: Manjeet Pawar <manjeet.p@samsung.com>, <yocto@yoctoproject.org>
References: <1446551079-38517-1-git-send-email-manjeet.p@samsung.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <563922C5.5080505@windriver.com>
Date: Tue, 3 Nov 2015 15:10:29 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1446551079-38517-1-git-send-email-manjeet.p@samsung.com>
Cc: Vaneet Narang <v.narang@samsung.com>, ajeet.y@samsung.com,
	doha.hwang@samsung.com, hakbong5.lee@samsung.com,
	maninder1.s@samsung.com, pankaj.m@samsung.com
Subject: Re: [PATCH 1/1] Fix AARCH64_TLSDESC relocation conflict
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
X-List-Received-Date: Wed, 04 Nov 2015 00:58:52 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 11/3/15 5:44 AM, Manjeet Pawar wrote:
> This patch needs to be applied to 'cross_prelink_aarch64' branch.
> It fixes tls1, tls2, tls4, tls5, tls6 test cases of prelink testsuite.
> tls3 gets failed but this test case fails without prelink as well on AARCH64
> 
> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
> Signed-off-by: Manjeet Pawar <manjeet.p@samsung.com>
> ---
>  src/arch-aarch64.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/src/arch-aarch64.c b/src/arch-aarch64.c
> index e04dd6e..6499c68 100644
> --- a/src/arch-aarch64.c
> +++ b/src/arch-aarch64.c
> @@ -375,7 +375,7 @@ aarch64_prelink_conflict_rela (DSO *dso, struct prelink_info *info,
>        break;
>      case R_AARCH64_TLSDESC:
>  	  tls = conflict ? conflict->lookup.tls : info->curtls;
> -	  ret->r_addend =  rela->r_addend + tls->offset;
> +	  ret->r_addend = value + rela->r_addend + tls->offset;
>       break;
>      default:
>        error (0, 0, "%s: Unknown AARCH64 relocation type %d", dso->filename,
> 

I'm still getting segfaults here.

The way I am testing is building a Yocto Project (jethro) system
core-image-base, and adding to it:
"packagegroup-core-buildessential,libelf,elfutils-dev,binutils-staticdev,glibc-staticdev"

The copying a checked out version of the prelink-cross repository with the
prelink_cross_aarch64 branch checked out.

On the target:

autoreconf -if
./configure
make
make -C testsuite check

Most tests still fail, and all of the TLS tests result in a segfault.

(I do have the 'aarch64/dl-machine.h: Fix load-address for prelink support'
applied to my glibc.  Are there any other patches that may need to be applied?)

--Mark

