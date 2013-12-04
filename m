Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE0F5E0053F
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 10:33:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Dec 2013 10:33:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,826,1378882800"; d="scan'208";a="419410161"
Received: from akagikob-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.234])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2013 10:33:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 04 Dec 2013 18:33:40 +0000
Message-ID: <17330076.MJ53DVLGsZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1386180088-27454-2-git-send-email-andrei@gherzan.ro>
References: <1386180088-27454-1-git-send-email-andrei@gherzan.ro>
	<1386180088-27454-2-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] libav: Update to v0.8.8
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
X-List-Received-Date: Wed, 04 Dec 2013 18:33:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrei,

On Wednesday 04 December 2013 20:01:28 Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  .../0001-configure-enable-pic-for-AArch64.patch    | 23
> ---------------------- .../0001-configure-enable-pic-for-AArch64.patch    |
> 23 ++++++++++++++++++++++ meta/recipes-multimedia/libav/libav_0.8.8.bb     
>  | 18 ----------------- meta/recipes-multimedia/libav/libav_0.8.9.bb      
> | 16 +++++++++++++++ 4 files changed, 39 insertions(+), 41 deletions(-)
>  delete mode 100644
> meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-enable-pic-for-AAr
> ch64.patch create mode 100644
> meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-enable-pic-for-AAr
> ch64.patch delete mode 100644 meta/recipes-multimedia/libav/libav_0.8.8.bb
>  create mode 100644 meta/recipes-multimedia/libav/libav_0.8.9.bb

Thanks, but a few things:

1) The shortlog says 0.8.8, but this is upgrading to 0.8.9

2) Please use -M so we can see the changes

3) These patches need to be sent to the OE-Core list instead

FWIW, I actually had this update queued already, but I hadn't sent it yet 
because I hadn't tested it beyond building it - did you test this at runtime?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

