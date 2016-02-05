Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D43CEE00CEF; Fri,  5 Feb 2016 03:41:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F2CE00CED
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 03:41:21 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 018253D976
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 06:41:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from
	:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version; s=sasl; bh=3uCz0LdZz+3BQRoYAU8GnRSdnqk=; b=tHO
	iVXrT162Bf0QGmr7IOmvYX6fD6GhDMp+ph6bOwwbMovXAYH7HKql1LCsKSLwiD1V
	ymtOI+o89blQ6NNXyn0vzaN1OXhOfI/9YkXmK7eE0SkZ+04cwF4NxFN68Crxmz6D
	SsRxGRdSqBD+GFrilXxIpl+8z6hu8ExHgv0j1TfA=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id ED4073D975
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 06:41:18 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 6A6DA3D974
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 06:41:18 -0500 (EST)
From: Nathan Sowatskey <nathan@nathan.to>
Message-Id: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
Date: Fri, 5 Feb 2016 12:40:21 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 5EFF7FB2-CBFD-11E5-9DCC-79226BB36C07-96844961!pb-smtp0.pobox.com
Subject: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 11:41:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I am working with a test program which has a dependency on libgcc_s.=20

On Ubuntu that is available, for example from a 14.04 Ubuntu desktop =
build:

find /usr/lib -name "*gcc*=E2=80=9D
...
/usr/lib/gcc/x86_64-linux-gnu/4.8/libgcc_s.so
...

On the Yocto image I am building (see below for conf files), I don=E2=80=99=
t see that library. What I do see is:

find /usr/lib -name "*gcc*"
/usr/lib/gcc
/usr/lib/gcc/gcc
/usr/lib/gcc/x86_64-poky-linux/5.2.0/include/stdint-gcc.h
/usr/lib/x86_64-poky-linux/5.2.0/libgcc.a
/usr/lib/x86_64-poky-linux/5.2.0/libgcc_eh.a

The build configuration files are here:

https://github.com/DevOps4Networks/iox-yocto-build/tree/master/conf

Is there a way to get the libgcc_s library on a Yocto image? Is that =
even the right thing to do?

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


