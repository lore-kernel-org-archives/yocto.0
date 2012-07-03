Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BCA3E01402
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 12:08:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q63J8Xbo028821
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Jul 2012 12:08:33 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 3 Jul 2012 12:08:33 -0700
Message-ID: <4FF34322.90004@windriver.com>
Date: Tue, 3 Jul 2012 15:08:18 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1341337418.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341337418.git.tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4] linux-yocto-3.2/standard/base: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 19:08:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-03 02:09 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset comprises the kernel side of the modifications needed to
> enable the Perl and Python bindings for perf scripting.
>
> Please pull into linux-yocto-3.2 standard/base.

Ack'd. Same as the 3.4 variant. Queued pending any review comments.

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
> The following changes are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/3.2-perf-scripting-standard-base
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/3.2-perf-scripting-standard-base
>
> Tom Zanussi (4):
>    Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
>    perf: use pkg-config instead of python-config
>    perf: add 'libperl not found' warning
>    perf: change --root to --prefix for python install
>
>   tools/perf/Makefile |   90 +++++++++++++++++++++++++++++++++++++++++++++++++--
>   1 files changed, 87 insertions(+), 3 deletions(-)
>


