Return-Path: <igorcmiranda3110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 980FFE00A0C; Mon,  4 Feb 2019 10:35:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SUBJ_ALL_CAPS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (igorcmiranda3110[at]gmail.com)
	*  1.5 SUBJ_ALL_CAPS Subject is all capitals
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8865FE009AA
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 10:35:09 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id w18so2209210ite.1
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 10:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=b4uj9eVNKGxfr1Z82AmOpVhIV/MVNiIlTirfxVNSwd4=;
	b=XnJ4GPsz9D1s1H4GP0O1C6MFWrNC0o7XP1dthV7yfv+r1wncFTqXg/sIoHVoGUIgaO
	4Ungf/edju/jRu0UiC2Z4ex6/LcRupg00mhKz9NMhFuTZJ7BiEC6vJN7KVKAXGMYZnIh
	nElPaAi6F+gQjr18KW4nMMHMPFBv+ozkoloaHBYWK2V4H/bzqx0/givKWauRslNFomwY
	tvBQ5rc4FZoa5iFw+GaQuiYSTZqgVPRRue2GzrfPMt89kO7/sOO2ShOHxZXgnI2AVymy
	NtPSDeP1Ad9/p6yp+H3KUSQTxK92Pnc6eFRlp9h/VR8teLgM0o8kzyGnEOQXIK1aJvpY
	1Exg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=b4uj9eVNKGxfr1Z82AmOpVhIV/MVNiIlTirfxVNSwd4=;
	b=GucCM8zgS2V9xMqXUVZvITX5eGF2Tq0IzbQerL0Ied6GDCw/qroijaKiK/DD0T8Jdx
	JPEs3ykdTnPhDrqXtby6A70yczw1MUeEfjcoaopvou8mwvbenV6G8rTmaYacDa8lzaEs
	Ne88jsYh71+V9CN0pPskHd0gTo4bd5jp9mW491bgbA6aO7fFxVHhZefbJLPdc0o2yw+5
	y9A/iA1MJIQiSj0s6tW+vXL6LOMkNBvIiM6dPT3Qoh8PN+d0FoEwMoeOJehDtruBeiBc
	Wv7jkxm6KW6urBPDrmDb0xZViL0XQUMrDC9jfGOCOoJEIuhbCmLDtNw4z5jGHI3Liapp
	E6Jg==
X-Gm-Message-State: AHQUAuZQfSdzRSz4Y27r8pAZk1oHXN3o8Hr6BLEHNbvblhIWjJnR+iFp
	uo3jbO+hmh7YgDMF6pIXS04+1an1ZxbHcpRjGSsBzQ==
X-Google-Smtp-Source: AHgI3IYKmRS6S9UEGzjw8Jp/CtmVp+YgvFAyCP13UwGxlJn9WOvpSqzNMiuIMpI63vceQvQV+oLvWi8WIkKdkekIphg=
X-Received: by 2002:a5d:9696:: with SMTP id m22mr467534ion.243.1549305308373; 
	Mon, 04 Feb 2019 10:35:08 -0800 (PST)
MIME-Version: 1.0
From: Igor Miranda <igorcmiranda3110@gmail.com>
Date: Mon, 4 Feb 2019 16:34:55 -0200
Message-ID: <CAAOxJQRzZqYhV6m9Oj6WYTCGexfTKxD3k76XFF3=Lk-JeYrtEg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: XSLT-CONFIG ERROR
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
X-List-Received-Date: Mon, 04 Feb 2019 18:35:10 -0000
Content-Type: multipart/alternative; boundary="0000000000008de5a9058115c022"

--0000000000008de5a9058115c022
Content-Type: text/plain; charset="UTF-8"

Hey guys, I'm trying to compile the Icecast, but I'm getting the
xslt-config error, which says that I need to change to pkg-config, but I
dont know how to do this. Should I do a patch? Or its more easy to change
something in the Yocto to enable the use of the xslt-config? If I need to
use a patch, can someone explain to me how do I do something or can someone
send me a patch that works. Please!!!! I dont have more time, I need to
give this project, working, as soon as possible. HELP ME!

--0000000000008de5a9058115c022
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey guys, I&#39;m trying to compile the Icecast, but I&#39=
;m getting the xslt-config error, which says that I need to change to pkg-c=
onfig, but I dont know how to do this. Should I do a patch? Or its more eas=
y to change something in the Yocto to enable the use of the xslt-config? If=
 I need to use a patch, can someone explain to me how do I do something or =
can someone send me a patch that works. Please!!!! I dont have more time, I=
 need to give this project, working, as soon as possible. HELP ME!</div>

--0000000000008de5a9058115c022--
