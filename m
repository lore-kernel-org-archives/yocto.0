Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E0EBE014E2
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 07:30:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 23 Jul 2013 07:30:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,728,1367996400"; d="scan'208";a="369690049"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jul 2013 07:30:24 -0700
Message-ID: <51EE9380.5080307@linux.intel.com>
Date: Tue, 23 Jul 2013 07:30:24 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Laszlo Papp <lpapp@kde.org>
References: <1374577377-2614-1-git-send-email-lpapp@kde.org>
In-Reply-To: <1374577377-2614-1-git-send-email-lpapp@kde.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Make the yocto layer dependent on oe-core
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
X-List-Received-Date: Tue, 23 Jul 2013 14:30:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Laszlo,

Thanks for the patch, we have some standards for the patch commit, which 
can be found:

http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Key take away is to include the file name or recipe as the first item 
for example:

layer.conf: make the Yocto layer dependent on oe-core

Also this patch is actaully against Poky master and should go to the 
poky@yoctoproject.org.

Again thanks for your contribution, I look forward to a v2 and will pull 
it to the master_under_test branch.

Sau!


On 07/23/2013 04:02 AM, Laszlo Papp wrote:
> Signed-off-by: Laszlo Papp <lpapp@kde.org>
> ---
>   meta-yocto/conf/layer.conf | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
> index e012f24..e326aad 100644
> --- a/meta-yocto/conf/layer.conf
> +++ b/meta-yocto/conf/layer.conf
> @@ -9,3 +9,8 @@ BBFILE_COLLECTIONS += "yocto"
>   BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
>   BBFILE_PRIORITY_yocto = "5"
>
> +# This should only be incremented on significant changes that will
> +# cause compatibility issues with other layers
> +LAYERVERSION_yocto = "1"
> +
> +LAYERDEPENDS_yocto = "core"
>

