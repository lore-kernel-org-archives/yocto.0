Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E5BAE00ADB; Sat,  4 May 2019 07:06:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6664EE00A5C
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 07:06:58 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id l140so13565046itb.0
	for <yocto@yoctoproject.org>; Sat, 04 May 2019 07:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=x9ow4XUs129YepcTQACNEpduXuRSZcoCwIf4uw9Lidk=;
	b=A78oZSRuzn0M6VLycMYsDkxLBrM2D6uDpSZfguIQuF0vBOZZ435l7u8X5ESeVTmpAW
	sRseR0MtwyPsWXtstR3TMVPMALJuQHVUyGTgb2hRiAEEys2C9dNkBgeW1EvUjav80PjA
	xn1pUSHtCXk5em4TmL0fm19I3KbUOxUbeq1x8U5X6HSoFc9XfMeER38G644aOaCvJ5jH
	gkyg4/UNXzbuX2qyfRcRySOIJ1i683it7Jb6eem3SU7kvzL2s9MuBfpipTR1iW1eTSvm
	HQZ0/KsnsgD3ComkKSQLrWh5jDQpXmehYIEPh4XUp+v5hkD2vMJh9MfNOGJOae/BgKcE
	W33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=x9ow4XUs129YepcTQACNEpduXuRSZcoCwIf4uw9Lidk=;
	b=WTaUDvlEGU5ZANYwbMBe1dVoF9OM53s4PO4UmPQr+2Dykqqbpnj1QdNRIvoIaQ9bhi
	nO3QJhT/fylzFgc9Q2K87up/iGm5tz9XaB9/c6DBxDzYzR7SxArgQStn0lzx9nduw9p7
	3UzflBcufyskWpPPGkXpP3U5F/2YKvWhrSPE99pLi8DEGVeRkixgpRnmo9UKxWFGzfNV
	kOyontbHkboM2Ps03mp32wlZiT/L8XYKgCiC5m+QKc54qbvzz4HYfMxE3N0QqBgVZk6l
	iGZKKfwao0iIrG92baTCeSmC9anv87G5jmORNqJujSvps0dIXp/hRTtYUkG2PFaMXYa2
	mRrw==
X-Gm-Message-State: APjAAAX1LM83Vp/zyHsvpiKID4Xl9BH5iAmt9Prn5I5VmNXyRZJmi0kG
	4wXnLDNwpuUmk+K9al0F4cw=
X-Google-Smtp-Source: APXvYqy8PNvvbmJxAuyUFjLHjcvC0bA0H2q27rKXclKSh7DJblfuBkz7MeeMuMdLEWfpajZ5Otnelg==
X-Received: by 2002:a02:224b:: with SMTP id o72mr11710023jao.16.1556978817690; 
	Sat, 04 May 2019 07:06:57 -0700 (PDT)
Received: from ?IPv6:2601:240:c400:5a90:2962:bed8:e843:6b3c?
	([2601:240:c400:5a90:2962:bed8:e843:6b3c])
	by smtp.gmail.com with ESMTPSA id p16sm1834523ioh.6.2019.05.04.07.06.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 May 2019 07:06:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Emily Smith <easmith5555@gmail.com>
X-Mailer: iPhone Mail (16C101)
In-Reply-To: <513502f9-202e-f548-d4ef-493041207ef0@windriver.com>
Date: Sat, 4 May 2019 09:06:56 -0500
Message-Id: <B3369BC1-5C61-4B70-8B42-E9EF2596F0CE@gmail.com>
References: <CAAV2bM2O7ve9ZvhqjFtcUysaKbKZxYqRV8idqg03Mp2-v+RFMQ@mail.gmail.com>
	<CAMKF1squhLTh7nQahUuwb9mweGTB35vqu6OrKOfFVf9eCARWcQ@mail.gmail.com>
	<513502f9-202e-f548-d4ef-493041207ef0@windriver.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Incorporating Xilinx DNNDK into Yocto
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
X-List-Received-Date: Sat, 04 May 2019 14:06:59 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Randy -=20

Good point it might be. Should I ask the meta-Xilinx maintainers about getti=
ng it in there?=20

Best,=20
Emily

> On May 3, 2019, at 8:41 PM, Randy MacLeod <randy.macleod@windriver.com> wr=
ote:
>=20
>> On 5/3/19 7:36 PM, Khem Raj wrote:
>>> On Fri, May 3, 2019 at 2:09 PM Emily S <easmith5555@gmail.com> wrote:
>>>=20
>>> Hi all -
>>>=20
>>> Xilinx has the Deep Neural Network Development Kit (DNNDK) that they jus=
t released the source code for in the last month or so. They have the code w=
ritten nicely in the form of yocto recipes but it doesn't appear to be an ac=
tual layer: https://github.com/Xilinx/Edge-AI-Platform-Tutorials/tree/master=
/docs/DPU-Integration/reference-files/files . Is there a possibility of crea=
ting a layer for it? Or should I look into other options, like adding it as a=
 submodule to my custom layer meta-l1calo: https://github.com/kratsg/meta-l1=
calo?
>>>=20
>>> Or if anyone has additional options, suggestions are appreciated!
>> I think we need meta-ai
>=20
> or add to:
>   https://github.com/nnsuite/meta-neural-network
>=20
> Is most of the code Xilinx HW specific?
> If so then a general layer may not be appropriate.
>=20
> ../Randy
>=20
>>> Thanks for the help!
>>> Emily
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> --=20
> # Randy MacLeod
> # Wind River Linux

