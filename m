Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 743CBE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 12:21:21 -0700 (PDT)
Received: by weyr3 with SMTP id r3so235251wey.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 12:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lpurYGpGV2XdwlJ22rHOl65boIp4m0UwlGc3M48DtRo=;
	b=0qWPDJ/d5Qv9MmKX3McStOc6dl7++TDP9kmQQ/UMy3Aa5DtKxQbldfKBPFBbhyyeSW
	sRDwvrmIyxLRf4CAffI++XozyG56SF3Qi7a0nm2ltRGF1u/Jp6ZCOeIbqONcnbqbjzgx
	JGJWyWY7WkfRE0JYU2KbEoI+YuRiRxp82NJuM6N8lIqeKQfjfbphydjfre4sIajTN/nZ
	OS439X+GbOwpuYrzEO8zkq1GBUesF+gZ1F6XJ3741cUqgj/oCqVuK8Hz6kExAtl0XB5d
	SMs1Te3BpHMYNAbUumXS6xqrfHGwy2ykN/iTr90RTcJfv7Y5j9HdStLhc7qvm5xZbDi+
	7F5w==
MIME-Version: 1.0
Received: by 10.180.82.198 with SMTP id k6mr35424149wiy.20.1340738472973; Tue,
	26 Jun 2012 12:21:12 -0700 (PDT)
Received: by 10.180.109.162 with HTTP; Tue, 26 Jun 2012 12:21:12 -0700 (PDT)
Date: Tue, 26 Jun 2012 14:21:12 -0500
Message-ID: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: How to clean
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
X-List-Received-Date: Tue, 26 Jun 2012 19:21:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'd like to clean all of my build output so that I can rebuild with a
different toolchain.  What is the best way to clean without having to
redownload all of my source packages again?

I can see that something like this

$ bitbake -c cleanall linux-yocto

can clean the kernel or an individual package.  I want to clean everything.

Thanks

