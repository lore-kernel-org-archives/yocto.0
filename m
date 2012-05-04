Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43F82E00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 14:09:11 -0700 (PDT)
Received: from [109.224.129.17] (port=24168
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SQPkU-00067V-F3
	for yocto@yoctoproject.org; Fri, 04 May 2012 22:09:10 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1srzXUyJsfNALUdVng9-UAP1+oMgdq=fcNM3Txncua4yGw@mail.gmail.com>
Date: Fri, 4 May 2012 22:09:07 +0100
Message-Id: <9EDADDD9-4571-4160-8799-A68FC79D29B6@keylevel.com>
References: <FF473BAD-04D9-4409-9B7E-D49AD4B4AA11@keylevel.com>
	<CAMKF1srzXUyJsfNALUdVng9-UAP1+oMgdq=fcNM3Txncua4yGw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: GCC patch failures with 7.0.0
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
X-List-Received-Date: Fri, 04 May 2012 21:09:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 4 May 2012, at 21:53, Khem Raj wrote:

> On Fri, May 4, 2012 at 12:00 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> Building core-image-sato I get a patch failure when =
cache-amnesia.patch is applied in gcc-cross.
>>=20
>> If I then run bitbake -c patch gcc-cross I get the same error, but if =
I -c clean and then -c patch it applies as it should.
>>=20
>> Any ideas what could be causing this? Could this be a parallel make =
artefact?
>>=20
>=20
> thinking that you are building from scratch it should have already =
patched tree
> during gcc-cross-initial build so I wonder why is it trying to repatch =
it during
> gcc-cross build. Could be some checksum issue where suddenly bitake =
thinks it
> needs to repatch it.

Hi Khem,

Thanks. You made me realise that it's my fault. Sorry to bother =
everyone!

I was playing with the task scheduler within bitbake and forgot to =
switch back to the working version before I started the build.

Chris


