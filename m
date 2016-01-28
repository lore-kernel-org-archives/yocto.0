Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 010A1E00852; Thu, 28 Jan 2016 10:23:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01802E0079A
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:23:15 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 774A03E121
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 13:23:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=pvCmUUk3xbqmjKYceYfgzEJHHM0=; b=dKT
	fIWgrKaVDrFGF/GuXfZrVFbRwjQhJqfRzChzcklc0uGs9/MGfxINBIACIAw2GMZe
	Z+gEPS7dl3DQLb8rWv9zRPTHddqyW+zZN5L/NEfp2J5t81FWnNX+U5AZr0bLkDSo
	e4o5G7PjIFeUOvfj1fLbBSZZknSb+6yIwMdxJNQM=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 700EC3E120
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 13:23:12 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.154.252.102])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 9601A3E11D
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 13:23:11 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <45932BCC-6F6D-4F6B-841A-66F81E442828@nathan.to>
Date: Thu, 28 Jan 2016 19:22:27 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 304434FE-C5EC-11E5-B806-80A36AB36C07-96844961!pb-smtp0.pobox.com
Subject: Qt5 on qemux86-64 core-image-full-cmdline
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
X-List-Received-Date: Thu, 28 Jan 2016 18:23:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I am using the Yocto Build Appliance to build an image using a profile =
of qemux86-64, and recipe of core-image-full-cmdline.

The application I need to run on that image has a dependency on Qt5 =
libs.

It seems that only Qt4 libs are available in the packages on the build =
appliance.

Can anyone help me with adding the Qt5 packages please?

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

