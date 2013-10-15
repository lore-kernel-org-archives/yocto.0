Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B39EE016FB
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 03:38:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 15 Oct 2013 03:38:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,498,1378882800"; d="scan'208";a="411181066"
Received: from unknown (HELO helios.localnet) ([10.252.121.7])
	by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2013 03:38:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Davide Soldan <davide.soldan@kynetics.it>
Date: Tue, 15 Oct 2013 11:38:21 +0100
Message-ID: <4902772.MP4sNkXC8r@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <2654026.GvoHhChOvl@fedora-fisso>
References: <2654026.GvoHhChOvl@fedora-fisso>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: preserving file owners in do_package
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
X-List-Received-Date: Tue, 15 Oct 2013 10:38:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Davide,

On Tuesday 15 October 2013 12:02:20 Davide Soldan wrote:
> in my recipe I want to change owner and permission of a file, so I wrote:
> 
> do_install() {
>         ls -la ${D}/opt/user
>         chown -R user ${D}/opt/user
>         chgrp -R user ${D}/opt/user
>         ls -la ${D}/opt/user
>         chmod 754 ${D}/opt/user/user.sh
>         ls -la ${D}/opt/user
> }
> 
> the output of ls commands is:
> 
> drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
> drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
> -rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh
> 
> drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> -rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh
> 
> drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> *-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh
> 
> So the change of owner and permission works fine in do_install phase.
> Opening the final rootfs tarball, however, the file user.sh has still 754
> permission but root as owner...so do_package doesn't preserve owner change
> done in do_install? Or maybe I'm doing something wrong in changing file
> owner? Any ideas? Thanks to all!

Does your recipe create the specified user via useradd.bbclass?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

