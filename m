Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B67E0140A
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:49:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Apr 2013 07:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,486,1363158000"; d="scan'208";a="286915312"
Received: from unknown (HELO helios.localnet) ([10.255.14.4])
	by azsmga001.ch.intel.com with ESMTP; 16 Apr 2013 07:49:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Apr 2013 15:49:52 +0100
Message-ID: <1702801.pL1SCMygr1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
	<CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
	<CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
MIME-Version: 1.0
Cc: Edward Vidal <vidal.develone@gmail.com>
Subject: Re: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 14:49:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 16 April 2013 15:03:50 Burton, Ross wrote:
> On 16 April 2013 15:01, Edward Vidal <vidal.develone@gmail.com> wrote:
> > I did a search for installed-pkgs.txt and complementary-pkgs.txt neither
> > of
> > these files were on my system.  I am assuming this is because in my
> > local.conf I am using INHERIT += "rm_work".
> > as found on page 41 of the ref_manual.  What is the difference between the
> > two pkgs sets?  The does reduce the capabilities of the systems?  Can the
> > complementary-pkgs.txt be installed with a flag?
> 
> Yes, rm_work will delete those files.
> 
> As far as I know, "installed" is the packages explicitly installed,
> "complementary" is the set installed through features such as
> dev-pkgs.
> 
> If you really want to find the differences on these images, boot each
> and dump the installed package list (rpm -qa?).

Or, use buildhistory:

https://wiki.yoctoproject.org/wiki/Buildhistory

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

