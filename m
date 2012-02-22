Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE711E0123C
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 05:57:10 -0800 (PST)
Received: by wgbdq12 with SMTP id dq12so47018wgb.11
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 05:57:09 -0800 (PST)
Received-SPF: pass (google.com: domain of koen@dominion.thruhere.net
	designates 10.180.104.4 as permitted sender)
	client-ip=10.180.104.4; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	koen@dominion.thruhere.net designates 10.180.104.4 as permitted
	sender) smtp.mail=koen@dominion.thruhere.net
Received: from mr.google.com ([10.180.104.4])
	by 10.180.104.4 with SMTP id ga4mr36751465wib.17.1329919029628
	(num_hops = 1); Wed, 22 Feb 2012 05:57:09 -0800 (PST)
Received: by 10.180.104.4 with SMTP id ga4mr30558763wib.17.1329919029554;
	Wed, 22 Feb 2012 05:57:09 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id dr5sm71595440wib.0.2012.02.22.05.57.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Feb 2012 05:57:08 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F3A754B.5020909@mindchasers.com>
Date: Wed, 22 Feb 2012 14:57:12 +0100
Message-Id: <F801F7C5-8CD2-4408-88AF-C7C55A546CE4@dominion.thruhere.net>
References: <4F3A754B.5020909@mindchasers.com>
To: Bob Cochran <yocto@mindchasers.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQkfCDJqY8JG9etIdhiZ95phBZ2O76913H+WNGDihIkpN1dy94qYotY0x8JWgu8US40EKruy
Cc: yocto@yoctoproject.org
Subject: Re: meta-oracle-java
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
X-List-Received-Date: Wed, 22 Feb 2012 13:57:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 14 feb. 2012, om 15:52 heeft Bob Cochran het volgende geschreven:

> Hello All,
>=20
> I see that a meta-oracle-java layer showed up recently in the yocto =
repositories.  That's great.
>=20
> Was there an announcement about this new layer sent on a mailing list =
or posted in a blog?  I had thought I was on all the yocto-related mail =
lists (https://lists.yoctoproject.org/), but I wasn't aware of this =
layer until I just read through the repository list =
(http://git.yoctoproject.org/cgit/cgit.cgi/).
>=20
> I did find  a mention about some jdk work in the technical team =
meeting notes on 1/24, but it was sort of cryptic.  By any chance, is =
there an openjdk layer coming soon?

It has existed for a while now: https://github.com/woglinde/meta-java

See http://www.openembedded.org/wiki/LayerIndex for more layers=

