Return-Path: <j_r.cash@yahoo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65661E00DB5; Wed,  3 Jan 2018 06:05:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (j_r.cash[at]yahoo.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [77.238.176.125 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic301-48.consmr.mail.ir2.yahoo.com
	(sonic301-48.consmr.mail.ir2.yahoo.com [77.238.176.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAFF5E00DA7
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 06:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s2048;
	t=1514988313; bh=uXZqyibsgj9oSZPbnOWaRieopH4bzEyO/L8HRtHlPak=;
	h=To:From:Subject:Date:From:Subject;
	b=TfkD7EnjQbSTh4zuMr4kMMDxoB+NUH3gdELVaU5bV70D47z5uhNPTvtCsPsV84/y5c8ec4ZX/XVZ61vbR4lUqkjLt8XK6wQKL4q4KhbJ28stUPOisf4rWc7Zd/mSe/+l8XtKFwp/RbJA+RzgwUO3fBvKITwRdAv3oMth4TDVHgXQ44XfftZNJwfb0n+X9QVFQILij3LJfuLc2OfGSPOD8MYu0WXhbkc1na/L2/sJeeeO/8Q7kQvhSQXvI2e5I4jKxt0XwoySkgtKLFKjPnwS9K5YfM2r8Od/Wa6VIMJ2uGYh0JeQ1urVusFtHYmF0Ku50H2yiuSBX3SDiFdg0r64Og==
X-YMail-OSG: B7TNY2IVM1kXLartW.787E0M.80QIDsu_72PGrTg2G8dMU7XGlhDurnjb9vSiSc
	g_KPq0eQq_h7MoqV6pVYio4NYLBHJtQ2wDmOVlIK010h5HLMbSVpoAlFlPtYQH7sof9uDF5Xzzik
	tESBrHjynQegB.YYF7BjaOBy53zqFAZHCb2PAm2.wpoboGBw3IdN27LCd_19O8VWvmFom3qd7Gt4
	7v_ZulViDsPo.UyoRG1zgJoCwbQg_fCB9k3l32M90reL1TQaSRnNtbGR7V8qa1Eo_UKUHCTSF28q
	hAGesHA4.qp4.WzczALglYu9JupbME7oQzg2eRYhugjLuFp_MXwkMbDf4kohNXWmy.xBNrgAuK5E
	jzvI9KbQShRfeHAIuZLGTqh4BXiHA0G68uNbr6HWiIc6i1lIad_p.em0gcYi.FZarGe6YBrPzYHr
	dQ_9MlTyTTzc6Nutk4_A0cFUl8hA9xR3SkIRDB8viWs5DEi5cDDNQRRmZIkK7UxaZRy_5mW4Fwoz
	upwfDrAEuN_9Af5TBOx8-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.ir2.yahoo.com with HTTP;
	Wed, 3 Jan 2018 14:05:13 +0000
Received: from smtp174.mail.ir2.yahoo.com (EHLO [172.16.11.152])
	([46.228.39.41])
	by smtp410.mail.ir2.yahoo.com (JAMES SMTP Server ) with ESMTPA ID
	f732405a9afd3bd56b309c803c7c9bcf for <yocto@yoctoproject.org>;
	Wed, 03 Jan 2018 14:01:13 +0000 (UTC)
To: yocto@yoctoproject.org
From: Johnny R Cash <j_r.cash@yahoo.de>
Message-ID: <6f0bb848-492e-89b4-1b1c-98c3d8d33813@yahoo.de>
Date: Wed, 3 Jan 2018 14:54:36 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: host files linked , absolute path CMakeLists.txt
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
X-List-Received-Date: Wed, 03 Jan 2018 14:05:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greetings.

I'm new to yocto and cross compiling, so i may be wrong interpreting my 
situation to begin with...

Post compile i get the message:

ERROR: pylongps-0.1.0-r0 do_package_qa: QA Issue: package pylongps 
contains bad RPATH /usr/lib/x86_64-linux-gnu

It seems to me the reason is an entry in CMakeLists.txt specifying an 
absolute path:

link_directories(/usr/lib/x86_64-linux-gnu/ lib/ ./messages)

So i assume i should patch this line to account for yocto / 
crosscompiling. I have no idea though how or where i should look for 
that answer.

Thanks for your support.



