Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web11.10130.1584618594229432333
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 04:49:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ftml.net header.s=fm3 header.b=RA7TM/fy;
 spf=pass (domain: ftml.net, ip: 66.111.4.29, mailfrom: fdk17@ftml.net)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 6F71A5C019C;
	Thu, 19 Mar 2020 07:49:53 -0400 (EDT)
Received: from imap7 ([10.202.2.57])
  by compute3.internal (MEProxy); Thu, 19 Mar 2020 07:49:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ftml.net; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=ZElMIDHuSytpniDjISXVRwpGIQAc/3c
	v/3rIkhiN2sg=; b=RA7TM/fyY0WW9B/sVuKzEaC2ZpktgjQSesNI9sjimUBMb86
	TAIYjdkAAd5XFsn4YJu4RJisaFRHC9/HrMB31jLoZlNQ0AkibKsUKie40Kj9CMcC
	x0K9fWCPFiJpYbvKx/JbtklLfOUJTCLNp7r1kBjrGsqyHaYBcCcNFDFeG92VFFcK
	NJBj1UML5n1rXx8U3uB52QHjl4EGRJXZSaQ8t5XhZpDd/Jn0+7z8dBZh6TUOBc4T
	cp+w98RVYSYsI+8TZBwz6WHnAX/X6tSozxs89Od4v6cC3+kX8O1eQ9qncw+N2WiI
	3xOwJdpO8qidLjhjyodPgUX/VqSpyPV8r+74FaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZElMID
	HuSytpniDjISXVRwpGIQAc/3cv/3rIkhiN2sg=; b=m+Pl6zzo9Eu89aKDiFPDL3
	O8cVtQf3wYTApzPrjnqe7fNG7epLznpb6ZoT3bbIZfkZs+9BBY+IFvEB4/2svQUj
	NGON3T8ZK4BUTRIrvhfU0U2m7B+oZfbyQgGTh3yjVqXn92p7C4voYhO+oh0A0QiS
	WXUvVk/XXCBXkIjUS5C1SKB3ZR+AbAAA3l1bfZjtgxQPYUkBnJFM8hLbHl7j411m
	RsJQCXsk+IbDxWt7J02F7oI3cabWzMsDVsZ7SVUo7seLepclc5wI2/U7URCfUIv7
	J2NP3gGBoZ0CA1+wo5O/HFEc35pfBGRPszyXrnPOA/ihCyH00X5lTjqxUpZfuGVw
	==
X-ME-Sender: <xms:YVxzXv2wWpW996ecdZvMprNi7DH36wX0VpWCeFeUB_xtg7mkY0KUfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefledgfeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfhrhgv
    ugcuuegrkhhsihhkfdcuoehfughkudejsehfthhmlhdrnhgvtheqnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepfhgukhdujeesfhhtmhhlrdhn
    vght
X-ME-Proxy: <xmx:YVxzXqcpveLLal_Igk9nW2kYXVybnAgHGK7kPYn3FNMH4-crkDR1TQ>
    <xmx:YVxzXkVXpvihiYQCe1VS1nGpLRoEII1dh7ZJmx20i8zXhGyjxfxVIg>
    <xmx:YVxzXi87DCL1bxLX6sPcVKQvIKwISqzC_CSK2WQ-nWh7sF5f12xBog>
    <xmx:YVxzXvfqb9yXgbM8ld6HDtr26Q0wRhKDuJz76zjk4y44YnsjZ_BHfA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 10F07180090; Thu, 19 Mar 2020 07:49:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-991-g5a577d3-fmstable-20200305v3
Mime-Version: 1.0
Message-Id: <ed84a470-075d-4359-b314-32ce9584730d@www.fastmail.com>
In-Reply-To: 
 <CADkTA4Mp5Z45cFhmG5-f+TAq36XgfBVDqfmw7LbgGjY-wNWxxA@mail.gmail.com>
References: 
 <CADkTA4OLBuB2ix32YaPkDOngJAoBkcgcA7x+mXSatKi1d3uaTg@mail.gmail.com>
 <13215.1584493649076752750@lists.yoctoproject.org>
 <CADkTA4O8v2HVqsMkCGkd72swXUZWCoJi4fvsyB0sGdRRTTcuQw@mail.gmail.com>
 <CADkTA4Mp5Z45cFhmG5-f+TAq36XgfBVDqfmw7LbgGjY-wNWxxA@mail.gmail.com>
Date: Thu, 19 Mar 2020 07:49:28 -0400
From: "Fred Baksik" <fdk17@ftml.net>
To: "Bruce Ashfield" <bruce.ashfield@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: Private: Re: [yocto] Excluding kernel configuration fragment
Content-Type: multipart/alternative;
 boundary=1751aae37d6a4785b635a0dd6b2a77e2

--1751aae37d6a4785b635a0dd6b2a77e2
Content-Type: text/plain

Hello,

I doesn't look like these last few emails made it to the mailing list.
I don't mind creating my own BSP but I thought it might be easier to tweak an existing one.

Thanks for your help.

