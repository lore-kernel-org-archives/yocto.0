Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DE074C80332
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 23:49:20 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6C4n8ra006371
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Jul 2011 21:49:08 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.78) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 11 Jul 2011 21:49:07 -0700
Message-ID: <4E1BD241.1070106@windriver.com>
Date: Tue, 12 Jul 2011 00:49:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E1BB620.6040301@linux.intel.com>
In-Reply-To: <4E1BB620.6040301@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][poky-extras] meta-kernel-dev: allow for dangling bbappend files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Jul 2011 04:49:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-11 10:49 PM, Darren Hart wrote:
> With the bitbake commit:
> 7a2a24de094ce8f2e2068bbee6709dfc2cdc69b9
> missing base recipe files for bbappends became an error. Rather than creating a
> separate kernel development layer for every layer containing a new kernel recipe
> name, conditionally set BB_DANGLINGAPPENDS_WARNONLY.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Bruce Ashfield<bruce.ashfield@windriver.com>


Agreed. This is the right solution.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

> CC: Jeff Mitchell<jmitchell@ll.mit.edu>
> ---
>   meta-kernel-dev/conf/layer.conf |    4 ++++
>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> diff --git a/meta-kernel-dev/conf/layer.conf b/meta-kernel-dev/conf/layer.conf
> index 33f1ca5..01e5b15 100644
> --- a/meta-kernel-dev/conf/layer.conf
> +++ b/meta-kernel-dev/conf/layer.conf
> @@ -1,3 +1,7 @@
> +# Avoid having to split this into multiple layers
> +# Allow missing base recipe files for our bbappends
> +BB_DANGLINGAPPENDS_WARNONLY ?= "true"
> +
>   # We have a conf and classes directory, add to BBPATH
>   BBPATH := "${BBPATH}:${LAYERDIR}"
>


