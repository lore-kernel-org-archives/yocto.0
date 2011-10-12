Return-Path: <koen@dominion.thruhere.net>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D61FE004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 12:30:48 -0700 (PDT)
Received: by bkar19 with SMTP id r19so659327bka.35
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 12:30:46 -0700 (PDT)
Received: by 10.223.62.19 with SMTP id v19mr593323fah.27.1318447845875;
	Wed, 12 Oct 2011 12:30:45 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id c1sm5375749fab.15.2011.10.12.12.30.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Oct 2011 12:30:45 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E95E020.7070201@gmail.com>
Date: Wed, 12 Oct 2011 21:30:39 +0200
Message-Id: <5A638733-1EF0-4FF9-96D9-61702DEE2FBC@dominion.thruhere.net>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95B87E.6050300@linux.intel.com> <4E95E020.7070201@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 19:30:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 12 okt. 2011, om 20:44 heeft Khem Raj het volgende geschreven:

> On 10/12/2011 8:55 AM, Darren Hart wrote:
>> Hi Tim,
>>=20
>> On 10/11/2011 04:49 PM, Tim Bird wrote:
>>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>>> As part of working on meta-tiny, I've come across a need (want?) to
>>>> present users with the ability to select some set of features in a =
local
>>>> configuration file that will impact the build of the image and a =
set of
>>>> recipes.
>>>=20
>>> Can you tell me more about meta-tiny?  this is the first I've heard
>>> about this (sorry if discussion went by on the mailing list and I
>>> missed it), and I'm very interested.
>>=20
>>=20
>> Tim,
>>=20
>> I'll be presenting things in more detail at ELCE, Friday @ 3:45 PM in
>> the Kepler room. The summary is that I have received a lot of =
questions
>> along the lines of "How small of an image can I build with Yocto?".
>=20
> I guess yocto needs to define another profile(distro) to really =
demonstrate how small it can get. There are other distros based on =
oe-core e.g. micro and even slugos where the image sizes are really =
small slugos/uclibc image is around 2.7M eglibc based image is 3.5M

And don't forget angstrom, that scales all the way down to an fbdev gui =
fit inside 80kiB.=

