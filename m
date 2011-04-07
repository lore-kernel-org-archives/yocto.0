Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCB154C80132
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2011 08:27:39 -0500 (CDT)
Received: by wyb40 with SMTP id 40so3337966wyb.35
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2011 06:27:38 -0700 (PDT)
Received: by 10.227.61.13 with SMTP id r13mr906412wbh.52.1302182858712;
	Thu, 07 Apr 2011 06:27:38 -0700 (PDT)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id g7sm1056962wby.14.2011.04.07.06.27.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 07 Apr 2011 06:27:38 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
Date: Thu, 7 Apr 2011 15:27:37 +0200
Message-Id: <BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
To: =?iso-8859-1?Q?Jo=E3o_Henrique_Freitas?= <joaohf@gmail.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: recipes for sniffer tool
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
X-List-Received-Date: Thu, 07 Apr 2011 13:27:40 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 7 apr 2011, om 15:24 heeft Jo=E3o Henrique Freitas het volgende =
geschreven:

> Hi,
>=20
> Is there any recipes to build a sniffer the network?
>=20
> I  searched but does not found any recipes about it.
>=20
> I am trying to build tcpdump and/or wireshark (tshark only).

You can move the recipes over from oe.dev to meta-oe if you wish. Should =
be a matter of adding the license info and building them.

regards,

Koen=