On Wed, Mar 18, 2020, at 6:06 PM, Bruce Ashfield wrote:
> Hi Fred,
> 
> So I dug into this today, and as I suspected, there's currently not a
> great way to inhibit the warning easily (it's broken).
> 
> I'm going to re-work some things and fix this in master .. it's
> interesting that no one else has asked about this until now.
> 
> If you don't want to define your own BSP, my suggestion is to just
> inhibit the warning with the KCONF_AUDIT_LEVEL and
> KCONF_BSP_AUDIT_LEVEL variables. You know what you are doing with
> those warnings, so they can be safely masked.
> 
> Bruce
> 
> On Tue, Mar 17, 2020 at 10:22 PM Bruce Ashfield
> <bruce.ashfield@gmail.com> wrote:
> >
> > Thanks Fred,
> >
> > Let me fire up a build with this tomorrow and I'll follow up with the
> > best thing to do.
> >
> > Bruce
> >
> > On Tue, Mar 17, 2020 at 9:07 PM Fred Baksik <fdk17@ftml.net> wrote:
> > >
> > > What you are doing, is the right way to do things, unless you modify
> > > the source fragment directly.
> > >
> > > I used 'bitbake linux-intel -c menuconfig' and 'bitbake linux-intel -c diffconfig'. This generated a fragment that contained the single line:
> > >
> > > # CONFIG_SOUND is not set
> > >
> > > I added this fragment to my "recipes-kernel/linux/linux-intel_%.bbappend".
> > >
> > > Can you send me the exact layers/branches you are using, and I'll
> > > confirm the right thing to do with a local build.
> > >
> > > I'm using warrior 2.7.3 and MACHINE=intel-corei7-64
> > > poky
> > > meta-intel
> > > meta-openembedded
> > >
> > > It was easy enough to remove items, like alsa, from DISTRO_FEATURES to remove the features I wouldn't need.
> > > I had wanted to remove the items, like audio support, from an existing machine instead of creating one from scratch.
> > >
> > > Thanks,
> > > Fred
> 


--1751aae37d6a4785b635a0dd6b2a77e2
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hello,<br></div=
><div><br></div><div>I doesn't look like these last few emails made it t=
o the mailing list.<br></div><div>I don't mind creating my own BSP but I=
 thought it might be easier to tweak an existing one.<br></div><div><br>=
</div><div>Thanks for your help.<br></div><div><br></div><div>On Wed, Ma=
r 18, 2020, at 6:06 PM, Bruce Ashfield wrote:<br></div><blockquote type=3D=
"cite" id=3D"qt"><div>Hi Fred,<br></div><div><br></div><div>So I dug int=
o this today, and as I suspected, there's currently not a<br></div><div>=
great way to inhibit the warning easily (it's broken).<br></div><div><br=
></div><div>I'm going to re-work some things and fix this in master .. i=
t's<br></div><div>interesting that no one else has asked about this unti=
l now.<br></div><div><br></div><div>If you don't want to define your own=
 BSP, my suggestion is to just<br></div><div>inhibit the warning with th=
e KCONF_AUDIT_LEVEL and<br></div><div>KCONF_BSP_AUDIT_LEVEL variables. Y=
ou know what you are doing with<br></div><div>those warnings, so they ca=
n be safely masked.<br></div><div><br></div><div>Bruce<br></div><div><br=
></div><div>On Tue, Mar 17, 2020 at 10:22 PM Bruce Ashfield<br></div><di=
v>&lt;bruce.ashfield@gmail.com&gt; wrote:<br></div><div>&gt;<br></div><d=
iv>&gt; Thanks Fred,<br></div><div>&gt;<br></div><div>&gt; Let me fire u=
p a build with this tomorrow and I'll follow up with the<br></div><div>&=
gt; best thing to do.<br></div><div>&gt;<br></div><div>&gt; Bruce<br></d=
iv><div>&gt;<br></div><div>&gt; On Tue, Mar 17, 2020 at 9:07 PM Fred Bak=
sik &lt;fdk17@ftml.net&gt; wrote:<br></div><div>&gt; &gt;<br></div><div>=
&gt; &gt; What you are doing, is the right way to do things, unless you =
modify<br></div><div>&gt; &gt; the source fragment directly.<br></div><d=
iv>&gt; &gt;<br></div><div>&gt; &gt; I used 'bitbake linux-intel -c menu=
config' and 'bitbake linux-intel -c diffconfig'.&nbsp; This generated a =
fragment that contained the single line:<br></div><div>&gt; &gt;<br></di=
v><div>&gt; &gt; # CONFIG_SOUND is not set<br></div><div>&gt; &gt;<br></=
div><div>&gt; &gt; I added this fragment to my "recipes-kernel/linux/lin=
ux-intel_%.bbappend".<br></div><div>&gt; &gt;<br></div><div>&gt; &gt; Ca=
n you send me the exact layers/branches you are using, and I'll<br></div=
><div>&gt; &gt; confirm the right thing to do with a local build.<br></d=
iv><div>&gt; &gt;<br></div><div>&gt; &gt; I'm using warrior 2.7.3 and MA=
CHINE=3Dintel-corei7-64<br></div><div>&gt; &gt; poky<br></div><div>&gt; =
&gt; meta-intel<br></div><div>&gt; &gt; meta-openembedded<br></div><div>=
&gt; &gt;<br></div><div>&gt; &gt; It was easy enough to remove items, li=
ke alsa, from DISTRO_FEATURES to remove the features I wouldn't need.<br=
></div><div>&gt; &gt; I had wanted to remove the items, like audio suppo=
rt, from an existing machine instead of creating one from scratch.<br></=
div><div>&gt; &gt;<br></div><div>&gt; &gt; Thanks,<br></div><div>&gt; &g=
t; Fred<br></div><div><br></div></blockquote><div><br></div><div><br></d=
iv></body></html>

--1751aae37d6a4785b635a0dd6b2a77e2--
