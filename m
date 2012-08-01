Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E985E00288
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 19:48:21 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2012 19:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175533562"
Received: from unknown (HELO envy.home) ([10.255.13.49])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2012 19:48:20 -0700
Message-ID: <50189888.3020103@linux.intel.com>
Date: Tue, 31 Jul 2012 19:46:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>, 
	Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.3
Subject: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 02:48:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I am trying to debug a userpsace application that misbehaves under
poky-tiny. My current approach is use gdbserver on the target and attach
to the offending process, then connect to it on the client using the
yocto-built native gdb for the target.

I can easily add gdbserver to the target image, and can successfully
connect it to the process:

# From the target (qemux86) root shell:
# dropbearkey -t rsa -f ./rsa
# dropbear -r ./rsa
# DBPID=$(ps | grep dropbear | head -n1 | cut -f4 -d ' ')
# gdbserver 127.0.0.1:1234 --attach $DBPID

Now on the host machine (amd64) I want to:
$ gdb????
(gdb) target extended-remote 127.0.0.1:1234

Which package do I need to build to get the appropriate gdb for the host
to remote debug processes on the target?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

