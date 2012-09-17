Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5097E0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 12:04:30 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TDgcQ-0001Tz-4H; Mon, 17 Sep 2012 20:04:30 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1sowgdtLGO4a2NQ9+ioGJ4B7Gg-MysPu4_dFRWg8aeFuiA@mail.gmail.com>
Date: Mon, 17 Sep 2012 20:04:28 +0100
Message-Id: <E991EFF5-7BD2-409D-A1BC-FB9E8C320DDE@keylevel.com>
References: <9CB6FE0E-90A1-4627-B2CD-3DAD8090EB9C@keylevel.com>
	<CAMKF1sowgdtLGO4a2NQ9+ioGJ4B7Gg-MysPu4_dFRWg8aeFuiA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
Subject: Re: Forcing link order for autotools recipe
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
X-List-Received-Date: Mon, 17 Sep 2012 19:04:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 17 Sep 2012, at 06:51, Khem Raj wrote:

> On Sat, Sep 15, 2012 at 4:59 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> I've got a recipe that uses autotools. It builds ok under Poky, but =
if I try to build it on my host (e.g. when developing) then it fails to =
build with lots of 'symbol not found' link errors related to libs that =
are on the system and which are in the gcc lib search path.
>>=20
>> I've finally tracked this down to link order. The final command is of =
the form:
>>=20
>> g++ -lGL -lcurl -o binary a.o b.o
>>=20
>> If I change this to:
>>=20
>> g++ -o binary a.o b.o -lGL -lcurl
>>=20
>> then it builds ok.
>>=20
>> Stranger still is the original form works fine on another system =
(older Ubuntu). The ld versions are different (2.21.53 on the one that =
fails, 2.20.1 on the one that works).
>>=20
>> Can I get autotools to always link the libraries last?
>=20
> you did not mention the failing distro but what Ross mentioned could
> be one reason

It's Ubuntu 11.10. I don't think it's using 'gold', but it is on the =
system. I'll look at the default flags to see what's up.

> another reason could be that its using gold as default linker where
> overlinking is not the default as it used to be. The linking behavior
> is correct there you need to fix the application to specify the
> libraries correctly.


Yes, that's exactly what I did once I realised I was using LDFLAGS when =
I should use LDADD.
It was once of these 'coincidentaly-correct' errors that only bites =
after a year or two or working perfectly ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




