Return-Path: <external.Rob.vanRiel@nl.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E71FE00E08; Mon,  5 Mar 2018 05:55:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 12095 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Mar 2018 05:55:30 PST
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FF1DE006B4
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 05:55:30 -0800 (PST)
Received: from fe0vm1650.rbesz01.com
	(lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by si0vms0216.rbdmz01.com (Postfix) with ESMTPS id 3zw1dF42CRz1XLFYs
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 14:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nl.bosch.com;
	s=2015-01-21; t=1520258129;
	bh=WPTiTUWEcKlu0qRtq9Cd48+E3tgjYgb238M2qBmj8qE=; l=10;
	h=From:From:Reply-To:Sender;
	b=aWKmZKUXL3QU+LHRaHQhWL1s0R4bvkouCeoC+W75Qv5jYEZBW2FsA3Xp29SbL+DAP
	4FMBzqp62RlTXp9wlMIpa1poW6w/MOe/5wzOSDAlFJiA0X2B0g7tpJY4Us1+Vu+kPa
	JYfrN2ma+gLYjy7E7e73XtAmDeBr24mckw+2aoPk=
Received: from fe0vm1740.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 3zw1dF3FbRz1Cb
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 14:55:29 +0100 (CET)
X-AuditID: 0a3aad14-5e7ff7000000330d-4a-5a9d4c51e787
Received: from si0vm1949.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm1740.rbesz01.com (SMG Outbound) with SMTP id
	30.78.13069.15C4D9A5; Mon,  5 Mar 2018 14:55:29 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (fe-mbx2023.de.bosch.com [10.3.231.33])
	by si0vm1949.rbesz01.com (Postfix) with ESMTPS id 3zw1dF1XYkz6D44LY
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 14:55:29 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (10.3.231.33) by
	FE-MBX2023.de.bosch.com (10.3.231.33) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Mon, 5 Mar 2018 14:55:29 +0100
Received: from FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7]) by
	FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7%3]) with mapi id
	15.01.1415.002; Mon, 5 Mar 2018 14:55:29 +0100
From: "EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1)"
	<external.Rob.vanRiel@nl.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake: git and patch problem
Thread-Index: AdO0bDg9YcONI9sMQR2mVKfKBya5Nf///JwA///DfoA=
Date: Mon, 5 Mar 2018 13:55:28 +0000
Message-ID: <2d9da4459fcf4498b315c9ec4793b31c@nl.bosch.com>
References: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
	<alpine.LFD.2.21.1803050612060.10691@android-a172fe96dd584b41>
In-Reply-To: <alpine.LFD.2.21.1803050612060.10691@android-a172fe96dd584b41>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.14.72]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22TbUwbdRzH+ff6cNTePA4KPyooXmTZcGxldBOBLDrfwNiDQnwx4sMOe9Bm
	9CG9FsdcDIgrCtNNcMCO0rEMh8wxBdE1G91CxU0kGXO+mbgJxmpKGQZlNCbT6rUHa1/45p/v
	//u7z+/pn8Mx6gNcgxvNdtZmZmppuVKqLBzMzH1hZ0+l9tpydkHb3Dn5M6ik+Zv35c+jSmWx
	nq011rG2Tdv2KQ3d83659RPFgbP3bioa0LysBSXiQOog0LQsbUFKnCI7JeCdXZSIl2kE7tZW
	hXi5i2Bh8DISL14E5wM81oJwXE7uhfDh4kiqFHILBK7ek0d0MpkPP99xIdHXQU9nj0zUhcC7
	2qJaSj4B3w83RjVBFsGVudmopshDcIP/MsomkmVw2jMa9RGZCe82/C6JaIxMg2n/SYk4Agl9
	o1OYqNUw90t4ZbQs+Ky5UyZ+vwF6L/0pF/WTcObUPCbWTYKJE37pMZTKx6Xl4xA+DuHjkF4k
	PYvU1ay2zpT3lE670VbFcge1eRtfs5iGkfguKR708eSLPkTiiFYRSHgjSsbUcfUmH9qCS2g1
	8YpKsNZUWfT1BoYzvGpz1LIcrSFQQkIClfzA5hxVJiPHGS1mHwIco1MITbrAEXqm/iBrs4iY
	Dz2CS+k04oj+UCVF1jB2dj/LWlnbarQIx2kg6DIBTLKxNeyBamOtfTVMZ4o1U+Mj8WUleKIP
	5eMqofbSjkhtzsqYOGPNCp4u4tSqG0O/RXvwkHfWieHOAb9w3grMOzFKaraYWU0a0R9ph4xQ
	Bof5QTeaDILcxldS6rhALGMQ/YCEfSYT2yOwSvgVYn0A4Ul27aWSVswYtPkjgSGnZXB6oBXB
	kOdXCfjOvC2D8RMuGXSFPDh4ei6sgZmTHQ/Dkfdm1XBu8bgG3B1DGfBXXzgDJm4vZMHyO8HH
	wdMxuR6uzISE47eRDcDP8Lnw6eI/ueBfvqiF7iFfPri7vtbBLe9kAbTfv7sdhi+NlsCIt78U
	Dg+GS2Fp+rsd0NV0cScEnH/shs97+8rh+EB3BYw3jFUEhSVLhCVP3XFFlmxn7P+z5BU3Np2m
	AekaLyvym3Rry3+Shl4OB9ubc/nH1hFju/+tXnu7gCsvur+wf9OjWwtV52+M70mxKJ4unXGn
	B35M1bxl525ey9l64bk8atLqy3J8uO/6m1+UjYVajUvOYM76dS9dLclWPzQyoaem3jh6vT77
	9azNu4qftR51ezwtVoeizaxt/OrvivZ+WsoZmLwczMYx/wFFnZ5upAQAAA==
Subject: Re: bitbake: git and patch problem
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
X-List-Received-Date: Mon, 05 Mar 2018 13:55:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: maandag 5 maart 2018 12:13
> Subject: Re: [yocto] bitbake: git and patch problem
>=20
> On Mon, 5 Mar 2018, EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1) wrote:
>=20
> > I'm experiencing strange (at least to my eyes) behaviour from bitbake.
> > My recipe specifies a git repository as the main SRC_URI, then, in a
> > variant created using an append file adds a patch like
> > this:
> >
> > SRC_URI_append_mystuff +=3D "file://mystuff.patch"
>=20
>   pretty sure you don't need both "_append" and "+=3D" in the same assign=
ment.

Agreed, but you know how it goes: you get handed a system with a long histo=
ry, you need to expand it, so you follow whatever conventions are in place =
unless they bite you.
I ran a test with the patch lumped directly into SRC_URI, and the result wa=
s identical with this:
SRC_URI +=3D "file://mystuff.patch"

Rob
=20

