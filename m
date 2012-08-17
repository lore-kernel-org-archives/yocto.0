Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59D0AE0076A
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 12:56:52 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1T2Sf4-0007O4-5x; Fri, 17 Aug 2012 20:56:50 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <502E9FED.8070907@windriver.com>
Date: Fri, 17 Aug 2012 20:56:47 +0100
Message-Id: <3D495B49-A6C3-4590-AF99-E6BD9A9617A4@keylevel.com>
References: <073A7998-3D05-4835-AA03-113960D00553@keylevel.com>
	<502C0312.2080905@windriver.com>
	<EDAB51DE-EE48-4C30-AD1B-20E7C6B01EF6@keylevel.com>
	<502D86C8.3090805@windriver.com>
	<5053D9BB-9E6B-4D25-B5B0-9B08DBB381E5@keylevel.com>
	<502E5C6B.7040709@windriver.com>
	<35B0FBF5-FE52-4C75-BBF6-F260A1954F76@keylevel.com>
	<502E9C97.6000209@windriver.com>
	<860E0816-033F-4091-ABFB-A3B699D260BD@keylevel.com>
	<502E9FED.8070907@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp create
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
X-List-Received-Date: Fri, 17 Aug 2012 19:56:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 17 Aug 2012, at 20:47, Bruce Ashfield wrote:

> On 12-08-17 03:40 PM, Chris Tapp wrote:
>>=20
>> On 17 Aug 2012, at 20:33, Bruce Ashfield wrote:
>>=20
>>> On 12-08-17 03:32 PM, Chris Tapp wrote:
>>>> On 17 Aug 2012, at 15:59, Bruce Ashfield wrote:
>>>>=20
>>>>> On 12-08-17 06:47 AM, Chris Tapp wrote:
>>>>>>=20
>>>>>> On 17 Aug 2012, at 00:48, Bruce Ashfield wrote:
>>>>>>=20
>>>>>>> ech. That means that the tree was somehow dirty and branches =
couldn't
>>>>>>> be switched/checked out.
>>>>>>>=20
>>>>>>> If you have a copy of your BSP layer, I can try a build here and =
shed
>>>>>>> some light on what exactly went wrong.
>>>>>>=20
>>>>>>=20
>>>>>> Thanks Bruce. Meta layer attached.
>>>>>=20
>>>>> Fixed here. This was completely generated from the tools ? If so, =
the
>>>>> branching information was wrong.
>>>>>=20
>>>>> KBRANCH_LX800  =3D "standard/default/LX800"
>>>>> YOCTO_KERNEL_EXTERNAL_BRANCH_LX800  =3D "standard/default/LX800"
>>>>>=20
>>>>> The "base" is always inferred and only exists because of the
>>>>> way that git manages refs on disk. So the branch that you
>>>>> want to build is what I have above, and the tools will
>>>>> automatically make that branch point off the default/base
>>>>> branch.
>>>>>=20
>>>>> Let me know if that did come from the tools and I'll follow
>>>>> up to the list.
>>>>=20
>>>> I'm 99.99% sure it did, but it runs ok after making the changes you =
give above, deleting tmp/ and rebuilding.
>>>>=20
>>>> I've not g0t any real changes in yet, so I'll go try again and see =
what I get. It's just possible I didn't do a complete rebuild (i.e. nuke =
tmp/) which may have caused a problem last time round.
>>>=20
>>> ok. cool. no rush. I was just going to do a final update on the =
mailing
>>> list to not leave it hanging, and if there's a bug in the scripts, =
we
>>> can let Tom know .. so he can fix it!
>>=20
>>=20
>> I've just recreated the BSP. I selected option 4 for the kernel =
branch (standard/default/base), which gives:
>>=20
>> KBRANCH_LX800  =3D "standard/default/base/LX800"
>> YOCTO_KERNEL_EXTERNAL_BRANCH_LX800  =3D "standard/default/base/LX800"
>=20
> ok. Worth firing off a bug report to Tom Zaunussi. .. that
> won't work .. ever.

Just bringing this back on-list.

I'll get something added to the tracker.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




