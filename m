Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13117E00B03; Thu, 19 Jan 2017 04:41:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAD3CE009F4
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:41:35 -0800 (PST)
Received: from mfilter2-d.gandi.net (mfilter2-d.gandi.net [217.70.178.140])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 4146741C08E;
	Thu, 19 Jan 2017 13:41:34 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter2-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter2-d.gandi.net (mfilter2-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id KOnFcVzXU4n8; Thu, 19 Jan 2017 13:41:32 +0100 (CET)
X-Originating-IP: 85.255.233.147
Received: from [10.237.226.155] (unknown [85.255.233.147])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 150E341C0A4;
	Thu, 19 Jan 2017 13:41:31 +0100 (CET)
Date: Thu, 19 Jan 2017 12:41:28 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
From: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 4/6] linux-raspberrypi: Drop v4.8
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
X-List-Received-Date: Thu, 19 Jan 2017 12:41:39 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 19 January 2017 12:07:11 GMT+00:00, Andrei Gherzan <andrei@gherzan=2Ero>=
 wrote:
>On Thu, Jan 19, 2017 at 12:03 PM, Paul Barker <paul@paulbarker=2Eme=2Euk>
>wrote:
>> On 19 January 2017 11:50:57 GMT+00:00, Andrei Gherzan
><andrei@gherzan=2Ero> wrote:
>>>From: Paul Barker <paul@paulbarker=2Eme=2Euk>
>>>
>>>Signed-off-by: Paul Barker <paul@paulbarker=2Eme=2Euk>
>>>---
>>> recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb | 8 --------
>>> 1 file changed, 8 deletions(-)
>>> delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>>
>>>diff --git a/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>>b/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>>deleted file mode 100644
>>>index be25e65=2E=2E0000000
>>>--- a/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>>+++ /dev/null
>>>@@ -1,8 +0,0 @@
>>>-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>-
>>>-LINUX_VERSION ?=3D "4=2E8=2E16"
>>>-
>>>-SRCREV =3D "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>>-SRC_URI =3D
>>>"git://github=2Ecom/raspberrypi/linux=2Egit;protocol=3Dgit;branch=3Drpi=
-4=2E8=2Ey
>\
>>>-"
>>>-require linux-raspberrypi=2Einc
>>
>> I'm not sure on this one=2E I don't think we should drop kernel
>versions from a stable branch unless they're broken=2E Can we hold off on
>this and I'll have a look at it tomorrow=2E
>>
>> (Resending as I mis-clicked and didn't do reply all)
>
>I don't see the benefit in keeping 4=2E8 and 4=2E9=2E The default + the
>latest should be enough=2E Default would give stability and suitable for
>production while latest will give new features=2E
>
>BTW I already removed 4=2E8 from master=2E
>

Agreed for master=2E I'm just wondering if we want to leave 4=2E8 on morty=
 (if it currently builds) in case anyone depends on that version=2E

I can see the other side though - if you need a stable branch of openembed=
ded you should probably also use a linux-raspberrypi version that's stable=
=2E

