Return-Path: <uol@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7658CE00CED; Thu,  7 Mar 2019 07:42:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.220.165.71 listed in list.dnswl.org]
X-Greylist: delayed 1102 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Mar 2019 07:42:03 PST
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
	[85.220.165.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A257E00AD5
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 07:42:03 -0800 (PST)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
	(envelope-from <uol@pengutronix.de>)
	id 1h1us0-0004fq-Pc; Thu, 07 Mar 2019 16:23:40 +0100
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
	(envelope-from <uol@pengutronix.de>)
	id 1h1us0-0000I1-F3; Thu, 07 Mar 2019 16:23:40 +0100
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
User-agent: mu4e 1.1.0; emacs 26.1
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: yocto@yoctoproject.org
In-reply-to: <A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
Date: Thu, 07 Mar 2019 16:23:40 +0100
Message-ID: <6rh8ceu2rn.fsf@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: uol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
	SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@yoctoproject.org
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Thu, 07 Mar 2019 15:42:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi there,

On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <Carsten.Stelling2@go=
erlitz.com> wrote:
> Have you seen https://github.com/pengutronix/genimage?

you can find it included within https://github.com/pengutronix/meta-ptx
with an accompanying genimage.bbclass.

Best regards
Ulrich

> Regards,
>
> Carsten
>
> Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g] Im Auftrag von Gabriele Zampieri
> Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
> An: yocto@yoctoproject.org
> Betreff: [yocto] Multiple ubifs partition
>
> Hi all,
>
> I'm trying to build a distribution that has multiple partitions. The desi=
derata is something like:
>
> - rootfs.ubifs mounted on /
> - data.ubifs mounted on /data
> - opt.ubifs mounted on /opt
>
> I was wondering if there is a standard way to achieve the goal. I see tha=
t there is a tool called wic, but it does not seems to support ubifs. I cou=
ld post process the tarball image and doing stuff with my scripts, but I'd =
prefer doing this in a single bitbake run. Can you suggest something?
>
> Thanks,
> Gabriele


--
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

