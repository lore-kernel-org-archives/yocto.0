Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9DBDE0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 14:32:59 -0700 (PDT)
Received: from [109.224.129.17] (port=27463
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SSayo-0006nl-Ll; Thu, 10 May 2012 22:32:58 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1336685031.27808.22.camel@elmorro>
Date: Thu, 10 May 2012 22:32:56 +0100
Message-Id: <31C22266-8705-4127-A2A4-BD9229F35FE5@keylevel.com>
References: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
	<1336682659.27808.9.camel@elmorro>
	<5E9AB811-0DDC-4B82-8C7C-67ADCFE06F27@keylevel.com>
	<1336683700.27808.12.camel@elmorro>
	<B92CF48D-EC98-44C0-94E1-4260EE7C8CEC@keylevel.com>
	<1336685031.27808.22.camel@elmorro>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using meta-intel with Denzil
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
X-List-Received-Date: Thu, 10 May 2012 21:33:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 10 May 2012, at 22:23, Tom Zanussi wrote:

> On Thu, 2012-05-10 at 22:07 +0100, Chris Tapp wrote:
>> On 10 May 2012, at 22:01, Tom Zanussi wrote:
>>=20
>>> On Thu, 2012-05-10 at 21:54 +0100, Chris Tapp wrote:
>>>> On 10 May 2012, at 21:44, Tom Zanussi wrote:
>>>>=20
>>>>> On Thu, 2012-05-10 at 21:38 +0100, Chris Tapp wrote:
>>>>>> I just tried to build 'crownbay' under Denzil but I got an error =
saying that xserver-xf86-dri-lite.inc could not be found.
>>>>>>=20
>>>>>> It looks as if new meta is available in the git repository. Is =
there a plan for 7.0.0 downloads to be available from the downloads =
page?
>>>>>>=20
>>>>>=20
>>>>> Yes, the plan these days is to release the meta-intel BSPs a few =
weeks
>>>>> or so following the poky release.  We expect to have denzil BSP
>>>>> downloads available from the downloads directory in a couple =
weeks...
>>>>=20
>>>>=20
>>>> Thanks Tom.
>>>>=20
>>>> Is there any information produced for a release to explain what =
needs looking at to bring a BSP in line with the release?
>>>>=20
>>>> I found the above when I tried to bring something I'm working on in =
to Denzil. It would be really helpful if there was an easy way to find =
out what I need to consider ;-)
>>>>=20
>>>=20
>>> I wish there were. ;-)  I don't know any substitute for that kind of
>>> thing than looking at git history and trying to build.
>>>=20
>>> BTW, I don't know why you'd be seeing that xserver-xf86-dri-lite.inc
>>> error unless you had something out of date - the current master for
>>> crownbay works find for me with poky/denzil...
>>=20
>>=20
>> I've got an embryonic BSP based on meta-intel from an older version =
(6.0.1). It currently 'lives' within meta-intel/mybsp. When it didn't =
build I tried crownbay as I always start by assuming I've got something =
wrong in my code... ;-)
>>=20
>=20
> Oh, I guess you must have been trying the edison crownbay with denzil
> which has this and won't work with denzil:
>=20
> =
meta-crownbay/conf/machine/crownbay.conf:PREFERRED_PROVIDER_virtual/xserve=
r ?=3D "xserver-xf86-dri-lite"
> =
meta-crownbay/conf/machine/crownbay.conf:PREFERRED_PROVIDER_virtual/xserve=
r-xf86 ?=3D "xserver-xf86-dri-lite"
> meta-crownbay/conf/machine/crownbay.conf:XSERVER ?=3D
> "xserver-xf86-dri-lite \
> =
meta-crownbay/conf/machine/crownbay.conf:PREFERRED_VERSION_xserver-xf86-dr=
i-lite ?=3D "1.9.3"
>=20
> You really should be looking at the current crownbay BSP in master -
> there have been a lot of changes in this (matching changes for the X
> overhaul in oe-core IIRC) and other areas since then...


Already there ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




