Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8152E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 08:10:46 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Feb 2012 08:10:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="106948202"
Received: from unknown (HELO helios.localnet) ([10.252.122.246])
	by orsmga002.jf.intel.com with ESMTP; 06 Feb 2012 08:10:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 06 Feb 2012 16:10:44 +0000
Message-ID: <2720565.vdveVUSFVJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
References: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
	<CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Task Build Issue
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
X-List-Received-Date: Mon, 06 Feb 2012 16:10:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 03 February 2012 21:03:22 Khem Raj wrote:
> add ALLOW_EMPTY_ task-mytask-apps = "1" to your recipe

Alternatively you could "inherit task" near the top of the recipe and 
task.bbclass takes care of this and a couple of other things already.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

