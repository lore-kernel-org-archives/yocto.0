Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70B25E00E9A; Thu, 19 May 2016 14:42:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3474E00DBA
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 14:42:40 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id n129so248478729wmn.1
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 14:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SbVQkix3fDImbUT6vGFLO+DprOfIcyVhb1Oqq4GPJ1Q=;
	b=oxz07fDPALKQ8vJ5+rZy7Vi+IUVbj/dABq99rXHSeqedgNsETDWHy5dXwsXiJpPWw/
	7qHr/zJz5W1bmlJ/rh6jnnoJQXAZpqVz+UKZRjyfcMFSgfoKEuNC16jS4m9wj28Rtrca
	83RlWHMQ2+cCnyqJRLjwybyc9nLe4+jpNcmuYD2JhycR5GC+sjiKioq3Hi86oZ1/ENy6
	YeGGQU0PEC9Ffkxvjfuzb1XpwpPTwIX09EASHZXYkX/RqMVF2oJKUY8gIIgOBWWZWe44
	MEzAB+4rJFXfljAylmC9HgWi7KJVVJrOUeoaL2XdApn+rAAbePfVdIRWWCVw0aiAARoj
	Td4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SbVQkix3fDImbUT6vGFLO+DprOfIcyVhb1Oqq4GPJ1Q=;
	b=gBSreecZs31nKYzDHlR8szFVlrMeUcsiNHJcP7DF3+iHv9BBO2pcZlpnFdt4X7paCV
	KpWxN6qCtqC4xCiwfkhcBtXbvzAt/5EdPYJK0m01KS7zDj/I6JRmIKMqyG3YvI3eYLQZ
	KlkxTZNmIYKHN+jUawaHongXLPLSYug29NnX5hbNrSvR5H8dphuSr9N/XpXaSp4WHcxs
	gLLMp+CaB6aNdj9WcVHLidD0Ng0/V5sP0m8I4EwfEQF5THFJzz4hPwy5Sc+NkD8Rjnzc
	+8sAeJVKhjetWcX72wYFFT9uPe8rqqSOcqd/3yQ/MLpCkDUah2B1VeetdCdwwz5IRxQm
	hFAg==
X-Gm-Message-State: AOPr4FW8kWNJAf9bzMdHk+Z9Led1YKJyVJ8ZDlK8BZsBRdCUNtNCuZRqBrLy7c1LvRQ4DQ==
X-Received: by 10.28.211.10 with SMTP id k10mr38730179wmg.82.1463694159056;
	Thu, 19 May 2016 14:42:39 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188])
	by smtp.gmail.com with ESMTPSA id w82sm1288008wmw.5.2016.05.19.14.42.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 14:42:38 -0700 (PDT)
Date: Thu, 19 May 2016 23:42:36 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160519214236.GG9848@resin.home>
References: <573DAE5A.6000707@elfin.de> <20160519143914.GA3601@resin.home>
	<573DDB17.5050007@elfin.de> <20160519152756.GE9848@resin.home>
	<9F9E2F05-CC7B-4F90-AAED-0B327C09B733@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9F9E2F05-CC7B-4F90-AAED-0B327C09B733@gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 21:42:43 -0000
X-Groupsio-MsgNum: 30091
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uc35eWnScqDcQrv5"
Content-Disposition: inline

