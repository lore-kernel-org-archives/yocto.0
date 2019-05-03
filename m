Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FADAE00BE2; Fri,  3 May 2019 09:53:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from somersetfoodbank.org (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E42AE00AD5
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 09:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=644UoAKfUFrubFWdpL1mTaPzuqVcS4D3NFCDInP8pS8=;
	b=c+4LHwRTSFjmrQqyzGqugZwfH
	58Qi5tcQrMXDD5PwY8cgRxG/BPhU+CnmMmIpVR0t0enE7okJ79IEgCALr1uwtcroCfS/tpAiw5FrS
	0XESEn67XQf/GKiG1KxVCSXESVESLD6x0UuwD0C6bJNY2edu+i3isQLixZNQyX6jfegxUS17HVaH0
	k80CBEmz9NTiXxXvTcC0m6AVlaBGaACRxBhueDOjcn2KX4FkhqieQ7uGSw81RRzolwBdsoSh9EL7q
	p88FeN2Fgk8kGkfBUu5fiy4f09o/4UbX0hId+UWNNMbG1VijlRWw5HitqMPSQxbcNL2/tpACErHBX
	ocN9VUq/A==;
Received: from [72.142.126.219] (port=40794 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMbQp-0006DT-CU; Fri, 03 May 2019 12:53:08 -0400
Date: Fri, 3 May 2019 12:53:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
In-Reply-To: <BN6PR06MB3138577A7F834F2A120297A286350@BN6PR06MB3138.namprd06.prod.outlook.com>
Message-ID: <alpine.LFD.2.21.1905031250300.4226@localhost.localdomain>
References: <BN6PR06MB3138577A7F834F2A120297A286350@BN6PR06MB3138.namprd06.prod.outlook.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Defining group of machines
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
X-List-Received-Date: Fri, 03 May 2019 16:53:10 -0000
Content-Type: multipart/mixed; boundary="8323328-1148760532-1556902388=:4226"

--8323328-1148760532-1556902388=:4226
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 3 May 2019, Westermann, Oliver wrote:

> We’ve a product group with different devices, each having their
> machine-conf, eg
>
> Device_a
>
> Device_a_mini
>
> Device_b
>
> Device_b_mini <- Upcoming
>
> Device_c <- Upcoming
>
> Since device_a and device_a_mini share a lot of code, for them we
> use one of the machine overrides, describing the processor family,
> so I use RDEPENDS_${PN}_append_device_a if I just need it for
> device_a and RDEPENDS_${PN}_append_am57x for device_a and
> device_a_mini.
>
> Now I’m in the situation that device_c will use the same CPU as
> device b, so I need something like a “group” of devices for family
> b.
>
> How can I define a MACHINE_GROUP_device_b_group = “device_b
> device_b_mini” so I can do
>
> RDEPENDS_${PN}_append_device_b_group or
> do_install_append_device_b_group()?

  i know i did this once upon a time using the MACHINEOVERRIDES
variable to "insert" a machine family into the sequence of machine
definitions. as long as there is (i believe) a strictly hierarchical
grouping of machines you want to define, i'm pretty sure
MACHINEOVERRIDES is what you want.

  let me see if i can find where i did that once.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1148760532-1556902388=:4226--
