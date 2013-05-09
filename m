Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40948E01480
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:34:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2013 01:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="334190042"
Received: from unknown (HELO helios.localnet) ([10.255.12.169])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2013 01:34:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
Date: Thu, 09 May 2013 09:34:18 +0100
Message-ID: <2983293.qAFFc2TYrv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <349B24DA-30D1-4541-A2C1-4EDC44CEE734@gmail.com>
References: <4F1B91CF7B31604FABE8442530201B780195B3@ALPURAPA22.e2k.ad.ge.com>
	<349B24DA-30D1-4541-A2C1-4EDC44CEE734@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Does anyone have a recipe for efibootmgr?
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
X-List-Received-Date: Thu, 09 May 2013 08:34:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 08 May 2013 21:46:56 Khem Raj wrote:
> On May 7, 2013, at 11:11 AM, "Wenholz, Brian (GE Healthcare)" 
<Brian.Wenholz@med.ge.com> wrote:
> > I have been unsuccessful in finding one yet, and would prefer not to
> > re-invent the wheel.
>
> check
> http://layers.openembedded.org/layerindex/

Specifically the recipe search part:

http://layers.openembedded.org/layerindex/recipes/

> if its not there then it does not exist.
> secondly check classic OE metadata and if it exists there
> 
> http://git.openembedded.org/openembedded/tree/recipes
> 
> then forward port it to relevant layer and post patches for the layer using
> relevant layer guidelines

FYI there is information on how to migrate recipes here:

http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

