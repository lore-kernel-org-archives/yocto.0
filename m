Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96ABDE00838; Thu, 15 Mar 2018 05:57:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from cpanel4.indieserve.net (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA6A9E005A9
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 05:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=N3ANFhlz8VU6J4ldDPUEi83+RBdmmJPSE89qiNuc7iM=;
	b=hab7uHuUC8FLQ/m0ml5fWZVVs
	E0vgxPEJh+Wg02lxnAo45+9AqBuNefcbo6hRdKKwD4RTvDNT6VhhuD9pRLhD8kKKPCa50uAhkya6J
	LimU7JNImPSPN5Af9FdPXuBZxUAFpJBCTCwIJmZG3QF8NST0ucVZUZFjTaqgRRJM+0isCeSCb2RUt
	P0WGjoLGO1kQyA2pMtFqGMzDRuZuspgQUR/YfpoO8Nl20Yv4TPdWDZnJiT+VqyCA2KcTihy/SnbVY
	3bIUALRwkwhBIfs0gJ7k4Gr//rpgfZf3ApOf5ftN37vkTkGmOSf5Yzy1Sf09QIdSkmJPK30bxqsPl
	ViuBPNLJQ==;
Received: from cpec03f0ed08c7f-cm68b6fcf980b0.cpe.net.cable.rogers.com
	([174.118.92.171]:37456 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ewSRJ-00017K-CT; Thu, 15 Mar 2018 08:57:02 -0400
Date: Thu, 15 Mar 2018 08:56:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Peter Balazovic <balazovic.peter@gmail.com>
In-Reply-To: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1803150856190.32449@localhost.localdomain>
References: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.5
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
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenCV with python3
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
X-List-Received-Date: Thu, 15 Mar 2018 12:57:04 -0000
Content-Type: multipart/mixed; boundary="8323328-512042596-1521118621=:32449"

--8323328-512042596-1521118621=:32449
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 15 Mar 2018, Peter Balazovic wrote:

> Hello all,
> I have python module of OpenCV for python 2.7 on my Yocto image adding via local.conf
>
> IMAGE_INSTALL_append += “ python-opencv”

  i know i've harped on this before, but can people please stop
combining the constructs "_append" and "+=" in the same expression?

rday

--8323328-512042596-1521118621=:32449--
