Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A9BE00BA0; Wed, 16 Mar 2016 23:21:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60D3EE00B8C
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 23:21:01 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id bc4so61869076lbc.2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 23:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=eZFteuRQK14DTusqlseVEPzXxPtnENkhKYNLtCK9Byk=;
	b=QVo7icA6z4ni4wYkKIrstJDxuDfkkVnc+VKNoraYUwmckHG5JhWcxQZgk0oJ8vd+XI
	NCYwEWqiOsdy0b++k2JBVpBHpuwzLLyDPqAkbOAK8R7iYLHKBeyEm587JWoExJdcyLr/
	Rpac92sVDrSTfgJTI4/I1Ml50Dw77fN7D83zFVsdNbDrLPK5MhoHF73O4MwnH+gE9IbR
	nKXjIP7swVFmVLUvz0lTyXrjdIV1bgEVcXXyTy0rvwRlvxpbFiMWGQNzU7faKrCfyJSA
	4ecGXkKhpDmXm4OH7IaTKu90iaVVl7RtrtDrEzQTN3A5R9BR/vA/65bswcz0bVnSbXo2
	yrgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=eZFteuRQK14DTusqlseVEPzXxPtnENkhKYNLtCK9Byk=;
	b=fx5BL1UjZVJks5DDdLyaXPE/7RBScJHuDh0u2fMxY54lbCufEXZreln/CdC4yEisys
	RIJ2Jcn5qC1DSA7/ermWe6gMqgF+dQI/j849tTGI5IRb0PGTGDQbqlKQMxOrSiV0obBY
	mFgrnFmO4FmpmM+5oGK6vq31YmDV6MQpTfGgxJkouMIKiTC758C4EHUUTNcsD8PZk9jY
	id5/RXmdPt8l3uVv8fEPalZ2Pf2wk4hlfkfWsYf3yf0rNYGQY/uYjDMA/fXo4T6da+ly
	0mzH91bBMhgAa3x6b8gf0RsGeGnC3GrnBYSTC9doTYQcIo04Dlmnh5MVzJgduX2S49TU
	dZcQ==
X-Gm-Message-State: AD7BkJJAgkb2KaN1J5PN/+M2U2u6Pk/ZWsOtmS43K1627+m2GF5FTBrQjK9olrfntOtB5AeC3InfySH14QHbkw==
MIME-Version: 1.0
X-Received: by 10.112.170.68 with SMTP id ak4mr2342869lbc.94.1458195660320;
	Wed, 16 Mar 2016 23:21:00 -0700 (PDT)
Received: by 10.112.199.10 with HTTP; Wed, 16 Mar 2016 23:21:00 -0700 (PDT)
Date: Thu, 17 Mar 2016 11:51:00 +0530
Message-ID: <CAOorjZSr_N8rVLCs2wamXikSz-zB8v3DMYchoBqTVC3a65bebQ@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Compiling kernel 4.4
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
X-List-Received-Date: Thu, 17 Mar 2016 06:21:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi,
While compiling linux kernel 4.4 for 96boards, I'm getting below error
even though openssl headers are available in sysroot path.

|   HOSTCC  scripts/selinux/mdp/mdp
| /mnt/home/knagabhirava/hikey/build/tmp-glibc/work-shared/hikey/kernel-source/scripts/extract-cert.c:21:25:
fatal error: openssl/bio.h: No such file or directory
|  #include <openssl/bio.h>
|                          ^
| compilation terminated.

ERROR: Task 6 (/mnt/home/knagabhirava/hikey/build/../meta-96boards/recipes-kernel/linux/linux-96boards_git.bb,
do_compile) failed with exit code '1'

Any idea/pointers?

Regards,
Sivasubramanian

