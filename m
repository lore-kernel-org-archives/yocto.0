Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D996E0030A
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 09:16:15 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Nov 2011 09:16:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,585,1315206000"; d="scan'208";a="96126322"
Received: from unknown (HELO helios.localnet) ([10.252.121.230])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2011 09:16:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
Date: Mon, 28 Nov 2011 17:16:11 +0000
Message-ID: <2349363.2bJmlWx9te@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096B7D3B@POCITMSEXMB02.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096B7D3B@POCITMSEXMB02.LntUniverse.com>
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
X-List-Received-Date: Mon, 28 Nov 2011 17:16:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 28 November 2011 09:44:42 Navani Kamal Srivastava wrote:
> I am looking for "telnetd" utility so that I can take telnet session of my
> board. Can you please tell me in order to include this utility in my rootfs
> which packages I need to include in my *.bb file.

So the first question (which you might be expecting) is, is there a good reason 
why you would not use ssh in preference to telnet?

You could enable CONFIG_TELNETD in busybox if you really need telnetd, but for 
most purposes dropbear providing ssh should be enough for remote shell access.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

