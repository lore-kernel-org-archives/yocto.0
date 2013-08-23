Return-Path: <marten.wikman@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23DC5E013D6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 05:24:44 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id q55so474985wes.36
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 05:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=NcC7GcPZpPdiJQnXfvc3x1z5LhH6Cc1FAYK3I88MFYM=;
	b=ScUYQxGEj9eYVeIRu0hsksfVzjGhnGzWoHuKnxD9iaVmJFrhNkirL5bHuY90ywGuZ4
	PcIRoFXhKcFau7J8uucBxZdtndghG6+A3dqi8PulhMf4m9iPm1TGc4ATc2+8HcjThoVS
	MGyhTlu6IvscliZj9WCPyNcFUS7UDtgiiwfwrg2MvKNORqenkluIzsKViUGZL3unuRpz
	hGj2p7ALTvhEq6njkmp4oTc10rlQeU5TtIVUbqmcPOpri0qbGHLRwXHcSMaE2T3QiATg
	F5Qd3OzYsSEgynzrIg2y3CZHa44W1NCwxtngAJ2kqNqM0HJUM09P94ERN5b7I2zmyJ7H
	O+iw==
MIME-Version: 1.0
X-Received: by 10.180.109.167 with SMTP id ht7mr1972070wib.45.1377260683056;
	Fri, 23 Aug 2013 05:24:43 -0700 (PDT)
Sender: marten.wikman@gmail.com
Received: by 10.217.136.198 with HTTP; Fri, 23 Aug 2013 05:24:43 -0700 (PDT)
Date: Fri, 23 Aug 2013 15:24:43 +0300
X-Google-Sender-Auth: i42dXvtCWvlSzX5fLCuFJdhutZg
Message-ID: <CAC0tyxMk05OLYkVWErMHAmEJnYBc8bgQMnX_zm6u3Td_POrfCA@mail.gmail.com>
From: =?ISO-8859-1?Q?M=E5rten_Wikman?= <marten.wikman@novia.fi>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 23 Aug 2013 09:10:00 -0700
Subject: linux-firmware: add only rtl8192cufw.bin from rtlwifi
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
X-List-Received-Date: Fri, 23 Aug 2013 12:24:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I want to install rtl8192cufw.bin from rtlwifi from linux-firmware but
if I add linux-firmware to IMAGE_INSTALL_append it will of course
install whole linux-firmware to my rootfs and bloats my rootfs image.

What is the correct way to install rtl8192cufw.bin automatically to my rootfs?

