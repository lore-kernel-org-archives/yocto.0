Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDD51E01200
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 02:13:44 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:9330
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qw8Mo-0000ci-0x
	for yocto@yoctoproject.org; Wed, 24 Aug 2011 08:59:18 +0100
Message-Id: <42B4E483-BD49-4DC2-9007-3D424A73614D@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E45AF24.5070804@mlbassoc.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 24 Aug 2011 08:59:15 +0100
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
	<4E45AF24.5070804@mlbassoc.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Missing patch files in SRC_URIs
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
X-List-Received-Date: Wed, 24 Aug 2011 09:13:45 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

bitbake doesn't seem to be detecting missing patch files. In  
a .bbappend file (for linux-wrs_git) I have:

SRC_URI += " file://defconfig"

SRC_URI_append_Vortex86DX = "\
	   file://there-is-no.patch;patch=1 "

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"

bitbake -c patch -f virtual/kernel

runs without reporting any errors, even though linux-wrs_Vortex86DX/  
does not contain 'there-is-no.patch'.

However, if I change the append to specify a (non-existent) file:

SRC_URI_append_Vortex86DX = "\
	   file://there-is-no-file "

then bitbake reports an error, as I would expect.

Am I doing something wrong here?

Bitbake version is 1.11.0 and MACHINE is Vortex86DX.


Chris Tapp

opensource@keylevel.com
www.keylevel.com




