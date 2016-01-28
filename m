Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2B84E00928; Thu, 28 Jan 2016 06:34:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 195 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Jan 2016 06:34:35 PST
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49F04E0088B
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 06:34:35 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 2A4DD3A309
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:31:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=mzX75ye2TFcFH7+tk2OI2BPKWPc=; b=DTB
	kGP/QpDgP9eJYFhloH1pmEh5qzioZ1qyWBbTuMPpLIjb+9ocRR8lSTPSNjuc/qj/
	x1/0G8y3OEKIDOExC8tzSXMt49n2mRom9BKgxUM9wFJg5cHmFFa7oWPgI/X+rAms
	g4fxKFDxmLriOtxu8gNiTRliWVF87j//3U6/Sf1Y=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 1BAFD3A308
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:31:16 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.154.252.102])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 630873A307
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:31:15 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <B7C221D2-D4CE-4FB0-8505-67FC63CCD2DA@nathan.to>
Date: Thu, 28 Jan 2016 15:31:12 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: C9912818-C5CB-11E5-8CA0-80A36AB36C07-96844961!pb-smtp0.pobox.com
Subject: Build appliance, qemux86-64, core-image-full-cmdline and ssh
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
X-List-Received-Date: Thu, 28 Jan 2016 14:34:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I am using the Yocto Build Appliance to build a image using a profile of =
qemux86-64, and recipe of core-image-full-cmdline.

I then sftp the image to my OSX environment and run it as shown below. =
That works fine, and I can log in as root.

I want to use ssh to connect to the image, but ssh does not seem to =
either running or even installed, as I don=E2=80=99t see /etc/init.d/ssh =
scripts.

I am clearly missing a trick here.=20

Any ideas please?

Many thanks

Nathan

How I run the image is shown below. This is copied from the build =
appliance, and I confess that I don=E2=80=99t understand all of the =
options yet.

/usr/local/bin/qemu-system-x86_64 -kernel images/bzImage-qemux86-64.bin =
-net nic,model=3Dvirtio -drive =
file=3Dimages/core-image-base-qemux86-64.ext4,if=3Dvirtio,format=3Draw =
-show-cursor -usb -vga vmware -no-reboot -m 256 -serial mon:vc -serial =
null --append "vga=3D0 uvesafb.mode_option=3D640x480-32 root=3D/dev/vda =
rw mem=3D256M ip=3D10.41.136.130::10.41.136.1:255.255.255.0 =
oprofile.timer=3D1 rootfstype=3Dext4 "


=E2=80=94
Nathan John Sowatskey
Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN
nathan@nathan.to
www.linkedin.com/in/nathandevops
XMPP: nathandotto@im.koderoot.net
Google: nathanjohnsowatskey@gmail.com
Skype: nathan_sowatskey
Twitter: NathanDotTo
GitHub: https://github.com/DevOps4Networks
http://www.kipling.org.uk/poems_if.htm


