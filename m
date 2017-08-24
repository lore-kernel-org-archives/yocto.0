Return-Path: <costamagnagianfranco@yahoo.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24CE0E0090A; Thu, 24 Aug 2017 03:13:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (costamagnagianfranco[at]yahoo.it)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.82.96.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm18-vm5.bullet.mail.ir2.yahoo.com
	(nm18-vm5.bullet.mail.ir2.yahoo.com [212.82.96.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73AC7E00349
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 03:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.it; s=s2048;
	t=1503569610; bh=2Nkg/LhDLcvvapZZz7SoTLuPNze2u5op9Wh2qZiWONo=;
	h=To:References:Subject:From:Date:In-Reply-To:From:Subject;
	b=ZJ5FpCRPLD/dqd5TKsE/CB3I+ZIDJBFR7wlP4cH8S/89wZhpECEt6BJcebS+65220EkzG1UO7w/LL/zqeSRNWYIkIQP7W+VlF/9CvS7WV7aRsqHcuxf8qhpAOoJrM7YLHoVZp29OdkdcpJhCEd/PPUHJacOoFSG87iyaCNzK77NU4zSRFqCp+P63NwiPfFkODwDfmuRyY1Kg5rxdZZ/0AnkkDZDujQ2PoAm+44Ec0NIW+M6b2SML3Z7rsXZoYUDjTL+TOzRMebGfsQHVy109I7EMJUXTceAQs2bac7pdkh/fL/W/29yAXTv5yigZhTu764QjIUXjRAL0NvOI3pJixg==
Received: from [212.82.98.63] by nm18.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Aug 2017 10:13:30 -0000
Received: from [46.228.39.98] by tm16.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Aug 2017 10:13:30 -0000
Received: from [127.0.0.1] by smtp135.mail.ir2.yahoo.com with NNFMP;
	24 Aug 2017 10:13:30 -0000
X-Yahoo-Newman-Id: 140590.91647.bm@smtp135.mail.ir2.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: ZPCmkUMVM1meZJXyKQDa7rivZEWLVhDD0ZUgjEY_77crZin
	J64Yuv79V_x74W.fZLNSUWA0bRGPRk1XVw2fD1We9V0mv.C_MASizdINkeEH
	6pj5Xea49jjKC15MUcwGzBxXfEicTNTl3cc.fVp3VPyO9mCsBxOLpqs4XJuQ
	a8ljp3P6ftdgHolkrKwfwxuHz0pLIOb0h7A9OnOXPNo8DLA3kcBApIA2O2a6
	p66CSx7C.DKBVYCLtpcm5tatVaLYhVa0x1SZWxQFRBP9pLgybdX_nI2qLsSd
	u5fXDMUVJX1G6Bx_w1SWU5FWcsm9A.a7eNPS6uAkDJW87dfbgQu7BqKOW6Af
	lUDV5vRqQ4Yt1.FlwTcXKZ7iSfo.qQrGIkuPanZtW1D19c4j6SvwA5cJ9tcu
	kDGWkh0Fkl1mp3sFkb9ynrUmicVNSn3.wtLerM4M08gFkqppkCxHQ7bnsQ43
	UuguCxWoQs5K7N5uc9p5wv2Sdrx_z1tUQBdfpIeux19cBoiFQ9Z9Ld8M_4gc
	54nseVifSlyXpx_1TM90ybwk9zSo-
X-Yahoo-SMTP: t31zqrOswBAbEww2oEk_YrQwXwiWGJ5qCQ6vhBCF7lqk
To: yocto@yoctoproject.org, torstensievers@googlemail.com
References: <CAPZw6vNdWvidmxEhYDU+i3sAYaYZJ=e_nudT3y-f=upcr-SVzQ@mail.gmail.com>
From: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Message-ID: <927dd21a-cd5a-b8de-1386-1938b34b200d@yahoo.it>
Date: Thu, 24 Aug 2017 12:13:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAPZw6vNdWvidmxEhYDU+i3sAYaYZJ=e_nudT3y-f=upcr-SVzQ@mail.gmail.com>
Subject: Re: Runtime Dependencies dependent on lowercase recipe name?
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
X-List-Received-Date: Thu, 24 Aug 2017 10:13:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hello,

>Now the strange thing happens: copy the helloworld_0.1.bb to
>Helloworld_0.1.bb
>So the only difference is the lowercase vs capital "H" in the recipe name.

welcome to the club!

https://bugzilla.yoctoproject.org/show_bug.cgi?id=11592

Hopefully we will have a big red warning/error when we use capital letters again :)

G.

