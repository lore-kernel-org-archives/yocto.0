Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F0A9E014F3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 03:12:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Apr 2013 03:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,540,1363158000"; d="scan'208";a="300390676"
Received: from unknown (HELO helios.localnet) ([10.255.13.249])
	by orsmga001.jf.intel.com with ESMTP; 24 Apr 2013 03:12:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
Date: Wed, 24 Apr 2013 11:12:33 +0100
Message-ID: <1500751.eqyz6Yl0CS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <62673661A504604B856269DAADA8BC281DE40AAC@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE40AAC@ILPTWPVEXMB02.ecitele.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_clean failure on NFS drive
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
X-List-Received-Date: Wed, 24 Apr 2013 10:12:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 April 2013 06:10:05 Michael Fainstein wrote:
> Recently I moved my working environment from local drive to NFS and since
> then do_clean task is failing all the time with error: ERROR: Error
> executing a python function in ......:
> OSError: [Errno 39] Directory not empty: '....../temp'
> 
> However, when I look at temp directory it is empty!
> 
> I put the following watcher on this directory:
> SNAP0="xx";while [ 1 ]; do SNAP=`ls -a
> tmp/work/ppce500v2-fsl-linux-gnuspe/elfutils-0.125-r4/temp/`;if [
> x"${SNAP}" != x"${SNAP0}" ];then echo "`date`";echo
> "${SNAP}";fi;SNAP0="${SNAP}";done
> 
> And got the following:
> Tue Apr 23 08:28:38 IDT 2013
> ./
> ../
> Tue Apr 23 08:28:51 IDT 2013
> ./
> ../
> log.do_clean@
> log.do_clean.572
> Tue Apr 23 08:28:51 IDT 2013
> ./
> ../
> log.do_clean.572
> run.do_clean.572
> Tue Apr 23 08:28:51 IDT 2013
> ./
> ../
> .nfs000000000210f27700000eb6
> Tue Apr 23 08:28:51 IDT 2013
> ./
> ../
> 
> 
> It looks like do_clean have a log file open when it tries to remove temp
> directory. It doesn't interfere with removing directory on local drive,
> however on NFS it does. If you remove open file on NFS, the file stays in
> the directory with .nfsXXXXXX name till it is closed and only then it is
> removed (i.e. when do_clean exits). This file triggers the exception
> "Directory not empty". Any suggestions how to solve this? Is this solved in
> latest version? I am using Freescale's SDK 1.3
> QorIQ-SDK-V1.3-20121114-yocto that is based on Yocto version 1.2.1

I have to say I don't think we support having TMPDIR on NFS, particularly 
because of cases like this where NFS does not behave in the same way as a 
standard filesystem. Aside from our own code, we'd have to take care of any 
subtle issues in the build systems of every piece of upstream software being 
built, and that's a bit too much to support.

However, if you or someone else can figure out how to fix this specific problem 
in a reasonable manner and send a patch, it would probably be accepted; but 
AFAIK we still recommend not using NFS for this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

