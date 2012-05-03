Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D246E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 14:42:39 -0700 (PDT)
Received: by werc12 with SMTP id c12so1919934wer.35
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 14:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=srlyRY3bjWtGomTjv8ZPn5KUQDxmQGFOSaC2idJUI1A=;
	b=G9ya3qk1j8MKMOEjsoVSB3zBpt+BSRZPLHtS++TrnTt56cMMNX4+I59M4tT98a/3gD
	0ajPSn+wgLvCMwm0kTEvT+wMUYCH1VF0uZ+lB0dM0+aMjH8MycTiqkC7VSWqpeYwdXMx
	iqMh0CncmIWdEtTTFZtptIB5SXpugLSGvaBU6SxmqfxSAfRxMjb9Z7X09MvFxooRUs34
	PtL9NzwGG094AokeP3IxiD8peCO1n3V/kcZzxRjknmWCx7Z2VdraIlN8O80ljR2Zd9k6
	gG8iWTGMEZ0d/m93+LHtC29wtwAC07cr238St2+ET6efNdFVm5OPIPZfjFF1OQgwJlDm
	Cevg==
Received: by 10.180.24.7 with SMTP id q7mr6383743wif.11.1336081357639;
	Thu, 03 May 2012 14:42:37 -0700 (PDT)
Received: from [192.168.1.35] (39.Red-81-33-71.dynamicIP.rima-tde.net.
	[81.33.71.39])
	by mx.google.com with ESMTPS id ff9sm22642wib.2.2012.05.03.14.42.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 14:42:36 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <4064BB91-B82E-4D59-B0B6-A21FC9733C0C@gmail.com>
Date: Thu, 3 May 2012 23:42:34 +0200
Message-Id: <E6B74C60-DDCA-4C71-BE97-3DFF81257C34@gmail.com>
References: <4064BB91-B82E-4D59-B0B6-A21FC9733C0C@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
Subject: Re: How to specify a machine defconfig for a linux recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 21:42:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On May 3, 2012, at 9:55 PM, Elvis Dowson wrote:

> How can I specify a machine defconfig for a linux recipe?
>=20
> For example, if I set=20
>=20
> # kernel provider
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-omap3"
>=20
> and try to build my machine, I get the following errors:
>=20
> ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'. =
Unable to fetch URL from any source.
> NOTE: package linux-omap3-3.2-r0: task do_fetch: Failed
> ERROR: Task 125 =
(/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 304 tasks of which 302 didn't need to =
be rerun and 1 failed.
>=20
> Summary: 1 task failed:
>  /tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_fetch

I solved this one.=20

Turns out, since I defined a new machine called overo-fire-chestnut43, I =
had to also create a folder called overo-fire-chestnut43 to hold the =
defconfig file as follows:=20

=
meta-gumstix/recipes-kernel/linux/linux-omap3/overo-fire-chestnut43/defcon=
fig

I recall, the trend was to move away from user supplied defconfigs, and =
have it get generated automatically by the build process, and then =
specify some hints. Is there any example of how I can modify the =
existing meta-gumstix or any other meta-layer, to get the defconfig to =
get generated automatically?

Best regards,

Elvis Dowson=

