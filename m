Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F8D6E003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 09:12:02 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id b47so1605516eek.17
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 09:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=h0lnpTNVJbmRxsrvuVwhJw+StQD1rv5bMi6PhxnkL74=;
	b=JsRD53Ce6v9XT11i6iczjri2erhxs86u64f3qCeGyfwNVXQA0sphGcbpywSMaMpR1V
	ODwKp+YmxZnQXVgPiK5jcf3gdD3ccXxNR0KrKXYoGl36VNGSp2ehTGOfP/GWPp3kMFts
	DdK0RXwUCzFwHFOrLq6fIfMIsNidsn/bajbbaJmUbAy0sDCn/uN0rGMZbkwNE2jqvO1g
	8YNidDI5vyH7mqCqJCNeo6Z4JRHDRhWXoDRmUg8fJHzYth2X7eLMaM6iT4Mulu9Rv4FT
	O7i+YPeJohcS8H6MsdThUnfvRXAgtsvxE69OGmsMazSYnLMFz2AS1xK/FYE0Pv+R8U8V
	LU8A==
X-Gm-Message-State: ALoCoQlVSWHcH+0BpsVn5KgnRdQd/4J6xZvtjeTjV63N6S+hYCwxhRTx2oZDCO1hzwCzKQIegthV
X-Received: by 10.14.209.4 with SMTP id r4mr4572910eeo.131.1375978321204;
	Thu, 08 Aug 2013 09:12:01 -0700 (PDT)
Received: from gmail.com ([132.231.11.113])
	by mx.google.com with ESMTPSA id a1sm20380238eem.1.2013.08.08.09.11.59
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 08 Aug 2013 09:12:00 -0700 (PDT)
Date: Thu, 8 Aug 2013 18:11:52 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <20130808161152.GA37566@gmail.com>
References: <20130808131349.GA30527@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20130808131349.GA30527@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [FIXED] ALIX3D3 Live Image "Waiting for removable media" Problem
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
X-List-Received-Date: Thu, 08 Aug 2013 16:12:03 -0000
X-Groupsio-MsgNum: 15397
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline

--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2013 at 03:13:49PM +0200, Eren T=FCrkay wrote:
> output, I see that all geode specific features are OK. The kernel probes
> CF Card and finds it as "sda", I can see sound card and framebuffer
> works as expected. However, udevadm complains about not finding
> /dev/sda*

After hours of reading udev output and trying to figure out the problem,
I learned that udev requires CONFIG_DEVTMPFS to work properly. After
adding the following fragments to my kernel configuration, I was able to
boot "live" image properly.

CONFIG_DEVTMPFS=3Dy
CONFIG_DEVTMPFS_MOUNT=3Dy

Message to the future: I hope this information will be beneficial for
anyone who is struggling with that problem.

Best regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJSA8NIAAoJEOM7bMm6HhcT8bMP/2aiKHARc/uujucBIu0t0zKK
xTkF4pRXVjtqQAzH7/4bTL3XrosGispKGUSheMI8VQFkMwFPsxi6tnvxkShE3NH8
ExoF/SOUZ2qqV3Qhu6cMAcj3EKskGtoxFTraLsIcSprnWcWDpR+RFQ42NoOMZ0aZ
Q8b7Pfm8w5w1v4HZOYJOJu1QgPthStDqZPp3e2zsGXQwlXBiAWsd/55V/hwVQyHy
dgyri/wWjZMTq9nJQ0g7OStFtXY/Owl2af5LywGwPoTmQGNw8Kt1816ZEsOyCuiK
+RWneVD1CC/W8tQObWjZkG9OR07Ney7lSULcD+iQ24LTasrjaWBvqYdz7PMiPzbw
h9V8/iBftEt8TnVGOnJaOGC16qaowc8zKHsvqq2VtbAy79y0WKwV8ioleJQEEM4s
lpM079aLvmU84rRhQhF0DJSvZUipUVTaTAxCzCvecG47IVH4Q+KzEGRCljSEga0M
+EDnHr6n7UArdiSnWANDF/b+6yVRIc3IosnMhABpXnfv4xrjE0hmZmPtRWoXWRXY
n1scfWi+sF7tDJ+Z9M4hab0cs25nyoEMl00/XVZuIR/vo3Sv8P7uGl5c+S5eELIW
oHBhZ8zdRlx4Gc5bAROWFls4sq4PTTTxnw6lvJ1CX9M3HkxPb7fJLQMd0f6UpbK1
85ln9PiL0uUJFOLENm1f
=3Vgu
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
