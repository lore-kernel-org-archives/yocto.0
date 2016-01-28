Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4329E0079A; Thu, 28 Jan 2016 09:51:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AACE2E00444
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:51:15 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 194EF3D6F8
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 12:51:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=y6JJ4Hz8/wVU/sMJBScQxTCD8Ik=; b=rhY
	V6d8LQGBs6dNQ6yZqnLTfIUkO+Pr4gIIz7NEzxwgiG+uAM8mopxVnReuz37+Gmk+
	yey3b1KZdVdCv0KxpZFgOEbmEfEgqrxoxe2hxioCc3HMqQLnqINnY4LjcRdbZNal
	bxCMJRsU3cBRFlzaSBoJgmgb/nxPAWvVWZ73PMgs=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 0F9FF3D6F7
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 12:51:13 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.154.252.102])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 5C5A33D6F0
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 12:51:12 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <3E827D2C-7068-45AF-8F8D-161B5BAEC08F@nathan.to>
Date: Thu, 28 Jan 2016 18:51:10 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: B85194E0-C5E7-11E5-8138-80A36AB36C07-96844961!pb-smtp0.pobox.com
Subject: sftp-server on qemux86-64 core-image-full-cmdline
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
X-List-Received-Date: Thu, 28 Jan 2016 17:51:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I am using the Yocto Build Appliance to build an image using a profile =
of qemux86-64, and recipe of core-image-full-cmdline.

I can, using a redirect, ssh to the VM when running on OSX. I also want =
to use sftp to copy files to the image.

The sftp server is configured in the ssh_config file to be at: =
/usr/lib/openssh/sftp-server.

The /usr/lib/openssh directory does not exist.

In the Build Appliance, I can=E2=80=99t see any package that will add =
the openssh-sftp package.

I am at a loss as to how to add and/or enable sftp.

Can anyone help please?

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


