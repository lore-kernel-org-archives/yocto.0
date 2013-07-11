Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13454E0140D;
	Thu, 11 Jul 2013 12:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=wjJ1vs/Kf/ejwZVW3SmJ4hAFoupV7McYhA0/OJs9cbc=; 
	b=p7VN3oQHnWXWk1NkYgHKPfdgamw4Ho1sdW12dyYJ8yzjMc/hTjrbCNJwoSNtVpd+09rwwMP9rc9p6ZpYk/vUtL4esWvg4bRcutsHLywZABv9i36jO6F0BGy8Lchm91uLu4OSu/HMNGlEsvBo0umJWMWYN4j5WrBaTzEzngxB2BM=;
Received: from [109.224.129.17] (port=23975
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UxMgn-003ZOu-JP; Thu, 11 Jul 2013 20:38:05 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <51DF0711.1040905@linux.intel.com>
Date: Thu, 11 Jul 2013 20:38:04 +0100
Message-Id: <78605569-E5F4-42B0-84EA-2A2C1E030D0E@keylevel.com>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
	<38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
	<20130709205006.GW3288@jama>
	<C2C2584F-0108-426E-9303-4921E97E4D92@gmail.com>
	<51DF0711.1040905@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: meta-freescale@yoctoproject.org,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-freescale] Compile error for boost_1.54.0
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
X-List-Received-Date: Thu, 11 Jul 2013 19:38:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 11 Jul 2013, at 20:27, Saul Wold wrote:

>=20
> OK, I finally tracked this bugger down to the eglibc update to 2.18 =
and specifically
>=20
>> ../../../eglibc/2.18-r0/eglibc-2.18/libc/ChangeLog:     * =
include/features.h (__GLIBC_HAVE_LONG_LONG): Remove.
>=20
> Turns out that in boost code there is a check for the =
__GLIBC_HAVE_LONG_LONG in cstdint.hpp and this was not getting triggered =
any more.
>=20
> The include issue for g++ was kind of a red herring in this case, that =
issue still exists, but this is a different problem.  And there is a =
patch for that in the SVN master, I will pull it!

Thanks Saul :-)

> Sau!
>=20
>=20
> On 07/09/2013 10:04 PM, Khem Raj wrote:
>>=20
>> On Jul 9, 2013, at 1:50 PM, Martin Jansa <martin.jansa@gmail.com> =
wrote:
>>=20
>>> On Tue, Jul 09, 2013 at 09:25:30PM +0100, Chris Tapp wrote:
>>>> Forwarding to Yocto mailing list:
>>>>=20
>>>> On 9 Jul 2013, at 21:21, Otavio Salvador wrote:
>>>>=20
>>>>> On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp =
<opensource@keylevel.com> wrote:
>>>>>>=20
>>>>>> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
>>>>>>=20
>>>>>>> I'm getting a failure in do_compile when building boost_1.54.0 =
using master-next for the wandboard-quad.
>>>>>>>=20
>>>>>>> The log is about 1.5MB, but the important bit seems to be that =
uintptr_t isn't defined but is required by /boost/atomic/atomic.hpp.
>>>>>>>=20
>>>>>>> Has anyone seen this before?
>>>>>>=20
>>>>>> I also meant to say that adding:
>>>>>>=20
>>>>>> typedef unsigned long long uintptr_t;
>>>>>>=20
>>>>>> to atomic.hpp 'fixes' the build, but this is not a good solution =
;-)
>>>>>=20
>>>>> It needs to be checked against normal Poky to ensure it is BSP
>>>>> specific; I doubt it is.
>>>=20
>>> See
>>> =
http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/09133=
1.html
>>=20
>> in above thread answering to your question if you want to include =
<cstblib> you need to specify
>> -std=3Dgnu++0x or -std=3Dc++0x to cppflags. above container is not =
supported prior to c++0x standard
>>=20
>>=20
>>>=20
>>> But maybe it wasn't caused by eglibc upgrade (and header cleanup in
>>> eglibc) but by boost upgrade.
>>>=20
>>> --
>>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




