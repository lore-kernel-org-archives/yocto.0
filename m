Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B94C1E00DAA; Wed,  3 Jan 2018 06:47:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21430E00D9B
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 06:47:52 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id i11so3082902wmf.4
	for <yocto@yoctoproject.org>; Wed, 03 Jan 2018 06:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=1UdmsqLukuVdEZ7qTxlJJp8oG2bKnbu3stWANeqSLLI=;
	b=BT0Gv0TxfrgNIPfgkzcN02ccJwjs/tcYSAnt7LpJuiv+hNhVs9TP1wIqfgllBOHYbJ
	jms0qG1eI5PfBT+fefimKN0O40NcvZaRqg1a3bCehGpZmp00l8QrQ/91YtY2tjBEiTPY
	m1YKdRbqdER8iQ5QVFqmc7qOtaLMtvLVR8H7yynBLflp9PIUshfk5wleb/VPUjhsARRe
	L1NEa4TNeWqrhN84vPVHUgQ2d/R3ypHPVL6SPG0nsdPZiasRr8ZT38bLBtC7FbDb47wn
	ODV8jrH3B4U/mCADOPVZNTzx+bEyrBR1BVHARmshSHXSrf5X+SFmZHVTl8FYm5OYlZkH
	NAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=1UdmsqLukuVdEZ7qTxlJJp8oG2bKnbu3stWANeqSLLI=;
	b=oh6Sh0Uyuf+T7SV05BQGrbpmZAlrOqLyXjqhp5kmE9Y3Ux6iowBYifNFb8mMikjrJI
	KqQ/tykELgPuJFCrEjJ5frB/J2EnVcEkCzphMVRHvEEH4x59Gu16TaHfFFEIKzXX0pUH
	Kw9EQ62RVrlWUdNaZZRLpvGMNF5Qctr3e6n9hSp7KbhoBiFVCNEab3qtigO/kGM2GeKw
	hMEb996T1tXoO6UQsd00DVSbaaY14aJpdidICm5NeIxZFSh4O+pswQj5b431hrjpIdZ9
	Hlwy1TCu+aXy4EV3Sy6IJGZ+PDY0QI/sC0EIp6VYDMDCnzCpOhZCqsdLkuS392krEEG+
	GBnQ==
X-Gm-Message-State: AKGB3mJt4K4yfF0qJhQXA3apn3cMQIu7o6tH0IX+m65Od3zznT0Rsdss
	+yXBQEm1EWcJc95h+WrC/mJalvg5teoW0hNQCZV0Zw==
X-Google-Smtp-Source: ACJfBosIWSn5L+ngjXd85hM5gnXuAKUDpRdfq6v1XGHDSfz65drjjQ+hb1r2/iJem+KGZSndZY/55uwZsgQlVgNit1M=
X-Received: by 10.28.156.10 with SMTP id f10mr1782855wme.128.1514990871665;
	Wed, 03 Jan 2018 06:47:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.182.79 with HTTP; Wed, 3 Jan 2018 06:47:51 -0800 (PST)
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 3 Jan 2018 14:47:51 +0000
Message-ID: <CAPyrkgxupO+=0+bmA=+JO+zs=t_i=Pm06GJyRFvYfTb5sXjSBA@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	openembedded-members@lists.openembedded.org, yocto <yocto@yoctoproject.org>
Subject: Slideshow for FOSDEM
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
X-List-Received-Date: Wed, 03 Jan 2018 14:47:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

As we've only got one table at FOSDEM this year we're not going to
have space for as many bits of hardware as usual. I'd still like us to
show off the project and what people are building with OpenEmbedded &
Yocto Project though. Given the limited space I think the best way to
do this would be to put a slideshow on my laptop.

I've made a start on this here:
https://docs.google.com/presentation/d/1KYxhsxO-8GxhAreE0GKnTOCPdY6_4uXYIEp=
6Lc55MB8/edit?usp=3Dsharing

I've made this publicly editable so please feel free to add slides for
any OE features you want to show off and any projects (professional or
hobbyist) built with OE. If anyone can add a slide on project history
that would also be great. I'd also like a slide on the latest release
and the new features added. Photos of hardware projects using OE and
features like Toaster would be especially welcome!

I'll give this a final edit before FOSDEM and the put it on rotation
on a laptop at the stand. Hopefully it will be useful for future
events as well.

Thanks all,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

