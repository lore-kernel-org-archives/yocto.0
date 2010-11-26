Return-Path: <joaohf@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E9184C80815
	for <yocto@yoctoproject.org>; Fri, 26 Nov 2010 09:24:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxm8 with SMTP id 8so1158234yxm.35
	for <yocto@yoctoproject.org>; Fri, 26 Nov 2010 07:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=4RAXn5DuKWS46OqKGf4crbu65LkErExIddGtjyz61E4=;
	b=O6Rd38ea4MrRJWe9IKN+hVZ/xycv0kyeaMp0Mk962AIoVMfZclrOT5hahbOh9O6f5N
	+EAi2WsEBblF0qLQphzVXH2yJyweoveym7GWcsHdSCfxJgn2Hmap3cHQDyFdqL+gVy5Y
	ziGzC81ili5FMxd8IVM4ws6TSK+gWLe1ylWfM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=LsXbo90UIXhNS4qU/zmyJYIar2zivnZlllb2nSujDB8y6dQM2sJB3WNEbFCg2OTpX/
	zODca8uunOeJosk/yzVlwVqtv3es+UJv22As0PFgnuPa/jr2Huqonqf4WWkjhBe70PE3
	adbwlB3f4/FO2BrSzg+LV9J4JIQuJYQ282/AA=
MIME-Version: 1.0
Received: by 10.42.219.200 with SMTP id hv8mr672294icb.123.1290785073920; Fri,
	26 Nov 2010 07:24:33 -0800 (PST)
Received: by 10.42.228.9 with HTTP; Fri, 26 Nov 2010 07:24:33 -0800 (PST)
Date: Fri, 26 Nov 2010 13:24:33 -0200
Message-ID: <AANLkTimb6B5ospVzkhF2QuursOgZHD2HKtD7K-Rr_LgD@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: my own SDK with svn
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
X-List-Received-Date: Fri, 26 Nov 2010 15:24:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Just a exploration...

I need to create a SDK with packages like: svn, git, cmake. Can I use
yocto to do it?

Currently I am working to put svn in my SDK.  I changed recipes
(dependent recipes) to use BBCLASSEXTEND=3D"native nativesdk". It's
right?

I can compile every things. But apr-utls (it talk about autoconf saw
same host variables) not yet.

When I get positive results and don't break things, I post a patch.
For now I want to know if someone tried it too.

Thanks

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

