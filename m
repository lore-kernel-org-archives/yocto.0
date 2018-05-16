Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECD1FE009CF; Wed, 16 May 2018 01:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E478E00929
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 01:46:22 -0700 (PDT)
Received: from [10.0.3.130] ([78.6.3.122])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id mwmL1x00l2dwwGE01wmLVc; Wed, 16 May 2018 10:46:21 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <706c8cbc-b5ac-e456-5a30-199aeb596766@faresoftware.it>
Date: Wed, 16 May 2018 10:46:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526460381; bh=WQOBjc2QDd/I5HB5H9aVcQiPP/zlUsHmMdgzekClzv0=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=nUzhjO8mZBYgXCeXjpNCQDnrz7477ckn0OoBAMY5dApIYcfcJioDTgSq+8/ODkyj5
	1zIV1RieC1yt6Fm88/IyP96q/6mma83VhsFqnn78jp0nUhnRBRDu2A+nAm7BpeBAc6
	gnUeL7iqMGuVIgYadjbjCwofZs9/5fVniMkw4uUkuCnM6qW8UWh4e7jdaX5k94mptp
	CjHmS0YdwLFVjH4O+OO/nvRkKZ8pNJUB+WWjtk5/QlTYNBUZwAKDwqP5erIJZG477Y
	K5G5QowS3oF49TH01XF39Qfo8aNeWjTX/kSTaNKE9MmMaOrAwQk0xJPbZtDztDsVrt
	QLJyW/k+aklrg==
Subject: Set root password from a recipe
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
X-List-Received-Date: Wed, 16 May 2018 08:46:25 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I need to set a well know password for root user.

I follow the istruction to do this with


inherit extra_users

EXTRA_USERS_PARAMS = " \

     usermod -P secret root; \

"


But it does not work.

I think the problem i for usermod

I sse the man page and the -p parameter needs the output of crypt(3) 
function.

While -P parameter (p-uppercase) is not a valid parameter for usermod


Any idea?


Thanks

    Mauro


