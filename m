Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D69A2E007E2
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 05:39:21 -0800 (PST)
Received: by mail-vb0-f51.google.com with SMTP id 11so1306677vbe.10
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 05:39:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Qwj5kaUJcGeUX3JV9sYSEmUolo2GtvHSJh7PfcBXdFU=;
	b=N8phxi8atTxYzFu5PJT9sHjdIit+WSGYU7z2Cf5yPnkQc00O2kYkzPHZoyhTTj9jM+
	VfF8YPVC/XG0hHmTbvMvVH0F6P5qi7+pCZ+6wwnA5Y7BiZx9yTnbFHSn9XgBd9YdrxgJ
	VFb/72+PXi4eMdVL2rsazpRjiP9ROiM6Hd6x1Bpv31KIWIabldfB2coHyA6G6leoOmgk
	iySw6UM3CSeU9xzAx2rHLY9/wBWUra3gketEIhSSNLGDYr+sI4Tmsu/4pO/X7bZrJcHH
	MqN7/Ir+a20pkbywIPqdEWiHUTflWsynH69cUJSg7723dlghL2d/L0OFFaeRAM/zbKTl
	mBDg==
X-Gm-Message-State: ALoCoQmaJwAzXm7e3+4YdIM3xshdYEWgQM7TMKcdlojp28PrkEUg7PVgrETuVv/w+yxoN94ZvP1h
MIME-Version: 1.0
X-Received: by 10.220.184.70 with SMTP id cj6mr1180991vcb.23.1386941960377;
	Fri, 13 Dec 2013 05:39:20 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Fri, 13 Dec 2013 05:39:20 -0800 (PST)
Date: Fri, 13 Dec 2013 13:39:20 +0000
Message-ID: <CAPhnLPBH=0VKVC8V2sduQ0BJLtZn6xpfn5uM-dZwn80VqjM1JQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
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
X-List-Received-Date: Fri, 13 Dec 2013 13:39:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

With the failures we saw last night on the dylan point release, we're going to
ask folks to switch QA efforts to the dylan point release which should be
finished building shortly. The build appliance will be built out of
band in order to fix
some autobuilder build issues on it and then added to the rc2 area.

http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2

bitbake     1484905373ad717cedcaef37a0addde034ebdc60
eclipse-poky-juno     2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler     ad74249895f882a8f00bdeef7a0f7c18998cc43e
meta-fsl-arm     c7cc5d5f451c9d12df9f11314f4a58ecc347b1f5
meta-fsl-ppc     b5732aeadc9eb0de933f52d0949412e12f8486bd
meta-intel     c86e39dd06571458c7dee6cf289d5b470c98f4bd
meta-minnow     edf75553643face7a0dd5b16085d59a90eb4af8d
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     d68c267f3387d7fe221d3c5653a66db8b1f78fd8
poky     7a0033cc4e1f590c5a936671f351a1b251e16726

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

