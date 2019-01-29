Return-Path: <santantonioswap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D92E00CDF; Tue, 29 Jan 2019 08:11:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (santantonioswap[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE568E006F1
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 08:11:33 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id b20so15020117lfa.12
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 08:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9aOPgpRpf6T4GCE+JpY8iZSXMfPpJFYoo0kHamD4IdU=;
	b=Yt3T9/2OjFRsLXkjasU2qLY1rmeiBVMCYKpGvDlk3wgAsIXtK7RH++prYxn0+5nGD9
	iRnNMxtR0bHbrlYfae2uWVH0Nm6x3Of+LaYLHATy9ioHgMWy3r/56zBnvN1sV1G2Rg0Z
	J6jKs8fftqk7r1UWYB0YYtRY7J9cnI2Sr2wcOF229l2GggNcmP8nrWQTKrPh/zmbW8GT
	Z+1x+KE+5MHKbA56UPc1bPs5WFg9EkrzOX0v1hgnZtcIHsUFISkZv9OL8Xy3AmNr1Htm
	urUkLgvWLHCYZ9lAvwa1jzc4ViK8mOEmmO3alA2nROn2XaHEGFLwMfHGR0DYpY4dpsey
	2JJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9aOPgpRpf6T4GCE+JpY8iZSXMfPpJFYoo0kHamD4IdU=;
	b=CC7+wpHMiragdc7K//jE7NdWtk0suPueDUrv/mot1SlB+zJeab2Dd1pZQ+UD9fWaYs
	B29laNY4zL+IooGdu+GoSasYddPzIKw6KHynXx1AE+tUskMHW6ivQXg7VKh2j2lUf3Lo
	QGSSAlYNZnyL2ZyNjKp7rDKtLU72UW/HccDWRciVcYIoGnDnzSSPdUewI2/kpuyVXA76
	spc2Gnm55vYTb88aDYHNlK50IcbFiwBziTJ43jhMf+dlOdf7AQSwU59frc2ECk2F0LVP
	G1fjf7j9sVA6NNAZ7PBOhN12KfSdxWq60tqmyXDB+688lLlx2w0fqoX+7MR44dnBrSpV
	NSNg==
X-Gm-Message-State: AJcUukfEy/2GYBuON8trUyVJBaNgKrYtedFl1gptZx8OfDc+S09P+i73
	atSkLOp0I2aHsnHWARUJxoAjZSq+4eKgi13w5Bvx2g==
X-Google-Smtp-Source: ALg8bN6kGyAMYIiS5WUWzSCbZGMu2kGfi+ussjjqhREJDP8/oQhe5cNOaYIajbFiqU97D5Wepd8Ippam8bljHTSLAJY=
X-Received: by 2002:a19:5508:: with SMTP id n8mr20227126lfe.164.1548778292538; 
	Tue, 29 Jan 2019 08:11:32 -0800 (PST)
MIME-Version: 1.0
From: Antonio Santagiuliana <santantonioswap@gmail.com>
Date: Tue, 29 Jan 2019 16:11:21 +0000
Message-ID: <CACsVzKgafiE9ioPpiLMHLu-1WDEx=AtP7wZAUBNJENinJCnmKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Tue, 29 Jan 2019 16:11:34 -0000
Content-Type: multipart/alternative; boundary="000000000000f67f7205809b0ba7"

--000000000000f67f7205809b0ba7
Content-Type: text/plain; charset="UTF-8"

Hi,
I am missing the steps required to add to an image the support for an RTC
plugged in to I2C1 interface, with autostart.
is there a page with instructions ?
thank you

--000000000000f67f7205809b0ba7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<br><div>I am missing the steps required to add t=
o an image the support for an RTC plugged in to I2C1 interface, with autost=
art.</div><div>is there a page with instructions ?=C2=A0</div><div>thank yo=
u</div></div>

--000000000000f67f7205809b0ba7--
