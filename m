Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D9E2E0138C
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 16:38:50 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfk14 with SMTP id fk14so1501vcb.35
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2011 16:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=Q42a7KleBs4uYrDOVHMK9lmAiAbPaH78kPiBGXf++vk=;
	b=prlrtsuSzUBt1ZPbXkWfun62GHTtTdhX7Oe+cyc6XQRFxWHPAjBXTORUXAcCLLlFyO
	nbUKotS607Imd2mGNZWOL2pWd/JFwhjHtNItzuu+ixF7FBbu2IyRNnzjQ18GPFyM3efA
	KVaYjZZhJIozNmLsmX0n/He5Eb2VDDs4hdTps=
Received: by 10.52.25.75 with SMTP id a11mr29372367vdg.1.1320712730180;
	Mon, 07 Nov 2011 16:38:50 -0800 (PST)
Received: from [10.0.1.26] ([67.239.164.153])
	by mx.google.com with ESMTPS id l4sm32815306vdv.4.2011.11.07.16.38.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 07 Nov 2011 16:38:48 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <4EB873D6.4000708@mlbassoc.com>
Date: Mon, 7 Nov 2011 19:38:53 -0500
Message-Id: <C8BFAF7D-873A-4422-A9B6-61696E8C6C1C@gmail.com>
References: <CANFv2Ene=ZfVOzs76fsW7XNRm7K_0DNDB=q90AHV5Zs3KxcjNw@mail.gmail.com>
	<4EB85604.50109@mlbassoc.com>
	<CANFv2EmUKNvvYppCoU71du5mU0dG7hXwAc-jbzSDQrBGF2oq1g@mail.gmail.com>
	<4EB873D6.4000708@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: use case howto?
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
X-List-Received-Date: Tue, 08 Nov 2011 00:38:51 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Nov 7, 2011, at 7:12 PM, Gary Thomas wrote:

> On 2011-11-07 15:15, James Abernathy wrote:
>> I thought the idea was to build a recipe for your device that could =
create the software complete with all the pieces. Certainly, having a =
list of packages that you need to install
>> via zypper is fine, but I thought that not the concept behind =
Yocto???
>> Sorry for the dumb questions.
>=20
> It's actually a combination of both worlds - you can use existing =
recipes
> to add functionality by just including those packages in your system, =
either
> at initial build time or by using the packaging tools.  You can also =
easily
> write your own recipes to build specialized packages.  The combination =
is
> up to you.

So  if I wanted to build Firefox into my Yocto project. How is that =
done??

Jim A

>=20
> A point of terminology - recipes are used to construct packages which =
can
> then be installed, etc.  They are functional units, not necessarily =
tied
> to any particular device or system.
>=20
> n.b. top posting on mailing lists makes your replies harder to follow =
:-(
>=20
>> On Mon, Nov 7, 2011 at 5:04 PM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>>=20
>>    On 2011-11-07 14:59, James Abernathy wrote:
>>=20
>>        I approach embedded Linux from a path of taking a Distro like =
Ubuntu or Fedora and chopping it down to a working set of code that =
forms the final solution.  Obviously, not
>>        the same
>>        methology as Yocto.  With some success with the current =
methods, it's difficult to see the advantages of Yocto.  I'm reading =
what I can find to get smarting on Yocto, but
>>        like most
>>        new concepts, you try to compare what you used to do with how =
to do it with the new concept.
>>        For example, if I use a distro, I can install packages really =
simply with yum or apt-get; update them the same way. If I start with a =
Yocto meta-??? that's closest to my
>>        hardware
>>        solution, and get it working at a base level, how do I add =
things, like browsers, or other application?
>>=20
>>=20
>>    Using very similar tools - zypper is just like yum, or if
>>    you choose to use ipk packages, opkg
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------