--uc35eWnScqDcQrv5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 19, 2016 at 09:40:13AM -0700, Khem Raj wrote:
>
> > On May 19, 2016, at 8:27 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > On Thu, May 19, 2016 at 05:26:15PM +0200, piotr.lewicki wrote:
> >> On 19.05.2016 16:39, Andrei Gherzan wrote:
> >>> On Thu, May 19, 2016 at 02:15:22PM +0200, piotr.lewicki wrote:
> >>>> Hello,
> >>>> I'm trying to build a Yocto image for raspberrypi3.
> >>>> I'm using only two layers:
> >>>> - poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
> >>>> - meta-raspberrypi (master: rev 9912d38e97671704822d1aa05312a0439cb650d3)
> >>>>
> >>>> I have built it by cloning both layers from git (and changing poky branch),
> >>>> then I sourced poky (source poky/oe-init-build-env), added meta-raspberrypi
> >>>> layer in conf/bblayers.conf and in conf/local.conf changed MACHINE to
> >>>> raspberrypi3.
> >>>>
> >>> I just tested the same revisions as you mentioned and the board boot for
> >>> me. How do you test the board? Over serial?
> >>>
> >>> If you are using serial I suspecte you are not setting the serial
> >>> console. if you are using tty1 (hdmi) you need to add the specific
> >>> console argument to cmdline.
> >> I'm using hdmi. Where can I find those console arguments?
> >
> > Boot partition, cmdline.txt.
> >
> >>>
> >>>> Then I have built "rpi-hwup-image" using bitbake and dd'd it to an SD card.
> >>>>
> >>>> Unfortunately rpi-hwup-image does not work on raspberry pi 3.
> >>>> Boot screen halts when 4 raspberry logos show up and that's it.
> >>>>
> >>>> On the other hand I have tried the same SD card with raspberry pi 2 and it
> >>>> booted up (!?).
> >>>>
> >>>> Can you tell me if there is still support for meta-raspberrypi layer?
> >>>> I found that this layer does not follow Yocto project naming convention for
> >>>> branches (I think that the latest is "jethro", but nothing newer besides
> >>>> "master").
> >>>> Does this mean that there is no stable and up-to-date branch apart from
> >>>> master?
> >>>>
> >>> What do you mean rpi is not following the yocto project naming
> >>> convention? It does miss a branch for the last yocto release but there
> >>> are already for the old ones.
> >> Maybe I explained that wrong, but I've noticed that it's missing krogoth
> >> branch.
> >> I think that if something like this occurs users are a little bit confused
> >> and have to choose between old branch (potentially outdated) and a master
> >> branch (potentially unstable).
> >
> > Correct. I'll release krogoth too soon. Thanks.
>
>
> I would suggest to delay branching until we really diverge from krogoth in incompatible ways
> just makes it easier to maintain.

Indeed. Sounds like a good idea.


--
Andrei Gherzan

--uc35eWnScqDcQrv5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPjNIAAoJEHO76Gt+erfPL5kQAK0IomG2eMFS9dWioo1607K1
nShD8pwGuIpZYAIekT1BUKB7GboDJw5LSbQohMdfrCclqJ4tCmkOLSU6Exk6vKgr
AaDcEu2LLde87pvPEgHmKUk2Z87T03oACIzZPVogxf1/UPxPVPOlyktWWpe4z06W
fCHLhs8UQpyJHt9mCSxxLxX8LIPM0vBG2RSJAXT+tkU8eOJGJMr7RovMBp3dlQkZ
Z/nFzhrVOgC/QxIYr4J6PEKLDC1LLeD7A5uslQtrI5KSPqm5TzwHhs3lS4SiLMaF
GWgAZ1GcIgoJQTFAlu/78ypwLQ8WSVcVdDTgriuI3sT5RgHIN9ipjM0WiR49v6AM
DMH2pIpdRZgvbrMBYsIZGAR/OGL+tLiHYKQzoJbaFo6KZbVMuRy9bH42lrNq7jRi
G61KIqvPYUFIZBY2sEHuJQ7R1g1SnLStHs3MH6i8fcQbT6fvCo73YOWyhqWWMUs8
k26L1S7WqV/unBpYujlaNEaEAgFh1AVolfcAgcBziFbsB3g1Ip7a14xFA2kGuJOt
Y5g0ILwiBrnSE8zSBXi7xQsgQCELshT5hTh3ELzNb0BnWpLxMs1gXNmQHCNgLHwV
Qm7CnWwRxRE0SIwOO6xoQ9xG04QSoBCZfWDNZh4Axku8EPydsb/QsiylQtvbnflh
bn7SxBvmUeNVgn1KHmgz
=Jt+r
-----END PGP SIGNATURE-----

--uc35eWnScqDcQrv5--
