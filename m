Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B6FE00C32; Wed,  3 Feb 2016 05:27:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE5CE00C2E
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 05:27:50 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 692F23AB08
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 08:27:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=pV4ob2kttv4ZsmdYk0t5+CVpmHU=; b=H4L
	0OCX9vjEpuw4XvcPQ9GTFJyx1++ZvKMI2Z/+rkkAw6oTl/6bvUjmp5DCA/AGgASF
	t1zic61uaMeS6TjhHjIOw9et5h022uSE5IiYAsTBLfGsmert3zn2rtxpcZnfKaiM
	hSuj8RUX5Bw9SCBAOUWJZFooA3efNBrq4PpfIVJM=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 612E63AB07
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 08:27:43 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.153.142.148])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 9F82D3AB05
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 08:27:42 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <B24D68B6-9B3A-4E6F-8A17-5C8D0C8F4F60@nathan.to>
Date: Wed, 3 Feb 2016 14:27:33 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: E775C0C0-CA79-11E5-A54F-04C16BB36C07-96844961!pb-smtp0.pobox.com
Subject: Poky or oe-core instructions
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
X-List-Received-Date: Wed, 03 Feb 2016 13:27:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I can see these instructions for setting up oe-core:

http://www.openembedded.org/wiki/OE-Core_Standalone_Setup

Which overlap with instructions here for Poky:

=
http://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.htm=
l

Specifically, the part about initialising the build environment.

In the oe-core instructions we have:

git clone git://git.openembedded.org/openembedded-core oe-core
cd oe-core
git clone git://git.openembedded.org/bitbake bitbake
git checkout fido
cd bitbake
git checkout 1.26

Whereas, wth Poky, we have:

git clone git://git.yoctoproject.org/poky
cd ~/poky
git checkout -b jethro origin/jethro

The questions are, then:

 - Which version of bitbake should one use? The one from oe-embedded, or =
the one from Poky?
 - Are the latest versions shown in the oe-embedded instructions =
correct? They are fido for oe-embedded, and 1.26 for bitbake.

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


