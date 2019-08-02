Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E36EFE00EB9; Fri,  2 Aug 2019 10:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Aug 2019 10:55:05 PDT
Received: from smtpcmd12131.aruba.it (smtpcmd12131.aruba.it [62.149.156.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C65FE00EB1
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 10:55:05 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd12.ad.aruba.it with bizsmtp
	id kHu02000l2wfazh01Hu0K8; Fri, 02 Aug 2019 19:54:01 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <77db42fc-d21e-9819-ee95-5962ecde7956@faresoftware.it>
Date: Fri, 2 Aug 2019 19:54:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1564768441; bh=RlKaAasq0yVzJ4vwoJ4Sw7H8wAwMRkWkKEs0Tt6ye5g=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=kU+akjkUPlmWOSrbzvlJV3WsDvhbcJFA57bAjbHTZ0+pULQzO99oefOdkx38b/JjD
	wEsK1B49VrMuPPojSWI0/wH+MTeSdv2NyC+/Zn2raTIdgecMQEzZ+ivJHwfaOwR0yj
	M5RNc6FGtvrNDdyp21T5uG6Bw03IAOqPELd28oN7fL+k3wHJokYWmzNY/QXbkR+8nN
	sFBRqeUYFjZJmlVZjPneN3RoZSA1E3oMl08Xb+R04JXXTW4KDDbBKhY1KZVBCJzxoQ
	kHVaX5aX3OzjZMJQ7508SCe4IXYfIMkZ/Z13rIuddFdD52DBwkB2hdNQK+M333blce
	2PX/hgLyTz46g==
Subject: installed-vs-shipped
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
X-List-Received-Date: Fri, 02 Aug 2019 17:55:06 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

This is my problem.

I have my terminal.pro project (qmake5) with target "terminal".

The default destination folder for the binary is /usr/local/bin

With this setup I get installed-vs-shipped error.


Why?


