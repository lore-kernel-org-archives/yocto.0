Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 962DAE01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 16:03:19 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id l18so45826qak.9
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 16:03:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=hP8wGRPgSuRTfRpIQ5kx94RqxFmFEiLJF+UdohnfIdk=;
	b=jTvHOvD9G8nE6+5LlhMHf+2oDOlX1ukkJ4CBmTWbntbckjTcjW/JguHDWs9qpYu/qV
	QOyFIs87p61VSGLVmWEzuhCOlh0OREqWnelgo38v36NqlHrMdtprdohA+fo76Ba/gEJL
	088L5DXGr/+8FBRmWdga4e3Yemyuy1E/w3s6SoXyT2q5ceRWpwSThTPM3KkDklCgbNdj
	T2KLnL4PrxaIGCgIA9XXNXQlmzYk8i5/IarJgnTiLA3yWGm68zgPZR4AtKfP9uUG5JOa
	0YY2jg0vdgoQtqLenYArQbDmKI2p1jZO+7MqrJRCklJSv1sbrzrLvTYyfnJGYHQokM7B
	ywRw==
MIME-Version: 1.0
X-Received: by 10.224.22.197 with SMTP id o5mr908886qab.52.1371596599160; Tue,
	18 Jun 2013 16:03:19 -0700 (PDT)
Received: by 10.49.14.228 with HTTP; Tue, 18 Jun 2013 16:03:19 -0700 (PDT)
Date: Tue, 18 Jun 2013 16:03:19 -0700
Message-ID: <CAPhnLPAjXjsN8foe-8cyYFys-tc+U=pQ8KfF2aQd=2N+iQ19cw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQm43z3plYH8GUxOcCheIRQfL4/2pgKhsD4POrP54Jir7582KL+kYDkZ0Lvxxi7xWC5Ivw5j
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Weekly build availability
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
X-List-Received-Date: Tue, 18 Jun 2013 23:03:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130618-2

eclipse-poky    	60e99763dc9b77307d46eae4f43343948fa49757
meta-fsl-arm 	976ce7acf4e2b8b8ebf61cb2488c11c2c74e0af8 	
meta-fsl-ppc 	52b906c448f275719f241c634fe6e412e917b67a 	
meta-intel 	c8856e41a418da8080a515c6fbcf4c46765301e3 	
meta-minnow 	286a72ba3f5e29432be1dd77127de5bdc2d988c3 	
meta-qt3 	4c27cce6688aa39852f3cba5e7b80ec279019605 	
poky 	590010a6525b0e1bc1de73e794764e23404591df 	

Please begin QA as soon as possible. Thanks!

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

