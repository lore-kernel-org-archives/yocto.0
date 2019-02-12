Return-Path: <scott.murray@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A129BE00CCE; Mon, 11 Feb 2019 20:10:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3600FE00AB0
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 20:10:42 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id r11so3989990itc.2
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 20:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:user-agent:mime-version;
	bh=paZC1Z2E7i+AZ1cV7jeyNaPbs08SsPuX6J6sRenlz94=;
	b=ND8o2Go1PFUNITnbVQlC1GDYgYW7EBV40NgL26ogNuOervannHrLgNmvg6eo3hjAJ0
	pA9aCu4oBAAAiStMvjhkeyWDNxShpBWsrrfXUOnJc5A2zAO8cjo1WKrrzvIdxD7EzJXK
	93jN3F8ku0h0fvP+K0ZjDsc1iVb238iXO7B6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
	:mime-version;
	bh=paZC1Z2E7i+AZ1cV7jeyNaPbs08SsPuX6J6sRenlz94=;
	b=X2/egCXFRautIZMIXpZoKZ79jGhGTxPL2ga23ilLmBqOP/5lwJFQ3nMnAiAcDd/IU8
	AFpDLHW8/CCKa3+rzT6ZZz2ND2jTkJ0julLvBrBMWVN2UDPJLFa949TviWGaHcafk1Dy
	bVnsicYNRn3hqMm4cMYTBvVNAOpF2GrlermZicwDlL04Got3xYc8TgpZ5zyAn/TZH91u
	hdMcacDXvp3uCXuJKqkkfTsDdtw7WGGj38mHjo0KTdLiIkpArWFQEjGu3aILxCjPBQAG
	EFIg3DqkLjx83FCqjKTPkdj/hqSu+o2h+qEBtNfm+19t6Ffb49Rm4tWh56aNINPjzFie
	zEjg==
X-Gm-Message-State: AHQUAuYXNqXHjuuk9UnKuxLh9luhzMafz7oiWg1T59PDOA3QJSJSdgUQ
	Ua6ntU0YiNBNFhwNsKqSa7GallBBQ4I=
X-Google-Smtp-Source: AHgI3IZ1GrbRMHD7vjTXQtsft7bavmD6AjVz2LNjzrgPGdcpbV1OIiHbhGYXFHsHiY9hvHGNf11dZQ==
X-Received: by 2002:a02:8244:: with SMTP id q4mr873137jag.43.1549944642230;
	Mon, 11 Feb 2019 20:10:42 -0800 (PST)
Received: from godzilla (69-165-244-87.cable.teksavvy.com. [69.165.244.87])
	by smtp.gmail.com with ESMTPSA id 134sm710469itl.25.2019.02.11.20.10.41
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 11 Feb 2019 20:10:41 -0800 (PST)
Date: Mon, 11 Feb 2019 23:10:04 -0500 (EST)
From: Scott Murray <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: yocto@yoctoproject.org
Message-ID: <alpine.LFD.2.21.1902112301020.22458@godzilla.spiteful.org>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Subject: gitsm fetcher fixes in thud?
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
X-List-Received-Date: Tue, 12 Feb 2019 04:10:43 -0000
Content-Type: text/plain; charset=US-ASCII

Hi,

I'm working on upgrading Automotive Grade Linux (AGL) from rocko to thud,
and there's substantial git submodule breakage with the fetcher as it
stands in thud ATM.  I've been doing tests with the current gitsm.py from
master with Mark's recent fixes, and it works fine.  I'm wondering what
the feasibility of getting those fixes into thud is?  I am willing to do
the cherry-picking and testing if someone can point me at the mechanism
for it (poky-contrib?).

Thanks,

Scott



