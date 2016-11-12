Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26180E00C1A; Sat, 12 Nov 2016 10:45:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.6 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [46.198.0.251 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE3FE00BF3
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 10:45:38 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id g23so4594608wme.1
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 10:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=mJzw/BadgEOuPHtFeRujfbTd6lyvrqECQEztOESKSJQ=;
	b=FPg8whMgwM4VFOnzYgrvwnk9VmSOZupejWPhE35JOS0yi8nzkXhEfdhJxtqVI6Iwvu
	f4qq9atCb0jTfBAjaLbaF56viVU1diK+KlFb1/iibT8aX+fw8rl8hmRq9xSf5GINlzX8
	qLOAvNrVPqwC5Pi7hBRYby3xtPz+60FWFW9/r2RUuC/E7EPHs8K5iHWHeFLilL2w26tg
	+u7SeSd5iwzlCHZs0GrcM5ZE3+KwQoMCgZImqKoNi5jRG5o1HyFB1M5sYp1J0KZ8yrfy
	Sp0wKE7On8GH3PeEER3igHnqhSQ7mC/vxR/tpmR/hajKOrgZny8+KYB+RwEPFPjACY4O
	zG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=mJzw/BadgEOuPHtFeRujfbTd6lyvrqECQEztOESKSJQ=;
	b=AZblSfcIhNfm7+vDOpZKIoNtzWwng3SCxcsqwPfSK6WxaI3eZ3HYk21JKJrD8uHBVq
	ZvOa4PSZ7DbyL5TGRyAO622uoeuhrhm9OUNZy1aI1QwNhZ2y7CJFNSHkipPyIwzR6qPQ
	rlMxaJ4DXxtCl32mBGbI5rLGAz3VaAI60RFwxmSaGqxYgtDIvmbVujOvZT6YhK+GpWq2
	HO5gcY03RrYfE4KgzZwbvUS7YTVcpZIibAz6V0A9aZvUSzip7tggxi7G8Cfc3Zmb+Ayk
	vcPk7dkiPqLG0JqhDPDe2Bq/qQatb5aquAaAWJRfd7Dte0Jx97FIE1CdUP/kQ60OQC/K
	0E4Q==
X-Gm-Message-State: ABUngvdpbRwt+USWdXAEEM/JlfRxYGU4tu6b9aAAZNAdRPDGGx3ltcBJkANGor8755VDpQ==
X-Received: by 10.28.220.5 with SMTP id t5mr3434472wmg.80.1478976337541;
	Sat, 12 Nov 2016 10:45:37 -0800 (PST)
Received: from carbonA.lan (46-198-0-251.adsl.cyta.gr. [46.198.0.251])
	by smtp.gmail.com with ESMTPSA id
	p13sm19095731wmd.20.2016.11.12.10.45.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Nov 2016 10:45:36 -0800 (PST)
Date: Sat, 12 Nov 2016 18:45:22 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161112184522.GA32346@carbonA.lan>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
	<ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
	<20161108113838.GC19379@carbonA>
	<CAMKF1spR5-PpjfkfDadP_8FqrGHt0-T34k=RjwrwPg9y2Bd0Hg@mail.gmail.com>
	<20161112122345.GA14139@carbonA.lan>
	<d62052d0-a042-312c-cef9-e184def18bc5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <d62052d0-a042-312c-cef9-e184def18bc5@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sat, 12 Nov 2016 18:45:42 -0000
X-Groupsio-MsgNum: 32952
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 12, 2016 at 07:34:43AM -0800, Khem Raj wrote:
>
>
> On 11/12/16 4:23 AM, Andrei Gherzan wrote:
> > On Tue, Nov 08, 2016 at 06:46:45AM -0800, Khem Raj wrote:
> >> On Tue, Nov 8, 2016 at 3:38 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >>> On Tue, Nov 08, 2016 at 12:35:47PM +0100, Gary Thomas wrote:
> >>>> On 2016-11-08 12:16, Andrei Gherzan wrote:
> >>>>> On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >>>>>> This is a binary repo and its quite large in size
> >>>>>> we do not need the whole history of this repo since
> >>>>>> most of stuff needed is binaries, therefore switch
> >>>>>> to release tarballs
> >>>>>>
> >>>>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >>>>>> ---
> >>>>>>  recipes-bsp/common/firmware.inc | 12 +++++++-----
> >>>>>>  1 file changed, 7 insertions(+), 5 deletions(-)
> >>>>>>
> >>>>>> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> >>>>>> index ed0782f..8862f58 100644
> >>>>>> --- a/recipes-bsp/common/firmware.inc
> >>>>>> +++ b/recipes-bsp/common/firmware.inc
> >>>>>> @@ -1,8 +1,10 @@
> >>>>>> -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> >>>>>> -RPIFW_DATE ?= "20161030"
> >>>>>> -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> >>>>>> -RPIFW_S ?= "${WORKDIR}/git"
> >>>>>> +RPIFW_DATE ?= "20161020"
> >>>>>> +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
> >>>>>> +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
> >>>>>>
> >>>>>>  SRC_URI = "${RPIFW_SRC_URI}"
> >>>>>> -SRCREV = "${RPIFW_SRCREV}"
> >>>>>> +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> >>>>>> +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> >>>>>> +
> >>>>>>  PV = "${RPIFW_DATE}"
> >>>>>
> >>>>> Merged to master. Thanks.
> >>>>
> >>>> Sadly, the firmware revision went backwards in this change.
> >>>> Do you want a new patch to play catch-up?
> >>>>
> >>>
> >>> Good catch. I'll fix it. Thanks.
> >>
> >> ah sorry about that.
> >> just hardcode PV = "20161030" for now. with next release we will get it right
> >> since its already past oct 30.
> >
> > Actually the last archive is 1.20161020.
> > https://github.com/raspberrypi/firmware/releases
>
> thats what i mean, when there is next release whenever that is,
> it will be newer than todays date. The problem here is that we went backwards
> for once only.

Got it now. Thanks.

--
Andrei Gherzan

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYJ2NCAAoJEHO76Gt+erfPEfMP/1BnGtaJ5ZbGEnyOUHTHQ+0E
J2we2xQ9jI57eFxCW5RbcQdLZ/jAmr7qZ2nUdgp1aLJyG4usn3Mj64fYkFFMXr3b
t7aJIyaljgN9pLDDw7wKNlgYPE5KItGQmK+VY0ogDg4kLYXiF63ymPuBmALwwQ6z
LtEO3GEcQO1dK+g8gwWMC+Rg5W6GjXGZaLPHH3px3MyXP9xsNOWKWtsg84xqgknV
swdei3wAgSQ2wVk5mAo6Df8iDiMiA7FqKC9jvZOdtlV12CZe0U3zpIb+GUZfHGbV
zNtUV7gFo9QOyo7zGK9di8m3uLOi/m3Mx/cVXCS1mONIb9qKpFpe7+g9ta+YpMWR
cy7TjnStxYWtDOkaMw3RB6LEDi2b9MjTxoyz/7Q6J6SMEWg02qeiV1gU5yDNEroD
jJ4LxUKFCqeQ+a+fQJs/91A4mxqjraiz/qIxPZIoUpFKEuXnG6QN1CzkSwIrw9Zt
IvcRN735BpFxQx0y+N1b4w4xJpT2l6WfpgxlNFiNQ3rVN9HwSCfo+22dtyD5ZPYO
aW3+UtQsJ1O0hslVvykA2FoU/hiMnshyjRNlMdoMhAd951OEdf2yYsOFE3E1U0oW
Ba1ljyTFaYD5lp12WsKksYfkWVQvSxCyKAhG6V5JEWK0ZWLbqXVbzbu+cM3zauEw
f94yGvdYKX6rTCa5b1CV
=W3ME
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--
