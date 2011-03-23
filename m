Return-Path: <madison@cisco.com>
Received: from sj-iport-1.cisco.com (sj-iport-1.cisco.com [171.71.176.70])
	by mx1.pokylinux.org (Postfix) with ESMTP id 998A24C80479
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2011 14:36:55 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=madison@cisco.com;
	x-dkim-adsp=none (insecure policy)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=madison@cisco.com; l=7584; q=dns/txt;
	s=iport; t=1300909015; x=1302118615;
	h=date:subject:from:to:cc:message-id:in-reply-to: mime-version;
	bh=i9wNsFtJ55LvoHC3OwbN2C/diagDdkgZoe8nEXUUv9U=;
	b=TvtkathNAudlZYUGcvmIMEj87JcqpQRflm7i/uifwGKRqcq/K3z5X/7v
	Ynqbam+sINVE4bwD9pkCbln9NXKLSozY5x90PVrqSNjhV7Kd0LEPkrTzk
	Mij7BoERMWrh7VkE75xvmZjWQHR0DAVHSZkQ69JLycgOXsqPC321o1kKO Y=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: At8AAPfoiU2rRDoG/2dsb2JhbACCYJUsjGBZd4hNnjecLIMPgloEhTeGGYEfg1g
X-IronPort-AV: E=Sophos;i="4.63,233,1299456000"; 
	d="scan'208,217";a="417468429"
Received: from mtv-core-1.cisco.com ([171.68.58.6])
	by sj-iport-1.cisco.com with ESMTP; 23 Mar 2011 19:36:54 +0000
Received: from xbh-sjc-231.amer.cisco.com (xbh-sjc-231.cisco.com
	[128.107.191.100])
	by mtv-core-1.cisco.com (8.14.3/8.14.3) with ESMTP id p2NJasNB017953;
	Wed, 23 Mar 2011 19:36:54 GMT
Received: from xmb-sjc-217.amer.cisco.com ([171.70.151.175]) by
	xbh-sjc-231.amer.cisco.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 23 Mar 2011 12:36:54 -0700
Received: from 10.21.114.61 ([10.21.114.61]) by xmb-sjc-217.amer.cisco.com
	([171.70.151.175]) via Exchange Front-End Server
	email.cisco.com ([171.70.151.187]) with Microsoft Exchange
	Server HTTP-DAV ; Wed, 23 Mar 2011 19:36:53 +0000
User-Agent: Microsoft-Entourage/12.28.0.101117
Date: Wed, 23 Mar 2011 12:36:51 -0700
From: Matt Madison <madison@cisco.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	Mark Hatle <mark.hatle@windriver.com>
Message-ID: <C9AF99E3.4C050%madison@cisco.com>
Thread-Topic: [yocto] Older versions of Linux as build hosts?
Thread-Index: AcvosPeBWjAn0ceaTYWqBoK/lj6xagAAWnEQADfRtSk=
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC765074554D@orsmsx504.amr.corp.intel.com>
Mime-version: 1.0
X-OriginalArrivalTime: 23 Mar 2011 19:36:54.0466 (UTC)
	FILETIME=[AA2AEA20:01CBE991]
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
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
X-List-Received-Date: Wed, 23 Mar 2011 19:36:56 -0000
Content-type: multipart/alternative;
	boundary="B_3383728611_1768571"

--B_3383728611_1768571
Content-type: text/plain;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

I=B9ve posted some notes at https://wiki.yoctoproject.org/wiki/BuildingOnRHEL=
4
and will update further as I find more things to work around.

-Matt


On 3/22/11 10:00 AM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
wrote:

> Yes - the wiki is a great place for this type of information.  All the
> specifics for a particular build system and the steps you have to take to=
 make
> it work can be collected there.  Then from the Quick Start we can mention
> where to get support information for older versions.
>=20
> ScottR
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Mark Hatle
> Sent: Tuesday, March 22, 2011 9:48 AM
> To: Matt Madison
> Cc: Yocto Mailer
> Subject: Re: [yocto] Older versions of Linux as build hosts?
>=20
> On 3/22/11 11:40 AM, Matt Madison wrote:
>> > Hi,
>> >
>=20
> I have done builds with both RHEL 4 and RHEL 5.  Both on machines in whic=
h I
> do
> not have root access.
>=20
> For me I was able to simply provide an update python, some additional too=
ls
> and
> it worked.  (Note, I haven't tried it in the last 2 months though, so
> something
> may have broken since then.)
>=20
>> > I know the documentation mentions that you should be running a "reason=
ably
>> > current" Linux as your build host, but in my enterprise environment I'=
m
>> stuck
>> > with having to run fairly old versions, based on RHEL 4 and 5.  I've g=
ot
>> some
>> > patches that I've been maintaining so I can bootstrap Bernard builds o=
n
>> these
>> > systems.  Is there any interest in supporting older systems as build h=
osts?
>> Any
>> > thoughts on how far back "reasonably current" is going to be with each
>> Yocto
>> > release?  I'm trying to work with my IT group to upgrade a bit more
>> frequently,
>> > and for developer workstations, that might be possible, but I'm not su=
re
>> I'll be
>> > able to convince them to do that for servers in our data centers.
>> >
>> > Is anyone else having this kind of problem?
>=20
> I think this is a fairly typical problem.  In my experience it's usually
> easier
> to solve in a commercial space then pure open source.
>=20
> As for the question about interest, we're always interested in patches.  =
At a
> minimum, it would be nice to document what steps you had to do and what
> patches
> you may have had to apply in order to get "unsupported" functionality out=
 of
