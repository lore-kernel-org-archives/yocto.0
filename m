Return-Path: <dimitar.yordanov@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FBAEE00B34; Thu, 30 Jul 2015 23:19:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF7CAE0096A
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 23:19:06 -0700 (PDT)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:33383
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Dimitar.Yordanov@bmw-carit.de>) id 1ZL3eo-0004V0-0H
	for yocto@yoctoproject.org; Fri, 31 Jul 2015 08:19:02 +0200
Received: from localhost (172.20.20.170) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.1.218.12;
	Fri, 31 Jul 2015 08:19:01 +0200
X-CTCH-RefID: str=0001.0A0C0205.55BB1356.0067, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Date: Fri, 31 Jul 2015 08:19:00 +0200
From: Dimitar Yordanov <dimitar.yordanov@bmw-carit.de>
To: <yocto@yoctoproject.org>
Message-ID: <20150731061900.GA23390@talasam>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [172.20.20.170]
Subject: nativesdk-libgcc-initial race condition and sstate-mirror problems
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
X-List-Received-Date: Fri, 31 Jul 2015 06:19:10 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi all,

we are experiencing problems with our sstate-mirror handling after
applying commit: be02588097dcdb61b76e5788a67ab062dabc78ad

Here is a short explanation to what we do and what happens:

We have an sstate-mirror, which we want to keep up to date when new
builds are executed and also be clean from unused sstate files. For
this purpose we set the SSTATE_MIRROR variable to point to the latest
stable cache we have. Then we trigger a new build with changes to some
of the recipes/sources. Under SSTATE_DIR a new cache is being created
which has links to SSTATE_MIRROR for caches, which are still valid.

To get a new clean SSTATE_MIRROR we take the newly created SSTATE_DIR
and replace all the links with the real files. Then we promote that
SSTATE_DIR to be the new SSTATE_MIRROR.

Where does the problem arises ...

With the previously mentioned patch the do_package tasks are being
skipped, thus there are no entries or links for that in the new
SSTATE_DIR. When we now promote the SSTATE_DIR to a SSTATE_MIRROR
bitbake decides that the do_package tasks need to be rebuilt, because
the squashed reverse dependencies are not covered
(runqueue.py:1931->execute). setscene_depvalid does not even get
called.

Maybe we wouldn't have noticed that, but we get some wired race
conditions because of that, between nativesdk-libgcc-initial,
nativesdk-glibc and nativesdk-linux-libc-headers. What happens:

All packages have an sstate cache entries (apart from do_package), and
they get executed, which populates the nativesdk sysroot with limits.h
and linux/limits.h

And now bitbake decides it should re-trigger the do_configure stage of
nativesdk-linux-libc-headers. That removes linux/limits.h, but
limits.h is still there and includes (indirect) linux/limits.h. In
this moment the do_configure step from nativesdk-libgcc-initial is
called, which includes limits.h. Normally if the file would've not be
there it would have used the embedded one from gcc but now there is a
file there and it uses it. The bad point is limits.h indirectly
includes linux/limits.h and the do_configure step from
nativesdk-libgcc-initial fails :-(

I see multiple issues here and would be glad to get your opinion on
how to solve them properly:
First problem skipped tasks and missing do_package entries in the sstate.
Second the race condition with nativesdk-libgcc-initial.

Best wishes
Dimitar

-- 
BMW Car IT GmbH
Dimitar Yordanov
Lise-Meitner-Str.14
89081 Ulm
Tel.: +49-731-37804-290
Fax: +49-731 378040-01
Mail: dimitar.yordanov@bmw-carit.de
Web: http://www.bmw-carit.de
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Reinhard Stolle und Michael Würtenberger
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------

