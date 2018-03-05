Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00373E00E01; Mon,  5 Mar 2018 03:30:32 -0800 (PST)
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
X-Greylist: delayed 1040 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Mar 2018 03:30:31 PST
Received: from cpanel4.indieserve.net (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51FD8E006B4
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 03:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vkvomL9wKpR5w9zf0XtF9Z2HWOIBmK6bx1wGLxWLa2w=;
	b=j2bNMu6d5zmmW0NsSKiXMS9eD
	sd0KhCa4ZGRAK5M2aKYiBvMpeho5wtz+7GK/Mi8XpfgNTLSbn7TTcrTbHHs4b0a2Av5S0LVV81Gy7
	7R6hoTb10w/8kxxnwaqaoY3SgQAbvwuJVIoHQWF+flpU7x5YuUmNoldgih8vbm96AQUrKf//P0biv
	2W5ypEjzwp0ecEdDXe2v6XTiu9myck7+fX0ugnz9m1XWeckGVeAEqusCRlIkVuszEmRyGuWNmw8FL
	E0imH2d/54DMmalmPGaqw4frz+Fs+ibk8AlNP8wlB71cjCsGe5AmU1HYVLWMFZQBOxtqO1zL1cEs8
	UxIFtUQSg==;
Received: from 69-196-158-250.dsl.teksavvy.com ([69.196.158.250]:36142
	helo=android-a172fe96dd584b41) by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1eso35-0006ED-Lj; Mon, 05 Mar 2018 06:13:10 -0500
Date: Mon, 5 Mar 2018 06:12:54 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@android-a172fe96dd584b41
To: "EXTERNAL van Riel Rob (ENTER,
	BT-CO/ENG1.1)" <external.Rob.vanRiel@nl.bosch.com>
In-Reply-To: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
Message-ID: <alpine.LFD.2.21.1803050612060.10691@android-a172fe96dd584b41>
References: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake: git and patch problem
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
X-List-Received-Date: Mon, 05 Mar 2018 11:30:33 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 5 Mar 2018, EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1) wrote:

> I'm experiencing strange (at least to my eyes) behaviour from
> bitbake. My recipe specifies a git repository as the main SRC_URI,
> then, in a variant created using an append file adds a patch like
> this:
>
> SRC_URI_append_mystuff += "file://mystuff.patch"

  pretty sure you don't need both "_append" and "+=" in the same
assignment.

rday

