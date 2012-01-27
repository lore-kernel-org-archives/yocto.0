Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D30FE0072A
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 13:20:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0RLK1Ab028925
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 Jan 2012 13:20:01 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 Jan 2012 13:20:01 -0800
Message-ID: <4F2314F5.9090007@windriver.com>
Date: Fri, 27 Jan 2012 16:19:49 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1325522900.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1325522900.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][KERNEL] meta/crownbay: use new yocto/emgd-1.10 feature branch
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
X-List-Received-Date: Fri, 27 Jan 2012 21:20:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-02 02:31 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset makes crownbay use the new yocto/emgd-1.10 feature branch.
>
> Bruce, please don't merge this yet though - it depends on the new emgd-1.10
> recipe, which in turn depends on some new LICENSE_FLAGS functionality being
> merged.  Will let you know when all that's taken care of and it's safe to
> pull this in.

merged with the emgd changes. Build testing now.

Bruce

>
> Thanks,
>
> Tom
>
> The following changes since commit c979f1365b1eb74e882b2cbbc8407ec536ab6eb8:
>    Bruce Ashfield (1):
>          meta/routstationpro: refresh for 3.0 + rt support
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/linux-yocto-3.0-meta/emgd-1.10.v0
>    http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/linux-yocto-3.0-meta/emgd-1.10.v0
>
> Tom Zanussi (1):
>    crownbay: use emgd-1.10
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>


