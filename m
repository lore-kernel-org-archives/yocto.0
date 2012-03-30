Return-Path: <bryan.odonoghue@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B99E006C7
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 05:15:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Mar 2012 05:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="125217876"
Received: from bodonog1-mobl.ger.corp.intel.com (HELO [10.0.2.15])
	([163.33.212.78])
	by azsmga001.ch.intel.com with ESMTP; 30 Mar 2012 05:15:35 -0700
Message-ID: <4F75A3E5.6060608@linux.intel.com>
Date: Fri, 30 Mar 2012 13:15:33 +0100
From: Bryan O'Donoghue <bryan.odonoghue@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.16) Gecko/20120207 Icedove/3.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 30 Mar 2012 09:48:42 -0700
Subject: udev configuration
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
X-List-Received-Date: Fri, 30 Mar 2012 12:15:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Greetings list.

I'm booting a yocto image a "core-image-minimal" and I've noticed that 
not all of the serial ports have entries in /dev. More generally for 
hardware coming down the line, I'd like to know how/where the 
configuration for udev is supposed to go in a yocto BSP.

I can't see anything obvious in the meta-intel BSPs but, there must be 
some way (probably very obvious way) of setting up the udev script to do 
what you'd typically want to do ?

