Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0E18E00E1A; Thu, 13 Oct 2016 08:11:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.4 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6F06E00DF6
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 08:11:24 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 3A6A919F5AB;
	Thu, 13 Oct 2016 17:11:22 +0200 (CEST)
Date: Thu, 13 Oct 2016 17:11:22 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto <yocto@yoctoproject.org>
Message-ID: <952113111.126571659.1476371482424.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <DB5PR01MB1880B08919DB76D97AE4438F92DC0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: Merging a custom SDK with meta-toolchain-qt5
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
X-List-Received-Date: Thu, 13 Oct 2016 15:11:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 

> Is there a way to customize the meta-toolchain-qt5 so that it
> installs the features declared in the SDKIMAGE_FEATURES above ?

How did you generate the Qt5 toolchain? Because according to the reference manual: 
The SDKIMAGE_FEATURES is e quivalent to IMAGE_FEATURES. However, this variable applies to the SDK generated from an image using the following command: 
$ bitbake -c populate_sdk imagename

There is a populate_sdk_qt5 class in meta-qt5. But I don't know how to merge this with the previous command :-/

Michel

