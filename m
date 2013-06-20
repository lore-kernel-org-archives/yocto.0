Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12EA0E005B3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 07:58:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Jun 2013 07:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,905,1363158000"; d="scan'208";a="332785079"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.51])
	by orsmga001.jf.intel.com with ESMTP; 20 Jun 2013 07:58:20 -0700
Message-ID: <51C3188C.2060701@linux.intel.com>
Date: Thu, 20 Jun 2013 07:58:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>	<7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405B4D@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE258405B4D@ORSMSX105.amr.corp.intel.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Paul D. DeRocco" <pderocco@ix.netcom.com>
Subject: Re: This one can't be me...
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
X-List-Received-Date: Thu, 20 Jun 2013 14:58:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/04/2013 12:14 PM, Bodke, Kishore K wrote:

> Hi Bruce/Darren,
> 
> I do not see Linux-yocto-3.0 kernel branch in git repo.
> Is it no longer available?
> Cedartrail BSP for 1.3 Yocto (danny) supports only 3.0 kernel.
> 
> I am not sure how Paul is able to build this bsp?
> 

Do you mean you don't see the linux-yocto-3.0 recipe? It was removed in
later releases, but is still available in danny.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

