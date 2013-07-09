Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE5A3E013B0
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 13:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=Cgv7cCawYgvYG9+Rol8FrtG6Ifrs2Ga0avr8DOWr5ik=; 
	b=EI7o9LAvJkaiBRhYQPYyak9ljaeZCn9Mp7iAa6IWRIKfowuiF9WnWSFE1I5DNMLFz7WGioy3EdYA2Nb+ojRXMJlLrDs2bokhCN6GHR4FCJ7omnHVLy1Cl1RadD2xmw27rhufyFlHfsmAvGbWsrqtPLUu8wTaYPTW+sIb3baVnAA=;
Received: from [109.224.129.17] (port=59569
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UweTc-003bzN-4l; Tue, 09 Jul 2013 21:25:32 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
Date: Tue, 9 Jul 2013 21:25:30 +0100
Message-Id: <38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
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
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 09 Jul 2013 20:25:33 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Forwarding to Yocto mailing list:

On 9 Jul 2013, at 21:21, Otavio Salvador wrote:

> On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>>=20
>> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
>>=20
>>> I'm getting a failure in do_compile when building boost_1.54.0 using =
master-next for the wandboard-quad.
>>>=20
>>> The log is about 1.5MB, but the important bit seems to be that =
uintptr_t isn't defined but is required by /boost/atomic/atomic.hpp.
>>>=20
>>> Has anyone seen this before?
>>=20
>> I also meant to say that adding:
>>=20
>> typedef unsigned long long uintptr_t;
>>=20
>> to atomic.hpp 'fixes' the build, but this is not a good solution ;-)
>=20
> It needs to be checked against normal Poky to ensure it is BSP
> specific; I doubt it is.
>=20
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://projetos.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

Chris Tapp

opensource@keylevel.com
www.keylevel.com




