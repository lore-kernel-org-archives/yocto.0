Return-Path: <jms@bughunter.ca>
Received: from numa004.numadns.com (numa004.numadns.com [50.57.168.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 496E5E013AC
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2013 13:02:56 -0700 (PDT)
Received: from numa004.numadns.com-new (localhost [127.0.0.1])
	by numa004.numadns.com (Postfix) with SMTP id B03C9183C3
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2013 15:03:07 -0500 (CDT)
From: "Justin Seitz" <jms@bughunter.ca>
To: yocto@yoctoproject.org
Message-Id: <1364155387.14571@bughunter.ca>
X-Originating-IP: 71.17.133.11
X-Mailer: Usermin 1.540
Date: Sun, 24 Mar 2013 15:03:07 -0500 (CDT)
MIME-Version: 1.0
Subject: ATNGW100
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
X-List-Received-Date: Sun, 24 Mar 2013 20:02:56 -0000
Content-Type: multipart/mixed; boundary="bound1364155387"

--bound1364155387
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

Hey guys and gals,

I posted a similar question to the OE mailing list, so hopefully I am not spamming some folks. I have copied over the atngw100.conf file and its required include/tune-at32ap7000.inc file.

When I attempt to bitbike I get the following error:

TUNE_ARCH is unset. Please ensure your MACHINE configuration includes a valid tune configuration file which will set this correctly.
Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH (None).

When I update them to be "avr32", those checks pass but I get an error of:

Toolchain tunings invalid:
No tuning found for default multilib.

I have looked through the example MACHINE files that are provided, and I don't see a reference to TUNE_ARCH or PACKAGE_ARCHS from the Yocto project. I'm a bit stumped to be honest. Has anyone successfully built the ATNGW100 using Yocto and could lend me some love?

JMS


--bound1364155387--
