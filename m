Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96785E00CCC; Fri,  5 Feb 2016 01:13:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63A92E00B5A
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 01:13:36 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id B2ED53C192
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 04:13:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	uOn2L1O+uVjVvJjQgIlfmoifFjU=; b=Teb/hEB1tf3exTyyGtD7Ka0zXlfGtd5J
	/eZZnauXZosIhQAIHIu3u6RwdheQQ7N1FA21FRXbqm2Voab6qSXy/bHznzprsSOX
	cW3Se+f6Bl2UNZcINQSKy9zJkGvo+gfwRpUlQUeuytciA2k2MjAzwqbNoxyLwjNQ
	Ya8MsJBrYtY=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 9E12E3C191
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 04:13:34 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id EBE233C190
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 04:13:33 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <6A2B2841-46AB-4B44-A675-CF5B1EEF545D@nathan.to>
Date: Fri, 5 Feb 2016 10:13:09 +0100
Message-Id: <26F7901E-8417-4F1F-B758-088CE182C2D2@nathan.to>
References: <6A2B2841-46AB-4B44-A675-CF5B1EEF545D@nathan.to>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: BB5C88B4-CBE8-11E5-A0DC-79226BB36C07-96844961!pb-smtp0.pobox.com
Subject: Re: libQt5Network.so.5 - How does one get that please?
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
X-List-Received-Date: Fri, 05 Feb 2016 09:13:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

It turns out that the build is correct, in that the libraries are there, =
but the test program I am using is not finding them :-/

So, for future reference, at least part what is required to work is =
correct in my build.

Regards

Nathan

> On 4 Feb 2016, at 17:39, Nathan Sowatskey <nathan@nathan.to> wrote:
>=20
> Hi
>=20
> My application has a dependency on libQt5Network.so.5.
>=20
> I have my build configured here:
>=20
> https://github.com/DevOps4Networks/iox-yocto-build/tree/master/conf
>=20
> I expect that some combination of the BBLAYERS and the =
IMAGE_INSTALL_append should allow me to get that library in my Yocto =
image.
>=20
> I am not sure which layer has the qtnetwork recipe in it, as I can=E2=80=
=99t find that here:
>=20
> http://layers.openembedded.org/layerindex/branch/master/layers/
>=20
> Any ideas gratefully received.
>=20
> Many thanks
>=20
> Nathan
>=20
> =E2=80=94
> Nathan John Sowatskey
> Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN
> nathan@nathan.to
> www.linkedin.com/in/nathandevops
> XMPP: nathandotto@im.koderoot.net
> Google: nathanjohnsowatskey@gmail.com
> Skype: nathan_sowatskey
> Twitter: NathanDotTo
> GitHub: https://github.com/DevOps4Networks
> http://www.kipling.org.uk/poems_if.htm
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


