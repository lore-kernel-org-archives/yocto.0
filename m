Return-Path: <david@lapinbilly.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B120E00C9B; Wed, 30 May 2018 08:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8697E009BC
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 08:28:08 -0700 (PDT)
Received: from relay7-d.mail.gandi.net (unknown [217.70.183.200])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id E772F3A845A
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 17:09:00 +0200 (CEST)
Received: from sogo5.bi1.0x35.net (sogo5.bi1.0x35.net [10.150.1.75])
	(Authenticated sender: david@lapinbilly.eu)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPA id 8469D20014
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 17:09:05 +0200 (CEST)
To: yocto@yoctoproject.org
User-Agent: SOGoMail 3.2.10
MIME-Version: 1.0
Date: Wed, 30 May 2018 17:08:58 +0200
Message-ID: <7a34-5b0ebe80-7-7f4f7580@144013358>
X-Forward: 92.103.208.197, 10.150.1.6
From: =?utf-8?q?david=40lapinbilly=2Eeu?= <david@lapinbilly.eu>
Subject: ?==?utf-8?q? [Rocko] linux kernel built with icc
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
X-List-Received-Date: Wed, 30 May 2018 15:28:09 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi there,

I am using icc from intel as a secondary toolchain.
In order to build the linux kernel (the one from meta-intel) against ic=
c, I did patched the line:

KERNEL=5FCC =3D "${CCACHE}${HOST=5FPREFIX}gcc ${HOST=5FCC=5FKERNEL=5FAR=
CH} -fuse-ld=3Dbfd"

within the class "kernel-arch".

I wonder if there is another way to call another compiler than "gcc" to=
 build the kernel ?


-- 
David Marec


