Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C767E00498
	for <yocto@yoctoproject.org>; Sat, 14 Dec 2013 14:23:26 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id if17so2237443vcb.39
	for <yocto@yoctoproject.org>; Sat, 14 Dec 2013 14:23:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=T2tbGfEPeX3jKg/8FxRexJO8bR849EK3DmGxl2IKCDY=;
	b=HntV4YXAAfpBc392ek+0Ry0r0spaPV1xGrnHKu6mZyFFeKXEjDW/gfyWduywGHSlW7
	F7ckX0IVKavW2zqiX4erluUOuNtUwQ0SkfZkw/8k4fwyi6XRBT8duUcZGJV9IUk7BZvk
	UWG/boMuxJS8MLB8NAHYLM5AN5VKW8CUihsVVn7QeCMmAyUWVbhI3FYquhBrza0xll0l
	i86GKZxVf8C6lo0s4E5BNt2K2rFhHu8oinHHj8Q85tBgCVhGJQAI3Jz2znRuaWBxNimj
	My17Aqdo7sWlM+eX924lJ/Fgfbg1DLzzRNLS90ISLaO6Ek/DGoTHB2Zl1rexdTZXQ6CC
	bA4g==
X-Gm-Message-State: ALoCoQlRL7izHB+28DOBiS/pbPlHsKYeYbKZxdi6ijTdOA0Gtb0nAak++4+lqO/C0DQmgFFO3DRT
MIME-Version: 1.0
X-Received: by 10.52.230.202 with SMTP id ta10mr416282vdc.41.1387059806013;
	Sat, 14 Dec 2013 14:23:26 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Sat, 14 Dec 2013 14:23:25 -0800 (PST)
Date: Sat, 14 Dec 2013 22:23:25 +0000
Message-ID: <CAPhnLPBWLDFNiwS+KrQLA0mtoneyp6-iyRc-_TydXkv3Fj82Xg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: dora-10.0.1.rc2 available for testing.
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
X-List-Received-Date: Sat, 14 Dec 2013 22:23:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

We've got a build for dora-10.0.1.rc2, ready for QA. Please begin the
QA process.

http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2

bitbake 1484905373ad717cedcaef37a0addde034ebdc60
eclipse-poky-juno 2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler ad74249895f882a8f00bdeef7a0f7c18998cc43e
meta-fsl-arm c7cc5d5f451c9d12df9f11314f4a58ecc347b1f5
meta-fsl-ppc b5732aeadc9eb0de933f52d0949412e12f8486bd
meta-intel c86e39dd06571458c7dee6cf289d5b470c98f4bd
meta-minnow edf75553643face7a0dd5b16085d59a90eb4af8d
meta-qt3 4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore 2e9df12e67b3e56ed3c056559aa8eced6444ec93
poky 8e410e9e46e3335458a7747cdd32e05f5c19ccbb


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

