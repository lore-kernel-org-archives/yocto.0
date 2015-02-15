Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94288E0048B; Sun, 15 Feb 2015 05:43:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 326 seconds by postgrey-1.32 at yocto-www;
	Sun, 15 Feb 2015 05:43:12 PST
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45CE9E0043F
	for <yocto@yoctoproject.org>; Sun, 15 Feb 2015 05:43:12 -0800 (PST)
Received: from [192.168.0.40] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 28861600059F
	for <yocto@yoctoproject.org>; Sun, 15 Feb 2015 15:37:45 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1424007465; bh=ftu+KZ++WFPQyPB0p+P9DctwXEs0s4G8iGfBIWBpWVo=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:Content-Type:
	Content-Transfer-Encoding;
	b=IgVnhHe8Na7NQ29d7qEXZMF3+P01L2zymhhL2sY4SWHzHqarZftcDjl+1UJzuhSJN
	4n8W0EVitKnrhdz/jZC0/wGE8Pa0pPwOwsAhA9T5xEdsnAeiZhucI4jZ3hzyRTpM3j
	290Yx88g8y49uHZQruwDipu5RdemkRi2xF9//BbE=
Message-ID: <54E0A128.3040307@mail.bg>
Date: Sun, 15 Feb 2015 15:37:44 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Yocto patch tracking
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
X-List-Received-Date: Sun, 15 Feb 2015 13:43:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi guys,

Is there a web-based staging area where Yocto project holds all the
submitted and pending patches until they're merged, something like
Patchwork? Or is it up to each Yocto layer maintainer to define his own
work-flow?

Kind regards,
Nikolay

