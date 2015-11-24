Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 174D9E00B6F; Tue, 24 Nov 2015 05:25:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5833E00B30
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 05:25:17 -0800 (PST)
Received: by lfaz4 with SMTP id z4so20313120lfa.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 05:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=cS1GmsEMwihgeQtyXX0Cb001rVXly+ci0/9aDUBrM94=;
	b=NIYcfGXx1wzqCkLTglTvvqp148fAg544ngRyxd01hoLpSak87UH7OVdU3XkjLNzYQD
	Tb5mUrHP0+vh+NqyAiTVHnaIK2o1UKaaTmYepRSTdeSsS44+pxc0uyo1YYktfAbFLj8o
	ITgGCZWDeunLZ4wL9q7qMhEf0RAAyrDQ1OHFuP5vq+OboA31DR0/oXC7LE6C62D3Ejvo
	0mHFuBtsjnp1C2Kp+jzje2bgapnfrsyZeiQwsH2oyDFvTlRcbT61Uwr/1C+XyWlqpYia
	B0eymdT9Hf88gpDLVgcHHyBzfZTcW7Kn9qEplBSiTDCH/6FFz3Jqv33GXNAJRdRyf1K5
	EmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=cS1GmsEMwihgeQtyXX0Cb001rVXly+ci0/9aDUBrM94=;
	b=P4u1wnhvebxZwfDZt+PIMuhn20nk9DDKLOejgcsElf6j5MYaw/0tBdDdzETF478NdS
	YOI7THaqePzuw/NfT/mneOCHLMS3vwmpXEqcb/5iMFJCy/DpahXuJvUvuR96/hVd90k/
	qVdK+TEhGwDu2gymLa/HKz9/G96v9wDaQTe8CyeE9W7jnB//v6js6zuqq23ZhfgwvWE0
	VvOcTB6+AeZeUxdln5Gew7OYhtP6nYyPgIOopQpbymcPJ+19FlQaFyHBwr2vOEbeW39Q
	nqkN/yzPnPWES5sW/MZxQfrxyvZ5GQw1htO7onG//9WOE6sFcTWRZv1Mw7uNSILc6UXs
	LiSQ==
X-Gm-Message-State: ALoCoQm32z1RnM7v1s7KSqdKWtmM9NVsE9iCYw/SWg6H6m1zyU/TejN7wC1wh2PMk0de7JV6to0U
X-Received: by 10.112.132.73 with SMTP id os9mr13057768lbb.128.1448371516652; 
	Tue, 24 Nov 2015 05:25:16 -0800 (PST)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	f71sm2625469lfe.36.2015.11.24.05.25.15 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Nov 2015 05:25:15 -0800 (PST)
Date: Tue, 24 Nov 2015 14:25:14 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20151124132514.GB2165@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <6AC2D51E0855E34EBDB192F9BA81BFB3A743E793@PTW-EX-37.PEGA.CORP.PEGATRON>
MIME-Version: 1.0
In-Reply-To: <6AC2D51E0855E34EBDB192F9BA81BFB3A743E793@PTW-EX-37.PEGA.CORP.PEGATRON>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: Header files in /usr/include of rootfs
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
X-List-Received-Date: Tue, 24 Nov 2015 13:25:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Andy Hung(=E6=B4=AA=E7=BF=8A=E6=A1=93_Pegatron) <Andy_Hung@pegatroncorp.c=
om> [151124 11:35]:
> I was trying to add some pre-built binaries and files by using a recipe.
> The recipe has something like this:

> SRC_URI =3D file://files<file:///\\files>
> =E2=80=A6
> do_install() {
>     install =E2=80=93d ${D}
> }

What files are you installing? How does those look like?

> FILES_${PN} =3D =E2=80=9C/*=E2=80=9D

Here you add say that anything that has been installed, but not put into
any other package, should be added to ${PN}. Is that what you want?

> ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D

Remove this one unless ${PN} is going to be empty.

> INSANE_SKIP_${PN} =3D =E2=80=9Cdebug-files dev-so=E2=80=9D

These might be needed if you get certain QA-warnings/error without them.

> The result was all the binaries and files installed and packages are crea=
ted,
> But I also found kernel header files are also built in under /usr/include=
 in rootfs image.
> For my understanding those header files should be used if I want to devel=
op/debug applications on the target device but it is not the case.

> Also I noticed the use of INSANE_SKIP_${PN} so I check the usage of debug=
-files and dev-so,
> And it turned out there are .debug folders in the WORKDIR/package folder =
so I thought that is why debug-files was used.

See answer below.

> The questions are,
> Why are those kernel header files installed in rootfs? How do I prevent t=
hisa?

I assume that they aren't in the package you just created? Do you have
anything in your package that might have a dependency on the kernel
headers? Do you have anything in your IMAGE_FEATURES?

> Why are there .debug in the package folder, it should only be in package =
=E2=80=93dbg folder, right?

Where are the .debug directories located? You should add them to:
FILES_${PN}-dbg +=3D "<location>/.debug"

Cheers,
Anders

--=20
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

