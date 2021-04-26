Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web11.11955.1619463999706600497
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 12:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@cybernetics.com header.s=mail header.b=kq+TjGmZ;
 spf=pass (domain: cybernetics.com, ip: 173.71.130.66, mailfrom: btv1==7507da6c054==tonyb@cybernetics.com)
X-ASG-Debug-ID: 1619463997-0fb3b0366bbd1d0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id yk6aJdyEltMmUIKJ for <yocto@lists.yoctoproject.org>; Mon, 26 Apr 2021 15:06:37 -0400 (EDT)
X-Barracuda-Envelope-From: tonyb@cybernetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.4.126
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cybernetics.com; s=mail;
	bh=LHmzXT2XC8fmGFlxWxqzsWB5ml1M8lBGAyyDtF9/Gkw=;
	h=Content-Language:Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
	Message-ID:Subject:From:To; b=kq+TjGmZCpKId5QPhS8eQ+fd8qIrFvfkIEy/NAmDs/gRFdw
	mM9ttXOL+bwDDsg1DirSg/oPqr8/O/p0hEiizjnZC69R1bgkWY0CDD4vBWaOeRfj3qCeofSwiv/Jj
	J7X/nsWIRE8uzFCNlgfpoGoeqeudy9OmNY72AmICMsG055Y=
Received: from [10.157.2.224] (HELO [192.168.200.1])
  by cybernetics.com (CommuniGate Pro SMTP 6.2.14)
  with ESMTPS id 10814319 for yocto@lists.yoctoproject.org; Mon, 26 Apr 2021 15:06:37 -0400
To: yocto@lists.yoctoproject.org
X-Barracuda-RBL-Trusted-Forwarder: 10.157.2.224
From: tonyb@cybernetics.com
Subject: Hardknott: grub immediately reboots
Message-ID: <dc59708d-c7b0-8e8c-99d2-079a1b51fb96@cybernetics.com>
X-ASG-Orig-Subj: Hardknott: grub immediately reboots
Date: Mon, 26 Apr 2021 15:06:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1619463997
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 955
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

After upgrading from Dunfell (YP 3.1) to Hardknott (YP 3.3), our
firmware was unable to boot.=C2=A0 Our target hardware is x86-64 booting =
in
legacy BIOS mode using grub on a variety of motherboards and CPUs.=C2=A0 =
The
grub menu would never show up; instead it would reboot immediately,
leading to an endless reboot loop.

I have two different workarounds.=C2=A0 Create a bbappend file for grub, =
and
do one of the following two things:

1) Add the following line:

CFLAGS_remove =3D "-O2"

2) Or make a patch to revert the following commit, and add it to SRC_URI:

https://git.savannah.gnu.org/cgit/grub.git/commit/?id=3D4ea7bae51f97e49c8=
4dc67ea30b466ca8633b9f6


NOTE: this commit fixes a CVE, so do not revert it without due
consideration.


Here is my upstream bug report:

https://savannah.gnu.org/bugs/index.php?60458


Is anyone else experiencing this problem?=C2=A0 I am wondering how it got
past Yocto QA.

Tony Battersby
Cybernetics

