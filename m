Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 880B14C8026D
	for <yocto@yoctoproject.org>; Sun, 30 Jan 2011 04:00:00 -0600 (CST)
Received: by wwi17 with SMTP id 17so2484542wwi.5
	for <yocto@yoctoproject.org>; Sun, 30 Jan 2011 01:59:59 -0800 (PST)
Received: by 10.227.157.1 with SMTP id z1mr4854350wbw.23.1296381599377;
	Sun, 30 Jan 2011 01:59:59 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o33sm10087222wej.37.2011.01.30.01.59.58
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 30 Jan 2011 01:59:58 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <AANLkTim=9082OqALzkhPaB+zcVGK73_jB04jAeLtiM3E@mail.gmail.com>
Date: Sun, 30 Jan 2011 10:59:58 +0100
Message-Id: <7C41D336-EC9F-47A8-A004-D005DA9F40A1@dominion.thruhere.net>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
	<a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
	<5665B920-09DE-4E25-A246-4B2FA57B704A@dominion.thruhere.net>
	<AANLkTim=9082OqALzkhPaB+zcVGK73_jB04jAeLtiM3E@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1082)
Subject: Re: [poky] [PATCH 4/5] cups: add cups 1.4.6
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
X-List-Received-Date: Sun, 30 Jan 2011 10:00:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 jan 2011, om 10:56 heeft Frans Meulenbroeks het volgende =
geschreven:

> 2011/1/30 Koen Kooi <koen@dominion.thruhere.net>:
>> FWIW, there's also a cleaned-up cups in meta-oe
>>=20
> It is not that clean as it has QA issues.

The cups in meta-oe is 1.4.x, you are posting 1.2.x QA errors.=20


> I posted the message below a few days ago to the OE mailing list.
> I've not too  much knowledge on .desktop files, so I have no idea how =
to fix it.
>=20
> Frans.
>=20
> --- forwarded message
>=20
> Hi,
>=20
> I got this while building cups, but I am not a gnome person (actually
> I am only intterested in the server part).
>=20
> ERROR: QA Issue with cups:
> =
/home/hudson/jobs/FM_TEST/workspace/tmp/work/ppce500v2-oe-linux-gnuspe/cup=
s-1.2.12-r7.2/packages-split/cups/usr/share/applications/cups.desktop:
> warning: value "Application;System;X-Red-Hat-Base;" for key
> "Categories" in group "Desktop Entry" contains a deprecated value
> "Application"
> ERROR: QA Issue with cups:
> =
/home/hudson/jobs/FM_TEST/workspace/tmp/work/ppce500v2-oe-linux-gnuspe/cup=
s-1.2.12-r7.2/packages-split/cups/usr/share/applications/cups.desktop:
> warning: key "Encoding" in group "Desktop Entry" is deprecated
> ERROR: QA Issue with cups:
> =
/home/hudson/jobs/FM_TEST/workspace/tmp/work/ppce500v2-oe-linux-gnuspe/cup=
s-1.2.12-r7.2/packages-split/cups/usr/share/applications/cups.desktop:
> warning: value "" for key "Path" in group "Desktop Entry" does not
> look like an absolute path
> ERROR: QA Issue with cups:
> =
/home/hudson/jobs/FM_TEST/workspace/tmp/work/ppce500v2-oe-linux-gnuspe/cup=
s-1.2.12-r7.2/packages-split/cups/usr/share/applications/cups.desktop:
> warning: key "TerminalOptions" in group "Desktop Entry" is deprecated
>=20
> Anyone care to fix this or provide a suggestion on how to fix ?
>=20
> Thanks, Frans


