Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB223E00D54; Sat,  3 Dec 2016 01:49:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.1 listed in list.dnswl.org]
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D215E00CC9
	for <yocto@yoctoproject.org>; Sat,  3 Dec 2016 01:49:24 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 2ABFCB00586
	for <yocto@yoctoproject.org>; Sat,  3 Dec 2016 10:49:23 +0100 (CET)
Date: Sat, 3 Dec 2016 10:49:23 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <1534919299.413519389.1480758563118.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <alpine.LFD.2.20.1612021340200.8344@localhost.localdomain>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: is there a newer alternative to tcpflow?
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
X-List-Received-Date: Sat, 03 Dec 2016 09:49:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Robert,

You should try to create a recipe by yourself, using devtool.

I used it for the 1st time some weeks ago, and was positively
surprised by how easy it is to create a new recipe!

I spent more time learning devtool (but I'm of the kind that
likes to read the whole doc before attempting something) than
producing the recipes.
devtool is very clever at understanding the source and since
tcpflow is autoconfigure-based I bet this should be easy.

Michel

