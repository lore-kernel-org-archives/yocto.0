Return-Path: <uol@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B87FE00C14; Wed, 24 Apr 2019 06:35:04 -0700 (PDT)
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
X-Greylist: delayed 1145 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Apr 2019 06:35:02 PDT
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
	[85.220.165.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 871A4E00AD5
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 06:35:02 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
	(envelope-from <uol@pengutronix.de>)
	id 1hJHki-0001pj-CP; Wed, 24 Apr 2019 15:15:56 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
	(envelope-from <uol@pengutronix.de>)
	id 1hJHkh-0008H4-Ob; Wed, 24 Apr 2019 15:15:55 +0200
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
	<CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
	<CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
User-agent: mu4e 1.1.0; emacs 26.1
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: yocto@yoctoproject.org
In-reply-to: <CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
Date: Wed, 24 Apr 2019 15:15:55 +0200
Message-ID: <6rbm0vbl2s.fsf@pengutronix.de>
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
X-List-Received-Date: Wed, 24 Apr 2019 13:35:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Gabriele,

On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri <gabbla.malist@gmail.=
com> wrote:
> I'm now testing genimage via meta-ptx in my Yocto workflow, but I found a
> problem: I cannot set a SRC_URI in my custom image recipe (that inherit
> from core-image which in turn inherit from image) because do_fetch and
> do_unpack tasks have noexec set to 1. If I specify the SRC_URI with my
> genimage.config, bitbake exits, complaining about LIC_FILE_CHECKSUM (that
> is correctly specified). If I hack image.bbclass and comment out
>
> #do_fetch[noexec] =3D "1"
>
>
> #do_unpack[noexec] =3D "1"
>
> The process start correctly. Is there a way to avoid touching image.bbcla=
ss
> and install my configuration from the image recipe?
>
> Thanks,
> Gabriele

you need one or more recipe(s) that construct(s) your filesystem(s) and
a separate one that makes a flashable image out of that (see the
introductory documentation in 'genimage.bbclass'). In the former you
inherit 'core-image' and only in the latter which inherits 'genimage'
you have to set the SRC_URI to point to your 'genimage.config'.

Best regards
Ulrich


> Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri <
> gabbla.malist@gmail.com> ha scritto:
>
>> Hi all,
>>
>> thank you very much for the suggestion, I will check genimage and test i=
t.
>>
>> Gabriele
>>
>> Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
>> u.oelmann@pengutronix.de> ha scritto:
>>
>>> Hi there,
>>>
>>> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
>>> Carsten.Stelling2@goerlitz.com> wrote:
>>> > Have you seen https://github.com/pengutronix/genimage?
>>>
>>> you can find it included within https://github.com/pengutronix/meta-ptx
>>> with an accompanying genimage.bbclass.
>>>
>>> Best regards
>>> Ulrich
>>>
>>> > Regards,
>>> >
>>> > Carsten
>>> >
>>> > Von: yocto-bounces@yoctoproject.org [mailto:
>>> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampieri
>>> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
>>> > An: yocto@yoctoproject.org
>>> > Betreff: [yocto] Multiple ubifs partition
>>> >
>>> > Hi all,
>>> >
>>> > I'm trying to build a distribution that has multiple partitions. The
>>> desiderata is something like:
>>> >
>>> > - rootfs.ubifs mounted on /
>>> > - data.ubifs mounted on /data
>>> > - opt.ubifs mounted on /opt
>>> >
>>> > I was wondering if there is a standard way to achieve the goal. I see
>>> that there is a tool called wic, but it does not seems to support ubifs=
. I
>>> could post process the tarball image and doing stuff with my scripts, b=
ut
>>> I'd prefer doing this in a single bitbake run. Can you suggest somethin=
g?
>>> >
>>> > Thanks,
>>> > Gabriele
>>>
>>>
>>> --
>>> Pengutronix e.K.                           | Ulrich =C3=96lmann        =
       |
>>> Industrial Linux Solutions                 | http://www.pengutronix.de/
>>> |
>>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
>>>
>>


--
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

