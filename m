Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8DEE00B2A
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 10:29:53 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id cz12so2990819veb.21
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 10:29:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=uS+JCLvRm/lbS+fVK5XYaTk0kIOdy3MDz4nPXpBuK+Q=;
	b=RQpYrmkpBxr2q1q7he6VIkuZbA0X+nWS7s2viee+E2lKMTqnEranFlpVC48gAtP1bD
	HBIpRP5iA0F7QzJWb+D2Hw8Up5w+0nI0oEPuRJQb9+vsv2xkOrwTPs6VGnpwGKlD7Gpu
	mN2SJ2eYheTWhA7nus5I30wRol49pyLMxE1HOhCPQZ+uKThk85yZae8Rw/zNgLcxGQcq
	nk2R6G6+90ogvDFYVdtV1baMfotU9K5OaFp7t9L9U53tRQOD1LO63wk7yvcfdCTsep5R
	SsWV+6HwiVtdPelYOBKGeLU9yJwp7jJCe5lhffmTDCzIX2DYu0n/DRBUkZKC+zObIgNX
	225g==
X-Gm-Message-State: ALoCoQkD4tiEkLLpu9eEZYLNLhToVzty4rZf1mtwewLVmSghV8ZmfWH82Y7g1hi1+Ga65NEul8ZT
MIME-Version: 1.0
X-Received: by 10.59.9.38 with SMTP id dp6mr2030810ved.24.1394818192921; Fri,
	14 Mar 2014 10:29:52 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Fri, 14 Mar 2014 10:29:52 -0700 (PDT)
Date: Fri, 14 Mar 2014 10:29:52 -0700
Message-ID: <CAPhnLPD5xK3uLBvB9nn=Pd2NkA=7DDuxNoqxGWsXhsvjAfvS7A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] 1.6_M3 released.
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
X-List-Received-Date: Fri, 14 Mar 2014 17:29:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

The artifacts for the 3rd milestone release of the upcoming Yocto
Project 1.6 release are now available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M3/

Features include:

- 41 package updates
- Packaging and rootfs re-factor and conversion to python
- WIC extension for EFI
- Documentation fixes and additions
- Additional packages added support for ptest (total 38 packages now)
- Additional packages added support for systemd (total 26 packages now)

poky     54562006c1327c5b99daa4cc05a3ba7e38412da1
oecore     9a98b8bfe13b94d89a9e39cca821f26fdeaeffc3
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
bitbake     c39b99792547b642570ea5152070e7396e812390
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     f4d8e9243f9355424a01e2d72fd1abbf68d3bb7c
meta-fsl-arm     40385ba8b3060adb3a535c6e5f08199b69f47754
meta-fsl-ppc     290a669e5480792836d4f7769ba2ef6f49799323
meta-intel     a2e40547fd6e2e7874e1587956c4490904ce552a
meta-minnow     32e4d6f17917027c3babe1ab738480de9691024d

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

