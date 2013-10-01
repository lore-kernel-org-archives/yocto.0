Return-Path: <jvp.vuorivirta@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA5DE01630
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 04:15:29 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id m15so4753463wgh.3
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 04:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1xdQaI3ILfVEZyty1yUHvkBjSQGKr2ptuGQU4twH0lI=;
	b=Z2vI0nVJs4Ui0k6Mij3k0iqnOEqyVkTYQFYc9tHPRCSczE+qe8FBetzB7fcRyGrtLM
	2KcFYEYk5j/Cke9C/tkYXT9SWsxUO8wLb6A3qmmF0m4qQMQQDAVcygQD3Y+dzteKFvdI
	fKHfGyAQRl4rLUYvJNrKc0Dp12Jdns2Gu6Fctj8MEhJlfZD2AaqQfdZX0Ndn8TBog2zT
	emfnV7h2XrWbzSIbPbUwedt4wW28Bx3v1i9aDFFQm30qq6+39Rce30OpugUukJWtPHZt
	W+/e6wTL5taeCijGWsVXb0DYGcTIcjySkZ+AEyLcxjcGgvqyXY7E5ZIQwwv3CGM1DQLY
	czlw==
MIME-Version: 1.0
X-Received: by 10.180.100.202 with SMTP id fa10mr17801821wib.8.1380626128636; 
	Tue, 01 Oct 2013 04:15:28 -0700 (PDT)
Received: by 10.194.29.74 with HTTP; Tue, 1 Oct 2013 04:15:28 -0700 (PDT)
Received: by 10.194.29.74 with HTTP; Tue, 1 Oct 2013 04:15:28 -0700 (PDT)
Date: Tue, 1 Oct 2013 14:15:28 +0300
Message-ID: <CAEpurxFiajVOow0qx++fGoNk2HStvkaXYQrUbStFCLPzVcJxnQ@mail.gmail.com>
From: Juha Vuorivirta <jvp.vuorivirta@gmail.com>
To: yocto@yoctoproject.org
Subject: How to add /sys and /proc filesystems to image?
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
X-List-Received-Date: Tue, 01 Oct 2013 11:15:31 -0000
Content-Type: multipart/alternative; boundary=f46d04447fe5f712c304e7ac11da

--f46d04447fe5f712c304e7ac11da
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I have custom board with core-image-minimal and boot goes fine. Problem is
that image has /sys and /proc directories but they are empty. I tried also
core-image-sato but boot hangs on Starting udev...
Is there a way to add these directories to image? Or should I bitbake other
Yocto image more suitable for my board, which do not have display and
console interface is OK?

jv

--f46d04447fe5f712c304e7ac11da
Content-Type: text/html; charset=ISO-8859-1

<p dir="ltr">Hello,</p>
<p dir="ltr">I have custom board with core-image-minimal and boot goes fine. Problem is that image has /sys and /proc directories but they are empty. I tried also core-image-sato but boot hangs on Starting udev...<br>
Is there a way to add these directories to image? Or should I bitbake other Yocto image more suitable for my board, which do not have display and console interface is OK?<br></p>
<p dir="ltr">jv</p>

--f46d04447fe5f712c304e7ac11da--
