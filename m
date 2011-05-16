Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F16924C80263
	for <yocto@yoctoproject.org>; Mon, 16 May 2011 02:10:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2011 00:10:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,373,1301900400"; 
   d="scan'208";a="2678167"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 00:10:07 -0700
Message-ID: <4DD0CDCE.4000108@intel.com>
Date: Mon, 16 May 2011 15:10:06 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: wangyang <wangyang01@cn.panasonic.com>
References: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
In-Reply-To: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
Cc: yocto@yoctoproject.org
Subject: Re: about how to port YOCTO
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
X-List-Received-Date: Mon, 16 May 2011 07:10:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-5-16 11:31, wangyang wrote:
> Hello!
>
> Because YOCTO supports x86, arm and so on MCU. I just want to know about how to
> port YOCTO to other MCU. Is it difficult, what's kind of knowledge  needed?
> Thanks
>

Add another machine is not that difficult, as Yocto is designed to be 
highly customizable for different H/W. What you need is a BSP layer for 
your H/W, it is basically the H/W specific configuration, e.g. the 
kernel config, graphics config.

the BSP Guide 
(http://www.yoctoproject.org/docs/bsp-guide/bsp-guide.html) has good 
info on how to write BSP. Also you can find some example from existing 
BSP, like meta-intel BSP 
(http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/)

Regards
Ke

