Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E713E00CAE; Thu, 24 Nov 2016 04:56:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36E11E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 04:56:27 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp3-g21.free.fr (Postfix) with ESMTP id BBCAF13F861
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 13:56:25 +0100 (CET)
Date: Thu, 24 Nov 2016 13:56:25 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <1972929061.362633202.1479992185704.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7F66E9@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: How to add user with nologin shell
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
X-List-Received-Date: Thu, 24 Nov 2016 12:56:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

> Still same error even if I used -U option.
> 
> I tried even groupadd but still I get below error.

Can you try this:
EXTRA_USERS_PARAMS = "useradd -r -s /sbin/nologin user1;"

According to my man page:
  By default, a group will also be created for the new user
  <username> must be last
  -r also implies -M

Michel

