Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFA5FE01201
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 06:52:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7PDqCoP023936
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 06:52:12 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 25 Aug 2011 06:52:12 -0700
Message-ID: <4E565388.7010404@windriver.com>
Date: Thu, 25 Aug 2011 09:52:08 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Liming Wang <liming.wang@windriver.com>
References: <1314261891-5311-1-git-send-email-liming.wang@windriver.com>
	<1314261891-5311-2-git-send-email-liming.wang@windriver.com>
In-Reply-To: <1314261891-5311-2-git-send-email-liming.wang@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] scripts/runqemu: disable unfs boot mode for qemuppc
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
X-List-Received-Date: Thu, 25 Aug 2011 13:52:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-25 04:44 AM, Liming Wang wrote:
> Because unfs boot mode is unstable for qemuppc, disable
> it temporarily.
>
> Signed-off-by: Liming Wang<liming.wang@windriver.com>
> ---
>   scripts/runqemu |    6 ++++++
>   1 files changed, 6 insertions(+), 0 deletions(-)
>
> diff --git a/scripts/runqemu b/scripts/runqemu
> index ed8c05b..10da6c9 100755
> --- a/scripts/runqemu
> +++ b/scripts/runqemu
> @@ -351,6 +351,12 @@ if [ -z "$FSTYPE" ]; then
>           usage
>       fi
>   fi
> +
> +if [ "$FSTYPE" = "nfs" -a "$MACHINE" = "qemuppc" ]; then
> +    echo "Error: NFS boot mode is unstable for qemuppc, please don't use it now"

We can drop the last part.

"Error: usermode NFS boot is not available for qemuppc."

... or something similar is sufficient.

On the v2, make sure to cc' Saul just to be sure that this
doesn't miss any filters.

Cheers,

Bruce

> +    exit 1
> +fi
> +
>   # FSTYPE is now set for all cases
>
>   # Handle cases where a ROOTFS type is given instead of a filename, e.g.


