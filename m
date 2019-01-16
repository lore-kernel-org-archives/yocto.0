Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B9C3E00C71; Wed, 16 Jan 2019 07:30:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.56 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0756.aruba.it (smtpcmd0756.aruba.it [62.149.156.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2409E00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 07:30:33 -0800 (PST)
Received: from [192.168.24.108] ([79.2.65.198])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id R3WX1z00k4GeqKz013WXMc; Wed, 16 Jan 2019 16:30:32 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <1977383e-cd49-c7a4-0c4f-4a73cb2f701e@faresoftware.it>
Date: Wed, 16 Jan 2019 16:30:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1547652632; bh=qZUKqHo+1me6XUWB6gdZafG+iQXNAUzW9vBfUGqPMT4=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=lzoK2VHNH77TwzdzAVL+q/N78Df7sLSl0q15wwPuf3UiiyCJR85Jp2cFt8rsMsAWv
	CAmQUMY9jwm2Bu7XYQbcndq2kFUnWjne+kkArjAea7opVYsJNcuuOcTStjNusJ6lVh
	WrCR7mTm6ZVgCz5vJcG/mGFG8aTDu8zoXGFtE6aI9uhWMbWDjS2feHF8gDNDTH2BWE
	lZkSI87UZj2dfbqPRXuIGhz8XUfVTkiijdBftBbZbIQ02HohGLCbyR8Xw1n/9RFQuk
	QrHzmv+gxRub5EEnc9vQ0hMiAG035/YxUZR2yssd7FU0ImJm2DQS6knK6r4yNywlsw
	6tI3XebxDUG+g==
Subject: How to share buildhistory?
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
X-List-Received-Date: Wed, 16 Jan 2019 15:30:35 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm working with imx6dlsabresd and krogoth with 2 pc (PC1, PC2) which
commit the sources in  the same git repository

I need to share buildhistory between PC1 and PC2.

That is:

- I build app_1.0.bb on PC1 and I get app_1.0-r0.3_armhf.deb

- I commit/push from PC1 to the git repos.

- In PC2 I pull from git repos

- I bitbake app_1.0.bb and I would get app_1.0-r0.4_armhf.deb


Is it possible to do that?


Often I work with PC1 placed in my office, sometimes I need to keep on
the development with PC2, placed in my customer's office.

But I need to continue on PC2 where I stopped with PC1


Best regards,

 MZ

