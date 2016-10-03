Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0437FE00CE5; Mon,  3 Oct 2016 08:27:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1873E00C5D
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 08:27:53 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 51B562003C6;
	Mon,  3 Oct 2016 17:27:51 +0200 (CEST)
Date: Mon, 3 Oct 2016 17:27:51 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Message-ID: <1237386404.76854182.1475508471296.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <CAHiDW_FNaUWqrEsBTD79g8PdD560gqvs8Ze29wtxLpQG16p3hw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: [pseudo-native] No real function for mknod -- SOLVED
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
X-List-Received-Date: Mon, 03 Oct 2016 15:27:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thank you Jussi,

> > No real function for mknod:
> > /mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/../lib/ps=
eudo/lib64/libpseudo.so:
> > undefined symbol: mknod
> > No real function for mknodat:
> > /mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/../lib/ps=
eudo/lib64/libpseudo.so:
> > undefined symbol: mknodat

> I believe this issue was fixed with a patch in poky master with
> commit e090775f7e in May (and later in an upstream pseudo release).
> Are you sure you are seeing this with poky master?

I did so many tests that I mixed all the problems and errors I met=E2=80=A6

With the master branch, the problem was with the sanity check about the loc=
ale. I re-enabled en_US.utf8 on my console and the image creation succeeded=
! So I guess the problem appeared after an upgrade of my debian unstable sy=
stem. But I was lost and getting crazy.

So thanks again :-)
M.

