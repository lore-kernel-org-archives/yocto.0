Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C92DE0044A
	for <yocto@yoctoproject.org>; Mon, 28 May 2012 13:26:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4SKQVN1013255
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 May 2012 13:26:31 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 28 May 2012 13:26:31 -0700
Message-ID: <4FC3DF71.1040408@windriver.com>
Date: Mon, 28 May 2012 16:26:25 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1337967434.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1337967434.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [KERNEL] Cedartrail Add Kernel features
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
X-List-Received-Date: Mon, 28 May 2012 20:26:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-25 01:44 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Add Power Management and move kernel features to
> Cedartrail Machine branch.
>
> Please pull into linux-yocto-3.0/meta.

Looks good. I've got this associated with Tom and Darren's updates,
so it will be out in the next day or so.

Bruce

>
> Thanks
> Kishore.
>
> The following changes since commit 34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23:
>
>    meta: Clean up BSPs kernel config (2012-04-17 16:01:19 -0400)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/cedartrail
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/cedartrail
>
> Kishore Bodke (1):
>    meta: Add cedartrail kernel features
>
>   .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    4 ++++
>   1 file changed, 4 insertions(+)
>


