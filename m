Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55BA7E00CB9; Tue, 12 Apr 2016 19:28:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF7C9E00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:28:11 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id n3so51470569wmn.0
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=iG+VRzFihcEQbURZmuYayTu06R52uh5EU5Us8OBGP48=;
	b=iVS+xpftpxVbcspv+E9gLA4aK8W4dM7nUQEnMfip/hPWmLlQbmn0TEKQjbtw7EPMdH
	2W5aDXCzpf8L4/EnK8DnU9kpcK3AtcBvYsdl2oy1dgpSUqPOA/ExPrUynnjMLEcdak2a
	eaPfA4uaURMLjGp9x+jOA0yLLlPE8u50U7cnOplp0lbqkq40RZR62E/MasQpLYaWD2pD
	35HkM8Hf8/DKGfdBPbIHHP1cBtnnQNeGOznaXQCbCDYY7inaQ5hufmGP9ihWTKXnTVc0
	LtdmsFuTfR2yDz9Veunn3jZiaOD5IdfPVg9RUXe408mDEM6/DQD2Hzx/1iDuDX2S7U+k
	ZYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=iG+VRzFihcEQbURZmuYayTu06R52uh5EU5Us8OBGP48=;
	b=cnnB4kXi1X0C7ITXHgTgbT4sR1C+0BmzOyk7a8DfjyZmplVFZuUlOYSBgniZ+hFGYI
	b4DKaGsOQUkf82V55s50G1KFHDN8mNqHqNa566V8YNbWm3OtlSlQMVuL/Hy19NjUXWOk
	9l90pyYaljzIIl92zlgDF7GA6kKvCam6NqrmVYp5wKA3BYLFLgcfzQ/vgYRefiKpESCY
	s7jM+LYxDKNrgo6jBQjtl/Rjel2D6yJv3vM+d8SHb8kn1u0dlH01VxGqcAbZQZe6DtLs
	M0nzZYMVeNtXgV0ZU5NxB1ljeRcPoWDu6cGbSlMZ9aCCA69FaXW07a6aWIBYYw6IsEHN
	dFmA==
X-Gm-Message-State: AOPr4FXYd4nttLzYzupqoqJmEBNhXd4fuqtrgl8ArP5O3S6FQjQXYiNohnUlYrJCP9LreA==
X-Received: by 10.28.54.33 with SMTP id d33mr7801082wma.63.1460514490560;
	Tue, 12 Apr 2016 19:28:10 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	u145sm25494336wmu.17.2016.04.12.19.28.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 19:28:09 -0700 (PDT)
Date: Wed, 13 Apr 2016 04:28:07 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160413022807.GD22139@resin>
References: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
	<20160413022036.GC22139@resin>
MIME-Version: 1.0
In-Reply-To: <20160413022036.GC22139@resin>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Wed, 13 Apr 2016 02:28:14 -0000
X-Groupsio-MsgNum: 29394
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YToU2i3Vx8H2dn7O"
Content-Disposition: inline

--YToU2i3Vx8H2dn7O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 13, 2016 at 04:20:36AM +0200, Andrei Gherzan wrote:
> On Mon, Apr 11, 2016 at 05:54:44PM -0400, Trevor Woerner wrote:
> > The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
> > /dev/ttyAMA0.
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >  conf/machine/raspberrypi3.conf | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> > index 1b73f2f..cb6056e 100644
> > --- a/conf/machine/raspberrypi3.conf
> > +++ b/conf/machine/raspberrypi3.conf
> > @@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
> >  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
> >
> >  include conf/machine/raspberrypi2.conf
> > +
> > +SERIAL_CONSOLE = "115200 ttyS0"
>
> As this seems not to be unified anymore, would it make sense to remove
> it from rpi-base.inc and define it in every machine conf?
>

Or we can use the replace method in firmware setting it to serial0.
https://github.com/RPi-Distro/repo/issues/22

> --
> Andrei Gherzan



--
Andrei Gherzan

--YToU2i3Vx8H2dn7O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDa63AAoJEHO76Gt+erfPYMUQAJWnCv5a7qI5cQFoDCDE+ini
LKPrOt1xJSmK9AeDCakPjQcCg+jWKgNxVTQiCwter1qkCO/f0pUbOxYjt2w2tsSP
voFDsvkP0BaIxPI3+nzasTuZHiUk7IN2bQrc4deZShWsvDHrKuh/QKUXIt0yEQN+
9m8KZqQ4fhrxUH+6Dkb4aiBhf2mhCPEYsZSnwGO9oWPlImZrwcWcIjWId9nVCuYz
xpe9w3KAY38P3BP+pkL/cOVktjsLLn5njeya72qy/fIWmjjrnhas0js1/zfA/c+Z
FzLsaG+65tPBEgyogQ+wxNrNdlcFBq++pcb5VBX/lTeyF0WR7caUwQO/ipGM3YDz
L1ChmT+/jxe+7BFy1aB5dAM8UA4AfkfLnaBPxtAvbXildhS4g/esNYKiqDOLH2ML
uq+Zi93ELySwgst2dIdeIvt6ZE88kXV0RspTk9i9+yA4EYWX/ZEm4mCkAJBF0/5x
IMLOeo8hhq0BsxvuT55chIwsMrC3PVqjp5uzmvp6/gjCvwYtg7YGNiPzXCuUZdJE
tv0KdiYMD8R+xcbQmUFoyx5tXSIn+V/gs7kvC8GgRxDYC70PDUE6i9QPVOCfx9Dv
9KTESyxnJuIf9Vof+JgyQW+HCmJrukH8hgyAwwiuFZYI/NrsNigcu1c4MFGfGbID
7EvCCcMP5wT1HbGrTc2z
=0VND
-----END PGP SIGNATURE-----

--YToU2i3Vx8H2dn7O--
