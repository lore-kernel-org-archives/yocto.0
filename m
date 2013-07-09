Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F97E00715
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 02:12:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Jul 2013 02:10:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1027,1363158000"; d="scan'208";a="367015961"
Received: from sorvi.fi.intel.com (HELO [10.237.72.154]) ([10.237.72.154])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2013 02:12:47 -0700
Message-ID: <51DBD40E.5000509@linux.intel.com>
Date: Tue, 09 Jul 2013 12:12:46 +0300
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: How to create a mobile access point using new Yocto layer
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
X-List-Received-Date: Tue, 09 Jul 2013 09:12:49 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have been experimenting with Yocto and created a new layer called 
meta-eca that builds ECA (Embedded Connectivity Appliance). ECA is a 
platform for building network appliances. One such use case is mobile 
access point which uses ConnMan tethering functionality to tether wifi, 
bluetooth, USB gadget and ethernet connections.

There is a howto at http://metaeca.wordpress.com/ which gives detailed 
build instructions how to create ECA using Yocto. There are build 
instructions for Beagleboard xM, Beaglebone Black, Atom-PC, VirtualBox, 
Intel NUC, Intel FRI2 and Raspberry Pi devices.

The meta-eca layer source code is at https://github.com/jukkar/meta-eca


Cheers,
Jukka

