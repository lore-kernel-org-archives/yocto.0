Return-Path: <sabraltu61@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 726CFE00C9B
	for <yocto@yoctoproject.org>; Sun,  6 Apr 2014 10:18:41 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id d1so3831793wiv.3
	for <yocto@yoctoproject.org>; Sun, 06 Apr 2014 10:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding:thread-index;
	bh=SkgoCLYeRlfVrPYeT21AIQNRA9r7Xie345dYU0TNrkQ=;
	b=m9pLznvDSxbL8L6Ehtcyy721/1UjZvBGkvhH2Eo4n5jmH56QrYxwDLNRqzc6+rJ+/s
	9hH6HT+kfhD4bwV6PJq1a0G0fOWdvpIU8PMfoqVRaLJZXTIGE1b3I933GCy8nOLxk38r
	SpEPGP85bJUoc/sCmX3I5S2ejpgONEfirjXkpteOu3Js30R88ohIufmCr6aVpT2LPGNw
	Q2ky9ieGAUnBUQaAVs5koR8XE8JcaqC6/AiEFb1IL6uU/LvazQ4r2hNjpYMCFJgT+hua
	F4XHE3JNWb/07wLNVeRElmd3pxHiAlgouX4ifvsVwJG84qou/PuuBsu+4tTgQOBRZGeW
	CX9w==
X-Received: by 10.194.103.36 with SMTP id ft4mr36315656wjb.66.1396804720619;
	Sun, 06 Apr 2014 10:18:40 -0700 (PDT)
Received: from M58p (aftr-37-24-151-10.unity-media.net. [37.24.151.10])
	by mx.google.com with ESMTPSA id p8sm35816183eef.26.2014.04.06.10.18.38
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 06 Apr 2014 10:18:39 -0700 (PDT)
From: "Sabri Altunbas" <sabraltu61@gmail.com>
To: <yocto@yoctoproject.org>
Date: Sun, 6 Apr 2014 19:18:37 +0200
Message-ID: <E58187CCBCA0431083FB7DC50BEE6A6E@M58p>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac9RjnkiTC5ZrnqmRQSgKFGWz6GLzw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Subject: Re: how can i add gdb to my toolchain ?
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
X-List-Received-Date: Sun, 06 Apr 2014 17:18:43 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> bitbake gdb-cross

A lot of thanks. It works fein

Regards



