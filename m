Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F181FE009EB
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 21:50:03 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id lc6so9113836vcb.21
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 21:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=K931xgSr/b0ajGxuMpyYXxWvefkJ7JAnIMuEttvItXM=;
	b=WXIZBAH4M16j6q8MQNxGAbkM8/uOortq85u8yGvmJq95vSm7uMuYUY8Uee7msh5Afz
	hjgC5U9IPTnCewt/lqIZfrAyec1B75v69dRPrP54CBCjh4aKCs0+q2OMlZlLULuLuDc7
	s9L7f1JF10yQLm1ag4jVQeB/44bukMGKc14MBLZKOBbniD6Nuf6tDYzhJQTl1U0AsHV5
	dsQ5Gqp6ctDp4aE4OxemTidy3jJzJIwlHhiAXXnIPyRGDxuls2v+ZySMYsuFFT3Le4VL
	4DJqQ1SDONmZ4mmCL0HG1Th/vR6Z6FUTI145smAmYv4O7Gh0OaTEawyPwj9j/j7wIru4
	tX3A==
X-Gm-Message-State: ALoCoQm8UkhjtVGFLCPxW4pBZac4DkPyP9pb9wuazU/Hg8wqlgmQSAcYtjr3gPTXvkL64FsNDRmk
MIME-Version: 1.0
X-Received: by 10.220.163.3 with SMTP id y3mr27464582vcx.7.1398747002265; Mon,
	28 Apr 2014 21:50:02 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Mon, 28 Apr 2014 21:50:02 -0700 (PDT)
Date: Mon, 28 Apr 2014 21:50:02 -0700
Message-ID: <CAPhnLPAQAFOZCij0DMb+gQUMr9peNKeKDS9E6VikrfJ7WBoFtQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.5.2.rc3 now available for QA
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
X-List-Received-Date: Tue, 29 Apr 2014 04:50:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.5.2.rc3

bitbake     0a94e568152de550dedc8135a766beb18bf064ab
eclipse-poky-juno     79cd3c6ff119526f3f85567253450d2e857afed0
eclipse-poky-kepler     e842d41f05066df1533a2788e650f0be213ad5b5
meta-fsl-arm     5fdb620c09df11e70434092f675c891e0ba84108
meta-fsl-ppc     40465bac88ca28b554cff35346341d19552548bf
meta-intel     acf2b4013d981563081bc072e778c4caaab7c67d
meta-minnow     9aa60d0eaf03fe30670acf581eaf7e57c76b5f99
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     97bc1bce9a226cc02db8a5afc2c0d4f4f70034a6
poky     9b7d43963f54d25e087a4cc55623a4cfeac121a9


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

