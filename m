Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1686BE00C39; Wed,  3 Feb 2016 09:54:24 -0800 (PST)
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
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C46DFE00B63
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 09:54:20 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id A9C0C3DA44
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 12:54:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=MZm2zP3OtZBKzcL0pE9xPwyTq40=; b=qw5
	OwE2OEJAG2GPBlokxdn7qTR+7wQHRNnv4JQrEeLRhGuu8z2DL8L/jNCNDROEYMYa
	9t7JVQA9kgkPFA8GB1rWerSG6u4M0VCCEYAM9Z2txATdCS3yt+HWoQ2NJrchy9em
	hoH+QTnNPzdi9q4IZv208f1lrxYIYkJHXNEnCC/A=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id A2AFD3DA43
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 12:54:16 -0500 (EST)
Received: from [192.168.1.101] (unknown [92.185.42.4])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 04A513DA40
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 12:54:15 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <1ACB66D7-DFA3-4468-B552-A20214EA1BB5@nathan.to>
Date: Wed, 3 Feb 2016 18:52:13 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 243EC45A-CA9F-11E5-B0C9-04C16BB36C07-96844961!pb-smtp0.pobox.com
Subject: libsnmp and others
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
X-List-Received-Date: Wed, 03 Feb 2016 17:54:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I have these missing dependencies when running a test executable on my =
Yocto image. It is a qemux86_64 core-image-kernel-dev image, built as =
=E2=80=9Cbitbake core-image-kernel-dev=E2=80=9D.

 0x0000000000000001 (NEEDED)             Shared library: [libsnmp.so.30]
 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5Network.so.5]
 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5SerialPort.so.5]
 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5Core.so.5]
 0x0000000000000001 (NEEDED)             Shared library: =
[libstdc++.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
 0x0000000000000001 (NEEDED)             Shared library: =
[libpthread.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]

My conf files are here:

https://github.com/DevOps4Networks/iox-yocto-build/tree/master/conf

I seem to be adding, for example, meta-qt5 as a layer, but the Qt5 libs =
seem to be missing.

I am not sure where libsnmp should come from, but I am adding =
meta-networking which looked like it had SNMP.

I also have:

EXTRA_IMAGE_FEATURES =3D "debug-tweaks package-management tools-idk"

But the STDC++ and GCC libs seems to be missing.

I am obviously not doing something right, so any pointers gratefully =
appreciated.

Many thanks

Nathan

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


