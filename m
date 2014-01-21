Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A52E0087B
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 05:47:12 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2014 05:47:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,696,1384329600"; d="scan'208";a="470094790"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.212])
	by orsmga002.jf.intel.com with ESMTP; 21 Jan 2014 05:46:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Tue, 21 Jan 2014 13:46:55 +0000
Message-ID: <5518767.4TmeFfHfat@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.8-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <77D714BF-7F9C-43E5-88AB-031E57DE8179@keylevel.com>
References: <77D714BF-7F9C-43E5-88AB-031E57DE8179@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Where's my 'thermal_zone'?
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
X-List-Received-Date: Tue, 21 Jan 2014 13:47:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Thursday 16 January 2014 23:15:13 Chris Tapp wrote:
> I'm trying to find the cpu temperatures on a system running a cedartrail
> image built under Danny.
> 
> /sys/thermal has "thermal_cooling" entries (four of which are CPU related),
> but not the "thermal_zone" entries I need to read the CPU temperatures.
> 
> What do I need to do / add to get these in?

This is probably more of a question for the meta-intel list since it's about a 
specific meta-intel BSP. I don't have an answer for your question but maybe 
someone on that list will.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

