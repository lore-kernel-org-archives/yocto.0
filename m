Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47343E0075D
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2011 12:37:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p85Jbaws027348
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Sep 2011 12:37:36 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 5 Sep 2011 12:37:36 -0700
Message-ID: <4E6524FA.3080805@windriver.com>
Date: Mon, 5 Sep 2011 15:37:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1315238701.31478.199.camel@elmorro>
In-Reply-To: <1315238701.31478.199.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/3][KERNEL] linux-yocto-3.0/yocto/standard/base: re-enable utrace
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
X-List-Received-Date: Mon, 05 Sep 2011 19:37:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-05 12:05 PM, Tom Zanussi wrote:
> This patchset re-enables utrace.  Tested on qemuppc, qemux86, qemux86-64,
> qemuarm (where it doesn't work, as expected - utrace doesn't currently
> support arm), and sugarbay.
>
> These patches are taken from the utrace-3.0 branch of the utrace git repo at
> git://git.kernel.org/pub/scm/linux/kernel/git/oleg/misc.git.
>
> Please pull into linux-yocto-3.0/meta.

Or better yet standard/base :)

merged and going through some test runs.

Bruce

>
> The following changes are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git utrace-yocto/standard/base
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=utrace-yocto/standard/base
>
> Oleg Nesterov (2):
>    ptrace: temporary revert the recent ptrace/jobctl rework
>    tracehooks: preparation for ptrace-utrace
>
> Roland McGrath (1):
>    utrace core
>
>   Documentation/DocBook/Makefile    |    2 +-
>   Documentation/DocBook/utrace.tmpl |  589 +++++++++
>   fs/exec.c                         |    1 -
>   fs/proc/array.c                   |    3 +
>   include/linux/ptrace.h            |    2 +
>   include/linux/sched.h             |   23 +-
>   include/linux/tracehook.h         |  122 ++-
>   include/linux/utrace.h            |  692 +++++++++++
>   init/Kconfig                      |    9 +
>   kernel/Makefile                   |    1 +
>   kernel/exit.c                     |   77 +-
>   kernel/fork.c                     |    3 +
>   kernel/ptrace.c                   |  118 +--
>   kernel/signal.c                   |  341 ++----
>   kernel/utrace.c                   | 2440 +++++++++++++++++++++++++++++++++++++
>   15 files changed, 3986 insertions(+), 437 deletions(-)
>   create mode 100644 Documentation/DocBook/utrace.tmpl
>   create mode 100644 include/linux/utrace.h
>   create mode 100644 kernel/utrace.c
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


