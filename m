Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1A7FE011C0
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 15:24:40 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Dec 2012 15:24:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,202,1355126400"; d="scan'208";a="175191989"
Received: from unknown (HELO helios.localnet) ([10.252.123.12])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Dec 2012 15:24:13 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>, yocto@yoctoproject.org
Date: Sun, 02 Dec 2012 23:24:11 +0000
Message-ID: <5998848.CzcRMVOQ3K@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-18-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <50BBDB70.2040803@intel.com>
References: <50BBDB70.2040803@intel.com>
MIME-Version: 1.0
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Sun, 02 Dec 2012 23:24:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 02 December 2012 14:51:28 Scott Garman wrote:
> Robert Day has brought up an inconsistency in the way we append to
> BBPATH within a couple of our layer.conf files.
> 
> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
> 
> BBPATH := "${BBPATH}:${LAYERDIR}"
> 
> but in meta-yocto, we do:
> 
> BBPATH := "${LAYERDIR}:${BBPATH}"
> 
> Unless someone explains to me that it's necessary to use this different
> ordering in meta-yocto's layer.conf, I will submit a patch to make this
> more consistent.

I think it actually ought to be:

BBPATH .= ":${LAYERDIR}"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

