Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 217AEE00B8A; Fri, 13 Jan 2017 00:16:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3FA3E00B74
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 00:16:45 -0800 (PST)
Received: from mfilter14-d.gandi.net (mfilter14-d.gandi.net [217.70.178.142])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id DF72E1720A4;
	Fri, 13 Jan 2017 09:16:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter14-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter14-d.gandi.net (mfilter14-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 7dmyi3aLDBK8; Fri, 13 Jan 2017 09:16:42 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from android-d47d20231f8875cf.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9EF1C1720CE;
	Fri, 13 Jan 2017 09:16:41 +0100 (CET)
Date: Fri, 13 Jan 2017 08:16:40 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMKF1soVdmjRHd9z8N_4d7N8SX25co=kJh9M1P6wzNQgqLuJGA@mail.gmail.com>
References: <20170112182905.15203-1-raj.khem@gmail.com>
	<CAK18fxEs0UGdhSZ18yiEB5s2fDe3zExHX88Gv-DYt=VJheDWow@mail.gmail.com>
	<CAMKF1soVdmjRHd9z8N_4d7N8SX25co=kJh9M1P6wzNQgqLuJGA@mail.gmail.com>
MIME-Version: 1.0
To: yocto@yoctoproject.org, Khem Raj <raj.khem@gmail.com>,
	Andrei Gherzan <andrei@gherzan.ro>
From: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <CDA23871-75FD-40ED-A1B5-65269ED3BA01@paulbarker.me.uk>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.8.bb: Upgrade to 4.8.16
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
X-List-Received-Date: Fri, 13 Jan 2017 08:16:48 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 13 January 2017 02:04:26 GMT+00:00, Khem Raj <raj=2Ekhem@gmail=2Ecom> wr=
ote:
>On Thu, Jan 12, 2017 at 1:54 PM, Andrei Gherzan <andrei@gherzan=2Ero>
>wrote:
>> On Thu, Jan 12, 2017 at 6:29 PM, Khem Raj <raj=2Ekhem@gmail=2Ecom> wrot=
e:
>>> Signed-off-by: Khem Raj <raj=2Ekhem@gmail=2Ecom>
>>> ---
>>>  recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>b/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>> index 7511f93=2E=2Ebe25e65 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>> +++ b/recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>> @@ -1,8 +1,8 @@
>>>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>
>>> -LINUX_VERSION ?=3D "4=2E8=2E15"
>>> +LINUX_VERSION ?=3D "4=2E8=2E16"
>>>
>>> -SRCREV =3D "c8af0c2f515556ef052913d552b6b11501c71996"
>>> +SRCREV =3D "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>>  SRC_URI =3D
>"git://github=2Ecom/raspberrypi/linux=2Egit;protocol=3Dgit;branch=3Drpi-4=
=2E8=2Ey \
>>>  "
>>>  require linux-raspberrypi=2Einc
>>> --
>>> 2=2E11=2E0
>>>
>>
>> Merged both to master=2E
>
>What do folks think about deleting all other kernel besides 4=2E1 4=2E4 a=
nd
>4=2E9
>
>cheers!

I haven't been able to get 4=2E1 to compile on master for a long time now=
=2E I've already sent patches to update the 4=2E4 recipe and drop the 4=2E1=
 recipe=2E


--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

