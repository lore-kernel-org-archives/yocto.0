Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C8E6E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 18:37:23 -0700 (PDT)
Received: by dajx4 with SMTP id x4so174087daj.28
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 18:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=yIx9rR9JOj5iXGCSFhkj+ecLWECnejDTCS1nfLpM6ow=;
	b=pYiSkvcY28a4k3us/c6oIQ1C2qSw3hS8eYrrnWHW8P3h4ov9ttjwxscRYZis6UzBIc
	GBKcdezXsu/JOtPsdbWQkkOmvF6MLhOxACVsgQOzzXEibuPOynfQAembMAVWElBndCpc
	5ySU1XBODVUxpIubvjmv1cwieBnr0kb0ves3G2d/pI3dUAcmG5GiDmmwAPhbDWDsBYFT
	k4k+EAJUL8I1hhPJnoIhOflakR233C0pAbNPf3Dhc8faSZnuBa86kI22Qv5V4sbW0pqb
	6YeO83JTYr1sfMcj/a4W80djJSpQqq5JqJEUdtr029lJ6iDbkrjhOL6cELc7jpV54lwd
	JIHw==
Received: by 10.68.216.3 with SMTP id om3mr1969310pbc.18.1333157843303;
	Fri, 30 Mar 2012 18:37:23 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id o2sm8552462pbd.6.2012.03.30.18.37.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 18:37:22 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F765C0D.4000902@linux.intel.com>
Date: Fri, 30 Mar 2012 18:37:23 -0700
Message-Id: <8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmdOwkYijx3p7SQpygWtyhizYbOl2IOYrNtkt+qMtTgdft7oWk7XKjf8AWZZjOvCBwcNiqP
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Sat, 31 Mar 2012 01:37:23 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 18:21 heeft Darren Hart het volgende geschreven:
>=20
> So that brings us back to what does it mean for Angstrom to be a Yocto
> Project project I guess?
>=20
> In my very humble opinion (really), it still makes sense to build
> Angstrom with the components in the poky repository as part of a Yocto
> Project release. I understand that there is resistance to this idea.

Yes, it would force angstrom developers to ignore upstream and work on=20=

downstream projects or as I will label them from now on: forks.

> Angstrom has been independent from poky and the Yocto Project in the
> past and I can understand not wanting to lose some of that
> individuality. However, too much individuality breeds chaos and
> fragmentation.

I will draw a line in the sand here and say: Forcing people to ignore=20
upstream (oe-core/bitbake) and force a fork down their throats
breeds chaos and fragmentation.

I will again refer to the agreement between the OE community and yocto
for doing the 'merge'.

If you people (all speaking personally of course) really think poky is =
the only
way to go, then please close down and remove the oe-core and bitbake =
repos.=

