Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB5B9E00C73; Tue, 12 Apr 2016 20:15:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1825BE00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:15:41 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id v188so150429335wme.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=GJl7YBtJfm2g197K1AiQQ2ckz8zLre6tm+ZKbSoCiRE=;
	b=imXQQJGI8gEZlIZnyzi3xUKTJoQpzJDGcE1cJXhc6DbXgd0XLWZrgDIMKyyKIq25Jv
	xcWiAoFvf9AQrXXF7hlIiYxyBrOYotb4VkCwUuDenbBAlm+W10BeNHFAOm2j1HdNHXNp
	FBMeKJH3at3UQeKR0D7/GiczezT/IAweoi52QO+MzbCK9zEy9/DRPWwLtn8diwD1IyGB
	3+uCx53o3E5eKvtsN5sKjFPKPG2SAn9DXkWD5ay5cjPVaYm8p5gNhm3d0uGxbZjK8u3l
	sPpWp7pp9bgTzVy+mdS4Vjt80vXOFTSUlBGkDlXa9PvJNw7z9NCWLg8mbpsSqAfOjq9F
	8uxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GJl7YBtJfm2g197K1AiQQ2ckz8zLre6tm+ZKbSoCiRE=;
	b=lvo6rzGydDetPI3HMKfVqoYGbqkvn/DN7WR7yoXsaWZYSK/z5qUVj3WxOyJB1zZlzx
	FUcf3c+zgz6rLLN1tVUvM7B63iEDLLsDdIbGDHcEUnyRaYp5OdyfrmYZdcRSinjnBO0j
	OXbPvyphMsOgHdo6y43z+2iTqsGHDhqQrdI63Zp+hnpLFDyI6M6Crxiy2LKSlDKrzlJE
	nly3jTLanHg9zmKZG2Sx2J1hyI4EqoylEvMYafS+ke4fQKV1T9J4y5ZfbfY3Bp3nfxhY
	kQNvuoFKSRLvV+4R19mHhYHFIFbWJRsDOgiWheedzbjUc1+2GKd5QdR2UWs3SZVrffg4
	6lYA==
X-Gm-Message-State: AOPr4FWe2/OhWnG62OCFolP7pl7j2t8gSvPzFdOisLY8YnHfA1N5D7wGZOfLaraUpnlBJA==
X-Received: by 10.194.234.101 with SMTP id ud5mr6903813wjc.34.1460517341130;
	Tue, 12 Apr 2016 20:15:41 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192])
	by smtp.gmail.com with ESMTPSA id gr4sm678883wjd.23.2016.04.12.20.15.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 20:15:39 -0700 (PDT)
Date: Wed, 13 Apr 2016 05:15:38 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160413031538.GI22139@resin>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
	<1457532907-49811-4-git-send-email-theodor@gherzan.ro>
	<CANwerB3Xp2_vZ320gfiWWEWOuCQzvHVuXgDiPpopFD2AuVT3-w@mail.gmail.com>
	<20160329220650.GD4325@resin>
	<CAJjOg+H3TFZUw0wB8Gw+BP2pzyE7pgzThj84eJm9LqPd9_VgKg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJjOg+H3TFZUw0wB8Gw+BP2pzyE7pgzThj84eJm9LqPd9_VgKg@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 13 Apr 2016 03:15:44 -0000
X-Groupsio-MsgNum: 29399
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X0cz4bGbQuRbxrVl"
Content-Disposition: inline

--X0cz4bGbQuRbxrVl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 06, 2016 at 02:30:41AM +0100, Theodor Gherzan wrote:
> I will have a look.
>

No need to take a look on this anymore Theodor. It was fixed in master.

> Theodor Gherzan
>
> On Tue, Mar 29, 2016 at 11:06 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Fri, Mar 25, 2016 at 11:34:21AM +1100, Jonathan Liu wrote:
> >> Hi Theodor,
> >>
> >> On 10 March 2016 at 01:15, Theodor Gherzan <theodor@gherzan.ro> wrote:
> >> > From: Theodor Gherzan <theodor@resin.io>
> >> >
> >> > Signed-off-by: Theodor Gherzan <theodor@resin.io>
> >> > ---
> >> >  .../linux-firmware/LICENSE.broadcom_brcm80211      | 205 +++++++++++++++++++++
> >> >  .../linux-firmware/brcmfmac43430-sdio.bin          | Bin 0 -> 368957 bytes
> >> >  .../linux-firmware/brcmfmac43430-sdio.txt          |  66 +++++++
> >> >  .../linux-firmware/linux-firmware_git.bbappend     |  29 +++
> >> >  4 files changed, 300 insertions(+)
> >> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
> >> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
> >> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.txt
> >> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> >>
> >> I get the following warning when building an image that installs
> >> linux-firmware-ralink package (but not any of the other firmware
> >> packages):
> >> [log_check] WARNING: The license listed Firmware-broadcom_brcm80211
> >> was not in the licenses collected for recipe linux-firmware
> >>
> >> It seems the license is not being packaged correctly.
> >>
> >> Could you please have a look?
> >
> > Theodor,
> >
> > Any chance you can take a look on this?
> >
> > Cheers!
> >
> > --
> > Andrei Gherzan

--
Andrei Gherzan

--X0cz4bGbQuRbxrVl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDbnaAAoJEHO76Gt+erfPU2UP/3g6dSUnCjABTh4AL5hY/GoS
5I1TMmcfkEcbkJo4rnH3pNWo6GGlNIq+Sr2/0fJgpfeJAjpQOfnIEBKxrBhgpfwY
CsHQrgIYYiVAjKQP5sXsNXLTh1TKfUbckj0PzKjA2dE4d/On1KWxGyMWt8tBG83W
n3QL5P/oV7a8krYavYsbdim/F6hTKxI2AwXALLS7Y+uu0w1GutrkC/Z3f6sRrxkh
sk2ZoSvISt3BEB++UfYWeV7U+3p07kNUX0dAqL5VH3y4JqGUAxa5H4x7PtAwAMfg
peLXltnShGkLGUeIUXcNMLnNj50yWnjis5TPxmIQ2vGVRnnaYjLEoIhzHF/Iqrvs
8NyZKzj8wbBO6yVcmhBfllEJjC+FnmGuWbbAq6SIa5Kw5cQayUUkxkk+LZMM3erE
PC9cQL/WJgqCJYHZMmlKMp50Da/81dB8ulz6iyur0L+aik54PXNzBFCM9nSbNXME
2Tcplo7JuQ/iqkfPlzGmeoAlF0dc9gNeZffmPqtloOJPq59Jrq23cF2SLkWsN1u3
Pz0aBZsfvRsS+AseYLQ6pmuYWfm8RFoSPBHaYMmhvzPTQgxqAe1BrXg+AFgorzlr
AcpTf3S18KtHccL1hhG4zSq/zsFoXS/aU5hD9a2IN7hnixPmS+MfNFTMW3dkTXId
Q8FRRmSOONTGJe9NVqMD
=vefT
-----END PGP SIGNATURE-----

--X0cz4bGbQuRbxrVl--
