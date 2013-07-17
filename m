Return-Path: <sbabic@denx.de>
Received: from smtpi4.ngi.it (smtpi4.ngi.it [88.149.128.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6BD2E013B0
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 03:17:25 -0700 (PDT)
Received: from babic.homelinux.org (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtpi4.ngi.it (Postfix) with ESMTP id 3606E423D7
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 12:17:21 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id DF1EA4540561
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 12:17:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id mnEmaob8oZDw for <yocto@yoctoproject.org>;
	Wed, 17 Jul 2013 12:17:18 +0200 (CEST)
Received: from [192.168.2.247] (papero.lan [192.168.2.247])
	by babic.homelinux.org (Postfix) with ESMTP id E7AE545402DC
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 12:17:17 +0200 (CEST)
Message-ID: <51E66F2F.8090204@denx.de>
Date: Wed, 17 Jul 2013 12:17:19 +0200
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.4.6
Subject: Qt4.8 - qt4-x11-free does not compile if host has qt-mobility installed
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
X-List-Received-Date: Wed, 17 Jul 2013 10:17:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

I have found that qt4 does not compile clean if the host PC (in my case
a Ubuntu 12.04) has the library libQtSensors installed (package
qtmobility-dev).

The issue is related to the package qt4-x11-free
(qt4-x11-free-4.8.4-r50.3), and it is related to QtWebkit.

For some reasons I have not yet understood, local paths /usr/include and
/usr/lib are passed to the crosscompiler when the host library is
installed (I am crosscompiling for ARM), and of course, at the end the
linker fails when it tries to link the x86 library.

Removing the package qtmobility-dev from the host solves without fixing
the issue.

Any hints to solve this ?

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

