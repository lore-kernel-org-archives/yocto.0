Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CEC4E00C7D; Sun,  9 Dec 2018 23:13:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3EECE00C45
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2018 23:13:05 -0800 (PST)
Received: from [192.168.24.172] ([87.26.78.158])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id A7D31z00f3QvvBK017D4mg; Mon, 10 Dec 2018 08:13:04 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <22654ed2-aaac-3ced-ec7f-45275f558b66@faresoftware.it>
Date: Mon, 10 Dec 2018 08:13:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.3
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1544425984; bh=KuzoeDPF9DqF6SX3FN/oWAz63z76knJewLoD68jBMWQ=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=LDkenMPbCPJGeXYe9WGQ/itcVzJve77xEc7qIXkr/KzV1IdXLFKw2J4MrN/4CsT/A
	l54oIU+ARBHs3T3NT6YuYWNbuW+kKCBa+BWCBSyWtHEe+0pl1FozT7TmlwuTl5I0ma
	l05k6htspb2MYT40VeaNCXYwZmqij96MTvWtb2/bqA+WGZ3KNvxzzVDpk5LteXHu9H
	H4tFSIyFBq1nTjAr+OgAhPdVQWpk+cla9vxG512yopAyW6/Var00i52HQVKoHm+mXO
	RmMQCungBYE3/f7gYjDPCkXg5B2wXbYrCf0HnaQcC5+SVfK6TcxNGR8U8DiIhTNCQ8
	bAmqv2B2uL3PA==
Subject: nativesdk-packagegroup-sdk-host not found. Why?
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
X-List-Received-Date: Mon, 10 Dec 2018 07:13:07 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I try to rebuild meta-toolchain-qt5 and meta-toolchain, but bitbake 
tells me the it can found nativesdk-packagegroup-sdk-host and on 
populate_sdk task.

Why?


Which configuration variables drive the production of the recipe 
nativesdk-packagegroup-sdk-host.bb?


Thanks all


Mauro


