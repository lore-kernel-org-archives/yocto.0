Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 694D1E009A0
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 06:37:33 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id to1so1405420ieb.34
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 06:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UtDzIu9eh1rl0qLoeBraOBK9GfnA3vetucW6eX9YKjI=;
	b=ZxpuGW2oxCSYMeb0utIMK8hx+FBfh42NEJplBOP0gNSCKCMwD58Rikk/mLp5lX6iFi
	vPHrxK14FFoa/aTYbtEpAEUe5Jqwsx7/yGJ5NG77svPYBcrbZKxouc9yU3Kq1Urs//T1
	mmVRAlm03NSF67j0WWRI7eYRIBs/5ijkHNmENIOS7elW5e4OHzRyBttN3CnfnIlfyndI
	bSEAL20pcE+HVjRsAWszv7pZAUIAfUhT73J/UhLLluuQiUEEeg29PFN0ohzkYiipiS+D
	tNHxjrbfzuC40hNiD6qw6QaracluujsKIuWy+WCF0QmGa4f5OIM+s9jMhIAp8WliChdE
	mAfQ==
MIME-Version: 1.0
X-Received: by 10.42.62.143 with SMTP id y15mr31391430ich.14.1393943852959;
	Tue, 04 Mar 2014 06:37:32 -0800 (PST)
Received: by 10.50.44.97 with HTTP; Tue, 4 Mar 2014 06:37:32 -0800 (PST)
Date: Tue, 4 Mar 2014 14:37:32 +0000
Message-ID: <CAM1ZcoVHPgerCQnFsP5EpAu=71s-WMHYfrwM3Q5eBFngKPq8XA@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: enable/disable systemd from image.bb
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
X-List-Received-Date: Tue, 04 Mar 2014 14:37:34 -0000
Content-Type: multipart/alternative; boundary=20cf30223c91314cfb04f3c8d85d

--20cf30223c91314cfb04f3c8d85d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm using Yocto 1.3 and I've created some recipes. All of them have systemd
services. Some of them start at boot time and others don't. Let's say for
example:
recipeA_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "enable"
recipeB_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "disable"

I want to create two image.bb files. One of them will start A and the other
one will start B. I've tried adding

imageB.bb
.....
SYSTEMD_AUTO_ENABLE_recipeA-systemd = "disable"
SYSTEMD_AUTO_ENABLE_recipeB-systemd = "enable"
.....

I've also tried

--20cf30223c91314cfb04f3c8d85d
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div><div><div>Hi,<br><br></div>I&#39;m using Yocto 1.3 and I&#39;ve created some recipes. All of them have systemd services. Some of them start at boot time and others don&#39;t. Let&#39;s say for example:<br>
</div><a href="http://recipeA_1.0.bb">recipeA_1.0.bb</a> &gt; SYSTEMD_AUTO_ENABLE_${PN}-systemd = &quot;enable&quot;<br><a href="http://recipeB_1.0.bb">recipeB_1.0.bb</a> &gt; SYSTEMD_AUTO_ENABLE_${PN}-systemd = &quot;disable&quot;<br>
<br></div>I want to create two <a href="http://image.bb">image.bb</a> files. One of them will start A and the other one will start B. I&#39;ve tried adding<br><br>imageB.bb<br>.....<br>SYSTEMD_AUTO_ENABLE_recipeA-systemd = &quot;disable&quot;<br>
SYSTEMD_AUTO_ENABLE_recipeB-systemd = &quot;enable&quot;<br>.....<br><br></div>I&#39;ve also tried <br><br><div><br></div></div>

--20cf30223c91314cfb04f3c8d85d--
