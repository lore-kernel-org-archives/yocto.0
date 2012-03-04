Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 158CBE0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 09:01:05 -0800 (PST)
Received: by wgbdq13 with SMTP id dq13so2705865wgb.11
	for <yocto@yoctoproject.org>; Sun, 04 Mar 2012 09:01:04 -0800 (PST)
Received-SPF: pass (google.com: domain of koen@dominion.thruhere.net
	designates 10.216.135.234 as permitted sender)
	client-ip=10.216.135.234; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	koen@dominion.thruhere.net designates 10.216.135.234 as
	permitted sender) smtp.mail=koen@dominion.thruhere.net
Received: from mr.google.com ([10.216.135.234])
	by 10.216.135.234 with SMTP id u84mr2612407wei.108.1330880464762
	(num_hops = 1); Sun, 04 Mar 2012 09:01:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=1Zw3NbXDYiC4QwWE82+zcAsO97Vj802EyO1zppBy9zE=;
	b=ht2ZJRQPPFopVbQh3qMqMxJaV0GCEf4otf/qrhMVN9l7PZXp287BgGLypooUYSsvQU
	lOmf8uL0VQ8h836Jj9s77TOD8478c3+X99jraTgx+XWOTl/6BO8ewpwNrVedQxJ4XyvN
	A3vQV4/e4o4ZJnGDBYG35pwB04nzy+WJ5ww4P3sJc3MdCM188HjU7iF3yaY0O2UZHZBX
	3IEjdqglnx1svl1FDKxmS7yXZ8aOTQdL4+9dePgZ54amSh2WNqMHDmA/wUKvfwvavHmB
	CNlZNatlJcG0ns5ICVx9EULnxic3rv/r6xfKQisdXyP99ENCRxVYbYG8mZqhXmLMHCBh
	5/zw==
Received: by 10.216.135.234 with SMTP id u84mr2149170wei.108.1330880464613;
	Sun, 04 Mar 2012 09:01:04 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id gf3sm15761106wib.6.2012.03.04.09.01.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 04 Mar 2012 09:01:03 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <alpine.DEB.2.02.1203040750180.1918@oneiric>
Date: Sun, 4 Mar 2012 18:01:01 +0100
Message-Id: <0BA75FF7-EB2E-4CE4-8EFE-F1029C98814D@dominion.thruhere.net>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com> <4F515551.50708@mlbassoc.com>
	<20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203040750180.1918@oneiric>
To: Yocto discussion list <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQk8RT4/invB11defbbvGXMVTID4VG3s7ZOXsmP0oVniguCN2GPcg9B4yGl8L9Q2ApY50YYa
Subject: Re: proper recipe for building for beagle xM? meta-ti?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 04 Mar 2012 17:01:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 4 mrt. 2012, om 13:54 heeft Robert P. J. Day het volgende geschreven:

>=20
> ... much snipping below to get to the gist of it ...
>=20
> On Sun, 4 Mar 2012, Gary Thomas wrote:
>=20
>> On 2012-03-04 05:19, Robert P. J. Day wrote:
>>>=20
>>>   not sure if you're suggesting i should now be able to build
>>> for, say, beagleboard with the meta-ti layer, but i cloned meta-ti
>>> into my yocto tree, added that layer to bblayers.conf, and tried
>>> to
>>>=20
>>> $ bitbake core-image-minimal
>>>=20
>>> and got what i believe gary was referring to above:
>>>=20
>>> $ bitbake core-image-minimal
>>> Pseudo is not present but is required, building this first before =
the main
>>> build
>>> ERROR: ParseError at
>>> /home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
>>> Could not inherit file classes/systemd.bbclass
>>> ERROR: Command execution failed: Exited with 1
>>>=20
>>>   or am i misreading what you wrote?
>>=20
>> Oops, that's one more workaround I forgot to mention.  This file
>> is in OE-core, but not in poky.  I made a local copy in my distro
>> layer, but there must be a better way to handle it.
>=20
>  regardless of the fix, i would think that the proper name for that
> recipe file would be something like "beaglescript.bb" and not
> "bonescript.bb", since it opens with:
>=20
> DESCRIPTION =3D "Scripting tools for the BeagleBoard and BeagleBone"
>=20
> that is, if it's relevant to both boards, it's inappropriate to give
> it a name of bonescript.bb, don't you think?

First:

-EWRONGLIST

Second:

Upstream calls it bonescript https://github.com/jadonk/bonescript=

