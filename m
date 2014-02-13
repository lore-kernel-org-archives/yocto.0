Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AEFFE00746
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 23:19:01 -0800 (PST)
Received: by mail-ve0-f174.google.com with SMTP id pa12so8061856veb.5
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 23:19:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Xjmoqq/Eal3EBuLqi0+k78fmSXyahNZzf3zO05b556A=;
	b=SXML0xDIjVDULUKhNo3/YedYVkViOHO1z9Qt1Ra1xBMfsm5EK+ThS7Ljtcyhd1k8Ut
	DvKVb4Rdnx4ZEgfsqEI5u+5oECpFzFClyaHPbV2HDYcvJungRhCtv1cXv7HXcB/RaRDX
	p9K7M0o/uuFMiW3+ZmEcUVafnNRjM/64xQrbS2lF2YBerVjUXmVCIR+uQkUflir3xCOi
	u3S7phiVB1xLxKAKaKjycov5E/bKMPy3yEQfxItao66/VsiADBlPXwvW8QtkBMs37E2i
	laFdzSN4K7kPP8+wIRrBcCFsOdyb3Loyp5H9H7YJCqKVBfN3fnO2/JpsQGkBZ3uToP1r
	kBvQ==
X-Gm-Message-State: ALoCoQlZtV0MqUSwC0VlwreDCMBDSYSjgnDJgzqdQhDvV16nxuWMjPtoCngJgOD4FFzvySoKC555
MIME-Version: 1.0
X-Received: by 10.220.12.193 with SMTP id y1mr18770vcy.75.1392275940187; Wed,
	12 Feb 2014 23:19:00 -0800 (PST)
Received: by 10.52.164.142 with HTTP; Wed, 12 Feb 2014 23:19:00 -0800 (PST)
Date: Thu, 13 Feb 2014 07:19:00 +0000
Message-ID: <CAPhnLPCCyEijt5JJh8=EBbXNjP-+FZ7XoXFcwxEr=R2KG0hfNQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.6_M3.rc1 availability
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
X-List-Received-Date: Thu, 13 Feb 2014 07:19:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

1.6_M3.rc1 will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20140213-1

bitbake     56321b18808f5ed932543d907b9ebcfbf4420233
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     f4d8e9243f9355424a01e2d72fd1abbf68d3bb7c
meta-fsl-arm     cf08433a22de0538d96f7959fb7a677b59b3f267
meta-fsl-ppc     1536064e02f15761e90f784d88f2a930784f7f3d
meta-intel     49b97a90ea3bce2a61a8578cface01f32a97e2b3
meta-minnow     32e4d6f17917027c3babe1ab738480de9691024d
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     b188bda18690dc1af1cb5d18bb0f3ad40c9a6cc6
poky     b70a10ca3ee4a0add90d387e2c8288e531aaa47c

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

