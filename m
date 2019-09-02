Return-Path: <prvs=11484e62b5=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0843EE00961; Mon,  2 Sep 2019 06:57:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.22 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 363 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Sep 2019 06:57:54 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[85.215.255.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94946E00867
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 06:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567432673;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=KGVclPWnfCe3NqFE2xniZeKz0biOZeveCrxVjKACoos=;
	b=k+Z2fkEoruskqeSybQ31mGOQORm3895+MQFgeXyr15IEoAZTmJnw5XO8VrfSX78OWf
	wuCcxGdzWLKoeF31Cdsqw48ZL18xRxQw20GID3SaBJGS+cZ5Fy1qIQtxwLzypDO7kWAL
	3DP6dC2AsxVn7Mtb8SWmcvEKhchhGIXD5rzb3fBkZfioXbjb7eL2dyNJMkcTkVn0gi8w
	RCYLUnYMX1vmHKgJWiIP+AFJBeoA35lKRDd3o93nQNFrQNiXOaVQjkwVhYPjQ4wN65Cf
	vrgJkAPy4+kECurOcoyGnvM35Cb+RRtm4ueZOuUZnAJTlw9UErbiW+jxjmMrzYk0gjJB
	nYOg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.27.0 AUTH)
	with ESMTPSA id R05a02v82DpoIKv
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Mon, 2 Sep 2019 15:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1567432309; x=1568037109;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=KGVclPWnfCe3NqFE2xniZeKz0biOZeveCrxVjKACoos=; b=L
	mHx2uyd42BLW0LaYQ6gB8gZXHexMT+ydl3RH7q76bx8Jp1DKZzbd49eM1gqMezrm
	UZQWhTp/w2dX8SLGZrrb7pWeqD+Q46xPQvuDYWLOXCVYwOLR4/eEvZuDuEwzgk2g
	gi46bVnOXFBaL9AeX1lcCbviRoQLWFA2+uuPrXZgFw=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.0.3) with ESMTPSA id
	md50000195522.msg; Mon, 02 Sep 2019 15:51:48 +0200
X-MDArrival-Date: Mon, 02 Sep 2019 15:51:48 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=11484e62b5=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Mon, 2 Sep 2019 15:51:44 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Message-ID: <20190902135144.ut63a3c4gd35qajv@jholzmayr.localdomain>
References: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
	<CANNYZj84SKy5dX+2ZEGDXxXf_qMBisfKaNzBHJPL+TtqKYwEqQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANNYZj84SKy5dX+2ZEGDXxXf_qMBisfKaNzBHJPL+TtqKYwEqQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Brian Silverman <bri@readysetstem.com>
Subject: Re: Fetching Yocto layers
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
X-List-Received-Date: Mon, 02 Sep 2019 13:57:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

I'd like to throw kas into the discussion too, I've been using it quite
successfully.

https://github.com/siemens/kas

Greetz

On Mon, Sep 02, 2019 at 03:34:28PM +0200, Alexander Kanavin wrote:
> On Mon, 2 Sep 2019 at 15:05, Brian Silverman <bri@readysetstem.com> wrote:
> 
> > The tags chosen above are based on what we test and ship.  So my issue is
> > that someone has to correctly follow the above instructions for different
> > versions of multiple layers if they want a reproducible build of a specific
> > version of mylayer-image.
> >
> > Is there a canonical why to encode this information within my layer?
> > Obviously I could script the above, store it in my layer, and have the user
> > run that script.  But, that seems very unyocto-like.
> >
> 
> At the moment Yocto project does not have an off-the shelf setup for
> multiple layers. You are welcome to provide and maintain one, until then it
> is indeed custom scripts, or tools like Google's 'repo', or maybe git
> submodules could work.
> 
> Alex

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


