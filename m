Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21CD2E004E9
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2011 08:54:24 -0700 (PDT)
Received: by eyh5 with SMTP id 5so5450757eyh.35
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2011 08:54:23 -0700 (PDT)
Received: by 10.213.14.138 with SMTP id g10mr192083eba.82.1319212463441;
	Fri, 21 Oct 2011 08:54:23 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id v3sm22837038eej.7.2011.10.21.08.54.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 21 Oct 2011 08:54:22 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
Date: Fri, 21 Oct 2011 17:54:15 +0200
Message-Id: <59FBADE1-ACDC-4FAA-B569-66601D13B4C9@dominion.thruhere.net>
References: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
To: "Yu, Ke" <ke.yu@intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Proposed roadmap and design for Hob improvement
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
X-List-Received-Date: Fri, 21 Oct 2011 15:54:25 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Op 21 okt. 2011, om 05:16 heeft Yu, Ke het volgende geschreven:

> Hi,
>=20
> As the Yocto 1.2. plan is starting =
(https://wiki.yoctoproject.org/wiki/Yocto_1.2_Features ), here I draft a =
proposal for the roadmap and design on HOB improvement task =
(http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1588) . Please =
review. Any feedback is welcome.


The first slide says:

"It=92s not an embedded Linux distribution =96It creates a custom one =
for you."

Which is wrong, since hob is creating images, not distros=

