Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73FE9E00777
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 09:36:21 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Dec 2012 09:36:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,252,1355126400"; d="scan'208";a="260055879"
Received: from unknown (HELO helios.localnet) ([10.252.122.200])
	by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2012 09:36:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: mail@timomueller.eu
Date: Mon, 10 Dec 2012 17:36:13 +0000
Message-ID: <9968067.d7HWQVlsrr@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <cover.1355127001.git.timo.mueller@bmw-carit.de>
References: <cover.1355127001.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 0/3][eclipse-poky] Add option to allow building from local repo
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
X-List-Received-Date: Mon, 10 Dec 2012 17:36:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Timo,

On Monday 10 December 2012 09:13:41 mail@timomueller.eu wrote:
> From: Timo Mueller <timo.mueller@bmw-carit.de>
> 
> Hi,
> 
> I've rebased the patch series. It should now apply to the current master.
> 
> Best regards,
> 	 Timo
> 
> From the original cover letter:
> <snip>
> if you build eclipse-poky with the provided build script it will always use
> the upstream version of the IDE.
> During development I wanted to use my local repository to make sure that my
> changes don't break the build system. Therefor I added an option to the
> build script to allow building from the local eclipse-poky git repository.
> </snip>
> 
> Timo Mueller (3):
>   scripts/build.sh: Added function to use the local repository for
>     building
>   scripts/build.sh: Added help option to the cmdline
>   script/build.sh: Added option to enable building from local
>     repository.
> 
>  scripts/build.sh |   30 ++++++++++++++++++++++++++----
>  1 files changed, 26 insertions(+), 4 deletions(-)

Can you please include Signed-off-by in your commit messages?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

