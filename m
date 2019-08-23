Return-Path: <crawford.benjamin15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CCD8E00DB6; Fri, 23 Aug 2019 07:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (crawford.benjamin15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B224E008F2
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 07:33:03 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id x3so7295679lfn.6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 07:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=To+ELG73xs3gKAmW1raKbqhRWUmvgFhaW3XQi6bjU14=;
	b=p9qEIhmQwedcpMFF5GQvuessz1ONwYglabUW0sqbbQ7UBScQhNlOmFNPiVrKC4tCpD
	qkI6CNQKXkEkXngge5v9QVzuf2BFs7meO46aM/YK98ZhwbqkUFSymeuFtMz/0IWA7NqV
	9tsh3gIxg3TemdtORZWVLr8g4cz5k1b8nWZF1LI1zY4tgBsFiOctZE8XanMZ9ISR7tWI
	E4IKj4Q0jEx6aSc/QIxXEQICP34OqLHjpUnjYJ2tNGMHnfUkTK1eLwp2ZJohZHbzK+rm
	KxQZAi1a6c2SyWZFF3B4qwm0vcHXbEIuAguDbq1hcS14QND4GYT0oKP5xa4pPaTuUeok
	Qicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=To+ELG73xs3gKAmW1raKbqhRWUmvgFhaW3XQi6bjU14=;
	b=UzecAI+eCI/ofFzVD96ekpzzhAYxgi1vtKQLtuulEF3lABOfyBayZAVRzrkgRft/zx
	eCcQFkNfjWP0TKCvlJFzW/6RG5EQoaUjvUb00EdsozIL/SS9886ohHsCPKYMfq5bmQL4
	bpGBxmROyzkA3fTiQzdpF1++G+spNGACTplyM0vkkhCyXOCT1H//Wjz7RZrLcbrG3XqN
	jCCr6V2yUdB2ObrchsM91RFjNoMweWb9W3Gf66gH28c27LsdyXNUIYCr7bf6RxbwhfWs
	yYoKoCicFR9lRAw9jW58zqzdyuW0SpOx0Jzphh0vZn0F+O+9F3gECyOov9gCp0PHqXkf
	kz7Q==
X-Gm-Message-State: APjAAAVhe4pC7xsOKXTBSL/TgBNT8PN0Uh0uopABNFdvFckYeMoe0AJc
	DPFq4VFFpc4UdrXfn9KVddJ2/MBWfy7KOr6p6ekNLQ==
X-Google-Smtp-Source: APXvYqz9IutVEN26cYZBbmo40uTk+kOK/M9dPvt4zgqnfp03r3Yxx1/dZBMSw/WtwpHzjpqxA6vDhSCUsc6O1hOYTZE=
X-Received: by 2002:ac2:5225:: with SMTP id i5mr2989213lfl.13.1566570782043;
	Fri, 23 Aug 2019 07:33:02 -0700 (PDT)
MIME-Version: 1.0
From: Benjamin Crawford <crawford.benjamin15@gmail.com>
Date: Fri, 23 Aug 2019 15:32:51 +0100
Message-ID: <CANtEDzQ3y45AjX-uFbPCU2vBBn-pNhcgsUmJD7AJNdbtfd2VgA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Different package versions between host SDK and target image
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
X-List-Received-Date: Fri, 23 Aug 2019 14:33:04 -0000
Content-Type: multipart/alternative; boundary="000000000000fab1500590c9aec3"

--000000000000fab1500590c9aec3
Content-Type: text/plain; charset="UTF-8"

Hi,

I've been happily building images for the Renesas R-Car platform using the
Yocto project until recently. After clearing the sstate-cache and
rebuilding, I'm now suddenly encountering an issue where the version of
OpenCV being installed into the host SDK and the one being installed into
the target rootfs are different (OpenCV 3.3.x vs 3.4.x). Obviously, I now
can't develop applications as the binaries try to link to the wrong version
of the library. Can anyone tell what might have happened?

Kind regards,
Ben

--000000000000fab1500590c9aec3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I&#39;ve been happily buildin=
g images for the Renesas R-Car platform using the Yocto project until recen=
tly. After clearing the sstate-cache and rebuilding, I&#39;m now suddenly e=
ncountering an issue where the version of OpenCV being installed into the h=
ost SDK and the one being installed into the target rootfs are different (O=
penCV 3.3.x vs 3.4.x). Obviously, I now can&#39;t develop applications as t=
he binaries try to link to the wrong version of the library. Can anyone tel=
l what might have happened?</div><div><br></div><div>Kind regards,<br>Ben</=
div></div>

--000000000000fab1500590c9aec3--
