Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 025C5E00E26; Wed, 18 May 2016 01:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1548E00E23
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 01:36:21 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2614.sfr.fr (SMTP Server) with ESMTP id C1FF21C0074C7;
	Wed, 18 May 2016 10:36:20 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 10:36:18 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Jussi Kukkonen' <jussi.kukkonen@intel.com>
References: <1463550682-59043-1-git-send-email-herve.jourdain@neuf.fr>
	<CAHiDW_HEC=bsV3NzNos25Rj9SB7vRjJzEDuJiggFdgfr1T37dg@mail.gmail.com>
In-Reply-To: <CAHiDW_HEC=bsV3NzNos25Rj9SB7vRjJzEDuJiggFdgfr1T37dg@mail.gmail.com>
Date: Wed, 18 May 2016 10:36:14 +0200
Message-ID: <015801d1b0e0$5a4b1d10$0ee15730$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIpQWBtEowYwmBHNo00AlrkMOXN+wJsMTBOnvvcSRA=
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: [matchbox-keyboard][PATCH ] Support of "caps" tag
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
X-List-Received-Date: Wed, 18 May 2016 08:36:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

OK, thanks, v2 is on the way...

Herve

-----Original Message-----
From: Jussi Kukkonen [mailto:jussi.kukkonen@intel.com]=20
Sent: mercredi 18 mai 2016 09:55
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] [matchbox-keyboard][PATCH ] Support of "caps" tag

On 18 May 2016 at 08:51, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> This patch allows the support of a "caps" tag, that defines the value =
of the key when the CAPS action modifier is in effect.
> This feature is needed for the french keyboard - at least - in order =
to handle the uppercase accented letters, that are the ones accessible =
when caps is on, for some keys.
> There is no impact when the tag is not used in the xml description of =
the layout, therefore there should be no impact on keyboards not using =
this tag.
> Tests have been done using sato.

Please write this message as the actual patch commit message: when it's =
in a cover letter it will not end up in the git log where it's most =
needed.

Otherwise patch looks good to me.

Jussi

> Herve Jourdain (1):
>   Support of "caps" tag
>
>  src/config-parser.c                      |  5 +++++
>  src/matchbox-keyboard-key.c              | 11 ++++++++---
>  src/matchbox-keyboard-ui-cairo-backend.c | 10 +++++++---
>  src/matchbox-keyboard-ui-xft-backend.c   | 10 +++++++---
>  src/matchbox-keyboard.c                  |  3 +++
>  src/matchbox-keyboard.h                  |  1 +
>  6 files changed, 31 insertions(+), 9 deletions(-)
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


