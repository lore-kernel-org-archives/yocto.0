Return-Path: <sabraltu61@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04022E00C2C
	for <yocto@yoctoproject.org>; Sun,  6 Apr 2014 01:38:01 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id q58so5287749wes.40
	for <yocto@yoctoproject.org>; Sun, 06 Apr 2014 01:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding:thread-index;
	bh=qj+zwcpjuImkQGL4i/viOG6VU/Bza/jYp9rfuFJXVzY=;
	b=uWFqO7gB/K5cStCvemKVLRQ7t6gWIbqcws6Xw1mWBTSYdQXO+zjYKVriHL3T6MlLiY
	QZ5f0eyo55FbrXiM0/5686Gq6qkj3SYiJdsloV7eAseIXrVvvploDE4W9Nt+QgPDKC3+
	PHz74EWVzLV6mhf1uO8P1FW5Z9bSJpZwNjUrgvkCP69seR/btn5V9ARCQ/YUbRArGKJE
	LqaBUBnKhlO7u/EatAXdg434c2wuhFvHsedIeSa1VQXEM3aM2WNCYiFyiPxq57lgTQvP
	3ZQhImgUMQjgxYuYaqTsHWe0dgxDNLJdcQbP5SYBPv9pTS15nzc+r/kHgEQ4QcDlciFc
	lRvQ==
X-Received: by 10.194.174.197 with SMTP id bu5mr32848638wjc.71.1396773479781; 
	Sun, 06 Apr 2014 01:37:59 -0700 (PDT)
Received: from M58p (aftr-37-24-151-10.unity-media.net. [37.24.151.10])
	by mx.google.com with ESMTPSA id o7sm32837087eew.25.2014.04.06.01.37.58
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 06 Apr 2014 01:37:59 -0700 (PDT)
From: "Sabri Altunbas" <sabraltu61@gmail.com>
To: <yocto@yoctoproject.org>
Date: Sun, 6 Apr 2014 10:37:57 +0200
Message-ID: <BF50EF6AB6484DFCACE23CBE65026EB0@M58p>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac9Rc4J2XGHSsAMNSLWPw/N55V6b7g==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Subject: how can i add gdb to my toolchain ?
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
X-List-Received-Date: Sun, 06 Apr 2014 08:38:05 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi together,

In directory

/home/tux/aaa/poky/build/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-
gnueabi

I have all the tools for building... except

arm-poky-linux-gnueabi-gdb


Can someone say me where and how can I add "...-gdb" to my toolchain ?

Regards



