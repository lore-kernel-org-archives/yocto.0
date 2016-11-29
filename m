Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 132B7E00C75; Tue, 29 Nov 2016 01:22:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3970E00C4F
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 01:22:00 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 606B8200389
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 10:21:59 +0100 (CET)
Date: Tue, 29 Nov 2016 10:21:59 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <848642985.389519824.1480411319337.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <aedf3ef5-7d6a-6c21-42da-adcd40199a9a@mlbassoc.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: When shall one erase tmp and sstate-cache?
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
X-List-Received-Date: Tue, 29 Nov 2016 09:22:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,


I "frequently" have the same problem as Gary:

> From: "Gary Thomas" <gary@mlbassoc.com>
> To: yocto@yoctoproject.org
> Sent: Tuesday, 29 November, 2016 9:32:39 AM
> Subject: [yocto] New error
> 
> I recently updated my Poky/Yocto repo to
> 12a0ee049e453b6d0d2ce2f3fa981d1b6e02bd78 and now I'm seeing
> messages like this:
>    ERROR: When reparsing
>    /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install,
>    the
>    basehash value changed from 3c2401cc61fce5eb899de19dbf78862f to
>    558516a74162944aff656a7d01321b12. The metadata is
>    not deterministic and this needs to be fixed.


I then erase the build/tmp and (maybe) the sstate-cache folders...
and most of the time, the errors disappear.
However if erasing tmp is not such a big deal to re-bake everything,
it is much longer when the sstate cache is removed!


So my question is: when shall I erase those folders?


My understanding is that bitbake is very good at detecting changes
in recipes. But on the other hand, it doesn't check for changes in
python libs.
So every time one upgrades a layer (through git), it is advised to
erase build/tmp. But when is it also better to erase sstate-cache?


Thanks for your insightful explanations.

Michel

