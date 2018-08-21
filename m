Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 988F2E00A6B; Tue, 21 Aug 2018 01:30:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55D37E009D4
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 01:30:20 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 13-v6so30662878ois.1
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 01:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=HM0pZlM6o7jef8BnT9q4jYW47huwKDXeMxjj+unR4Wc=;
	b=okApVNF8czxuSugEB+6lEdvVbDUlcze45mjAm33gJk4ecYYQtmJzk2xGS560a7rRFw
	2aafj2YhkVNk9n/S2AO2FF9Z4KJdsIwXLv7Mu+Ow+mRYWOUIVY8wO5+CyWmEpJj0TsFE
	oVrJ/E62GD0c4A8xhk/sPQFJubS6SzhdyX4DAvO0kJGQX/crngjQY4hk5lglRycg4xLF
	uh/dObCQXGnJJ2s+AcCrId4Wd/j+QmxtdPLfhf4gYNm4120c5WweieaXy7E7uWtIvXDW
	kf2L0tM3c9G8VXWJNCm+j3eZSmgV4SDfZZXaAPVff6EuZjrVPyl7mDOv6o1VAjjWYMwv
	yK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=HM0pZlM6o7jef8BnT9q4jYW47huwKDXeMxjj+unR4Wc=;
	b=RUXk7Ci6ny4IUE/Q+b/QtKKiy8v2xXBkrFrtRlyzEf96G7iLpMQEkkOaO9JbvnoCAv
	g7+7yJlXhk8dNWOCl1C7Lsw8Lr4gnWLOnvcPaW/Y0FM20f9r0tXmXnxaKEq/As0xOlgQ
	WJd2xuhAiBwJUVAkVOwZW3dwIl0N1mnCleFSQYy09JNDu4t710BC6tRce2t6EuD3M8Ho
	O9QkoS2mcK+iiJKtm4e2tAGwPaMPZv4tbqerbM1kkCnD67u7JAAt+NdabbUjS6Pc1UxC
	Q2eEuNN2eQcaAk7E5MioBsNnkYjF61Eza7GFvLeuW86LjNO7oE5X7henxqIc4Bwzi91z
	d4DA==
X-Gm-Message-State: AOUpUlEwsHbQ83VOVhK8bwVXUFqBxTclaHmf0TxMT4n1nXqqge+eSK/i
	uz1Np7zet5kusgBtklRVIqFr3bFw2jyBzRxKHO8=
X-Google-Smtp-Source: AA+uWPx4bUNNyB4MZCdJNkFJWyPQjcxnZ/uBh+eEhoP+/HROSmI96mQ6jA7KdYVut0Uc7v9E/6LOFEBiOT2mAEQLx4k=
X-Received: by 2002:aca:3ad4:: with SMTP id
	h203-v6mr16528600oia.294.1534840219750; 
	Tue, 21 Aug 2018 01:30:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Tue, 21 Aug 2018 01:30:19
	-0700 (PDT)
In-Reply-To: <HE1PR06MB168946186F96B6517E7CB10494310@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
	<HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
	<HE1PR06MB16896228DCEB67A69FF9D43E94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj_wDbKMA+d5sKgLjanukfeJLmj=Lj+5+6P1Pu=cGZeKtQ@mail.gmail.com>
	<HE1PR06MB168946186F96B6517E7CB10494310@HE1PR06MB1689.eurprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 Aug 2018 10:30:19 +0200
Message-ID: <CANNYZj81Qien8_1LmvQ5Gr7njjo9cZn1gk9-G-437yQ1RNCVLA@mail.gmail.com>
To: Nader Hariri <nader.hariri@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest-runner "No ptests found."
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
X-List-Received-Date: Tue, 21 Aug 2018 08:30:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This looks like we *might* have a bug in here. Extra whitespace like
this should not have such broken effects. Can you add some unrelated
feature to IMAGE_FEATURES, so that we get a list without leading and
trailing whitespaces?

Alex

2018-08-21 9:54 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> ok, so I changed my local.conf from IMAGE_FEATURES_append =3D " ptest-pkg=
s" to
> EXTRA_IMAGE_FEATURES =3D "ptest-pkgs", here are the logs:
>
> # $IMAGE_FEATURES [3 operations]
> #   set?
> /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/default-dis=
trovars.inc:23
> #     ""
> #   set
> /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:210
> #     [doc] "The primary list of features to include in an image. Configu=
re
> this variable in an image recipe."
> #   append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake.conf:80=
6
> #     "${EXTRA_IMAGE_FEATURES}"
> # pre-expansion value:
> #   " ${EXTRA_IMAGE_FEATURES}"
> IMAGE_FEATURES=3D" ptest-pkgs"
>
> As we can see, I still have the suspicious space but it has shrunk from 2
> spaces to 1 space. And -ptest packages didn't get installed in my image.
>
> Nader
> ________________________________
> De : Alexander Kanavin <alex.kanavin@gmail.com>
> Envoy=C3=A9 : lundi 20 ao=C3=BBt 2018 16:54
> =C3=80 : Nader Hariri
> Cc : yocto@yoctoproject.org
> Objet : Re: [yocto] ptest-runner "No ptests found."
>
> 2018-08-20 15:36 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
>> I ran 'bitbake -e <image>' as you have suggested. I can see from the log=
s
>> that the variable IMAGE_FEATURES does get appended the value of
>> ${EXTRA_IMAGE_FEATURES}, however I still have no -ptest packages in my
>> image. Is there anything wrong in my logs?
>>
>>
>> # $IMAGE_FEATURES [3 operations]
>> #   set?
>>
>> /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/default-di=
strovars.inc:23
>> #     ""
>> #   set
>> /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:210
>> #     [doc] "The primary list of features to include in an image.
>> Configure
>> this variable in an image recipe."
>> #   append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake.conf:8=
06
>> #     "${EXTRA_IMAGE_FEATURES}"
>> # pre-expansion value:
>> #   " ${EXTRA_IMAGE_FEATURES}"
>> IMAGE_FEATURES=3D"  ptest-pkgs"
>
> The space looks suspicious in there. Can you try to set
> EXTRA_IMAGE_FEATURES directly with =3D instead of appending to it?
>
> Alex

