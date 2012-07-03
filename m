Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF363E01402
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 12:05:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q63J5frP005986
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Jul 2012 12:05:41 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 3 Jul 2012 12:05:41 -0700
Message-ID: <4FF34276.5040803@windriver.com>
Date: Tue, 3 Jul 2012 15:05:26 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1341329269.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341329269.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] linux-yocto-3.4/standard/base: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 19:05:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-03 02:07 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset comprises the kernel side of the modifications needed to
> enable the Perl and Python bindings for perf scripting.

Looks good to me, I'm happy to finally revert the no_perl patch :)
I assume that you verified everything happily builds with and
without the perf-scripting being available ?

Cheers,

Bruce



>
> Please pull into linux-yocto-3.4 standard/base.
>
> Thanks,
>
> Tom
>
> The following changes since commit a8291fa6f723b0182d2b7033b5d59f412ba7cf72:
>    Bruce Ashfield (1):
>          yaffs2: update to 2012-05-29 development head
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/3.4-perf-scripting-standard-base
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/3.4-perf-scripting-standard-base
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


