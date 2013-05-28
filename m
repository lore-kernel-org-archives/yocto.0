Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E685E014FB
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:14:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 May 2013 05:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,758,1363158000"; d="scan'208";a="308913216"
Received: from unknown (HELO helios.localnet) ([10.252.121.204])
	by azsmga001.ch.intel.com with ESMTP; 28 May 2013 05:14:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 28 May 2013 13:14:46 +0100
Message-ID: <1430863.Eq8UUOJMnE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 May 2013 12:14:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 28 May 2013 13:46:26 Zafrullah Syed wrote:
> I am trying to add Hello world recipe, everything was going good but after
> giving bitbake <target> command it breaks with the following error:
> 
> siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake gumstix-console-image
> *
> 
> ERROR: ExpansionError during parsing
> /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
> Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
> triggered exception NoMethodError: Could not find a fetcher which supports
> the URL: '${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
> ERROR: Command execution failed: Exited with 1
> 
> 
> *My hello.bb file is*:
> 
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "examples"
> LICENSE = "GPLv3+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> PR = "r0"
> SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"

That should be:

SRC_URI = "ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

