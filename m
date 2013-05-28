Return-Path: <su@mycable.de>
Received: from serv07.server-center.de (serv07.server-center.de
	[87.119.209.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEFA4E014FB
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:18:56 -0700 (PDT)
Received: (qmail 31810 invoked from network); 28 May 2013 12:18:54 -0000
Received: by simscan 1.1.0 ppid: 31801, pid: 31806, t: 0.1191s
	scanners: regex: 1.1.0 spam: 3.2.1
Received: from p578b3905.dip0.t-ipconnect.de (HELO ?10.27.1.138?)
	(sumycaba@87.139.57.5)
	by serv07.server-center.de with ESMTPA; 28 May 2013 12:18:54 -0000
Message-ID: <51A4A0AD.1000207@mycable.de>
Date: Tue, 28 May 2013 14:18:53 +0200
From: =?ISO-8859-1?Q?Sebastian_S=FCsens?= <su@mycable.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.4.6
Subject: How do I get the kernel modules into rootfs?
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
X-List-Received-Date: Tue, 28 May 2013 12:18:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hello,

I have build the system with MACHINE_EXTRA_RRECOMMENDS += "
kernel-modules" at the machine configuration.
When I look into the rootfs.tar archive I see no modules installed in /lib/modules.
I get only a modules.tar archive at the deploy folder.

How do I get the modules into the rootfs?

-- 
------------------------------------------------------------------------
   Sebastian Süsens               Tel.   +49 4321 559 56-27
   mycable GmbH                   Fax    +49 4321 559 56-10
   Gartenstrasse 10
   24534 Neumuenster, Germany     Email  su@mycable.de
------------------------------------------------------------------------
   mycable GmbH, Managing Director: Michael Carstens-Behrens
   USt-IdNr: DE 214 231 199, Amtsgericht Kiel, HRB 1797 NM
------------------------------------------------------------------------
   This e-mail and any files transmitted with it are confidential and
   intended solely for the use of the individual or entity to whom
   they are addressed. If you have received this e-mail in error,
   please notify the sender and delete all copies from your system.
------------------------------------------------------------------------ 


