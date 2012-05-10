Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43897E0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 13:44:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2012 13:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="98689751"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by AZSMGA002.ch.intel.com with ESMTP; 10 May 2012 13:44:21 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
References: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
Date: Thu, 10 May 2012 15:44:19 -0500
Message-ID: <1336682659.27808.9.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using meta-intel with Denzil
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
X-List-Received-Date: Thu, 10 May 2012 20:44:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-05-10 at 21:38 +0100, Chris Tapp wrote:
> I just tried to build 'crownbay' under Denzil but I got an error saying that xserver-xf86-dri-lite.inc could not be found.
> 
> It looks as if new meta is available in the git repository. Is there a plan for 7.0.0 downloads to be available from the downloads page?
> 

Yes, the plan these days is to release the meta-intel BSPs a few weeks
or so following the poky release.  We expect to have denzil BSP
downloads available from the downloads directory in a couple weeks...

Tom

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



