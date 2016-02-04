Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2307DE00C56; Thu,  4 Feb 2016 08:40:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6523E0090C
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 08:40:53 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 550863F40D
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 11:40:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=H3CWe4Nl18QVkEozp0KH7evbRAQ=; b=XUG
	DvqXrREkaxSXSUG5QTJACFvrQcfauQ7Fc/6ViH60yCYlESm2fSOEhoyKHInsDW3u
	kZz497lDS7A3BidPQgBB3vvg8VI2evMWE27vd4cjxzTirflmcmQpIvVnSpLYuXbs
	8De9vIhXu1r7owcSlvfJauPjCKnHkFNt0aOg+Q+8=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 4BF473F40C
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 11:40:52 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id B43243F408
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 11:40:51 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <6A2B2841-46AB-4B44-A675-CF5B1EEF545D@nathan.to>
Date: Thu, 4 Feb 2016 17:39:55 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 0D82032A-CB5E-11E5-B7E5-04C16BB36C07-96844961!pb-smtp0.pobox.com
Subject: libQt5Network.so.5 - How does one get that please?
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
X-List-Received-Date: Thu, 04 Feb 2016 16:40:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

My application has a dependency on libQt5Network.so.5.

I have my build configured here:

https://github.com/DevOps4Networks/iox-yocto-build/tree/master/conf

I expect that some combination of the BBLAYERS and the =
IMAGE_INSTALL_append should allow me to get that library in my Yocto =
image.

I am not sure which layer has the qtnetwork recipe in it, as I can=E2=80=99=
t find that here:

http://layers.openembedded.org/layerindex/branch/master/layers/

Any ideas gratefully received.

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


