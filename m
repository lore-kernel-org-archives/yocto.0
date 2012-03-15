Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89DA9E011D1
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 12:13:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2FJCtcC022304
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 15 Mar 2012 12:12:55 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 15 Mar 2012 12:12:55 -0700
Message-ID: <4F623F34.6020405@windriver.com>
Date: Thu, 15 Mar 2012 15:12:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1331751319.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1331751319.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto-3.2/meta] fri2 update
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
X-List-Received-Date: Thu, 15 Mar 2012 19:13:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-14 02:56 PM, Darren Hart wrote:
> The following changes since commit 64840f55ee144e9814278eaa8e3f33dd60da892c:
>
>    meta/emgd: emgd 1.10 updates (2012-03-12 11:48:22 -0400)

Queued with my other 3.2 changes. Should be pushed out tomorrow.

Bruce

>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/fri2
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/fri2
>
> Darren Hart (1):
>    fri2: Update fri2.cfg for hardware specific support
>
>   meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   16 ++++++++++++----
>   1 files changed, 12 insertions(+), 4 deletions(-)
>


