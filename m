Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E759E00C74; Thu,  9 Aug 2018 06:16:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 592 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Aug 2018 06:16:50 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 813BCE00875
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 06:16:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 960F512A6E6;
	Thu,  9 Aug 2018 15:06:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id t8ZQ2F0wBL7q; Thu,  9 Aug 2018 15:06:48 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id E546B12A6EE;
	Thu,  9 Aug 2018 15:06:46 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 09 Aug 2018 15:06:46 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
In-Reply-To: <CAKPYHZ7FmcJ=5iXNRjMLLU84vVW=bOQU25Y_rCHn+AQiH0eRSg@mail.gmail.com>
References: <CAKPYHZ7FmcJ=5iXNRjMLLU84vVW=bOQU25Y_rCHn+AQiH0eRSg@mail.gmail.com>
Message-ID: <aea94267ab543626e903c7376c007397@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
Cc: yocto@yoctoproject.org
Subject: Re: HELP!
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
X-List-Received-Date: Thu, 09 Aug 2018 13:16:51 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-08-09 14:39, Dhanush K.S wrote:
> Hello,
>=20
> I am currently trying to migrate from Yocto 1.8 Poky Fido 13.0.0 to
> Yocto 2.5.
>=20
> After cloning the Poky repository, I was confused with which tag to
> checkout with.
>=20

With a fresh release like Sumo, it is better to stay at the HEAD of the=20
sumo branch for some time. Updates here should not break things, but fix=20
bugs instead.
When it stabilizes or when you are making a release, you can use a=20
certain commit or release tag.

> Could you please help me understand the difference between the tags
> "SUMO-19.0.0" and "YOCTO-2.5"
>=20

Both tags point to the same commit (da3625c52e), so choose one.

> As far as I understand, both mean the same since "2.5" is the
> DISTRO_VERSION and "sumo" is the DISTRO_CODENAME.
>=20
> But is still the same with the checkout tags as well?
>=20
> Many thanks in advance!
>=20
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush Keshava Reddy Soppahalli
> Mob: +4915216144064

-- Bas

