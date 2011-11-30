Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82E2E00307
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 02:55:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2011 02:55:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,596,1315206000"; d="scan'208";a="90532046"
Received: from unknown (HELO helios.localnet) ([10.252.121.201])
	by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2011 02:55:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
Date: Wed, 30 Nov 2011 10:55:48 +0000
Message-ID: <1660455.ndYTU6ffEm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096B8550@POCITMSEXMB02.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096B7D3B@POCITMSEXMB02.LntUniverse.com>
	<2349363.2bJmlWx9te@helios>
	<9BACABF0C6B14A4D8C33B42A795119BE096B8550@POCITMSEXMB02.LntUniverse.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: related to telnetd
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
X-List-Received-Date: Wed, 30 Nov 2011 10:55:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 30 November 2011 09:01:57 Navani Kamal Srivastava wrote:
> I give a try to both dropbear and busybox (enabling telnetd) . Nothing
> worked for me. I got telnetd utility also but it didn't worked. When I try
> to take session on Putty, it restrict me with error message "Connection
> Refused".

I would suggest running through the following troubleshooting steps:

1) Is dropbear actually installed?
2) Is it running?
3) Is it listening? (netstat -tl)

I assume when you attempted to connect with dropbear that you selected the ssh 
protocol in PuTTY?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

