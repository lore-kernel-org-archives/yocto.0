Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36C8FE008EE; Tue, 29 Mar 2016 15:06:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 412E4E00566
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 15:06:54 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id 20so9660792wmh.3
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 15:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=4DEeSQbLK5XkKqubnMblXNwaWd+kC8wIgBx1AciJOn4=;
	b=aJG4j1TCv1QzUA0gkKlTvxxQBe9//AFWd+I4cyopk+1GAHRN4HE+MdhKrDdaog3qir
	/eDmu3CHk2ZKa3UnGxNC1QYVzC99c7u0NlRQeS7yI2fIKdDPZMmGb/YZN+qEQ5Q77xtV
	8CrRo1vg4rYaI7yxHe88wBWT47jsdFwEcKdH/VzyhbtgwI1tcxtQYdU/y8cGlx8VRSlf
	ocS73dcfW+rnBk7ysSDS3sFuBjsYh+c1HFyqabpFcDoErgMBWTOcnNUK2Vv8pLHpp61I
	b2hUlQRtEzv/DluaYq4qt0jKQwwoLxopVt15ibPE48o5nuQVGA4glW24X961XRFapE19
	VCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=4DEeSQbLK5XkKqubnMblXNwaWd+kC8wIgBx1AciJOn4=;
	b=T+E1OlHaLihkhKu2Q8X0FXYX8eSz6hcXpW5pF1qSQeFtjxm0AqFgH4XSOU13YUFRCy
	oQIO7FwFn+Dfd5FDagid5Qji/aDjpAA4NjoMH8NGOx4FqI/P4V7oywidSRh5gENcqChn
	g7v0ptA7hTsjy5h3VZDtuPqBsZDVrDGt7MQxndZNIqc5qwLMyXBwuDifMQDDXG1NDNpy
	EG2vyVCADIcDpKIWbU8zfjpNO6oqfKcaov1VG5kXwvB58r461caq73o4lSdXigYFxSrk
	GYBGXn6Evmd6jo9iP9e0RugRIPh9+57brxg0OliUnPdEiMvZRXhf0cBUN85LhGFEu/ex
	UX9Q==
X-Gm-Message-State: AD7BkJJc8KCwjkXhJnrA+Dwut6Qa9QAdpKmguzuPtm//n9J4CW0pX4jx0wvFnfokx2/Ikw==
X-Received: by 10.28.211.130 with SMTP id k124mr19682996wmg.7.1459289214184;
	Tue, 29 Mar 2016 15:06:54 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192])
	by smtp.gmail.com with ESMTPSA id gb9sm701694wjb.26.2016.03.29.15.06.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Mar 2016 15:06:52 -0700 (PDT)
Date: Wed, 30 Mar 2016 00:06:50 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160329220650.GD4325@resin>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
	<1457532907-49811-4-git-send-email-theodor@gherzan.ro>
	<CANwerB3Xp2_vZ320gfiWWEWOuCQzvHVuXgDiPpopFD2AuVT3-w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB3Xp2_vZ320gfiWWEWOuCQzvHVuXgDiPpopFD2AuVT3-w@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Theodor Gherzan <theodor@gherzan.ro>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/6] linux-firmware: Add brcmfmac43430 firmware
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
X-List-Received-Date: Tue, 29 Mar 2016 22:06:58 -0000
X-Groupsio-MsgNum: 29204
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/aVve/J9H4Wl5yVO"
Content-Disposition: inline

--/aVve/J9H4Wl5yVO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 25, 2016 at 11:34:21AM +1100, Jonathan Liu wrote:
> Hi Theodor,
>
> On 10 March 2016 at 01:15, Theodor Gherzan <theodor@gherzan.ro> wrote:
> > From: Theodor Gherzan <theodor@resin.io>
> >
> > Signed-off-by: Theodor Gherzan <theodor@resin.io>
> > ---
> >  .../linux-firmware/LICENSE.broadcom_brcm80211      | 205 +++++++++++++++++++++
> >  .../linux-firmware/brcmfmac43430-sdio.bin          | Bin 0 -> 368957 bytes
> >  .../linux-firmware/brcmfmac43430-sdio.txt          |  66 +++++++
> >  .../linux-firmware/linux-firmware_git.bbappend     |  29 +++
> >  4 files changed, 300 insertions(+)
> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.txt
> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_git.bbappend
>
> I get the following warning when building an image that installs
> linux-firmware-ralink package (but not any of the other firmware
> packages):
> [log_check] WARNING: The license listed Firmware-broadcom_brcm80211
> was not in the licenses collected for recipe linux-firmware
>
> It seems the license is not being packaged correctly.
>
> Could you please have a look?

Theodor,

Any chance you can take a look on this?

Cheers!

--
Andrei Gherzan

--/aVve/J9H4Wl5yVO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW+vx2AAoJENTZT2etDpZAFvIP/0IYA6GsO60sE0fYPV1NbuZy
FsZm3HrBd2sW+rIf7HVQC4ReVooJKL9AQWEA5V9vBKiNOXqLDw4SR0IpukVcIWO4
W1f8i9tPqeLp9MwCmY5NYxevYz5bID1XenoqDbrNColY0f/ESOEz8Ua0SzPAG6fh
kxsJ7XL/vUyA6rP9dAJ5FK3+Fkr8X8oq4R94q+ybhos7EX65ryXLjXcUuYbW13OZ
wHvpYRCxx4zRTqW8GUW9GyyS/pmH/gdN8Es4wF57mLmyLTs/L+qLI3cFShR0G7WM
KrI69cX6fsztOvyvxXiqW0EZk5+nu5mX0Yvw2dHR1OdlUfSraQ07nf1gCE8rhn92
C4TWfClYwoyMlTgH4jKqGS/GGO+AlzkX7ZMiu5RrUtjQP9G0VbF1bUeUu6W0OMs9
yzu0uj2w8ljo3oqVxr3ZtRfEVdz5r5itR3IQHN6Ojb3+Z363VDr6VA8L3btn8u3V
Uf9JzGLFXyo3+rSirrtDm7iuO0VPZHOf6DGk3QDQFDqxKSDrZekQiXFTWHaDs8vD
tYRJbeVkYwl+1HyEWtWZtFc2H9XoHBHYopv84mqjLTxVuIOst44FMVQ0ssDDISia
MNJih+DQmbtAiNzLsO2mekNOlYm1AUwQWZlqpm+xbltBVKW3uYLsgeEcV+FpUfZS
BrWF7IucPVkR0eKvKeEx
=y0/D
-----END PGP SIGNATURE-----

--/aVve/J9H4Wl5yVO--
