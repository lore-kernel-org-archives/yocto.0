Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BEE8E00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 17:41:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7C0fWPf019864
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 17:41:32 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.18.204) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 11 Aug 2011 17:41:32 -0700
Message-ID: <4E4476B9.9040405@windriver.com>
Date: Thu, 11 Aug 2011 20:41:29 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1313093647.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313093647.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] preempt-rt support for meta-yocto BSPs
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
X-List-Received-Date: Fri, 12 Aug 2011 00:41:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 7:08 PM, Darren Hart wrote:
> This series add build and boot tested support for the atom-pc and mpc8315e-rdb.
> The routerstationpro and beagleboard still suffer from build failures and are
> commented out.
>
> The following changes since commit 760d79558c5e35b9b0e73734bb90ebadf427f208:
>
>    recipes-rt: add a README documenting the contents of recipes-rt (2011-08-11 12:36:02 -0700)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/rt-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/rt-yocto
>
> Darren Hart (2):
>    meta-yocto: allow for virtual/kernel override
>    meta-yocto: add linux-yocto-rt support for all meta-yocto machines

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

>
>   meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 +-
>   meta-yocto/conf/machine/routerstationpro.conf      |    2 +-
>   .../linux/linux-yocto-rt_3.0.bbappend              |   25 ++++++++++++++++++++
>   3 files changed, 27 insertions(+), 2 deletions(-)
>   create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>


