Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31AECE01492
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 12:59:01 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id kx10so2825958pab.13
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 12:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=iC5n4+kvD1np5n7azaXizD1ZGf/CCHc2jO2smg2GeG0=;
	b=LK4puGE/FzJmvCvuM4e8hAUJ5L9OzUT7ePohO3VzkjVHRzb///dbXucTcSacKK8+53
	/S8gDjFTY+XN18Az5ib2uuN2Qd+5WOLCnGpCo4S9UnJP843LpwGlnx8OLI6JMBsnR4n4
	lFzpRrP0gD8oyG/RZ1BuoVrErRV+cmXqZ6N0MWbiLsC6J01XsGj/dzrreYQ2BoBuE8GF
	Z5isYk1LMNh4LFURT3r2bBJlC3Uj5PfhMoXTrWvdR6/1EDx2PHA7RFFmNWpDNYSUs2lp
	yXOpRHW4rupJpkLeI+Cy0UvbUGSe0Dt5lLwmDP0PotmcsCj4nzYTDCDt8IaWkeWDac8j
	Td1Q==
X-Received: by 10.68.171.67 with SMTP id as3mr13015297pbc.18.1372449541463;
	Fri, 28 Jun 2013 12:59:01 -0700 (PDT)
Received: from kosborne-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id eq5sm9520215pbc.15.2013.06.28.12.59.00
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Jun 2013 12:59:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
Date: Fri, 28 Jun 2013 12:58:58 -0700
Message-Id: <04E09382-C8B6-4703-88B7-099564791B09@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Fri, 28 Jun 2013 19:59:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jun 24, 2013, at 7:57 AM, "Burton, Ross" <ross.burton@intel.com> =
wrote:

> meta-yocto is what makes Poky Poky, otherwise it would be just oe-core
> + bitbake.  oe-init-build-env looks for sample files in $TEMPLATECONF,
> which is one of the things that get munged as
> bitbake+oe-core+meta-yocto becomes poky.

yeah, meta-yocto could have been better name meta-poky that would have =
aligned the name
a bit. Its a distro layer much like other distro layers out there on =
layerindex and then there is meta-yocto-bsp
layers which is much like any other machine layers out there.
a difference to point out is that poky uses the tooling to fudge all =
layers together and create a single view
and is a leading user of combo-layer tooling provided by OE-Core. Other =
distros keep the layers intact
slugos e.g. uses git submodules to maintain its layer setup. angstrom =
has home-brew toolings and so on an so
forth. Both approaches have its own merits.=

