Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79CBE01684
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:47:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Oct 2013 04:47:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,507,1378882800"; d="scan'208";a="417674838"
Received: from unknown (HELO helios.localnet) ([10.252.121.8])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2013 04:47:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Tomer <amittomer25@gmail.com>
Date: Wed, 16 Oct 2013 12:47:46 +0100
Message-ID: <3510100.mPPqXHWdjg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABHD4K_Q5Wmrbam4_XxK2zRUWvZF7Z7AYKV=YuzUp8SnZ+nc-Q@mail.gmail.com>
References: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
	<CABHD4K_gCtTMpO17BBstkjbKj_B9iJWMdchf2A_O2D+UZVpybg@mail.gmail.com>
	<CABHD4K_Q5Wmrbam4_XxK2zRUWvZF7Z7AYKV=YuzUp8SnZ+nc-Q@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How /etc/passwd packed into my final image
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
X-List-Received-Date: Wed, 16 Oct 2013 11:47:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amit,

On Wednesday 16 October 2013 17:01:11 Amit Tomer wrote:
> I trying adding INHERIT += "extrausers" to my local.conf file but getting
> 
> ERROR: Unable to parse extrausers: ParseError in configuration
> INHERITs: Could not inherit file classes/extrausers.bbclass

OK, I guess you are using an older version that does not have this facility.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

