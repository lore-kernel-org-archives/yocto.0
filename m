Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A1DBE00C75; Tue, 29 Nov 2016 01:09:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9311DE00C4F
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 01:09:45 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp1-g21.free.fr (Postfix) with ESMTP id EC655B004E7
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 10:09:43 +0100 (CET)
Date: Tue, 29 Nov 2016 10:09:42 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <1824884597.389459851.1480410582272.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <aedf3ef5-7d6a-6c21-42da-adcd40199a9a@mlbassoc.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: New error
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
X-List-Received-Date: Tue, 29 Nov 2016 09:09:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

> I recently updated my Poky/Yocto repo to
> 12a0ee049e453b6d0d2ce2f3fa981d1b6e02bd78 and now I'm seeing messages

Did you try to erase your build/tmp folder?

Michel


