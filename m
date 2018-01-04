Return-Path: <j_r.cash@yahoo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26838E00DA3; Wed,  3 Jan 2018 22:58:40 -0800 (PST)
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
	*      [77.238.178.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic303-46.consmr.mail.ir2.yahoo.com
	(sonic303-46.consmr.mail.ir2.yahoo.com [77.238.178.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA1DE00D9B
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 22:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s2048;
	t=1515049118; bh=O4qMRYdgIRUo7s+PHRhz8Y3x4iDfQQmMmgMcdi5v0AA=;
	h=To:From:Subject:Date:From:Subject;
	b=XmBtQ96k4B2lJK9mQO6YwEKbD43jjjisNEcRBniWg6RmPzoCz8ad7+WrQ5mvePyrnpNNYQCLybWfZWHoI1VDp63uRTZUtQQ3Um0SD20BYLHjAiHooet9tA9B1N2yjAdby0stmIcNU4Bk8Ero5idqhgUqjvvj66MqjOn/0dQBUimdPPt0bLV1WRMF+ikFwSaVQrqiCidV9GDfgD1A111IQHcjaNTR4MblIDy9Se6r8HG9UVon1T5wdRTimJTYsua2Cwjtykyu2jEPpX/Q1jhEduuS+oV/4CEZNwSRxmNTDQYGYiehw/wb3VednutsjUGFC9AdRUJbUtknBS5vVrmn6g==
X-YMail-OSG: 3jTjuHUVM1lhof9rKrHCY_eKI0hkttBsnlGPdFZ8JQuQQBrE4_a7g.e4QLyZ8I3
	wSJZLFYVlrvNOkJ7c5Q_fxQxwMu8sgFiCfqtP8_.ZeKIjeMuivPl8.uj0Dj39inariCXIV8sYEc0
	dql_4z4dIqkkP_rWsEP0u9eg1GPiTmAwOqASiecjZ2iApjsyQk8ukkZYM_9o4qNLdXOXyPeL8hx1
	VeeQ2dumxbxZPfoLDhA4RBLZhi2o__teI3cIyFYdv.8v_B22gH4gz_Q89v_dMtx5Y.Rofna7Ra0l
	xuZ5R6bJ109UAYJrUyZ7I8ntrZ1YUCDay8jJvw8On5b4Rq6aSSgnDNZvRTBpuCz5D7c5KbcpHHZy
	yxpsfDHSmMYDAJ05jo0uIbqfwUY2XsX1NsvTnJAfZ6zWoURMrH8rupHjk1jVIDvMsEI7ObXJOwg3
	hrGTJQzbqPFOGRIttum6eVicWU6FWWWv2BGSeQjHU7I61gZYFl8l__6sP9g5cm4b222RaOPxolwe
	gUY_I1DUlrY58ToJKrHo-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.ir2.yahoo.com with HTTP;
	Thu, 4 Jan 2018 06:58:38 +0000
Received: from smtp155.mail.ir2.yahoo.com (EHLO [172.16.11.152])
	([46.228.39.118])
	by smtp415.mail.ir2.yahoo.com (JAMES SMTP Server ) with ESMTPA ID
	3eabe65927be36a2f680150e48b18fd7 for <yocto@yoctoproject.org>;
	Thu, 04 Jan 2018 06:54:37 +0000 (UTC)
To: yocto@yoctoproject.org
From: Johnny R Cash <j_r.cash@yahoo.de>
Message-ID: <334bae3a-e222-fdc4-cfb4-f9b6933bdcfc@yahoo.de>
Date: Thu, 4 Jan 2018 07:54:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: warning message from "poco" package
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
X-List-Received-Date: Thu, 04 Jan 2018 06:58:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greeting all.

 From package "poco" i get the following warning message:

WARNING: poco-1.7.9-r0 do_package: poco-1.7.9 was registered as shlib 
provider for libCppUnit.so.1, changing it to poco-cppunit-1.7.9 because 
it was built later

Is this safe to ignore ?

Thanks for your support.



