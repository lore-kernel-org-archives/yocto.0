Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62FEBE0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 13:54:19 -0700 (PDT)
Received: from [109.224.129.17] (port=10731
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SSaNO-0005wh-GP; Thu, 10 May 2012 21:54:18 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1336682659.27808.9.camel@elmorro>
Date: Thu, 10 May 2012 21:54:15 +0100
Message-Id: <5E9AB811-0DDC-4B82-8C7C-67ADCFE06F27@keylevel.com>
References: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
	<1336682659.27808.9.camel@elmorro>
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
X-List-Received-Date: Thu, 10 May 2012 20:54:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 10 May 2012, at 21:44, Tom Zanussi wrote:

> On Thu, 2012-05-10 at 21:38 +0100, Chris Tapp wrote:
>> I just tried to build 'crownbay' under Denzil but I got an error =
saying that xserver-xf86-dri-lite.inc could not be found.
>>=20
>> It looks as if new meta is available in the git repository. Is there =
a plan for 7.0.0 downloads to be available from the downloads page?
>>=20
>=20
> Yes, the plan these days is to release the meta-intel BSPs a few weeks
> or so following the poky release.  We expect to have denzil BSP
> downloads available from the downloads directory in a couple weeks...


Thanks Tom.

Is there any information produced for a release to explain what needs =
looking at to bring a BSP in line with the release?

I found the above when I tried to bring something I'm working on in to =
Denzil. It would be really helpful if there was an easy way to find out =
what I need to consider ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




