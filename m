Return-Path: <insop.song@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E30D8E00770
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 03:49:05 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id j8so188069qah.0
	for <multiple recipients>; Fri, 15 Mar 2013 03:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=8EegqZranMsF/v2XTtIOlOv7EPKxc/Ua9HqrNIRKnP4=;
	b=aIDS1H3lq+iSleAqD+fY8QuTvMLnt7pkWn0ru/PbCb/OmiZQKmc2USSda8wo50CxlN
	oVjKlmpSiW3MM7MmyhW/K09vTs9mK6ylWrZj6tM/QiBZ0T9MNLuREtqNvZo5FDNhPCy3
	owXQ2vgnKfLFC1zU5fx2UTyabB4a5kO1aB4bDekZi76LmZO8JZRclt4LWDZZweI6O6Zg
	xcijJ2FY86k0y/+Av0aUf9c0BmMBGHsjVu0bqAe4kTmrghWtqHbOk2NSZPtAicki6bY3
	kYGARd3+PvnP+sxiAliQddq/UvNNVoIcbdPu4IV7knyjVaQG3VQGcELQ2Qv3vkMKwPSA
	/gIg==
X-Received: by 10.224.9.201 with SMTP id m9mr4693873qam.25.1363344545023;
	Fri, 15 Mar 2013 03:49:05 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id gw9sm2076573qab.10.2013.03.15.03.49.02
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 03:49:04 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	inux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Fri, 15 Mar 2013 03:48:48 -0700
Message-Id: <cover.1363342550.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <insop.song@gmail.com>
References: <insop.song@gmail.com>
Subject: [PATCH 0/1] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 10:49:06 -0000

add sched_deadline reckpies-kernel for 3.8 kernel

Insop Song (1):
  add sched_deadline reckpies-kernel for 3.8 kernel

 recipes-kernel/linux/linux-yocto_3.8.bbappend |    9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

-- 
1.7.9.5


