Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E83E01466
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 23:35:07 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id 10so1112473vbe.33
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 23:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=HQa/CGkOmD50Jn2iSiy5oSIkk9bT1/IzMfA8PEcW0fA=;
	b=U2otKTkj4vESUk7NqKkMi/0sdqHhvo5rje9s1XRHX6fxYsxHMgCfgY0ph3LWCNfMhj
	TKhHEGGQTlNKuUsAK3op2cWMrL/6Ne0irjy16beGBfis9PI3LDaXQ5o+WlssxkThQZKb
	X+y1NCZyV6hCnhM4zeCvh2XXedxEHqnOZhFvmjrS/dvVqg7e9mwqnhDhraluRBPk3z6y
	Jzh1YGmF+8gJHpwjrmZ2LyVgy5pPov7GI9ueZDrMO8DvPPk1zs8kuoBeOy7ic8ebzChU
	4HFR6SvA54wGtVnYgdVN+r+QUE+2g8uMKHMyOw8QjF5ZHtjVa7icjO8CjlWV2bri2kUH
	GAYg==
MIME-Version: 1.0
X-Received: by 10.58.24.201 with SMTP id w9mr1602850vef.82.1374042906751; Tue,
	16 Jul 2013 23:35:06 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Tue, 16 Jul 2013 23:35:06 -0700 (PDT)
Date: Tue, 16 Jul 2013 23:35:06 -0700
Message-ID: <CAPhnLPCeQ7N4qqbe71jbN=yVY3OJhxH5No49zEL7WCDK-L=2PA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQk6J/6nok24xu6c8GMnJnU4loc40LnNRyR2DWCOqpOTiGlAzPnmT2YqHI+YZzhhwepZet4i
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
X-List-Received-Date: Wed, 17 Jul 2013 06:35:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry for the lateness of the build. The artifacts should be available soon at:

http://autobuilder.yoctoproject.org/pub/nightly/20130717-2

meta-fsl-arm 	e2f010bec19aef73b4731cb4f66c7412d59b265c
meta-fsl-ppc 	93c57323edc118eb8905980348ad3888664f2382
meta-intel 	32a8205cebd5dbd65847c63721dc5df70c4d1c35
meta-minnow 	286a72ba3f5e29432be1dd77127de5bdc2d988c3
meta-qt3 	b73552fb998fd30a01dbee5a172e432a16078222
poky 	3dee534f1e25109e0bdb681de0746c336f4b8840

Please begin weekly testing as soon as artifacts become available.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

