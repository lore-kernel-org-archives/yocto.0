Return-Path: <sean_liming@sjjmicro.com>
Received: from mail16c40.carrierzone.com (mail16c40.carrierzone.com
	[209.235.156.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08C9E0044D
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 11:40:44 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q18JeeEW003709
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Feb 2012 19:40:42 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: "'autif khan'" <autif.mlist@gmail.com>
References: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>	<CADzUK1+Mi4E3RD7JcFOgNevUmcW6MT98JWoVdde8X5m2xjuEHg@mail.gmail.com>	<000a01cce628$a16df500$e449df00$@sjjmicro.com>
	<CADzUK1Ldn81UN8=BUf309k604eLeLpkpKneu7T9eOdA7dH9Jzg@mail.gmail.com>
In-Reply-To: <CADzUK1Ldn81UN8=BUf309k604eLeLpkpKneu7T9eOdA7dH9Jzg@mail.gmail.com>
Date: Wed, 8 Feb 2012 11:40:36 -0800
Message-ID: <000601cce699$8883b720$998b2560$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQExyGw5XD3JtqDlNpdwZeYfLpwMfwHyvKA+AnECPQkBeCjuOpc6vG/A
X-Antivirus: avast! (VPS 120208-0, 02/08/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=EvEsscukRmgjQswahipJwS9n8HJRqjMP/c15HL5NnPc= c=1 sm=1
	a=T1hEzmPChW8A:10 a=aJh391NtreIA:10 a=8nJEP1OIZ-IA:10
	a=z5g8Jwv4kxix1x/21EjHVg==:17 a=sMdtBdNNw4iNQauMj_QA:9 a=wPNLvfGTeEIA:10
	a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020208.4F32CFBA.00DB,ss=1,re=0.000,fgs=0
Cc: yocto@yoctoproject.org
Subject: Re: Building your own UI
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
X-List-Received-Date: Wed, 08 Feb 2012 19:40:45 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us


>>> This may be a dumb question, but I'll ask anyway.
>>
>>> Suppose you have a project where you need a very custom user=20
>>> interface. Not just a series of applications that appear on a=20
>>> desktop like you see in sato, or Gnome, or KDE.=A0 Basically your=20
>>> application
> becomes the UI.
>>
>>> I can see 2 approaches=A0to this:
>>
>>> Start with core-image-minimal and add the packages you need to=20
>>> support GFX, X11, and your application plus dependencies.
>>> Take core-image-sato and change the applications to be your subtasks =

>>> , and the look-and-feel of the desktop.
>>
>>> What are the considerations of both approaches?
>> >Is one better, or easier=A0than the other?
>> >How would you do this in Yocto?
>>> Where do you look for information you need to accomplish this?
>
>>We are still in the very early stages of architecture design and
>> development
>
>>For now we are leaning towards keeping everything that comes with
> >core-image-sato and writing a full screen app on top of it. Likely to =

> >be written in .NET (mono). A prototype (proof of concept) has been=20
> >successfully developed :-)
>
>>As I said - still in very early stages of arch/design and dev. So=20
>>things
> >may still change.
>
>
> >If it is okay to jump in an comment, I was going to ask the same=20
> >question at some point.
>
> >The need to have the application as the main UI or shell to the =
system=20
> >is important for branding. Launching sato or other desktop would not=20
>> be desirable. As an example, Windows uses Explorer.exe as the shell,=20
>> but can be replaced with any application. Windows was architected =
this=20
>> way. It would be nice to have similar architecture here, but I know =
it=20
> >is easier said than done. As you said this is early in design.

>We do have a lot of open questions that we will answer in good time:

>1) Should the application be executed as root or as some user or as =
nobody

>2) Should we trim the image? (we are not short on space or ram)

>3) Aforementioned - should the app run from inittab or rcS.d or =
something
else

>We will figure out these things when we are on that bridge.

>I do have a question - you have provided the example of Windows - where
explorer is the shell and can be changed. However, there is no argument =
here
- what are >the clear (no brainer) or subjective arguments for one =
versus
the other.

There are two reasons or user models: security and branding.

Using the Windows example. A system boots to Explorer desktop and then
launches an application. If someone can close the application and get to =
the
desktop, it is a security vulnerability someone could get into all sorts =
of
data and control panel settings.  By switching the application as the =
shell
(replacing explorer.exe) where the OEM has created a unique UI for the
device, it locks the system down. The custom shell can also provide =
controls
or back door access for administrative functions like display and =
network
settings. For Windows the devices boots to the Administrator account so =
the
application is not impeded from the system.

A custom UI helps with branding by creating a unique UI, the device has =
a
unique look and feel that tells the user this is a device and they have =
no
idea what is underneath. Launching Explorer and then the application =
doesn't
create the unique device look and feel.

Another method that OEMs do with Windows is to have a base shell =
launches
the main application. Again, the base shell replaces the  Explorer.exe =
with
something that is unique for the devices. If the main application needs =
to
be replaced, the main application can be shut down and the base shell =
still
provides some UI to perform the upgrade.

I am new to Linux embedded so I don't know how this would be =
architected.





