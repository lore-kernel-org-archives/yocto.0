Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E043DE00C56; Fri, 16 Mar 2018 09:54:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70229E00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KJO6ymzRIeg7ueJrEjKnzamU+lsxCW8X5p0QFRnZ7kI=;
	b=ZRi5QnKBLEsG3ybrPvjnbaMF3
	ZiwAFKDfLxkzpJZU5YtOk+Ouxnrcs0Ojhu5Sorm9wOOk+L6ITHuWlVleK9ecDSVuxzgETqL3cC9SX
	XFb3O46LagmyBVmrxjBA4UJ+M7Q68v5/Ls/82OImG4MmdiAbiDSFri2mFpAYaBC3+syec9h74yQqv
	zTFTDqUMlo2dtff4fVKGlxa1OVyggU140wu9nDAjsInoiKBw+tiRj+YXhy73me+D1xuxilRO7LQxA
	6YUB1F3pmmp6YwnhO65YMvGbB1lkEZy8TkQvTSrNnvtqMYzLOzVNB9Ik16BmB8AX6We0g1yVnQBX7
	i2/Kl1Okg==;
Received: from cpec03f0ed08c7f-cm68b6fcf980b0.cpe.net.cable.rogers.com
	([174.118.92.171]:36720 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ewscm-0005KM-7O; Fri, 16 Mar 2018 12:54:37 -0400
Date: Fri, 16 Mar 2018 12:54:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Giordon Stark <kratsg@gmail.com>
In-Reply-To: <CAFzUWGn2aNXjOkMqmEYg06EGojJ1sLtB67SVSQCtVudx3wyQnw@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1803161253280.6141@localhost.localdomain>
References: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
	<CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
	<alpine.LFD.2.21.1803161247560.5800@localhost.localdomain>
	<CAFzUWGn2aNXjOkMqmEYg06EGojJ1sLtB67SVSQCtVudx3wyQnw@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
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
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Can SRC_URI look in the same place for two different machines?
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
X-List-Received-Date: Fri, 16 Mar 2018 16:54:40 -0000
Content-Type: text/plain; charset=US-ASCII

On Fri, 16 Mar 2018, Giordon Stark wrote:

> Right, so the problem for me is that there seems to be two ways to
> do this: MACHINEOVERRIDES .= ":machine3" (for 3a, 3b)
>
> or
>
> FILESEXTRAPATHS_append_machine3a = "${THISDIR}/files/machine3/"
> FILESEXTRAPATHS_append_machine3b = "${THISDIR}/files/machine3/"
>
> But it's not clear to me which is better.... or fits with the
> philosophy of yocto/bitbake.

  i used something like this once upon a time, can't remember where i
wrote it up, but i asked about it in some detail back here:

https://lists.yoctoproject.org/pipermail/yocto/2016-March/028923.html

perhaps someone can verify if i made any sense back then.

rday

