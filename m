Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C061E00A3B; Thu, 19 Jan 2017 07:15:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5290E00828
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:15:36 -0800 (PST)
Received: from [192.168.1.14] (114-44-147-88.dynamic.hinet.net [114.44.147.88])
	by msfrf2616.sfr.fr (SMTP Server) with ESMTP id AB6AC1C00085D;
	Thu, 19 Jan 2017 16:15:35 +0100 (CET)
Received: from [192.168.1.14] (114-44-147-88.dynamic.hinet.net
	[114.44.147.88])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2616.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 Jan 2017 16:15:34 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
Mime-Version: 1.0 (1.0)
From: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: iPhone Mail (14C92)
In-Reply-To: <CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
Date: Thu, 19 Jan 2017 23:15:29 +0800
Message-Id: <522F9E1B-6E8C-4102-8923-82C37B7044D8@neuf.fr>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<1484826659-21692-4-git-send-email-andrei@gherzan.ro>
	<DEBEB5BC-0FA4-4862-BC62-CC79049AD504@paulbarker.me.uk>
	<CAK18fxEbwBSkL7=Gnhxt65Ab=3XVKQ=tJLqk_AhrWqb6VuFvhQ@mail.gmail.com>
	<12A2100F-D90D-44BE-B337-D1CB34B30EBD@paulbarker.me.uk>
	<CAK18fxFr_GrVC4z5eVa_VOMsyPFGMKNc10ErCKKY=fGFhpQmQA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: ***SPAM*** Re: [meta-raspberrypi][morty][PATCH 4/6] linux-raspberrypi: Drop v4.8
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
X-List-Received-Date: Thu, 19 Jan 2017 15:15:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

The problem with 4.8 is that because of the constant rebasing in the downstr=
eam, it will get broken fast.
So someone will have to maintain it and constantly update it, and if we don'=
t do it for master, it's unlikely to be done on Morty.
At some point, 4.8 will stop changing, but we're not there yet.
Right now, 4.4 is stable in downstream, and it seems 4.7 is also - at least 4=
.7.10 compiles.
If we don't want to keep 4.7 in Morty, the best bet is probably 4.4 + 4.9, k=
nowing there'll be a lot of updates in 4.9 - but they'll follow the ones in m=
aster.

Cheers,
Herve

> On 19 Jan 2017, at 20:55, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
>> On Thu, Jan 19, 2017 at 12:41 PM, Paul Barker <paul@paulbarker.me.uk> wro=
te:
>>> On 19 January 2017 12:07:11 GMT+00:00, Andrei Gherzan <andrei@gherzan.ro=
> wrote:
>>> On Thu, Jan 19, 2017 at 12:03 PM, Paul Barker <paul@paulbarker.me.uk>
>>> wrote:
>>>> On 19 January 2017 11:50:57 GMT+00:00, Andrei Gherzan
>>> <andrei@gherzan.ro> wrote:
>>>>> From: Paul Barker <paul@paulbarker.me.uk>
>>>>>=20
>>>>> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>>>>> ---
>>>>> recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 --------
>>>>> 1 file changed, 8 deletions(-)
>>>>> delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>>=20
>>>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>> b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>> deleted file mode 100644
>>>>> index be25e65..0000000
>>>>> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>>>> +++ /dev/null
>>>>> @@ -1,8 +0,0 @@
>>>>> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>>> -
>>>>> -LINUX_VERSION ?=3D "4.8.16"
>>>>> -
>>>>> -SRCREV =3D "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>>>> -SRC_URI =3D
>>>>> "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.=
8.y
>>> \
>>>>> -"
>>>>> -require linux-raspberrypi.inc
>>>>=20
>>>> I'm not sure on this one. I don't think we should drop kernel
>>> versions from a stable branch unless they're broken. Can we hold off on
>>> this and I'll have a look at it tomorrow.
>>>>=20
>>>> (Resending as I mis-clicked and didn't do reply all)
>>>=20
>>> I don't see the benefit in keeping 4.8 and 4.9. The default + the
>>> latest should be enough. Default would give stability and suitable for
>>> production while latest will give new features.
>>>=20
>>> BTW I already removed 4.8 from master.
>>>=20
>>=20
>> Agreed for master. I'm just wondering if we want to leave 4.8 on morty (i=
f it currently builds) in case anyone depends on that version.
>>=20
>> I can see the other side though - if you need a stable branch of openembe=
dded you should probably also use a linux-raspberrypi version that's stable.=

>=20
> I'll try to compile and not remove it if it compiles. Doesn't hurt to
> leave it there anyway.
>=20
> --
> Andrei Gherzan
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


