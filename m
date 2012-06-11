Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE18E0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 13:19:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q5BKJvKG025737
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Jun 2012 13:19:57 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 11 Jun 2012 13:19:57 -0700
Message-ID: <4FD652E3.3060209@windriver.com>
Date: Mon, 11 Jun 2012 16:19:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <nitin.a.kamble@intel.com>
References: <cover.1339443379.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1339443379.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] remove snb rc6 patches from v3.4 kernel repository
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
X-List-Received-Date: Mon, 11 Jun 2012 20:19:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-11 03:38 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
> These patches are already part of v3.4 kernel sources. So there is no need to
> maintain them in the yocto linux 3.4 repository.

dropped. They obviously weren't reference anyway.

I assume you'll be doing an associated meta-intel commit to remove the
reference in:

./meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend

Cheers,

Bruce

>
> Thanks,
> Nitin
>
> The following changes since commit 3fd089debe624c642d7b4d9363f853021d1675b2:
>
>    checkpoint dir: meta (2012-06-06 16:24:42 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/meta
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/meta
>
> Nitin A Kamble (1):
>    rc6: remove rc6 patches for snb
>
>   .../features/tmp/rc6/rc6-kernel-params.patch       |   81 --------------------
>   meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc     |    5 -
>   .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch  |   26 ------
>   .../features/tmp/rc6/snb-disable-rc6p.patch        |   39 ----------
>   .../features/tmp/rc6/snb-enable-rc6.patch          |   54 -------------
>   5 files changed, 0 insertions(+), 205 deletions(-)
>   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
>   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
>   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
>   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
>   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch
>


