Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC343E013E8
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 16:13:27 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Feb 2012 16:13:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116302161"
Received: from unknown (HELO envy.home) ([10.255.15.91])
	by orsmga002.jf.intel.com with ESMTP; 29 Feb 2012 16:12:27 -0800
Message-ID: <4F4EBEC8.7060705@linux.intel.com>
Date: Wed, 29 Feb 2012 16:11:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"Perez-Gonzalez, Inaky" <inaky.perez-gonzalez@intel.com>,
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Enigmail-Version: 1.3.5
Subject: Documentation: Default FILESDIR
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
X-List-Received-Date: Thu, 01 Mar 2012 00:13:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

When a new user goes to write a recipe and add a patch or other file,
they need to understand FILESDIR and where to put these additional
files. I scanned the reference manual and the dev manual and came up
mostly empty handed. The one glipse of it is in section 5.1.4 of the
Reference Manual:

"
It is useful when making changes directly to the work directory files to
do so using the Quilt tool as detailed in the Modifying Package Source
Code with Quilt section. Using Quilt, you can copy patches into the
recipe directory and use the patches directly through use of the SRC_URI
variable.
"

Unfortunately, this doesn't say where the recipe directory is and what
it should be named.

Is this documented somewhere that I missed? If not, Scott can you add
this task to your list of doc gaps?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

