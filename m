Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5249AE00AD8; Sun,  3 Apr 2016 13:55:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26FE6E00A9C
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 13:54:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 03 Apr 2016 13:54:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,438,1455004800"; d="scan'208";a="947247628"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.142.238])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2016 13:54:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
Date: Mon, 04 Apr 2016 08:54:48 +1200
Message-ID: <3011913.B3k47xJghH@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.6-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
References: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Sun, 03 Apr 2016 20:55:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rikard,

On Fri, 01 Apr 2016 12:59:08 Olsson Rikard wrote:
> Hello Yocto team,
> 
> We are receiving bblayer.conf and local.conf from external supplier which
> already have layers/configuration added. Now we want to add our own
> layers/configuration by appending to these files this to avoid manual merge
> work each time a delivery from external supplier is made.
> 
> Question:
> How do I append layers/configuration to bblayer.conf and local.conf?

The best answer I can give is these files aren't really meant to be 
distributed. If you have too much specific stuff in these files (particularly 
local.conf) then I would say it's possible your supplier has put things in the 
wrong place.

The way it ought to work is, you add the needed layers to your bblayers.conf, 
then go to your local.conf and set DISTRO and MACHINE and anything you need 
for *local* configuration (e.g. local paths) and that's pretty much it. If you 
have to include a whole bunch of extra lines in local.conf, those lines really 
should be elsewhere (e.g. custom distro config, or the machine .conf file if 
they are specific to the machine.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

