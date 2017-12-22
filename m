Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD42AE00D9D; Thu, 21 Dec 2017 18:53:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 993B3E00D32
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 18:53:28 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id r184so25663755qke.8
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 18:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qicAtA1DPoVQkgbFvDp3Zxb+0qX9X0i5km4HLOxNnzg=;
	b=X/8JOAO9J9EF+LbJPnv1Hb+FWMnToNuXwQW+GDO+OoMHZiD4qJjnVFbjj38b3jzuYl
	NKn0TC7nVtNqRtBgF1PcDqonNhOU0d9NTXn07qRm/KFtSQ5sIhIrSrkvushZExSIimOi
	IfhOu1B5AUFV51ngDsNkUj2fkr9yp1A/VLKiySP8oI3IKYlg927k9Q5Q6OTscjjQrLVS
	xO7AlnfMOkNwZ4RwgH7b8OxO/Z0U5O0l3ZOwNsoZXM9NezfdwPIbgE31z88qNQUvbQAJ
	O7Ke/u5i0R+BKszF0RnmEPeRKhs5r5cls+0iQEwfjJYWhmRT+h4nj6ZihYNUgvq9+J5M
	UKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qicAtA1DPoVQkgbFvDp3Zxb+0qX9X0i5km4HLOxNnzg=;
	b=pXMKsKjm48ljRaGByahRv8zDDiQmHIGE+e5Ab8plkXxJLkKTgOvV9syoyrsW7jX2O8
	nrka+wl3Oz/t5oa9cqctyeLX67poxJgpe4NCXpdh3596dkqhDTrGvJnHRlHPFPkMG49f
	vd/jJXRf/+6rGsJwebNhrtUdDT256fcwEJTxUyPCEArjz3KBs9NodkWTth7qQcA2Ap2M
	tXoqbJNi5yGx+07gIviHTUyIuj/wa5fSLL5LG4QZGZOIua+qaSbjjqLaRpJ9dhU99Hc6
	oG2tAvA9VUkMmncum777lZLGU/1OPLdmYRhkLd37axXtpDvCAa8Y+UzoAGBkcKfY33kr
	R39w==
X-Gm-Message-State: AKGB3mLwRjuhb33ydwW/HgU80QHpPIXeJw/N7WvQAhUNUeqO2cREa7bi
	Y72y08AezvZnjUBYyHHdp0yosA2Apx8Rrn+YS4A52g==
X-Google-Smtp-Source: ACJfBouWrAnJ3zRU3eVfPSTJjbXIe+b/HpfJCW2E07BOvtaSrhZ3D8L0tC9B0/K07lf8eWk5T+C1GEFRvdFMmOm/woI=
X-Received: by 10.55.214.198 with SMTP id p67mr17366983qkl.250.1513911207266; 
	Thu, 21 Dec 2017 18:53:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.73.87 with HTTP; Thu, 21 Dec 2017 18:53:26 -0800 (PST)
From: Davis Roman <davis.roman84@gmail.com>
Date: Thu, 21 Dec 2017 21:53:26 -0500
Message-ID: <CACfi_Z063vTrALm+dHjiP4U0S6nazioCaR0yKJyfNX=5fg51Ug@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: how to deal with the dependency explosion caused by enabling x11vnc
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
X-List-Received-Date: Fri, 22 Dec 2017 02:53:29 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

 I'd like to put a vnc server on my target.

My embedded target has an onboard display and runs an application that
drives the display directly via the framebuffer. ( no xorg onboard )

I would like to use x11vnc ( with the --rawfb option ) however I'm
having a hard time justifying the load of dependencies that it brings
along with it. (Almost 100MB.)

With the --rawfb option, x11vnc does not require a X server ( just
libX11) to be onboard however I'm required to add x11 to
DISTRO_FEATURES otherwise x11vnc won't compile.

(x11vnc even drags gtk3 along with it which seems unnecessary.)

My goal is to only add the minimum number of x11vnc depencies.

Any advice on how to slim this down would be appreciated.

Thank you,

Davis

