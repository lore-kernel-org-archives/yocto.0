Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF280E003F8
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 08:13:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Aug 2013 08:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,827,1367996400"; d="scan'208";a="382121577"
Received: from unknown (HELO helios.localnet) ([10.252.122.203])
	by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2013 08:13:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 06 Aug 2013 16:13:42 +0100
Message-ID: <1573170.9CYLaRJux4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <520108A5.7090806@mlbassoc.com>
References: <520108A5.7090806@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Sending mail from embedded device
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
X-List-Received-Date: Tue, 06 Aug 2013 15:13:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 06 August 2013 08:31:01 Gary Thomas wrote:
> My embedded device needs to send out email.
> 
> I've looked around a bit and I don't see any recipes for a
> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
> 
> Have I missed something?  Does anyone have any suggestions?
> 
> Surely my application isn't the first that wants to send email...

Is msmtp of any use? It's not a full MTA, but it should be basically useful 
for sending and is in the core.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

