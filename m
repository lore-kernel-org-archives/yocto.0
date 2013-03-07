Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 58474E006C8
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 13:02:37 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id bj3so744542pad.6
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 13:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:cc:subject:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=zkh5UNHlDQSFeWmZgZkOgSrDFATAOkqzMMmPYDNPoZM=;
	b=hwYJ+XBj1X7v6Qpx42UwyRn2Vhj/qggkqXhqrg0+unW00kx9bDt/KK+Ougir/2jybS
	HJD1wffbCj6WG6WplGjKjs0tLYjELbOFlrLtgj40TbipZ6hf+FhnfiCA9QVlHRcTWH7B
	GPe+fSMF2hzF3iUR9wPeItnQ2Q8inY8oT7Gjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:cc:subject:x-enigmail-version:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=zkh5UNHlDQSFeWmZgZkOgSrDFATAOkqzMMmPYDNPoZM=;
	b=dTWUhmMvmD1ONIqatuaQ9Yw3YHElBIkzVaGkck80s7US/mWLveyzJDjEbRWMLsmPsH
	xcFbEBlmOygWcCnNzSp6uJqt/6yncX3LCvRUXE9U0MiXLi6Fgzga9KTOlJyXQS3+X5V+
	mQ1sSeYkaKw9BNmz0TtCuVJ4d0UT4mq0VNFjzo+FOnT3RC0VNivPRJl5eMHmf86eRoot
	UbZ5dCGSxQxoXCuGbqIhgADeAcHVtWgTgD+IDMajO7y/CgQGw0BGLS4cx0qZhS4ODE6f
	VvdX62suLUn/0uJtREXfhV1zaklRx/jDgvfS8KHrZ4OxtbIwG/Hv1/oqIovRoqfZmMRC
	sHpg==
X-Received: by 10.66.120.76 with SMTP id la12mr370881pab.65.1362690157049;
	Thu, 07 Mar 2013 13:02:37 -0800 (PST)
Received: from pride.localdomain ([192.102.209.1])
	by mx.google.com with ESMTPS id kt5sm2837804pbc.30.2013.03.07.13.02.34
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 13:02:35 -0800 (PST)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51390069.6070402@yoctoproject.org>
Date: Thu, 07 Mar 2013 13:02:33 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130219 Thunderbird/17.0.3
MIME-Version: 1.0
To: yocto-announce@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQmJ1SIyMR8WXtkNFvi7ovEPFvRfa5V93PldoUyu/NB30cBg5ksa4izT+Gf1n7cYEI9NpPJZ
Subject: Yocto Project 1.4 milestone 4 released
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
X-List-Received-Date: Thu, 07 Mar 2013 21:02:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Yocto Project 1.4 milestone 4 is ready. Kernel.org mirrors will be present shortly.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The fourth milestone for the upcoming Yocto Project 1.4 release is now
available at:

   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m4/poky-yocto-1.4-m4.tar.bz2

Thanks to everyone for all their hard work.

Michael Halstead
Yocto Project / System Administrator
<michael@yoctoproject.org>

- --------------------
yocto-1.4-m4 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.4-m4  
Branch:  1.4_M4
Tag:  1.4_M4.final
Hash:  d18c45e0f5367979f7402380ee123242da2b57d5
md5:  f0ba42c65fbb53d456eb4c81a8e20672  eclipse-poky-yocto-1.4-m4.tar.bz2 
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m4/eclipse-poky-yocto-1.4-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m4/eclipse-poky-yocto-1.4-m4.tar.bz2



Release Name: meta-intel-yocto-1.4-m4  
Branch:  1.4_M4
Tag:  1.4_M4.final
Hash:  150be7c8fb97ac88737f6017fdf9dd47b273bb3e
md5:  eae235635e155f544a94cf46d90ed30e  meta-intel-yocto-1.4-m4.tar.bz2 
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m4/meta-intel-yocto-1.4-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m4/meta-intel-yocto-1.4-m4.tar.bz2



Release Name: meta-qt3-yocto-1.4-m4  
Branch:  1.4_M4
Tag:  1.4_M4.final
Hash:  06e2fe600de962cdba53c23de1207501439a9c9f
md5:  504f01a15fd52daffde64561bed6e689  meta-qt3-yocto-1.4-m4.tar.bz2 
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m4/meta-qt3-yocto-1.4-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m4/meta-qt3-yocto-1.4-m4.tar.bz2



Release Name: poky-yocto-1.4-m4  
Branch:  1.4_M4
Tag:  1.4_M4.final
Hash:  7d22ef28e64de06b6238d0ef9b664c0bee6efa46
md5:  aa9c6703d41087859d38cf9920f47950  poky-yocto-1.4-m4.tar.bz2 
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m4/poky-yocto-1.4-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m4/poky-yocto-1.4-m4.tar.bz2




- --------------------
Features
- --------------------

Performance enhancement in places such as the packaging process, pseudo,
etc., which leads to more than 10% improvement of the total build time for
core-image-sato. The build time for rootfs with sstate cache enabled has also
been reduced in half.

Various improvements to HOB, bitbake, systemd support, buildhistory tool,
yocto-kernel tool, multi-lib, etc.

Zypper updater cleanup.

New comprehensive git proxy script (oe-git-proxy) with improvements suggested
by the community.

Regular package updates including gtk+, qemu, pseudo, net-tools, qmmp, perl,
etc. and various bug fixes.

- --------------------
Known Issues
- --------------------

Bug 3908: Kernel panic on qemux86-64 when using runqemu kvm and cpu host

Bug 3930: [Test Case 146 Failure] Check if AUTOPR could be export/lockdown for
package build

Bug 3804: connman offline mode doesn't work on qemu images

Bug 3921: Hob in Build Appliance doesn't start.

Bug 3338: iptables-1.4.15: autoreconf run failed on gmae-toolchain


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJROMTAAAoJEEyK+E/MEkQPv78IANIO3/LF4suz3L3v2ZLZ4XJE
5EVSvmlHeUJGbhJU+mYsgdr/xBiYiKdn+4SPOYaJqzp8zcI/4l3WUBaBrHHK3w5k
VDogNdMQpd+hTF5QFL832KPeL27tjbQFbhZpI7/vg4dnQfzGn14YFNKEXG52pmMB
hjJf4sGYsuGFZOOk46Po7dZf8hM45dqb9zRGoithyQ6mVbVSb63bOJnOXSgDhwOz
b0Jjp4zlgljGN+RWz+DGWGPnRS07xEICkpZrgJedE8A9SDQuORuiBB+rNcsdN+ln
ZgkreHuQD3XZR9F/5s+XuO0QqHC3+T+BpKbp6SUaB4spsc6mwZLHSIWH+5S3kKA=
=FaOw
-----END PGP SIGNATURE-----



