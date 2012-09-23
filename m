Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FA1E01448
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2012 12:07:05 -0700 (PDT)
Received: by qcon41 with SMTP id n41so1750896qco.35
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2012 12:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=R1gBJV3oExFzze3cGHoINfg5O0jDycBsaGzeUKnrMVA=;
	b=WqLmTnqwnTRDs2uOtWlCEsjSY3ZPSKXmNT5BvVSLNoL/a4IPdIiAk/fXuyzLGiSvZ5
	sFE9Tr3juPXl0jzVFqjbQyAESg6d9v2cbIsxociOZNkrdnbgeFG2oAUrWfQ4lL9fatBg
	wVobYUBj9vQSloUkKPuVBBvSfcwyvLbwP56hlBFqFTfz/3Pzuo25G8uaEaw1aALhs/iz
	2ZybP81KfDyfHxQUZEEQfX4XECD2CDFsWwsk/8KEPYq0RDXS4UMUZCCo6Lu1OIEe93sa
	nrqV384RI0Wv95vyZslfACp0p4V1BlOceZvnab2J4SWMWXEeON8HUmjURNzBoi4NmKoQ
	f5Xg==
MIME-Version: 1.0
Received: by 10.229.135.85 with SMTP id m21mr7690741qct.44.1348427222521; Sun,
	23 Sep 2012 12:07:02 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Sun, 23 Sep 2012 12:07:02 -0700 (PDT)
Date: Sun, 23 Sep 2012 20:07:02 +0100
Message-ID: <CAB3sqtaLL81HnFqnE5FKy0j7o8cpNUj6S7qVk6JO3EHTKBPDvg@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org
Subject: what are libraries required to use SDL
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 23 Sep 2012 19:07:05 -0000
Content-Type: multipart/alternative; boundary=00248c6a7a8e9a962904ca632d5a

--00248c6a7a8e9a962904ca632d5a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm porting a program which uses SDL to openembedded Yocto-project. I have
included libsdl to my image but SDL is failling to initialize
SDL_Init(SDL_INIT_VIDEO) gives:
 No available video device

What are the packages that I need to install to get SDL video device?

Thanks

--00248c6a7a8e9a962904ca632d5a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div><div>I&#39;m porting a program which uses SDL to ope=
nembedded Yocto-project. I have included libsdl to my image but SDL is fail=
ling to initialize SDL_Init(SDL_INIT_VIDEO)=A0gives:</div><div>=A0No availa=
ble video device</div>
<div><br></div><div>What are the=A0packages that I need to install to get S=
DL video device?</div></div><div><br></div><div>Thanks</div>

--00248c6a7a8e9a962904ca632d5a--
