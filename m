Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C859E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:23:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2012 09:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128254215"
Received: from unknown (HELO helios.localnet) ([10.252.120.14])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2012 09:23:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 03 Apr 2012 17:23:08 +0100
Message-ID: <1656958.s1geGlGMhQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F7B15D2.6030208@linux.intel.com>
References: <EEBED312D613344FA54373CD9A08D4BD05AC7239@FMSMSX103.amr.corp.intel.com>
	<4F7B15D2.6030208@linux.intel.com>
MIME-Version: 1.0
Cc: "Shih, Chiu-Pi" <chiu-pi.shih@intel.com>
Subject: Re: Failure expanding variable OE_FEATURES - Poky-1.2_M2.final
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
X-List-Received-Date: Tue, 03 Apr 2012 16:23:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 April 2012 08:22:58 Saul Wold wrote:
> On 03/16/2012 11:57 AM, Shih, Chiu-Pi wrote:
> > Pseudo is not present but is required, building this first before the
> > main build (guess this does not really matter? I did add user in
> > /etc/sudoers though)
> 
> Pseudo is a tool that we use that does similar workas sudo

It's more similar to fakeroot than sudo. 

pseudo and fakeroot don't actually perform operations as root, they just make 
programs running under them think that they are (for purposes of e.g. getting 
file ownership correct within packages and images.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

