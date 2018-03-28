Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC09AE00C40; Wed, 28 Mar 2018 02:41:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 966B4E00708
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 02:41:39 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id 23-v6so1977787otj.0
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 02:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=atB+ivkzfNywSA93QhXS70IIU89BsmSAJc1b0GfZ+Rc=;
	b=hDhNbOScwHjB6soqfjsCW1KgB+OqQAQKHuk1gieVXp4+pAt8YnDST/JEhHPTg+fRR7
	Xp16Gt5G22Pfia7EibEB48QX6l7tkMQHgrUARW/b09RVBXpVSCmItRP0F16Y6WO5BLKI
	xi9V5nUByzPEUpcpaPrakMBsnKjOJmp/e7mcXNGHulBYW0Q+CImVtaXdTEnzZ4JgQLL/
	y8asUlsqJTwXSFcWgpnoUzJGuk4sXofC2mDe/fTcSb/JlFo936MpCLdBbpRsM0yZTHLX
	fh5n/KntXKKgp+tx7C6aX+KBwKmbnIGwILI+G7WAezNi2TKj8+fMK9/jYmhpnBxBsr+1
	56dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=atB+ivkzfNywSA93QhXS70IIU89BsmSAJc1b0GfZ+Rc=;
	b=RYPiw3jHHbB4sgOiOXU9uenjBBWNxmG74K4fpfIJZKv4jiW34aF4tArSPCmmoAirY2
	QQoPlcoCsgOYgc4ZOJrt7lFPOtUAHprFS0Ap0vtk1cq5u0SsAteTzFzadeRUtkHOkEwJ
	13hEvKr7fbSRFTn7pnT9eyDOLGWcKzhKwOVB9zYMRFWPtQ2Bc5vKhjN6hRdZr1Wbrud9
	EURNCJ7/6KBVRoWiIpMGvjpGQD5/fMHnkrZmADeCSKtVGhQQkkGp0KZjWv13YmjvFFNu
	ZV12Qx6QVa3kxgjDGZRaHm0ljwseYB7mjOcSgeywryq0h0UQNIGaEccIycx1As1YGD8u
	WVCQ==
X-Gm-Message-State: AElRT7GOlw39XwWrrZvAsVgDKv+QFUtPSKrIjda3mKTGT/TsyYh8B+P6
	67qJ3L93dydpPW2KJNbhxPl0Tq1iPO78oxh+NDc=
X-Google-Smtp-Source: AIpwx4+3JPV/Y5jU/WYX5P5Bfi0F7HBH2eAGn/NBnSVDow3+/ViO1C7j5Xx16/vSCjNGiQy5+R7lzoLQqlKv1O7ihpE=
X-Received: by 2002:a9d:b68:: with SMTP id p37-v6mr1592955otd.27.1522230098815;
	Wed, 28 Mar 2018 02:41:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Wed, 28 Mar 2018 02:41:38 -0700 (PDT)
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 28 Mar 2018 11:41:38 +0200
Message-ID: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 09:41:40 -0000
Content-Type: multipart/alternative; boundary="0000000000004e6dbe056875d009"

--0000000000004e6dbe056875d009
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using the meta-raspberrypi layer in my build currently on the rocko
branch. When powering on the rpi3 Model B+ the power led turns red then
when the green led is turned on the red is turned off and nothing is
booting the green continues to flash sporadically. My build works fine on
rpi 3 but not on Model B+. When running raspbian on Model 3 it works fine
so it is not a power supply issue nor an sdcard issue. Right now I cannot
use the master branch of meta-raspberrypi because of some patch issues but
is the rocko branch not supporting rpi 3 on model B+?

BR
Mans Zigher

--0000000000004e6dbe056875d009
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am using the meta-raspberrypi lay=
er in my build currently on the rocko branch. When powering on the rpi3 Mod=
el B+ the power led turns red then when the green led is turned on the red =
is turned off and nothing is booting the green continues to flash sporadica=
lly. My build works fine on rpi 3 but not on Model B+. When running raspbia=
n on Model 3 it works fine so it is not a power supply issue nor an sdcard =
issue. Right now I cannot use the master branch of meta-raspberrypi because=
 of some patch issues but is the rocko branch not supporting rpi 3 on model=
 B+?</div><div><br></div><div>BR</div><div>Mans Zigher</div></div>

--0000000000004e6dbe056875d009--
