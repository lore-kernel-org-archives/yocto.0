Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89738E00CB0; Sun,  3 Feb 2019 06:10:30 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D66E00B92
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2019 06:10:27 -0800 (PST)
Received: from [192.168.24.108] ([79.2.65.198])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id YEAR1z00p4GeqKz01EAS16; Sun, 03 Feb 2019 15:10:26 +0100
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <a8046832-271b-71e1-8d8d-50af56a210a9@faresoftware.it>
Date: Sun, 3 Feb 2019 15:10:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1549203026; bh=YiQEVf+s/dIm4117dM2RtzlpYqSr9oNCnL3EZQGE5EI=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=c5Lhh5u9Nz9Hcv4BkQU8FA9att/5Ji/Enf6dQNCdLEQ1gKJrarn6K3t1aKUAkP45q
	dqm0eMtbVwpGnjcgmlXKgaKvFuhGQqblco+VmI1zU7pnFRFE99iv2UV51rkGFARQW2
	k9Gj14odJzHpy387rKHnr0TXDvIryMSU9wSunwpL4xXQyyCfkjiZVBgyR9J9+PH1FD
	Her6byTgemYq9379LzYDSojMVET1dwzMyDSCLwHOT+CtV3qBWnpWwDnvjnpsjfOyQm
	Yu7FKKvd+NRbPfr+WnJ9dqSupyfAPlLa1hR7lnyBrmSTO1p5irylOiJ5oPRXAX5aPZ
	amgWuD7jXypPA==
Subject: Set package DEB priority
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
X-List-Received-Date: Sun, 03 Feb 2019 14:10:30 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all

How can I set the priority of ad DEB by my recipes?

I need to mark all packages as required.

Now they are optional


Mauro


