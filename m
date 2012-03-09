Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDCACE013C3
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 11:12:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q29JBxFp007229
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Mar 2012 11:12:00 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Mar 2012 11:11:59 -0800
Message-ID: <4F5A55FD.1010604@windriver.com>
Date: Fri, 9 Mar 2012 14:11:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1331319522.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1331319522.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL] [PATCH 0/1] Additional pvr patches
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
X-List-Received-Date: Fri, 09 Mar 2012 19:12:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-09 02:03 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
>
> Hi,
>
> These addtional patches enable Cedarview hdmi and acpi.
> Please pull thme to the yocto/pvr branch in linux-yocto-3.0 tree.

Looks fine. will Merge it shortly and send a confirmation.

Bruce

>
> Thanks
> Kishore.
>
>
> The following changes since commit 3604d007243d3db5fea8704f78a3608862e592f9:
>
>    yocto/pvr: integrate pvr support (2012-03-02 16:34:43 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib bodke/new-pvr-patch
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=bodke/new-pvr-patch
>
> Kishore Bodke (1):
>    Add new pvr patches.     Additional pvr patches related to hdmi and
>      acpi.
>
>   drivers/acpi/video.c       |    2 --
>   sound/pci/hda/patch_hdmi.c |    2 ++
>   2 files changed, 2 insertions(+), 2 deletions(-)
>


