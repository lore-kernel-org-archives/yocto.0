Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91327E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 06:52:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBLEquiL018738
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 21 Dec 2011 06:52:56 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 21 Dec 2011 06:52:55 -0800
Message-ID: <4EF1F2C3.9000806@windriver.com>
Date: Wed, 21 Dec 2011 09:52:51 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1324458570-20804-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <1324458570-20804-1-git-send-email-dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] Example meta-intel poky-tiny support for fri2
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
X-List-Received-Date: Wed, 21 Dec 2011 14:52:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-21 04:09 AM, Darren Hart wrote:
> This patch adds a similar linux-yocto-tiny recipe for fri2 that
> my poky-tiny patch provides for qemux86. This one adds the necessary
> bits to boot poky-tiny on fri2. The kernel increases in size by some
> 200k to accomodate the EFI, EG20T, and USB support. As with qemux86,
> these fragments will be removed in favor of those provided in-tree
> by the 3.2 linux-yocto kernel when it becomes available.

Looks good to me, and the 3.2 kernel re-branched, re-named,
optional + required configs are coming along nicely now, so we
should have test branches for merging the two right at the
beginning of January.

Cheers,

Bruce

>


