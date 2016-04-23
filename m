Return-Path: <deepteriar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B3C3E00C8F; Sat, 23 Apr 2016 06:08:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (deepteriar[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA43E0071E
	for <yocto@yoctoproject.org>; Sat, 23 Apr 2016 06:08:22 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id 2so144442104ioy.1
	for <yocto@yoctoproject.org>; Sat, 23 Apr 2016 06:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=LWxjQgL45R1FxJWQH5eOcV1QYKFWOxzaa7TnvgAyVO0=;
	b=jhV60zuy788k8X5RK6/1HM582NZLMRHIOAMvp2ijfIWI09oRGSVD8NEa0vqS/KR4sw
	4ugQ70KOGd+h+xyJeX7MdR1gi/pMvlZwBfcjsO/mWkdV1pHIAXgoWF1KGVvUhyzc7+7F
	UjAm6p/nVBB2VtuVhrEygLX2DtdUWJVOfVnuUVbIN4di49PPivvwjYS9H+zzdm4hA97C
	3h1tTFElPWAGd6w2T4cTmPrZ9kSfRNo3WuEWNd4VqDQzU8ElPmDSlfF56RAjBus1qzXf
	DlbTZOZ3ah9el2BYYBBE+UUUqYk1VC/nKCWzETGJ0wBejiFgMtEPBeJnMGy3eS08UsQV
	Cidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=LWxjQgL45R1FxJWQH5eOcV1QYKFWOxzaa7TnvgAyVO0=;
	b=gRZriLPUk1iq+nes5v2r5hGrBu+gHYVGiyXFWjwvzWYiOxTmgvg3KbZhgIUKfWENLE
	Pi2wyEpvqfR6z2Gq1xpKM3e3/5R7NO839ZQ6etAad6PsNporUOy7DjKZh/eGLFQHxzaf
	yggsPyqzUwFGMkv/kqT/PvO8nosC3nvH/9xyST6RT99JmyoKOxNZWyqYfkPN22WAzePj
	g1CffztD7xrHYUF9qAgQx0YM4PZel2SogJ5juctp1f/uB5uVZXzyIReMAGm1EoE+TjxB
	ozdb/1uY2sPEWJVRcB4m/t6eeRrSXxABnluV/rQym5B2kux4pZtWVXCun/HUDdh6yb+A
	9vgA==
X-Gm-Message-State: AOPr4FXANasK0KsEXrXhoGpmSc1BmIz0NQtOdseC9KWEe3PojIe+2A2FqBp0oR+tZtjgSMbxdT/RHrsGuaGRag==
MIME-Version: 1.0
X-Received: by 10.107.44.85 with SMTP id s82mr29837261ios.90.1461416901973;
	Sat, 23 Apr 2016 06:08:21 -0700 (PDT)
Received: by 10.36.53.201 with HTTP; Sat, 23 Apr 2016 06:08:21 -0700 (PDT)
Date: Sat, 23 Apr 2016 18:38:21 +0530
Message-ID: <CAM_pFj8KqTdmCvBMn8gqeH9Sr0ehBF5xvZmitRm95zKef6KYCw@mail.gmail.com>
From: Deepika Teriar <deepteriar@gmail.com>
To: yocto@yoctoproject.org
Subject: Regarding defconfig used in meta-ti layer
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
X-List-Received-Date: Sat, 23 Apr 2016 13:08:24 -0000
Content-Type: multipart/alternative; boundary=001a113946544fa3e5053126a3ab

--001a113946544fa3e5053126a3ab
Content-Type: text/plain; charset=UTF-8

Hi

I am using using Yocto project for building image for Beaglebone.

In the meta-ti/recipes-kernel/linux/ I am using linux-ti-staging_4.1. The
problem is that I am not able to understand the line in the defconfig file


*use-combined-config=ti_config_fragments/defconfig_fragment*
Can anyone please let me know how to check which is the defconfig file it
is selecting inside


* arch/arm/configs*
Thanks
Deepika Teriar

--001a113946544fa3e5053126a3ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi<br><br></div>I am using using =
Yocto project for building image for Beaglebone.<br><br></div>In the meta-t=
i/recipes-kernel/linux/ I am using linux-ti-staging_4.1. The problem is tha=
t I am not able to understand the line in the defconfig file<br><b>use-comb=
ined-config=3Dti_config_fragments/defconfig_fragment<br><br></b></div>Can a=
nyone please let me know how to check which is the defconfig file it is sel=
ecting<b> </b>inside<b> arch/arm/configs<br><br><br></b></div>Thanks<br></d=
iv>Deepika Teriar<br><div>=C2=A0<br></div></div>

--001a113946544fa3e5053126a3ab--