> the
> build environment.  The yocto wiki seems a fairly natural place for this.
>=20
> So please send what you have, or start an account on the Yocto Wiki and p=
ost
> it
> there.
>=20
> --Mark
>=20
>> > Thanks,
>> > -Matt
>> >
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20


--B_3383728611_1768571
Content-type: text/html;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

<HTML>
<HEAD>
<TITLE>Re: [yocto] Older versions of Linux as build hosts?</TITLE>
</HEAD>
<BODY>
<FONT FACE=3D"Calibri, Verdana, Helvetica, Arial"><SPAN STYLE=3D'font-size:10pt=
'>I&#8217;ve posted some notes at <a href=3D"https://wiki.yoctoproject.org/wik=
i/BuildingOnRHEL4">https://wiki.yoctoproject.org/wiki/BuildingOnRHEL4</a> an=
d will update further as I find more things to work around.<BR>
<BR>
-Matt<BR>
<BR>
<BR>
On 3/22/11 10:00 AM, &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"scott.m.ri=
fenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt; wrote:<BR>
<BR>
</SPAN></FONT><BLOCKQUOTE><FONT FACE=3D"Calibri, Verdana, Helvetica, Arial"><=
SPAN STYLE=3D'font-size:10pt'>Yes - the wiki is a great place for this type of=
 information. &nbsp;All the specifics for a particular build system and the =
steps you have to take to make it work can be collected there. &nbsp;Then fr=
om the Quick Start we can mention where to get support information for older=
 versions.<BR>
<BR>
ScottR<BR>
<BR>
-----Original Message-----<BR>
From: <a href=3D"yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.o=
rg</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces=
@yoctoproject.org</a>] On Behalf Of Mark Hatle<BR>
Sent: Tuesday, March 22, 2011 9:48 AM<BR>
To: Matt Madison<BR>
Cc: Yocto Mailer<BR>
Subject: Re: [yocto] Older versions of Linux as build hosts?<BR>
<BR>
On 3/22/11 11:40 AM, Matt Madison wrote:<BR>
&gt; Hi,<BR>
&gt;<BR>
<BR>
I have done builds with both RHEL 4 and RHEL 5. &nbsp;Both on machines in w=
hich I do<BR>
not have root access.<BR>
<BR>
For me I was able to simply provide an update python, some additional tools=
 and<BR>
it worked. &nbsp;(Note, I haven't tried it in the last 2 months though, so =
something<BR>
may have broken since then.)<BR>
<BR>
&gt; I know the documentation mentions that you should be running a &quot;r=
easonably<BR>
&gt; current&quot; Linux as your build host, but in my enterprise environme=
nt I'm stuck<BR>
&gt; with having to run fairly old versions, based on RHEL 4 and 5. &nbsp;I=
've got some<BR>
&gt; patches that I've been maintaining so I can bootstrap Bernard builds o=
n these<BR>
&gt; systems. &nbsp;Is there any interest in supporting older systems as bu=
ild hosts? &nbsp;Any<BR>
&gt; thoughts on how far back &quot;reasonably current&quot; is going to be=
 with each Yocto<BR>
&gt; release? &nbsp;I'm trying to work with my IT group to upgrade a bit mo=
re frequently,<BR>
&gt; and for developer workstations, that might be possible, but I'm not su=
re I'll be<BR>
&gt; able to convince them to do that for servers in our data centers.<BR>
&gt;<BR>
&gt; Is anyone else having this kind of problem?<BR>
<BR>
I think this is a fairly typical problem. &nbsp;In my experience it's usual=
ly easier<BR>
to solve in a commercial space then pure open source.<BR>
<BR>
As for the question about interest, we're always interested in patches. &nb=
sp;At a<BR>
minimum, it would be nice to document what steps you had to do and what pat=
ches<BR>
you may have had to apply in order to get &quot;unsupported&quot; functiona=
lity out of the<BR>
build environment. &nbsp;The yocto wiki seems a fairly natural place for th=
is.<BR>
<BR>
So please send what you have, or start an account on the Yocto Wiki and pos=
t it<BR>
there.<BR>
<BR>
--Mark<BR>
<BR>
&gt; Thanks,<BR>
&gt; -Matt<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt; _______________________________________________<BR>
&gt; yocto mailing list<BR>
&gt; <a href=3D"yocto@yoctoproject.org">yocto@yoctoproject.org</a><BR>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.=
yoctoproject.org/listinfo/yocto</a><BR>
<BR>
_______________________________________________<BR>
yocto mailing list<BR>
<a href=3D"yocto@yoctoproject.org">yocto@yoctoproject.org</a><BR>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yocto=
project.org/listinfo/yocto</a><BR>
<BR>
</SPAN></FONT></BLOCKQUOTE>
</BODY>
</HTML>


--B_3383728611_1768571--
