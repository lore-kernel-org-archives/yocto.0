Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53284E011B2
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 11:50:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7HIp53P022904
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Aug 2011 11:51:05 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 17 Aug 2011 11:51:05 -0700
Message-ID: <4E4C0D97.1050207@windriver.com>
Date: Wed, 17 Aug 2011 14:51:03 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1313598858.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598858.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/2][KERNEL] meta-/fri2: add EMGD support
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
X-List-Received-Date: Wed, 17 Aug 2011 18:50:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-17 12:50 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset makes fri2 use emgd.  Please pull into
> linux-yocto-3.0/meta.

I've tossed this onto the pile. Once some testing
completes, I'll push this out with my 3.0.2 update.

Bruce

>
> Thanks,
>
> Tom
>
> The following changes are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/meta-fri2-emgd-linux-yocto-3.0
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/meta-fri2-emgd-linux-yocto-3.0
>
> Tom Zanussi (2):
>    bsp/fri2: merge emgd branch
>    bsp/fri2: use EMGD feature
>
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    3 +++
>   1 files changed, 3 insertions(+), 0 deletions(-)
>


