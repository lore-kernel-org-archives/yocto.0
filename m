Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D7AE00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 17:39:21 -0700 (PDT)
Received: from mail-qa0-f41.google.com ([209.85.216.41])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 25 Sep 2012 17:39:19 -0700
Received: by qatp27 with SMTP id p27so3213145qat.14
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 17:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=EaZDzgNwJTg2lyERe4lS3+yMRORIAfrluc+rqGZoFvE=;
	b=a+mfPNy/0Ond/AenRxco0iheBMtssiAs6IaXUxv+2y1fg2hLMNBrQM931TvweKzGy4
	+z63B8ZtL757+D6iB/TmFHIa/3Gr7ZmNmIGyz+nl6S8iqvv9iRg0Vsl5KX3iMejqvG/m
	Jpz3azOed/iPlAMXoHH+CwpQ6GvFZnuIROUuLgSslAKaxWv4vUCJN29GTb5gog6C2eSm
	Lt85vYyU+bel9a5QmiSYuq8OkH+EMvJ37+6xtaFl6AP+CNm01W4I4P88RA2Ze91lhcMG
	efaNzmoYc719Egf5AJ/S5xOejAu93Ui4KJGviKcHjTmeDBmNRsQ1vSFMVsOTVTiZXtp4
	rmuA==
MIME-Version: 1.0
Received: by 10.224.34.195 with SMTP id m3mr27532980qad.19.1348619957961; Tue,
	25 Sep 2012 17:39:17 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Tue, 25 Sep 2012 17:39:17 -0700 (PDT)
Date: Tue, 25 Sep 2012 17:39:17 -0700
Message-ID: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlVYcUIXIn1g1l0y/Y+NlADMz1kEuX0+ubVL7MQTnSFiRvRcxEDb9xISp8U4iDQi/UIoSW7
Subject: 1.3_M5.rc2 status.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Sep 2012 00:39:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

1.3_M5.rc2 was started a bit late today due to some miscommunication.
The build has begun and judging from recent autobuilder performance,
I'm expecting it to complete in about six and a half hours from now.
For those doing QA against 1.3_M5.rc2, if you can, please begin
testing what you can as soon as build artifacts become available.

Download: http://autobuilder.yoctoproject.org/pub/nightly/20120926-1
poky: 718eb85806e080d0b165344b272e531ef19421eb
meta-qt3: 8730326c902e6fb256b5dea77a6dde28d813c424
eclipse-poky: c88444d96958324e7dda9bd496977be3369aea1e

Thanks,

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

