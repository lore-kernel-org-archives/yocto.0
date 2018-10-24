Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BEF3E00AD8; Wed, 24 Oct 2018 11:06:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C44E00994
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 11:06:47 -0700 (PDT)
Received: from [192.168.24.172] ([87.26.78.158])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id rW6l1y00G3QvvBK01W6lAx; Wed, 24 Oct 2018 20:06:45 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <f416d79a-a303-0b48-746f-dcd6a5c5a4bf@faresoftware.it>
Date: Wed, 24 Oct 2018 20:06:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1540404405; bh=56GcVdnL+cJpbkQdlgXOQsAjUIxWuK34HgMotgOgo5Y=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=VOXCB9ddatuinlhZgbzez8hrOwBaMBJVy/pCbC+snD1Id0kMCP9blxoUYWuQDnLGk
	dHPtOO1TYj6T+u1RI4FVA9f8FCVNXONJlVNjNPu+5s5AVrmRkVdty53zyvt1nEZeze
	VXZkWhmwMpbfKd9mPcz9TZ2mqwDQm3xZKiwhm6CH7JtjfQpaasJ/BcN3whIAhx7yKJ
	rihHvw4cQ8F8naBu0WoFzu4XuAbrrqprcLp4dr3LAVIdAn12qCgouYTtWeP3GZpT0g
	X9kUWifjZMOfMdyaMO3hKWTMqPntznBXL1cCozB2HgqVVyR797KDJjEQ8CVOTil61r
	h13FYvM2fhg6g==
Subject: Layers for AMD Geode LX 800
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
X-List-Received-Date: Wed, 24 Oct 2018 18:06:50 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

Do you know if there is some layers ready for the board in subject?

It is an IBASE IB550F.


Thanks all


Mauro



