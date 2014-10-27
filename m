Return-Path: <wd@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53FFFE00902; Mon, 27 Oct 2014 01:16:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 534 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Oct 2014 01:16:35 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F10D0E0084A
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 01:16:35 -0700 (PDT)
Received: from frontend02.mail.m-online.net (unknown [192.168.8.183])
	by mail-out.m-online.net (Postfix) with ESMTP id 3jR7vH4Sj1z3hjR5;
	Mon, 27 Oct 2014 09:07:39 +0100 (CET)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3jR7vH22WfzvjMk;
	Mon, 27 Oct 2014 09:07:39 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.184])
	by localhost (dynscan2.mail.m-online.net [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id lM3qfW1aHxMI; Mon, 27 Oct 2014 09:07:37 +0100 (CET)
X-Auth-Info: VLXlxvwmngUboUqh9WCup0tI25+vejDKwp9aG81Fmy0=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 27 Oct 2014 09:07:36 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 196E11AAC1C;
	Mon, 27 Oct 2014 09:07:34 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id D8D1F380909;
	Mon, 27 Oct 2014 09:07:33 +0100 (MET)
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7mE+PQ@mail.gmail.com>
References: <CAJrRHk6aVPLjZ9ruyr+koS7cVQTRt-+-jGv6L+AdFTTBW_Wmxg@mail.gmail.com>
	<CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7mE+PQ@mail.gmail.com>
Comments: In-reply-to =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?=
	<jdelapena@lexmark.com>
	message dated "Wed, 08 Oct 2014 14:05:54 +0800."
Date: Mon, 27 Oct 2014 09:07:33 +0100
Message-Id: <20141027080733.D8D1F380909@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PERL5LIB not properly reflecting target_sdk_dir
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
X-List-Received-Date: Mon, 27 Oct 2014 08:16:39 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Joseph Andrew de la Peña,

In message <CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7mE+PQ@mail.gmail.com> you wrote:
> 
> anyone?

I confirm the problem.

> > I have seen a problem in SDK installation where PERL5LIB does not reflect
> > vendor_perl location.
> > I have specified SDK installtion path as /bonus/scratch/sdk. Yet when I
> > executed -V no vendor_perl is included in PERL5LIB.

To be more precise, PERL5LIB is not set in the environment, and the
installation routine cannot fix the built-in strings in the perl
binary.

> > @INC:
> > /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> > /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl
> > /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> >
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3/
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3
> >
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14.3/
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14.3
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3/
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3

As you can see, even though you install into a non-standard directory
(/bonus/scratch/sdk), perl still references the built-in path
(/opt/sdk/...).

The problem is present in all versions of Yocto, up to and including
the upcoming 1.7.

I've opened a bug for it, see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6890

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"You know, after a woman's raised a family and so on,  she  wants  to
start living her own life."   "Whose life she's _been_ living, then?"
                                  - Terry Pratchett, _Witches Abroad_

