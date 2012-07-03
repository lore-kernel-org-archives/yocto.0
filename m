Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FA65E01402
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 12:07:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q63J7wOI006271
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Jul 2012 12:07:58 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 3 Jul 2012 12:07:58 -0700
Message-ID: <4FF342FF.6010006@windriver.com>
Date: Tue, 3 Jul 2012 15:07:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1341337852.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341337852.git.tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] linux-yocto-3.4/meta: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 19:07:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-03 02:08 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset enables FTRACE_SYSCALLS, used by some existing perf scripts.
>
> Please pull into linux-yocto-3.4.

A reasonable addition, I can think of when we'd not want this enabled
by default. I'll add this to my queue after it sits on the list for bit.

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
> The following changes are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/3.4-perf-scripting-meta
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/3.4-perf-scripting-meta
>
> Tom Zanussi (1):
>    features/ftrace: enable FTRACE_SYSCALLS
>
>   meta/cfg/kernel-cache/features/ftrace/ftrace.cfg |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>


