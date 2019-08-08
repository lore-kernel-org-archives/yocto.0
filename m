Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EBB8E00DBD; Thu,  8 Aug 2019 12:56:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14654E00D89
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 12:56:40 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id mjwe200092wfazh01jwftW; Thu, 08 Aug 2019 21:56:39 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <36866779-21f7-483f-f7a0-f28d4318135f@faresoftware.it>
Date: Thu, 8 Aug 2019 21:56:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1565294199; bh=ieh2PerUnBn4O7q9SZXf1/SCaJ1hgOBQfTkiufNPk34=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=LllTls62hhov/W5aGjnP/EvOdxVM1Ku2n5x7PiivtjorcYjwzZSXrJ9DsmUIDQJO+
	4MyxQNMhD1zatCk7HHbYXjw7vXUgmAuwcPX/DIKpdxQBRqp46bdW+bc4y50Lgd7E/I
	g12Sn99KAeFnls29EORUnzpAX393SvQ12cAmTBdxPTpuilgzY+h55e4dz+ypxMvDOR
	EGSHwr9lGodnqMQQiLgj9Et5iq9n99sKyweKgHhcHtex36l/ADbc2hb1SEiAwj0UzK
	lALYNaPITnRTdzp0hQ25BchrHrifTs5esaAYK511rXva2Pu8bW3OHzuBYRE29EgLJ0
	1zHE+lVSvAmjQ==
Subject: meta-rpi vs meta-raspberrypi. Which one?
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
X-List-Received-Date: Thu, 08 Aug 2019 19:56:44 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I'm working on a RPi3B with pyro and qt5/qml

Which layer between rpi and raspberrypi?


MZ


