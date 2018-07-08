Return-Path: <akash12bhardwaj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A353E00C4B; Sun,  8 Jul 2018 13:55:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akash12bhardwaj[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E78DFE004F6
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 13:55:38 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id i12-v6so32313582oik.2
	for <yocto@yoctoproject.org>; Sun, 08 Jul 2018 13:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0aiGam44gzdTuiPxvDd4gbT9un1NcaoYptK9q3Kxp5g=;
	b=jENPydTRApEXA3y2LcW7I5DQ9oFJ7FBNsXt+rQvFz/zKgbxhNhtuj4TMAhsxWYao9X
	IrsWdbB6Y9QZKDeQf+aAKXIu6UpwTmBO/naUeNHv3sLCLfhNjRkEXIepKb1/U33S0Pi5
	2vsw9nHvHIf8X7ouPjYagPDcQkg0hk9EB+871QN4D5ClX7KoGvApGKaaogDauRD9g+RB
	CqEyyK9R0xL83qmHYqyz8040LlkYu6c/Ao6F81AUDmruhdDxH0bA24Z72/qZaO/S4wSg
	WaaYhWVJg/l5qMj2KCjspVg3r4RxSN+jlEvVcDWkO0vrs9e1VhvsNgzG1ctBUqPphaPD
	PIvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0aiGam44gzdTuiPxvDd4gbT9un1NcaoYptK9q3Kxp5g=;
	b=WQlUmUPlOveQEKqPCa1c/pAq+2OesGOcej/Q3eGDh88egRXPZtmVrxJXo56gEg7p5M
	Q1ocZ5S3qDHyIFNIBECifNRUfU7r9hVGSU8uP50z8MMsxKzht/yLSEpKGZtIPWP6NwGj
	b17T9qzmfXmiA3OG5H7O2yVnmiugYCQpQBcU48/4YhmAUhV13VqZqQJfJIS2uxkDm713
	h6qsi+mjOVnFUBHHlFYsyMVShlNMQj9mh8CyMPiysxxa7s2NnRhKMGD4pLCxL5FCtHt/
	B59G3S/N4CwBGkG+Hzf1AWh4XjTXoPvxAkFNylh5I0bvPCRQN5j5/JUc9Z+uUue8Z51S
	XNQA==
X-Gm-Message-State: APt69E2UR1bgGVOLBknyt0ifkazBPA4mybUWOVO8BnA4xdGhoXTtRnVq
	VOU+gezeYWp3sSmDVq9JveEiAoVUv4amtx7Xw/M=
X-Google-Smtp-Source: AAOMgpe5ySK5y1D4ZxFFAmEJytd2S9ipUHoW9qlPM64A4vA0W8KUKNR58kj1c3w1pl6cKWSg9MwHNIuFXDy78/fs7NY=
X-Received: by 2002:aca:3254:: with SMTP id
	y81-v6mr19490712oiy.317.1531083338114; 
	Sun, 08 Jul 2018 13:55:38 -0700 (PDT)
MIME-Version: 1.0
From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Date: Mon, 9 Jul 2018 02:25:25 +0530
Message-ID: <CALYZMnmEGtFOvobp1wKY_pRUu=ecMCfSaO=D8crHcX6xad+2uQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Sdk
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
X-List-Received-Date: Sun, 08 Jul 2018 20:55:39 -0000
Content-Type: multipart/alternative; boundary="0000000000007d6b7d0570831eda"

--0000000000007d6b7d0570831eda
Content-Type: text/plain; charset="UTF-8"

How to add ld-linux.so.2 for Extracting Yocto SDK,as while extracting
glibc- poky-cortexch-rpi-basic-image-toolchain.sh ,it shows that
ld-linux.so.2.
While examining the directories,I found out that ld-linux-armeh4.so is
present but ld-linux.so.2 is not present,how can I add it?How can I rectify
this issue?

--0000000000007d6b7d0570831eda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">How to add ld-linux.so.2 for Extracting Yocto SDK,as whil=
e extracting glibc- poky-cortexch-rpi-basic-image-toolchain.sh ,it shows th=
at ld-linux.so.2.<div dir=3D"auto">While examining the directories,I found =
out that ld-linux-armeh4.so is present but ld-linux.so.2 is not present,how=
 can I add it?How can I rectify this issue?</div><div dir=3D"auto"><br></di=
v></div>

--0000000000007d6b7d0570831eda--
