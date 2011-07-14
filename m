Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62F124C80205
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 13:09:47 -0500 (CDT)
Received: by wwf4 with SMTP id 4so557615wwf.11
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 11:09:46 -0700 (PDT)
Received: by 10.216.136.18 with SMTP id v18mr2328090wei.23.1310666986032;
	Thu, 14 Jul 2011 11:09:46 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m45sm300185wed.23.2011.07.14.11.09.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jul 2011 11:09:44 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1310663344.2162.1.camel@vorpal.jf.intel.com>
Date: Thu, 14 Jul 2011 20:09:37 +0200
Message-Id: <2C8F1937-E69D-4815-98E5-57C952456574@dominion.thruhere.net>
References: <CAE727EC-4F3C-4FD2-BCEE-F14BC42E981F@technicolor.com>
	<1310460238.20015.1024.camel@rex>
	<9D94299C-4B6A-4550-80A8-7821FB26D81C@kernel.crashing.org>
	<1310651543.20015.1148.camel@rex>
	<4C89CE44-6341-4FE7-A7AA-85F1FB6BD2F4@kernel.crashing.org>
	<1310663344.2162.1.camel@vorpal.jf.intel.com>
To: Joshua Lock <josh@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: Menu configuration
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
X-List-Received-Date: Thu, 14 Jul 2011 18:09:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 14 jul 2011, om 19:09 heeft Joshua Lock het volgende geschreven:

> On Thu, 2011-07-14 at 11:34 -0500, Kumar Gala wrote:
>> On Jul 14, 2011, at 8:52 AM, Richard Purdie wrote:
>>=20
>>> On Thu, 2011-07-14 at 08:06 -0500, Kumar Gala wrote:
>>>> On Jul 12, 2011, at 3:43 AM, Richard Purdie wrote:
>>>>=20
>>>>> On Mon, 2011-07-11 at 10:00 -0700, Turner Randy wrote:
>>>>>> Hello list,
>>>>>>=20
>>>>>> Is there a interactive menu-based configuration for yocto/poky =
builds
>>>>>> similar to that provided in Buildroot? Or is someone working on =
this?
>>>>>=20
>>>>> At present there is not any interactive menu based configuration =
but
>>>>> there is work ongoing on a UI called hob which allows you to =
select
>>>>> packages and construct images of those packages so its a graphical =
front
>>>>> end to the system.
>>>>>=20
>>>>> We're also in the process of starting to better markup =
configuration
>>>>> variables in the metadata so that writing some kind of menu based
>>>>> configuration system would be easier in the future.
>>>>>=20
>>>>> We're certainly open to any help in those areas too!
>>>>>=20
>>>>> Cheers,
>>>>>=20
>>>>> Richard
>>>>=20
>>>> Are there any docs for hob at this point?
>>>=20
>>> Not specifically. "bitbake -u hob" should let you see where things =
are
>>> at. Please keep in mind that its under active development at the =
moment
>>> and can be considered "alpha" quality but feedback is welcome.
>>=20
>> Are they thread of email discussion or anything.  I tried playing =
with it, but a little confused on exactly what its trying to accomplish =
and what the 'cfg' that is saved off ends up being.
>=20
> If you have questions please ask them. The saved file should be a =
recipe
> for building a custom image. The purpose of the tool is to help you =
put
> together a custom image and build it.

Try this:

bitbake -u hob

-> Python traceback

change PARALLEL_MAKE from 'j8' to 'j 8'

bitbake -u hob

click save

Open up recipe in editor

-> 'require None.bb'

So it looks like creating an image from scratch doesn't work.

regards,

Koen=

