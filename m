Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2E74E009EB; Sun, 10 Dec 2017 04:02:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A427E00736
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 04:02:52 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id q20so9150818pgv.2
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 04:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=w4yiXJn1jJaALj8l93osj1qS+J185S/1ARP5tNuNGSc=;
	b=VE57MSIqsxXGI+C1ngzXP3BMs8pUtMyD+7qMifRr0L8RtTj59t1ePp1I/wkZCt4mIl
	zkn4TXTjhoZr8JpnwPIWp198WFKq8FFO10Q5x5l2bU9O7zeRIA7o/HkQedVbTGiUXTJ2
	Yw+Xl0r18hYvqkkNLvi/ro/dvMtNQpA+bKLObo7nvjhVEdpem+9M90xG6aMs2pO03QGk
	VDTc7waOOQ8AzLQmnD3H2H7mTA5b5R0/g3Ul0ec6xMBrE+CdgXIDz7bltXVHTpLarOEd
	gNAacJwtbdfzi5e8Y+kpZ9Fv8MIQcP/ZZVn3ckLLaIWOYkfkg1HMKcopU1WiIYLA52Ts
	Ehzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w4yiXJn1jJaALj8l93osj1qS+J185S/1ARP5tNuNGSc=;
	b=t/pGsu88+YFre5AeRldXceohpc6g127P965a82yBqYo5PY13gveU3XbtZqfUZ/apC9
	U83/ycGWygXsH3bMdKA5QCyA0NfQHDktow9pB9RqxpX0e2NRgGdQrNPChqoCQ2/E75/3
	ReK6l7pvwVMw4J8vpFGYKKCK+pX2px8VGgeBqzivUycmTZLXdc6g8xxWoCVtmFA3c9RI
	druANv+fFZTnDCytEavSXipxOPXY6LAPdAioYKCjhI8MMTdFwlF4yvCtu3j7raIvyfhx
	ix77UQAhxJ75gkDq+Pr0RWatDnJ2wES4HL1QBOFNMV5qdYWzuz/wxe0gFZrGKjUA42iU
	kXsA==
X-Gm-Message-State: AKGB3mLa7mUvaXrSrjwpe5TOUNsy4m1sCwH0rJTQOPTRlVJ3dMSRwKi4
	3TWs8TA888Gg9HW0Ux/ubw+VANKhCdJlJkO95xU=
X-Google-Smtp-Source: AGs4zMaag+nDo0zU3xhKPPvDOEBt8PkeAObR1IhULRKF3RDDaegTUxbdF+soofJ1Y6UB3UsZmUf4pTUOiNeFtfdRZJA=
X-Received: by 10.98.32.21 with SMTP id g21mr4224577pfg.52.1512907371947; Sun,
	10 Dec 2017 04:02:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sun, 10 Dec 2017 04:02:51 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 10 Dec 2017 13:02:51 +0100
Message-ID: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: disable psplash
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
X-List-Received-Date: Sun, 10 Dec 2017 12:02:55 -0000
Content-Type: multipart/alternative; boundary="001a11476aa27bad1e055ffb326c"

--001a11476aa27bad1e055ffb326c
Content-Type: text/plain; charset="UTF-8"

hi

any body knows how to diable the psplash? as per documentation it says pass
psplash=false to the kernel. But how to pass it to the kernel? I tried
adding it to kernel.cfg but does not seem to be correct. As far as i
understood, we can pass it from uboot, but how?

thanks for your help

--001a11476aa27bad1e055ffb326c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi <br><br></div>any body knows how to diable th=
e psplash? as per documentation it says pass psplash=3Dfalse to the kernel.=
 But how to pass it to the kernel? I tried adding it to kernel.cfg but does=
 not seem to be correct. As far as i understood, we can pass it from uboot,=
 but how?<br><br></div>thanks for your help<br></div>

--001a11476aa27bad1e055ffb326c--
