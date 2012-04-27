Return-Path: <koen@beagleboard.org>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E18FE00596
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 05:42:45 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so518597wgb.11
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 05:42:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=avCdSFu1tpquxM9zUMO+BzVNoXL1ISi+B4hm4wh8EDk=;
	b=Q3fyHj1REBS2NSRMQZVltI+kv4Ca0BRLpORznZMjJXmJywrjKPkKspmU6MHpcHZ01S
	Bg8YDPNh6qP9tRp/RzSaop3zqNOR5gQIOuVf18BGUeKvTYvzbcFo3NMoX8Uh2mTj2q1b
	JwnNblgfCzTdxi+SFBy4P2M1LiTtilvFWy+H0vMEQefH3janAHKYyU6hE1nefhJVKzPJ
	m1mV+8942MfsbGv/R+zwd8SBmOv+SJ4Gk3B0hpfn82HTDgDHeglIkQuobDwZcTuD1mCY
	fMONntji72w4FvTLCNDqwZtAirL9O+Dw3iwbzRhrsGhbaXXxxjZaw5ZwF169aEsIN0Dz
	gx/w==
Received: by 10.180.101.136 with SMTP id fg8mr5734303wib.4.1335530563940;
	Fri, 27 Apr 2012 05:42:43 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id ea6sm4381777wib.5.2012.04.27.05.42.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 Apr 2012 05:42:42 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <556E6D34-6DE8-4D2F-8B48-E11B717E1915@beagleboard.org>
Date: Fri, 27 Apr 2012 14:42:40 +0200
Message-Id: <B59F788F-4CDC-4089-8FF0-F78A82C83FEF@beagleboard.org>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
	<1335436998.20130.0.camel@ted>
	<EE230536-AE66-41DB-93EE-B1A7CA9FFD75@beagleboard.org>
	<20120426185224.GF3646@jama.jama.net>
	<556E6D34-6DE8-4D2F-8B48-E11B717E1915@beagleboard.org>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQm2z53j3O2rLCH2YHMnp6hlt6yEhCssEUv0vBQSXB/Fvz6WHdLudjizgTWsMK0VioHSfFjn
Cc: yocto@yoctoproject.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: Re: [opkg-utils][PATCH 00/22] Partially prepare for python3 and fix old Packages file reuse
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
X-List-Received-Date: Fri, 27 Apr 2012 12:42:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 27 apr. 2012, om 08:39 heeft Koen Kooi het volgende geschreven:

>=20
> Op 26 apr. 2012, om 20:52 heeft Martin Jansa het volgende geschreven:
>=20
>> On Thu, Apr 26, 2012 at 06:21:45PM +0200, Koen Kooi wrote:
>>>=20
>>> Op 26 apr. 2012, om 12:43 heeft Richard Purdie het volgende =
geschreven:
>>>=20
>>>> On Fri, 2012-03-30 at 00:21 +0200, Martin Jansa wrote:
>>>>> First 5 patches are taken from oe-core.
>>>>>=20
>>>>> Then there are some cleanups and fixes for issues I've found while =
looking=20
>>>>> for cause of very long package-index calls.
>>>>>=20
>>>>> Some patches uses compatible changes from 2to3 (tested with =
python2.7), but
>>>>> python3 support is not 100% complete, but were closer.
>>>>>=20
>>>>> And in the end I've found the cause.. printing long fields (e. g. =
description)
>>>>> with opkg.py was producing empty lines in Packages file (which are =
Packages entry=20
>>>>> separators) so only first entries till first empty line were =
processed from old
>>>>> Packages file and the rest was always extracted from control files =
in packaged .ipk.
>>>>>=20
>>>>> And this also fixes Packages.filelist generation.
>>>>>=20
>>>>> I don't use python very much, so please review.
>>>>>=20
>>>>> And the speedup? Almost 60 times :)
>>>=20
>>> [..]
>>>=20
>>>> I reviewed these and they all look like good improvements. I've =
merged
>>>> it into master, thanks!
>>>=20
>>> After some more time in oe-core master for testing we should =
seriously consider cherry-picking the SRCREV bump to the denzil branch.
>>=20
>> Agreed, saves about 4 hours per day (13 images each with own =
package-index run=20
>> and extra run for feed if built after iamges) on my buildhost for =
last month or so :)
>=20
> I merged in denzil-next locally and grabbed 26465 from patchwork. =
Let's see how much time it saves on my machine :)

With a relatively small deploy area: 7 minutes saved per image build!



