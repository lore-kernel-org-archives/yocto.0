Return-Path: <xbbn@mjolner.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEAC5E00932; Wed, 11 Jan 2017 00:29:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.mjolner.dk (bifrost.fuz.mjolner.dk [87.116.45.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A20E0030B
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 00:29:38 -0800 (PST)
Received: from drift35.mia.local (10.16.200.35) by drift35.mia.local
	(10.16.200.35) with Microsoft SMTP Server (TLS) id 15.0.1236.3;
	Wed, 11 Jan 2017 09:29:35 +0100
Received: from drift35.mia.local ([::1]) by drift35.mia.local ([::1]) with
	mapi id 15.00.1236.000; Wed, 11 Jan 2017 09:29:35 +0100
From: Bent Bisballe Nyeng <xbbn@mjolner.dk>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] how does one stay on top of YP security alerts?
Thread-Index: AQHSaQIdW9SjFBHHKEWCaar1bowPsw==
Date: Wed, 11 Jan 2017 08:29:35 +0000
Message-ID: <a6a450e66403429bb536a027a0d6a962@drift35.mia.local>
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
	<CAJTo0LbbmO2S2XaWve2=uESbtd9UAn533XAcKBvfZ7XHzyngNA@mail.gmail.com>
	<1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
	<3536641.0CtJjzRgDn@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-GB, da-DK, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [87.116.45.78]
x-pmwin-version: 4.0.2, Antivirus-Engine: 3.64.3, Antivirus-Data: 5.35
x-puremessage: [Scanned]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how does one stay on top of YP security alerts?
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
X-List-Received-Date: Wed, 11 Jan 2017 08:29:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 01/10/2017 09:53 PM, Paul Eggleton wrote:=0A=
> On Tue, 10 Jan 2017 10:37:48 Bent Bisballe Nyeng wrote:=0A=
>> I found the list initially through this page:=0A=
>> https://wiki.yoctoproject.org/wiki/Security where it is described as the=
=0A=
>> security [at] yoctoprojct [dot] org being the discussion list and the yo=
cto=0A=
>> [dash] security [at] yoctoproject[dot] org being the security announceme=
nt=0A=
>> list.=0A=
> That's not what it says. What it does say is that yocto-security@ list is=
 for =0A=
> discussions about security patches, and security@ is for private notifica=
tion =0A=
> about security issues *to* several nominated individuals. There isn't an =
=0A=
> announcement list I'm afraid.=0A=
>  =0A=
>> If the yocto [dash] security [at] yoctoproject[dot] org is in fact no lo=
nger=0A=
>> active I think it is important that the wiki page is changed to reflect=
=0A=
>> that to prevent potential dangerous misunderstandings in the future.=0A=
> I'm not sure how you came to the conclusions you did - do you have any =
=0A=
> suggestions on rewording?=0A=
>=0A=
> I will say that the yocto-security@ list has been pretty quiet since it w=
as =0A=
> set up. Adding a few people on CC - are there any plans to make better us=
e of =0A=
> this list?=0A=
>=0A=
> Cheers,=0A=
> Paul=0A=
I can see now that I half read, half assumed what the page said...=0A=
=0A=
The ideal solution in my opinion would be to actually turn the=0A=
yocto-security list into a security announcement list as this would make=0A=
it the perfect resource for monitoring security issues for shipped=0A=
products instead of having to make some kind of grep filter on the git logs=
.=0A=
=0A=
Would this be an option? I think it would be of great benefit to the=0A=
yocto community if such a list existed.=0A=
=0A=
Kind regards=0A=
Bent Bisballe Nyeng=0A=
=0A=

