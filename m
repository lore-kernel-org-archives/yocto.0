Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D428DE00C36; Sat, 19 May 2018 15:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08485E00A6D
	for <yocto@yoctoproject.org>; Sat, 19 May 2018 15:55:23 -0700 (PDT)
Received: from [192.168.24.148] ([87.26.78.158])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id oNvM1x00L3QvvBK01NvMDj; Sun, 20 May 2018 00:55:22 +0200
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <7fba3815-cd0f-7864-385d-f7c536354e05@faresoftware.it>
Date: Sun, 20 May 2018 00:55:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526770522; bh=NYpYkpGp7SjkBvyN8/BQqHzh6bZkakAPjLg1yQYkNb0=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=AkfpsIsBTdVzAbA2qeKz6280OV6QKDflO9eFeW4WdAm7Gs2A9BtXNnngNuYbX5YHd
	dg3Cf7cPJbxQzF16SKtS6buEOS4hmJmKrsSZBmaj2QV1CErSLg1JKM9OUm37wr3eay
	EbMlzZ3nJsVG5X6b36R+v9tYmG1q5/Y4jViz7v4J8ozN89GYpTjmkLcuRHr/4eHcJT
	7iomRfNzsStEVTFEYy5BUSV7v0JU1+3LABJ0RM0wGKE9pEEl79xsn+8icNp1kSToDs
	s3PC8YHLteBeEFfTe8yPHM7mzWX7NbbozoeBmjbUbXINqAHGRL3rmPvQvZ1/n3HhBs
	p9BBD2lII3RQw==
Subject: connman and dhcp
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
X-List-Received-Date: Sat, 19 May 2018 22:55:26 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm working with connmanctl, a dongle wifi EDIMAX EW-7881UN with 
imx6dlsabresd, yocto Krogoth.


By connmanctl I can authenticate the pc, and set the connection for dhcp 
ip assignment.

The device is recognize as wlan0.


connmanctl>  connect wifi_XXXXXX

OK


After I try to switch to manual ip, and it works . The new setup is 
active after some second.

connmanctl> config wifi_XXXXXX --ipv4 manual ip netmask gw


Then I try to return with dhcp assignment

connmanctl> config wifi_XXXXXX --ipv4 dhcp.


After this sequence when I return to dhcp option, The ip isn't renewed 
anymore

I stay with the ip 169.254.86.142


It seems that when I come back to dhcp setup, the dhcp server doens't 
answer, or connman doesn't send dhcp request.


Any idea?


MZ


