Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9DFE00292
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 03:50:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Oct 2012 03:50:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,593,1344236400"; d="scan'208";a="205007766"
Received: from unknown (HELO helios.localnet) ([10.252.122.100])
	by azsmga001.ch.intel.com with ESMTP; 16 Oct 2012 03:50:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chin Huat Ang <chinhuat@gmail.com>
Date: Tue, 16 Oct 2012 11:50:01 +0100
Message-ID: <3280557.8J13GWUXdI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <CABzAcgiKqN-hQ56HoZny6=EeiDbnbFAb0CoqBb7R_eJ5EEdUKQ@mail.gmail.com>
References: <CABzAcgiKqN-hQ56HoZny6=EeiDbnbFAb0CoqBb7R_eJ5EEdUKQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Cloning yocto repos over https
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
X-List-Received-Date: Tue, 16 Oct 2012 10:50:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 11 May 2012 09:35:30 Chin Huat Ang wrote:
> Is there a way to clone yocto repositories (say, poky) over https?
> 
> I'm behind a firewall where git port is blocked, getting it opened is a
> bureaucracy nightmare.

Sorry, it's taken us a while to look into this but we have opened a bug to 
track it - you may wish to add yourself to the CC list:

http://bugzilla.yoctoproject.org/show_bug.cgi?id=3263

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

