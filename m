Return-Path: <gopikrishnans@pec.edu>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F53DE006C3
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 08:11:40 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id z14so5282312lag.2
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 08:11:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=2eV0jK4pT6EyqLQTZJSV6FYF7MiwJxRn0e1A5+gSkAg=;
	b=ZwMMzBn63J53P2yZhRyDef3ISCr5I5fJbBAgVeZb03Pp20iFzoYy11VojKiA4c/JPx
	V+FpnQpnZj2HayMs8x1//3B7noBltszUD2RNT02WOvsoIqy1roIStG63bHdh2/YyGOsK
	qCEYuETjbugm9Tr5kpT64h2XMxk4orscc0+yFYOJBNjbTzz6LJBvrUAeBNnRHGUOGULQ
	LvdY4yGT5j119PrVFSCiWg7CLMgy9xiPgiWTy+Z7rEzv4qzOuTD+bzfiXefeYs+ZWN1m
	lM9gOv+XYRoJ3M8rj0NjqYm/b86VsxnW7gpvnJN5rvuD3NakVl77hQVk89flnnP55eJy
	/kvQ==
MIME-Version: 1.0
Received: by 10.112.16.69 with SMTP id e5mr5575757lbd.43.1356106298743; Fri,
	21 Dec 2012 08:11:38 -0800 (PST)
Received: by 10.112.21.193 with HTTP; Fri, 21 Dec 2012 08:11:38 -0800 (PST)
Date: Fri, 21 Dec 2012 21:41:38 +0530
Message-ID: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
From: GOPIKRISHNAN S <gopikrishnans@pec.edu>
To: meta-freescale@yoctoproject.org, yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQl8D7T85Mj/pE2dMhnumvESv6ORFKG2UF5fxR5zL2H3ahg29+fvHE+zxD50OIV+yKjqMT9G
Subject: hiawatha-8.6 using Yocto
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
X-List-Received-Date: Fri, 21 Dec 2012 16:11:40 -0000
Content-Type: multipart/alternative; boundary=f46d0401fb4136dc3504d15f1ae7

--f46d0401fb4136dc3504d15f1ae7
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I was trying to install hiawatha on my freescale p2041rdb. But it is using
cmake to configure and install.
How to write recipe for this with cmake. I have writted recipe for packages
with autotools, and make file.
Any Idea???


Reg,
Gopi Krishnan S

--f46d0401fb4136dc3504d15f1ae7
Content-Type: text/html; charset=ISO-8859-1

Hi,<br><br>I was trying to install hiawatha on my freescale p2041rdb. But it is using cmake to configure and install.<br>How to write recipe for this with cmake. I have writted recipe for packages with autotools, and make file. <br>
Any Idea???<br><br><br>Reg,<br>Gopi Krishnan S<br>

--f46d0401fb4136dc3504d15f1ae7--
