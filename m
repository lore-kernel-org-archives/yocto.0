Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F85CE00D84; Mon, 13 May 2019 04:07:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0573E00D4E
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 04:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1557745665;
	bh=HjyadM0QcgUPuQ7EXxKBAPJx/qYhZJOSZXSU29JdREQ=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=ZdUfFJq1Sx0oDr9uihA3Xhaw7qNm3q1YD4h3oXrLqy0sru12xSptgmw2ZAfcLE808
	EPv+kMudQGI2cV3h444+POHDu2yvqvqW6Abn0b53wAWT34PSQjngZK0DrsMDDnyC1Z
	ZcIxhv5TrXwc8G75nMZMNgqoVYVexZw9X4c6Tozc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP);
	Mon, 13 May 2019 13:07:45 +0200
MIME-Version: 1.0
Message-ID: <trinity-386cbe71-496d-4846-b7f6-5a3c5b4b7170-1557745665241@3c-app-gmx-bs34>
From: star@gmx.li
To: "Yocto Project" <yocto@yoctoproject.org>
Date: Mon, 13 May 2019 13:07:45 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:1nDjcZuLZLxkdFU5aPvwnmGFeH4xxqdoS5A+9poM9MuW9TXt3LYYeWEo2lSCbOF5c49g4
	eLY86g/HHHlLEzLv2EaxtKVTp1WwkJUH4dSHq+Z92qAP0bnu9UxEzvXSYmeDa34Uz3tvuKKFkTtR
	K6fckuj+/YiRRkNsezA8Wsf3dg2ohS7Z5tuCVZGQ/MZz9OvyfhtQ87jvI0GyqxK2ar5xymEclm28
	RS5jfvyYKtIJHbwZU0x3QMbtgPIxPtyk2eZRtuAcmqKe1KVNeSMmUOz7Qrzc3QCt0R28JPx2yomE
	6g=
X-UI-Out-Filterresults: notjunk:1;V03:K0:U2YLTmWAxhM=:IZChOGqoDNlvjuXngYBFtv
	wdGkyhR98pxA9OZS4TUkxfxJ+IfkIVXr5IP6Rqru4Ywtc8/bOuQW6YvuIQ6oQyWcObrm4Kcg9
	3UnHz4elxK19+RePEBUJ/4NVuCpp6M2BrybVg55qJu/x6R8PScqyh5nDMbCorR4rGP6NqodHO
	vV/uYFva8Tsa+e92FkYR/Utx+0I79n46VHCP/VeRHOA+T7TkiCbbMxfC6N0/IsvrwQ2xFpr5z
	12Dd1l9HTNyhm+O1klTDF7EtqX3z8NT54aTrqem8cV19qX8Uh2EfrqQ4KtlDz6/CxPHOAXZ8v
	J2n3gpxbpTg7344T9q7ikdKOgUcHL7Q9vTmJLpEPyZQBRSdkE67XU89r70VKMArVceBUZ8YNm
	6Xez3ydvGYOjxiD5Rr8a14HOR9MZ4TnPi3A81/v/vpzXIx4l0KKRDULTzz7Y3Kq5kOO8gGZhT
	SHYGAhB9SYvETu4/PJJrt/MQqUzc7D8HBfZn0UjC+ktJX/BW3A+Es6UsP7W7/bdFLfXJ1g4Nj
	uR2CyH5B3Pe+XonYMXvSeZsVaCaXf3+L3yQpuyh0hyG/Zg4Chm4W2syNxK27F0P0NX5GsIgMF
	Npfgu6hmS7mKjIhmMXiGbchrFx1rtHJElM1DKt78/dNZBswCpej0DKSw==
Subject: long time for starting sshd (wait for crng init done ?)
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
X-List-Received-Date: Mon, 13 May 2019 11:07:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=46rom yocto 2.5 to 2.7 I noticed a change in booting. The kernel stops fo=
r around 85 seconds.
It seems to me that starting sshd takes time until crng init is done.
In 2.5 it doesn't wait for that. How can I avoid that?
Maybe I have to add that I use a recipe that adds keys as rootfs is usuall=
y r/o.

Another think I have observed (which is not clear to me): I don't get a me=
ssage from system message bus anymore. ???

Instead of it udevd complains about "specific group 'kvm' unknown. Looking=
 into source there are  mentioned:
# The static_node is required on s390x and ppc (they are using MODULE_ALIA=
S)
So, can I safely ignore that (use ARM).



