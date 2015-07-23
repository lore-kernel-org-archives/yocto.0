Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D1FBE009B3; Thu, 23 Jul 2015 08:49:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2062CE00867
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 08:49:15 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2602.sfr.fr (SMTP Server) with ESMTP id 1E1BB1C002054;
	Thu, 23 Jul 2015 17:49:15 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2602.sfr.fr (SMTP Server) with ESMTP id 9C1991C00205D;
	Thu, 23 Jul 2015 17:49:12 +0200 (CEST)
X-SFR-UUID: 20150723154913639.9C1991C00205D@msfrf2602.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Thu, 23 Jul 2015 17:49:13 +0100
X-PGP-Universal: processed;	by hjo-pc on Thu, 23 Jul 2015 17:49:13 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <002d01d0c558$752dbcb0$5f893610$@neuf.fr>
	<55B10410.2060904@mlbassoc.com>
In-Reply-To: <55B10410.2060904@mlbassoc.com>
Date: Thu, 23 Jul 2015 17:49:06 +0200
Message-ID: <005001d0c55f$1f95a450$5ec0ecf0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHljbsr+CF3VA4/to3FQGk20/R1AAHYx7xPnbDbZvA=
Subject: Re: [meta-raspberrypi] raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 15:49:21 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Gary,

What worries me is I don't see that kind of paths in the log file that
Edward sent.
And I'm just thinking the package configuration itself might need to =
know
the where to find those headers - I believe I needed something similar =
for
QT.
This said, it's very difficult to know for sure without having the log =
of
what went wrong in the configuration phase, that might be seen in
config.log. That's why it's just a blind guess at best, some information =
is
missing...

BR,

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gary Thomas
Sent: jeudi 23 juillet 2015 17:11
To: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] raspberry Pi core-image-sato

On 2015-07-23 09:01, Herve Jourdain wrote:
> Hi,
>
> Not sure if it=92s the case, because the config.log might give more =
details,
but maybe you can try adding the following to your recipe :
>
> EXTRA_OECONF +=3D=20
> =93-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/ \
>
>
-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/"
>
> I needed that to compile other packages that were using EGL.

These should not be needed if you use DEPENDS correctly, bitbake takes =
care
of them for you.

>
> Once again, just a hint, no warranty whatsoever=85
>
> BR,
>
> Herv=E9
>
> *From:*yocto-bounces@yoctoproject.org=20
> <mailto:yocto-bounces@yoctoproject.org>=20
> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Edward Vidal
> *Sent:* jeudi 23 juillet 2015 16:38
> *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> *Subject:* ***SPAM*** [yocto] raspberry Pi core-image-sato
>
> Hi Gary,
>
> Is this the log that you need?
>
> I also ran the  bitbake -DD core-image-sato and have the log for that =
run.
>
> | WARNING: exit code 1 from a shell command.
> | ERROR: oe_runconf failed
> | ERROR: Function failed: do_configure (log file is located at
> /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-
> vfpv4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/te
> mp/log.do_configure.9672)
> ERROR: Task 4597
(/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/l=
ibe
poxy_git.bb, do_configure) failed with exit code '1'
>
> Let me know what I can provide.
>
> Thanks for the help
>
>   Regards,
>
> Edward Vidal Jr.
> e-mail develone@sbcglobal.net <mailto:develone@sbcglobal.net>
> 915-595-1613
>
>
>

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


