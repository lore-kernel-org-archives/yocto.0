Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C52FE00524; Wed, 25 Jun 2014 21:41:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4C9E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 21:41:04 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ik5so2906597vcb.7
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 21:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=vojo5AUtZICZWYwuEpDb1I4+hdEd9COgnHWOWgm1Ar4=;
	b=XgoLkIU1gbnosBBvQkwbvMwMUe0bycVP9OD7u7hPLQH4tLNJ1xnGRSfQX0+J0gygF7
	HnAKl/31KnSDLayEGbPaXU0WJNhXJ6w0Blcxi9eG1qlizLOyja/eXF+CxtGqrK5V+ywS
	zJqwvtAc6IhHi6xEdugmcDo4QKzKwmAFTnlh3VWgOCW05Vz7ZDqWOX02ehfxD3Xs6iff
	W0eMxWDIZfASwy0pNqcVQDWwsGgLVuAMclNXJoFyR31sgFb0GXulO/8SMx0dCL6CyUfk
	XhxJCmj0v8xT59qJT1xUbdTTWhRCMnh6KmXo5Dx/+Y1bzyHRCbYcuLXK4m01XyX5F3T0
	oCyw==
X-Gm-Message-State: ALoCoQnEQ85ghMqdneU6KH+MFc5G9DD6p3fqZHekDOpkVVsdCYlEa7VxUny8bpPujfIOdsqbqwQj
MIME-Version: 1.0
X-Received: by 10.52.232.133 with SMTP id to5mr9207834vdc.16.1403757663688;
	Wed, 25 Jun 2014 21:41:03 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Wed, 25 Jun 2014 21:41:03 -0700 (PDT)
Date: Thu, 26 Jun 2014 05:41:03 +0100
Message-ID: <CAPhnLPDC447jV3Eqb-XxFk70AkR3aoN0DbAttquhxOVeBPFXDg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: Yocto Project 1.7_M1.rc1 now available for testing
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
X-List-Received-Date: Thu, 26 Jun 2014 04:41:10 -0000
Content-Type: text/plain; charset=UTF-8

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M1.rc1

bitbake b82f724c271c43218dc28440219adcea968e2a26
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm ab90b896f4bf09a8ced37c6e1511686217d053b9
meta-fsl-ppc b920491d60752ffc38098266f260dacaa2c35e7a
meta-intel 76f529881208811e314dba1478cc3a70abf3160f
meta-minnow 7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore b4cd268cf7506a521d7800112cb775bd49e1ef09
poky 68824d9b8f6e290da078383316b3f4b732585f2b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

