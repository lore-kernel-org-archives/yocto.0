Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78EBAE00D8A; Mon, 11 Dec 2017 11:45:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50DDE00D84
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 11:45:30 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id f199so11565438vka.8
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 11:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=yJR2cRtVoaNB5l3QP39bn1WW6rkpSremInD5KP4nadU=;
	b=i5Qu0+LcSTzWdwBMToj49q9X0c2KzN2tG39RJbR8jMpYO9JcwRnD4+OBViQY85+H/M
	/XSzV98LO7ZXwlnAq2Z46awK3Zsp4AWofojZkQnTVUANDMeqjcWWrur/ARiKqxEFlwAH
	GRZWfBcJZDTuPFflbMRioIlozM+5b23ZKdEL8is0U0JZ1yUdKEDvwlffXIYD715mrDna
	5jPTIdlfFG1m5wK5Qcjo8fmzXfNliXN0/XIciAVBL4Jt7dOPkt8ZPt4Wx0iC9Y+1Et8b
	/eJ4RIDh4qzu+D4QIBzTKHd9E8/i0tE59IHQZSQkrFaRGTnGJv8iDkfj5PWfVKp6ps9Y
	F7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yJR2cRtVoaNB5l3QP39bn1WW6rkpSremInD5KP4nadU=;
	b=hZhw4yd8XT7tgB0TGqqS8LH5Jy89zF7195Mk1oUJoCirgZHqSKVuDYykqYF+5U4Z1s
	cKB2AN72SEAvF5sQETD/HQDd54WkgxV1E8QKDIEODGhHH/nHw6kdHsq8UDwWD8NA/AiV
	AcvP+0QPhseUXHZQQvYxPhflKZm7+ZCJsSnUmnU22Am1eCXvMjZr9bQISGznvUJTO7Ap
	XuEh+xuMegKJJQEirPm89MQeVUzk+1UrjvbgdZQOkhaUR68puARi+Kea6P2noApqkyOq
	/bkA5Xm+aRMFcdHq69rdmGRbre4ysaD8k7NbcT6P4G7RfWuWQW62+sRny2YTbVcl8qIw
	X4rA==
X-Gm-Message-State: AKGB3mIeJRE3HZqn7xRHfnLhgIWf2+pXZ1R0I68YQRKq3Xx+UQVb3KK9
	gawKusW1WHgaAAnNkzt6d5sYIFH7MrnP+pbYeCtZ+BLY9ZKoH8GtC5OW0lpD2Q1/odBmSXTgIU7
	hxo9s6bzYTWIcnLfT9xdwSQV/1A==
X-Google-Smtp-Source: ACJfBou8/Ucl3aNKUJYP6n1rKsuRDk3lYf9sm8FlChVfOQRLYwNKjD8llAr4sbo0bw2q/S9HLvwnVJ8aYAqHR+oJF2E=
X-Received: by 10.31.179.85 with SMTP id c82mr1589447vkf.167.1513021529641;
	Mon, 11 Dec 2017 11:45:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.95.198 with HTTP; Mon, 11 Dec 2017 11:45:29 -0800 (PST)
From: Rail Shafigulin <rail@esenciatech.com>
Date: Mon, 11 Dec 2017 11:45:29 -0800
Message-ID: <CAOLNbFanXur1zRF7KtVpdN4n6Pyx5JW7P2xhfc+74UmTabyicA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: executable depends on the library that is built in the same recipe
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
X-List-Received-Date: Mon, 11 Dec 2017 19:45:31 -0000
Content-Type: text/plain; charset="UTF-8"

I have a recipe that builds a library and an executable. Executable
depends on the library which built int he same recipe. When I run
bitbake I get the following error:

WARNING: mytool-1.0+gitAUTOINC+3e2b76e330-r0 do_package_qa: QA Issue:
/bin/mytool contained in package mytool requires libMyTool.so, but no
providers found in RDEPENDS_mytool? [file-rdeps]

I tried the suggestion given by the bitbake putting mytool in
REDEPNDS_${PN}, but that didn't work. I also tried looking online for
the solution but didn't find one.

Can someone help out?


-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



