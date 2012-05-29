Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01AD3E013B7
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 13:20:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4TKKHN0027316
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 May 2012 13:20:17 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.148) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 29 May 2012 13:20:16 -0700
Message-ID: <4FC52F7F.3060102@windriver.com>
Date: Tue, 29 May 2012 16:20:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
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
X-List-Received-Date: Tue, 29 May 2012 20:20:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-25 1:44 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Add Power Management and move kernel features to
> Cedartrail Machine branch.
>
> Please pull into linux-yocto-3.0/meta.

Merged and pushed to the linux-yocto-3.0 tree (on top of 3.0.32).

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


