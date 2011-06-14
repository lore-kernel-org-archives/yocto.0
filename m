Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 431414C8009D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 09:30:29 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5EEUSJd027376
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Jun 2011 07:30:28 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 14 Jun 2011 07:30:27 -0700
Message-ID: <4DF77082.3090401@windriver.com>
Date: Tue, 14 Jun 2011 10:30:26 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1307970929.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1307970929.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL][PATCH] add utrace
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
X-List-Received-Date: Tue, 14 Jun 2011 14:30:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/11 10:35, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This adds support for utrace to linux-yocto, for userspace tracing
> in systemtap.
>
> Please pull into the yocto/base branch linux-yocto.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/yocto/base-utrace
>    Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto/base-utrace

ack'd. These look good. I'm just finishing up the
recipe renames for linux-yocto and will start feature
merging into the kernel repo shortly. I'd expect to have
this in by end of day.

Bruce

>
> Tom Zanussi (1):
>    utrace: support for user space probing/tracing
>
>   Documentation/DocBook/Makefile    |    2 +-
>   Documentation/DocBook/utrace.tmpl |  589 +++++++++
>   fs/proc/array.c                   |    3 +
>   include/linux/ptrace.h            |    1 +
>   include/linux/sched.h             |    6 +
>   include/linux/tracehook.h         |   97 ++-
>   include/linux/utrace.h            |  692 +++++++++++
>   init/Kconfig                      |    9 +
>   kernel/Makefile                   |    1 +
>   kernel/fork.c                     |    3 +
>   kernel/ptrace.c                   |   16 +-
>   kernel/signal.c                   |    4 +-
>   kernel/utrace.c                   | 2440 +++++++++++++++++++++++++++++++++++++
>   13 files changed, 3853 insertions(+), 10 deletions(-)
>   create mode 100644 Documentation/DocBook/utrace.tmpl
>   create mode 100644 include/linux/utrace.h
>   create mode 100644 kernel/utrace.c
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


