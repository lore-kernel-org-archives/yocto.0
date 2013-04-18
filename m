Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 973E9E01473
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 08:37:58 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id g10so1632356pdj.20
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 08:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:content-transfer-encoding:subject
	:message-id:date:to:mime-version:x-mailer;
	bh=1wLaY/Z7AxHmDqQ3M3lWWDjrTgodcmlOUToPGFOKQxg=;
	b=sBSI2B3iYXhfV+M3Cjx3l+2dNb+GLhm/yLLQiaSJgTSxDWUf01oSrlMTMw1NiNY4lK
	LFQV9dPvvKnbpQk7C6uSwr4yqxlFC+RyExWhJM1s4DYhvRvS2xYqFO8UX2qn19WM20hw
	LZnf0IqpdfaG1AIqtlFtDPhQgdUIwX7MBmju6WUZpfliWxm5/SwOt+7dywL5Zg5nPYqD
	px2tUOyZg26L4C8vr14+GkCiDb/7BA2pYi03U4hnXpD5t6kFSIYozfg1CACI/CgKdHrE
	vAfsHhtM4YEq3+NzSsa5UKPpgfBpaUbJ64CUNlLSVS+X4xy8orTgqSh1hTUSkJ5uSjCw
	58eg==
X-Received: by 10.67.10.133 with SMTP id ea5mr13942372pad.135.1366299478326;
	Thu, 18 Apr 2013 08:37:58 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.101])
	by mx.google.com with ESMTPS id l4sm4736909pbo.6.2013.04.18.08.37.55
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 18 Apr 2013 08:37:57 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <9CEFD538-1DCB-4431-A89F-18DC00A7C9A4@gmail.com>
Date: Thu, 18 Apr 2013 19:37:51 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
X-Mailer: Apple Mail (2.1503)
Subject: [poky] bash: oe-init-build-env: line 33: syntax error near unexpected token `elif'
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
X-List-Received-Date: Thu, 18 Apr 2013 15:37:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      The following commit=20

=
http://ares/gitweb/?p=3Dtools/poky.git;a=3Dblobdiff;f=3Doe-init-build-env;=
h=3D68af7b5193b73627cd6ebf6196adfa685a787c38;hp=3D67eddcd295bd9d1adac21fc4=
e97506fca05f4bfa;hb=3D813127247a1100b1abe179dfba25795560eac864;hpb=3Da468b=
0d5579148771da716eaf357e5d45fc3211c

is causing a build error while sourcing the oe-init-build-env build =
script

$ cd /tool/yocto/poky;source oe-init-build-env build
: command not found
: command not found
bash: oe-init-build-env: line 33: syntax error near unexpected token =
`elif'
'ash: oe-init-build-env: line 33: `   elif [ -n "$ZSH_NAME" ]; then

This is on Ubuntu 12.10 x86 64-bit.

Elvis Dowson



