Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10792E00746
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:34 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3043334pbb.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=Cc6Z+uzs62VK2Xso2KKaMXhpbivoc+2XvhmbsrWLjlg=;
	b=PUhgVGIvgRcJeMsXc5Zzvl+s279m9XFieGCE1XHo3CrqAZHDMAjtqjXvTfNGFXQgzu
	Qtb2jd8grGdX2ZAs5JelMItNXe/V/KdEDXqdjbo+2mIA6krbjLfmBfjRpuaq/zaU5fNi
	NtdsHABqK9PX1pHoxhdSPNNPGzemiJp2sCXfCkZJy9QxsNTpeJGeuLws9+Ga+8w71CkC
	Y2lyYIVQfPbBFjQKPA06PUavYyRTTSCowc5Sd6Sm8ItY/jvImcI6ZsbyjoLWwdHm/PE9
	tIur1gMGotyCO1UdWTcy5TrL+6jxFBbfDB6NXOZBgMBmfxwWdmGLa3eq8caLSukfAUJq
	tGrg==
Received: by 10.68.239.161 with SMTP id vt1mr1676554pbc.15.1337983834722;
	Fri, 25 May 2012 15:10:34 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id mt9sm10340900pbb.14.2012.05.25.15.10.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:10:34 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 25 May 2012 15:10:21 -0700
Message-Id: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQnO3qP8qkLgMCf9eBlKGajoj78PoHlQFnb9na1EEPUWwDBpSbPUMFDP0oINOGvkWOWskZRH
Subject: [PATCH 0/3][meta-intel]fri2: netbase, alsa-state, and README
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
X-List-Received-Date: Fri, 25 May 2012 22:10:35 -0000

Update the README with device details and known issues. Update the device
specific netbase and alsa-state bbappends and associated config files.


