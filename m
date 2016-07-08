Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CBC0E00E96; Fri,  8 Jul 2016 06:12:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F205E00E8B
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 06:12:46 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id w59so6074766qtd.3
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 06:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lH9OnuO9BYk19iyHxd0rG7aoRRrV3xLSTAY4A/8Y/so=;
	b=052x/4w1meEghVzDCQKC+XMlit9dU6AXRYT7/cv+/7VgL3a9al+VXyD+ehDlN4SeVQ
	rSLhbQyy+91alEda5MPwZCbhp4I0qG6GVZVUpREYUgmkLb4OhIw+kvh8NUYlhfMm9+DY
	nmU8lLTU6CVI1iL5pGGJ1QTxcmrCLIRszqP6g8lnxVk+7lXZiLfmSlrCoqlpUycKuKtb
	M3xpbX6m0TF74q1bDfcRNiUmoCfh72AcKkHlPQ9AA+9lzUTCj8MqnA+RXw3MD0pFeeJY
	qaIngEajFOw8ruNkDDoYmqzX0hckuIZXMs5UhsVuOzvz0uwG2JF4IERy3mSZTSzwndU1
	IiZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lH9OnuO9BYk19iyHxd0rG7aoRRrV3xLSTAY4A/8Y/so=;
	b=cJq87d/j3wwPqkPUFrJxHgR2FfhihxkZPBprYDVjRuF0wz1vpDU5ZTSTmwx0hztLXd
	GMifA1IDtF44yKbB1gFBuPpB7R4O00qg6iENP0JhBcAGF3HJeOIYGBaXJxlO9LApqMH3
	1YsFc3+bBJrmWXf/AGZVCDUk5BE39An0nbNp/F/XAp0iQtz44UnrVkD2kT2I8X4a+A2D
	vkZd/j6rsDQ7VY6QakfUqIcr3au1n26qgFCYFAbJU8rc5Celi4+QsC9nzC+HnReyczL/
	9ZVNcgZCfo+rOjOh01jtlkmvwJNlR95UpJ/3UH7P32bIumaEcda0x01BHnhrByuyZXOv
	Ri3w==
X-Gm-Message-State: ALyK8tLwE3EltMheWa54swIPK7pKVyzsVqZZzkEgWsA4SUOiifNecW4NEb3oiNh6Ss3Kow==
X-Received: by 10.194.54.7 with SMTP id f7mr5441445wjp.49.1467983565349;
	Fri, 08 Jul 2016 06:12:45 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94]) by smtp.gmail.com with ESMTPSA id
	t71sm2964133wmt.24.2016.07.08.06.12.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 06:12:44 -0700 (PDT)
Date: Fri, 8 Jul 2016 14:12:42 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: David Weisgerber <david.weisgerber@ms-gmbh.de>
Message-ID: <20160708131242.GB20442@resin.home>
References: <1704123.nFWplM32RM@valkyrie>
MIME-Version: 1.0
In-Reply-To: <1704123.nFWplM32RM@valkyrie>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Fri, 08 Jul 2016 13:12:49 -0000
X-Groupsio-MsgNum: 30956
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xXmbgvnjoT4axfJE"
Content-Disposition: inline

--xXmbgvnjoT4axfJE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 18, 2016 at 10:15:39AM +0100, David Weisgerber wrote:
> Hi,
> did anyone succeed in building an image that runs on Raspberry Pi 3? I set my
> conf/local.conf to
>
> MACHINE ??= "raspberrypi3"
> GPU_MEM = "128"
> DISABLE_OVERSCAN = "1"
>
> and built rpi-basic-image but when booting the Pi 3 up I only see 4
> raspberries in the top right but nothing else happens. The image works
> perfectly on a Pi 2 though.
>
> Thanks for help,
> David
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

How do you check that the image is running or not?

PS: Please us the correct subject tag: meta-raspberrypi.

--
Andrei Gherzan

--xXmbgvnjoT4axfJE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf6bHAAoJEHO76Gt+erfP5m4P/1UE9tvUfh/JR8Ko4DNftocJ
oH8myeZvgbWSEP2U2i9IKSKnLMsVL87+P08vGedYQg2BXgU9WqebkquxVptl8jtc
pqdjLeGjy+Ujl2V7EtoGfcPHX4bWestz+L6LP+pTYICEqacuAP20hoosuO0DVj0T
/dqHovdWM0Ar349Iv/gYljA6dUKC9ZOuvL/HpYsq+q4hVGHATvkKuxp4qgIRq5Lh
z8kqg5nLl5Slf95Z97ZJES1qipBSZkocdpjaajihz9EGN/m8rQQM0mnX+ooZ+wzg
rOejt8Dr8y4qqSQMlLEu39Z18l8WJxWzGRsqmVhFTCGAFtZN+BAV1m/UVzslQZdR
sXWDO+0cTPLZmbEtn5ti9jzQVseC99Y+tpNxdPBNM78HCxWBmaDqgxw+NJruGdS9
xS5Q6/NJ1Qy5C2z/qSUnCwSbQhPo+m0nwEWDI6Nmhdeb2kYqFTveV98LrdCZ2kqt
qtK7HhMWJe7ZwmjVUtnWa8DGn7Pp4qDHHu6bF5nv13Qnlnt8eKwQdx/IGdQeH63P
aVlnGbS4KiwycWYSk1VvDOPGHul0anhA+BAXYeF6HE2TgmWuRKmU8xZaZ/a76OrV
Q20LeUzLlChy63PBfzHtmUX89n8GqRzyNkF55Iu9NT5wRL5dCKgPAmuq5E6QWRIC
qA1WhqIOgd7mSWzdYlix
=UTKU
-----END PGP SIGNATURE-----

--xXmbgvnjoT4axfJE--
