Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E49BE00A9C; Mon,  4 Apr 2016 11:33:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B556E0078E
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 11:33:12 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id r187so12419130pfr.2
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 11:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=xbkLOv8sUfXDw62CwVJRGWvtr9YD264hdVO66Z/IiFU=;
	b=B6NDtgyPbhdkH4nkvuonCSvHo7zLoMKgXrcGbga0YAokrIUYLA4z2RsM6laxzpT2pH
	daUXBodz9UaxDPCFaUw4R37AL80vAx4+4bppJiBQbGsckcDyQ/76IWdPy8mfHGy8E+Y2
	EQvIhhwmBUZB2cJ+XEChrRCqx8kwQCZb+tS2Dfl7AeXVsZASKL5ftPyuqfH9R80/b80Q
	LdMPO08Ti7Gd6/k8U0by2AgA0G/6GXKtE1SxVNLg3sS9c+Jzy1ZHPvWdGimj1sCX3g+X
	kEB/+YrgYd8iz1/GA68d4KPj0Ih7tsBx+FfjnAM4IbguMm4YzEWbec3dSv8gGJynJFZ6
	vV3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=xbkLOv8sUfXDw62CwVJRGWvtr9YD264hdVO66Z/IiFU=;
	b=Ii1TSlRnVtSpmCXSzp1oS/9yH+A60/JKbFXm8j/SSr6nR7k2BuBenegNZ6tKoddoF7
	MqJSsUVuL6IecTZD/r636qTdwD1ssKuuRm1qoB0f0FG6irkiydlHxzAYNJLhmQI6Kf9y
	Fi+AOtjE5UwslSivh1Nv3XaiT+gPRDLvRS387vA1rfRKz9CXxxREjGGpe57XFRSazGEC
	V2kQ5BchKPR5J/+QlzwFKURhVntFQeAz6Bt8+nnWZRDXUnaGSMMHNEXBvSoMzplYAYFt
	ty1kojzdeOmJL+Lmo8GWiW5xsBpyj4NXbGrPCZ7CrVIKW5WVU10qu0hk42NjO8FCsQZH
	5fmw==
X-Gm-Message-State: AD7BkJLKfXo77SvNLc8xq3m2Oa0uubIa8sKGzo+tMzuCVu9iOAo03utL+b/lSOtfoOkGHg==
X-Received: by 10.98.68.209 with SMTP id m78mr22787957pfi.153.1459794792380;
	Mon, 04 Apr 2016 11:33:12 -0700 (PDT)
Received: from resin ([209.65.105.100]) by smtp.gmail.com with ESMTPSA id
	p79sm41145511pfi.61.2016.04.04.11.33.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 11:33:11 -0700 (PDT)
Date: Mon, 4 Apr 2016 20:33:05 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160404183305.GC14683@resin>
References: <1459792452-2692-1-git-send-email-andrei@gherzan.ro>
	<5702B35C.1070106@technux.se>
MIME-Version: 1.0
In-Reply-To: <5702B35C.1070106@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] README: Mention all the supported machines
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
X-List-Received-Date: Mon, 04 Apr 2016 18:33:34 -0000
X-Groupsio-MsgNum: 29286
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GPJrCs/72TxItFYR"
Content-Disposition: inline

--GPJrCs/72TxItFYR
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 04, 2016 at 08:33:00PM +0200, Petter Mab=E4cker wrote:
> On 04/04/2016 07:54 PM, Andrei Gherzan wrote:
> >Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> >---
> >  README | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> >diff --git a/README b/README
> >index 536926b..542b135 100644
> >--- a/README
> >+++ b/README
> >@@ -73,7 +73,10 @@ revision: HEAD
> >  a. source poky/oe-init-build-env rpi-build
> >  b. Add needed layer to bblayers.conf:
> >      - meta-raspberrypi
> >-c. Set MACHINE to "raspberrypi"/"raspberrypi2" in local.conf
> >+c. Set MACHINE in local.conf to one of the supported boards:
> >+    - raspberrypi
> >+    - raspberrypi2
> >+    - raspberrypi3
> >  d. bitbake rpi-hwup-image
> >  e. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz=
 is used)
> >  f. Boot your RPI.
> Good, this is a tiny but important change! Should we also mention
> raspberrypi0? Currently it just includes raspberrypi.conf and the the
> raspberrypi0 MACHINEOVERRIDE isn't used for anything, but still it is a
> defined MACHINE. What do you think?
>

Forgot it. Will send PR2.

> BR Petter

--
Andrei Gherzan

--GPJrCs/72TxItFYR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXArNeAAoJEHO76Gt+erfPvEgP/j9Al3Ch6zubx5Mrb5Xokmqp
lznikeIgMUX5hRaAvFgLomKu6SRtDgZ1sbFC3GuziyBIlFhDwYuHmuHMossyvK9k
SJbG3t1nZCmgx/wphRaNwFzRfdvgopzdU/wIxJnvav4Wys1kyaR6SQnD/Oo5djS/
/g2o8XqxCpWS9/9zcaM76HB41LeuCUITaVgMrOUaKuHAUpR4fvQEJUhbO1gxM/lh
ccRL8FuTlcyNCnamqDHe4t8uk18N/DC8pjNUD/CEh1c4CHsv8WUa1pQxlNhjjQWp
LYlUfGK7V935OVu+PX4D7vx8ABGC7+lzlXaT64J8Mj3L3H1tG2XHs6OvQEBs5Nwz
CjZDs2utly3qo0Ss4/ZeHu5GU3D3QasLjXfpyXmFhy8HUTnIRCzGk6iBtXiMFtif
ZWjI3JmcMaD4kPccfU9j0vIaNc6IoTR8WSCjL7wg5TaQNVpXFm6A8e13fAfQLchg
8pD0XOlO52r9vOGmhZ5qUnLfF+8ncXiikc555lZ+o27XFLD9spRhX97YB55M1JtR
6rhJvC3KNGttQiiT+aIkf+vrhmb7nCcMHIeUHTxgL1widrfH6YMwOEpjRMcRKTvJ
iT3UiagSvktcOhBgt3aMa9MJpQQ0f2ZVdM3WF/3mJc1ek/69JiKTJDt5IHOuiVOl
NGIrjjFa4gK5gY9qgBJn
=7Im1
-----END PGP SIGNATURE-----

--GPJrCs/72TxItFYR--
