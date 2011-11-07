Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 047DFE00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 09:21:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pA7HL2DQ006188
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 Nov 2011 09:21:02 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 7 Nov 2011 09:21:02 -0800
Message-ID: <4EB81378.6070008@windriver.com>
Date: Mon, 7 Nov 2011 12:20:56 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1320637311.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1320637311.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4][KERNEL] some more bsp cleanups
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
X-List-Received-Date: Mon, 07 Nov 2011 17:21:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-07 10:56 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This just finishes up the previous set of meta-intel cleanups.  All
> machines were build- and run-tested.
>
> Please pull into linux-yocto-3.0 and linux-yocto-dev.
>
> The following changes since commit 4095bb597a7bcd647856aa35b5fb8637ed7ff975:
>    Tom Zanussi (1):
>          meta/common-pc-64: remove igb
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/bsp-cleanup3
>    http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/bsp-cleanup3

These all look good to me, I've grabbed them and will push them
out in the next day or so.

Bruce

>
> Tom Zanussi (4):
>    meta/fishriver: use power/intel feature
>    meta/fri2: use power/intel feature
>    meta/jasperforest: use power/intel feature
>    meta/fishriver: enable hpet
>
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    2 ++
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    1 +
>   .../kernel-cache/bsp/jasperforest/jasperforest.scc |    1 +
>   3 files changed, 4 insertions(+), 0 deletions(-)
>


