Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1196FE011C5
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 14:13:19 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id p13so3650739vbe.19
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2013 14:13:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=znLq+Q6IIavvObE5HHt9DKTXbeBLiXVVurbzEUXiGUg=;
	b=gjwSt4pm3rG+NPFZB/98d+cXlQoWAkID+1cARJR6pDeR0Oa3Ne5RPtiz2pLWs1yhgb
	VDJhXb9SBcqwjowTs5y8NN/dQRn9zc9l/K7klPnBzUlDVhlnE4tY4Qh1jCZeaSfdhBYR
	QY+8+1gduA2CHu+6IuV2BfZFjzphZh8E3R11J3PpEXM8hxqk+rL4Rx4WTu2CRGUA+0Rz
	KLgY1Ehu6H9dnpTENsFMo0CM1i8afQCHrGF6l3xAHHrFgvHnWZH985VEU84+Ef8YPDuJ
	bFZfMWafv3xqHpC0cphZegxKevkWRHe7yCIvNY6wc3ZGmYkbzTdLjAnpVde6ENlMcjfT
	9JYQ==
X-Gm-Message-State: ALoCoQmABvShB+kAj7Q9GPm0El8N3ksckdTx1ykYEMRkoVX3jJ4oRt4VZ1BnXWlUpM0TVzytLYRW
MIME-Version: 1.0
X-Received: by 10.52.27.243 with SMTP id w19mr22809098vdg.3.1381180399080;
	Mon, 07 Oct 2013 14:13:19 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Mon, 7 Oct 2013 14:13:19 -0700 (PDT)
Date: Mon, 7 Oct 2013 14:13:19 -0700
Message-ID: <CAPhnLPDOBdk5Egia_oFE6-tX9WBY1+6i2t7ZioJrfaVu0_2+bw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Jacob Cloyd <jcloyd@unomaha.edu>, Matt Germonprez <germonprez@gmail.com>, 
	"Hatle, Mark" <mark.hatle@windriver.com>,
	Kate Stewart <kate.stewart@linaro.org>, 
	"Manbeck, Jack" <j-manbeck2@ti.com>,
	Brian Warner <brian.warner@linuxfoundation.org>, 
	"liangcao@unomaha.edu" <liangcao@unomaha.edu>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto-SPDX sync
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
X-List-Received-Date: Mon, 07 Oct 2013 21:13:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Attending:
   Jacob
   Matt
   Mark
   Beth
   Kate

SPDX team moving forward. Mark Hatle working with team to help produce
documentation.
Fossology speed is a major issue (very single threaded).

Presented at LinuxCon. Good feedback. Mark's plan is to activate
within internal buildsystems within Windriver. Matt is working with TI
to test some of the YoctoSPDX work.

Matt is working on validation of produced artifacts against the SPDX spec.

Between work/ELCE Mark and Beth are swamped. So no meeting until November 4th.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

