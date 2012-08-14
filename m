Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE1CE00346
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 20:24:11 -0700 (PDT)
Received: by yenm12 with SMTP id m12so4807170yen.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 20:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=TDZzk5i6KufctB/CFb++vMwJmolx7BlQpn6Dg6Q35HA=;
	b=0eFRe4S5fQZyR3YidZGHgiQSi5sXjavjqqxUHRfZ4aDL1h+0BSXCU7ovkOjrb15hJ1
	XX/7cji+yr0jWmlxv5oVsuguGfaGhTTVRCjzW+MZpVDHRPQNsvUFSIIECR3zoy1eoLxi
	xB7kOiz83TOeKPmihhkznST2N0B7gFJG1kHM33yNKT9fPo2AX/RnExY1gAyzJ/vPLi9B
	Zzi1jO5vwbWvB58j3na4Jwy5Rk+MymzhD2/O52nfyjGgao+66YNqaPg/Ay8483AkCWO5
	y9i7X6EDUVH7l1BsmXKOwtSMKrXJaFMjU//ix/Xx72mS8D+EaEkdNCAzu/xAub6+FJ+d
	Wmbg==
Received: by 10.66.76.9 with SMTP id g9mr27209182paw.62.1344914650104;
	Mon, 13 Aug 2012 20:24:10 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nk3sm401998pbc.27.2012.08.13.20.24.07
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 20:24:09 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <50739671-4885-4C82-9360-C3376960B165@gmail.com>
Date: Tue, 14 Aug 2012 07:24:04 +0400
Message-Id: <3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 14 Aug 2012 03:24:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 14, 2012, at 12:16 AM, Elvis Dowson wrote:

> I get no login prompt. Therefore, both eglibc-2.15 and 2.16 are broken =
for PowerPC.=20
>=20
> At the moment, only eglibc-2.13 works.=20

I tried eglibc-2.13 with the current gcc-4.7 recipe, and that =
combination doesn't work.

I do know that the Denx ELDK used eglibc-2.13 and the gcc-4.6 recipe. =
The ELDK
is based off poky/denzil branch. Only the poky/master branch contains =
the updated
gcc-4.7 & eglibc-2.15 & 2.16 recipes, which are right now broken for =
powerpc440=20
soft float.

Elvis Dowson=

