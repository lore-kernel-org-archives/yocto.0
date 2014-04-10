Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A94BE00BF0
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 22:03:33 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id ib6so2899347vcb.41
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 22:03:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=mRZAx7CSiF8KUaKfxrOQjFHeYtcDauZNwOctEAZN/1k=;
	b=TWeSTLAfS6U7tOb47aeJ5P6tfEFYtC3Es7AMtHZolmbFZhSAq7KKEvwmfWdsrL11u2
	T//eZWMjXQSZOa6ttki9MvLq4hvwkT3WgUuARn2Z+pazSOX/F8le3SKxn88KyePWY5h9
	qvIVV8tAKOAxxPq8WzOTZ3N3HVCizV9uVYd+lRVV3dark6DvYkZPWnk5KnB/AwnINXWQ
	EZCjKHmvBu0VYT6fnlsAk9HxtVCbPqDsdxK9god/oh2mQRtrzf0e5YcASgHVo1fckL8Y
	VG+oBldhjv8/0dkLmHX03uOejZDzS7VC2mhvIMpdw92qHiQAA/Hw1/nkJNZZ3IuKgtB4
	Z7rw==
X-Gm-Message-State: ALoCoQk3xvOmfNYU5YOVyRYw0+onAe/qc1bh4qx7r9Pr8CI03K8movKS/2MlJMZ1DP0v+NQ5zK8u
MIME-Version: 1.0
X-Received: by 10.52.142.10 with SMTP id rs10mr10512498vdb.3.1397106212847;
	Wed, 09 Apr 2014 22:03:32 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 9 Apr 2014 22:03:32 -0700 (PDT)
Date: Wed, 9 Apr 2014 22:03:32 -0700
Message-ID: <CAPhnLPB-EHuntTftJzSVptECpg4S5TQn0DRGj1qR5c0jgJczHA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: yocto-1.6_M5.rc3 available
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
X-List-Received-Date: Thu, 10 Apr 2014 05:03:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We have an rc3 build for our upcoming 1.6 release. We had to rebuild
the eclipse-poky-kepler
plugin due to some incompatibility with the debian 7 builder. We also
have issues in
nightly-oecore:

http://autobuilder.yoctoproject.org/main/builders/nightly-oecore/builds/39
and
http://autobuilder.yoctoproject.org/main/builders/nightly-x86-64/builds/40

The build is available at:

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6_M5.rc3

bitbake     40027a6e093c3b7480bfaccbd57e0e613d9a7b71
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm     d4316faef78ceb01ff023579e15110939ec69408
meta-fsl-ppc     c4fa1b431f4efc4982a168119db95236cfa8cad3
meta-intel     db84acfc8d9ed8dccd4a79de39fee337bc729662
meta-minnow     743fa66aa0cc2265a9c1f293c305828d90b4fbbd
meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
oecore     77e3d60fa00a41424fe65977b2bf307727a5a26c
poky     046a9ea30356daf4f3f8f4ddfc5b57fcfd85a27f

