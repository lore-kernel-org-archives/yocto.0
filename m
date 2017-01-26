Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 524B5E009B9; Wed, 25 Jan 2017 23:29:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27C02E0088B
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 23:29:16 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id c85so58988615wmi.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 23:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=TNCKYip5YrisdF0khq3Wtq6WQqX4VnUNzbNhe8Twhck=;
	b=Z6vW3U24t/2eu5R8xXW3KqyMd+9AsURg4WjzcyhM/kC/7c8ArQSVPXmtX0IYzYj56g
	K2rDZwUKIgPblTLKrRTUYDBQUX3fswJ33ETMrrIQnUJVmTRNqNOfZ/cv/dmmhfEsyRhH
	o2qodUnhPDloNXLyf/kcXAeLxkfIQDa335U0dujRZNg0rAY3mzsmdhUAETIhfMq4PRWG
	3qHXuXX+f4pcNql8kGY54MLxOFOTwsLRGI9YaQTapRA5sUuhs+EW4gPOLjGMfICA24hP
	Albbxcde/DZYMRaC5wQ7a5WIjRomX4tNN+BmnORpso8gtvu+KHjzwrPq4FHNVb5HTCvt
	DvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TNCKYip5YrisdF0khq3Wtq6WQqX4VnUNzbNhe8Twhck=;
	b=SIv86bFyG3iOvZLHN+3lkYmHwfTAel1/iAzLUgD8qwYPW6XwHFjTVjfO9HLEDZ2ymy
	PsM07Ig8G64dq5jZXuyf2MzwLhMhTLTunCZuprSuhZusHcNxeKnO+BHKpmQB54ECZOyx
	vUWvCvOU8wRUSQFBK2UOuYv1bL+FOPKKoiJR74+VdX2IM8VUw6AoqGU+iHkiCiSExtZ0
	YxuALWHfTdn1FAzikOfrEj+e6ECfmaS5GZ9+ZQxRpFxmU8aby8PGuhMJMhzUlIIcUaLI
	QeS97CDytLKg4vH+iBnhxXkCdo3Ua1Z7qfSrs0UfVfaiw7gUalE8tEQ+hsyKLQxZX27a
	qfbQ==
X-Gm-Message-State: AIkVDXKvdTU0OoohBZ11qqV9k+Njcv8P4TLVijh7qNuvvpgYF6uwvNlGro2+qSLkiSTskbg8/bN0vqJU/OLuuw==
X-Received: by 10.223.166.106 with SMTP id k97mr1258849wrc.170.1485415754823; 
	Wed, 25 Jan 2017 23:29:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.130.137 with HTTP; Wed, 25 Jan 2017 23:29:14 -0800 (PST)
From: Prasant J <pj0585@gmail.com>
Date: Thu, 26 Jan 2017 12:59:14 +0530
Message-ID: <CAA2DH4uR5R_jwLEwXdzhUC=C4yFEqmRe8c5nqCCFEc_XsW9ENQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is it possible NOT to split kernel modules in multiple packages
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
X-List-Received-Date: Thu, 26 Jan 2017 07:29:21 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm using Morty release to create my custom BSP package for cortex-a5
based processor.

I'm using my own custom kernel recipe that inherits kernel.bbclass
(which inherits kernel-module-split.bbclass)


All the modules are split in their own rpm packages. Is it possible
that  only one RPM package is created for all kernel modules and there
is no split?



Regards, Pj

