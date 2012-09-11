Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E870E004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 14:57:21 -0700 (PDT)
Received: by qady1 with SMTP id y1so789248qad.14
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 14:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=KSt99wDLxTkL+4y5W1331+WfYiinXbRWkW+EQzY1o9Q=;
	b=D/i89+OUGZw1SulJ8zirRZEjNnX3xsKg2vHKP+X6qovixM4y0M1nVDx0MpP17nRNIM
	8Jh0Sqra+wGeTB+nIsC7M8ZPzB6mEqTRGEunvbX4w6qVtBYSR7x3rrblP6rU5dQSfwrm
	uSd2KVOP6X6Y52zv6hrxXcsNFgJZ+buyii15nJ0euo7BAk3iFPxSLCePtFQ5F/P0LxJ9
	0nWbU1sDMPduZpsHamBy5cxUGWk2xCJC82WOIpJtaL1tQoP2DO0HJhsPhTQ4ZbT9Zit4
	yNq8HGwcZZyjMpS+RT51B++sPj/qyEDT1QhKzUMYWJJ3XUaZDtO0HlJhM41Kv2a+FcA1
	fk1Q==
Received: by 10.224.179.18 with SMTP id bo18mr20311483qab.81.1347400638949;
	Tue, 11 Sep 2012 14:57:18 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id ez6sm7564732qab.17.2012.09.11.14.57.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 11 Sep 2012 14:57:18 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 11 Sep 2012 17:58:13 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Sep 2012 17:58:13 -0400
Message-ID: <87627kcjd6.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Replace netbase with connman
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
X-List-Received-Date: Tue, 11 Sep 2012 21:57:21 -0000
Content-Type: text/plain

Hi,

I'm trying to replace netbase from my image with connman and I need help
on how to proceed. So far I see that:
- udev includes some event scripts that bring up interfaces
- netbase is included by default in core-image (which I use).

Should I remove both the udev scripts and netbase from my image and just
install connman?

So far I successfully removed the udev scripts with a bbappend to udev
but I don't know how to remove netbase from the 'core-boot' task.

Also, will connman work when booting with nfsroot?

Thanks,

Marc

