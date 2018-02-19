Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B50F0E00D41; Mon, 19 Feb 2018 02:18:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f50.google.com (mail-pl0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D08E00823
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 02:18:09 -0800 (PST)
Received: by mail-pl0-f50.google.com with SMTP id p5so5381740plo.12
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 02:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=xRnjf1k+luxZ9NmPqWCwVMsjjItk3ekkGVKqXI0VOKo=;
	b=HiMgrrYic90ZNncO9ZLsVZcF/zyy0dnt9qgS9aKLcN9Y1SYGc6MCn/JsQsRQxm5ozB
	ZfbnoQWNNzs1duiZrH7gQ/e73pRIKtXLv0iMBt36vSW+Sczt1+RCtkiqfHr5BEJvyMyR
	X4edJ1415pSV2Lyq+l3jRRgKsYeuKi2hrmp6ImGJy2knwpa7vHpMyj+kQ97SgmV/hRX5
	1XdMXQ0iTmPcIMm9Eft3qUp3uWUs5l7b7GR/Yy6SHu/EomYj/4ZsSEboRH3Rcrrey4H0
	P3xUGL22XxidZsoJTYQh8Ztg5d/Wwjx7iU43zcfJdPA/nhmS7wC16+2tUY4L1PejxDTh
	1edw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=xRnjf1k+luxZ9NmPqWCwVMsjjItk3ekkGVKqXI0VOKo=;
	b=VzYo1BFobdrzMDkKZfiZLdc3+kjse3G95aYWbc6k8neQWM5cPF59IU3njyVQGXwsDW
	n6nCl8yX34j1uw8Tx5+gi0yY2QFilNDWTlf7ioaK+IuqfoY4G2qIVcw+3x45g5nmNvZr
	RaIepKPfonUz3Zm3hkJ3mAc4+UvYRBVt8ji9qSIbeKONs1nprUfuB0b5SLyRRbPQsaiF
	nxer8Jo3sP6mctDJLuG+k1hlhq6UmGMlfwCnIusSeBbTuLU558hgi6HuAyQaiL857F3q
	M51jjGEClhiRoKCWjcNtFy6DySTiRBb6Pdnfr4ZLas5Xiuk/kJLIQaGW/sgmzKxHsDV3
	v1rA==
X-Gm-Message-State: APf1xPCjiypsB64CQTFGBVZ8tFO54L1ZrSApTbgKzHMonSKg6oHLYIhW
	Etu6JI5NXsxV+f5DKVCoavpQteuulhlWbqabQ9E=
X-Google-Smtp-Source: AH8x226bo8Bneisdsnoctg281Hdo3MMapTQGwtv6u7kfCxQvEvc8xFEv9cXBqmTK7A3s3mNW1hf4Hubm20okULJZ7cY=
X-Received: by 2002:a17:902:9001:: with SMTP id
	a1-v6mr5421985plp.272.1519035488432; 
	Mon, 19 Feb 2018 02:18:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.207.166 with HTTP; Mon, 19 Feb 2018 02:17:38 -0800 (PST)
In-Reply-To: <CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Feb 2018 02:17:38 -0800
Message-ID: <CAMKF1sqrDFkVB0brWidTvARLpsKGHC6NFCQhP-yF25vtS_WxYA@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Mon, 19 Feb 2018 10:18:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 19, 2018 at 12:35 AM, Iv=C3=A1n Castell
<icastell@nayarsystems.com> wrote:
> I have tried breaking apart packagegroup-core-boot, making a copy in my
> custom layer, removing the line referencing busybox:
>
>     ## VIRTUAL-RUNTIME_login_manager ?=3D "busybox"
>
> But now bitbake complains with an error message:
>
>     ERROR: Nothing RPROVIDES '${VIRTUAL-RUNTIME_login_manager}'
>
> It seems "VIRTUAL-RUNTIME_login_manager" needs to be defined with a valid
> option. I have tested with the option "tinylogin" but that options seems =
not
> implemented in "rocko" branch, because I'm getting this error:
>
>     ERROR: Nothing RPROVIDES 'tinylogin'
>
> Is there some valid alternative available? Where are these alternatives
> defined?
>

tinylogin has been removed few releases ago. So it wont work out of box.

> In general, is it posible to build yocto images without using busybox at
> all?
>



>
> 2018-02-16 16:56 GMT+01:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:
>>
>> Hello forum!
>>
>> I'm trying to build a yocto image without busybox and without any busybo=
x
>> applet deployed.
>>
>> I have tried that configuring my distro.conf file in this way:
>>
>>     DISTRO_FEATURES_remove =3D " busybox"
>>     VIRTUAL-RUNTIME_base-utils =3D ""
>>     PREFERRED_PROVIDER_virtual/base-utils =3D ""
>>
>> Nonetheless, busybox binary and two related applets (syslog and udhcpc)
>> are installed in the generated image:
>>
>>     $ rpm -qa | grep busybox
>>     busybox-syslog-1.24.1-r0.corei7_64
>>     busybox-1.24.1-r0.corei7_64
>>     busybox-udhcpc-1.24.1-r0.corei7_64
>>
>> I have tried disabling syslog applet appending to my distro.conf file:
>>
>>     VIRTUAL-RUNTIME_syslog ?=3D ""
>>
>> But syslogd applet is still installed:
>>
>>     # ls -l /sbin/syslogd
>>     lrwxrwxrwx 1 root root 19 Feb 15 14:03 /sbin/syslogd ->
>> /bin/busybox.nosuid
>>
>> Is there some way to remove busybox completely from the generated image?
>>
>> Thank you in advance! :-)
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

