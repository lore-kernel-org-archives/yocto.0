Return-Path: <jkridner@beagleboard.org>
Received: from mail-gx0-f174.google.com (mail-gx0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F5A5E0075D
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 05:41:31 -0700 (PDT)
Received: by gxk21 with SMTP id 21so5987526gxk.33
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2011 05:41:30 -0700 (PDT)
Received: by 10.236.128.177 with SMTP id f37mr31442989yhi.116.1315399290472;
	Wed, 07 Sep 2011 05:41:30 -0700 (PDT)
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx.google.com with ESMTPS id c62sm3239852yhj.25.2011.09.07.05.41.28
	(version=SSLv3 cipher=OTHER); Wed, 07 Sep 2011 05:41:28 -0700 (PDT)
Received: by ywb26 with SMTP id 26so164156ywb.35
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2011 05:41:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.150.113.13 with SMTP id l13mr4761884ybc.335.1315399287881;
	Wed, 07 Sep 2011 05:41:27 -0700 (PDT)
Received: by 10.151.112.21 with HTTP; Wed, 7 Sep 2011 05:41:27 -0700 (PDT)
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A652@orsmsx501.amr.corp.intel.com>
References: <CAHrDPkrjfG7A-78tkL1qmaBRab7=tbNKqooqjQ5Aw_ednMD9cg@mail.gmail.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A652@orsmsx501.amr.corp.intel.com>
Date: Wed, 7 Sep 2011 08:41:27 -0400
Message-ID: <CA+T6QPmfbrMmWKP_-jamDxEvQjRwvd4vPxoouGpE2ZvvH2x13A@mail.gmail.com>
From: Jason Kridner <jkridner@beagleboard.org>
To: "Stewart, David C" <david.c.stewart@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Wed, 07 Sep 2011 12:41:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Isn't bitbake supposed to be smart enough to discover and use 'screen'
instead now?

On Tue, Sep 6, 2011 at 9:07 PM, Stewart, David C
<david.c.stewart@intel.com> wrote:
> Yeah, I ran into the same thing, Brian. Installing xterm is missing from =
the
> quickstart and the beta instructions. Sorry about that.
>
>
> Sent from my Blackberry
>
> From: Brian Duffy [mailto:brduffy@gmail.com]
> Sent: Tuesday, September 06, 2011 04:51 PM
> To: Osier-mixon, Jeffrey; yocto@yoctoproject.org <yocto@yoctoproject.org>
> Subject: Re: [yocto] Yocto 1.1 Beta Questions
>
> Okay, so it turns out that I had already downloaded what I needed with th=
e
> instructions from the latest blog post for the beta release. It specifica=
lly
> mentions certain command to replace from the quick start guide. So I went
> into the "oe-beta" directory and ran . ./oe-init-build-env ~/my-build and
> that set up my environment variables. When I ran bitbake core-image-minim=
al
> I got an error stating that xterm was not installed. That might be someth=
ing
> to include in the quick start section of things to install first. Anyway,=
 it
> seems to be happily building a minimal linux distro for the emulator to r=
un.
> I'll let you know if it works out.
> thnx
> Brian
>
> On Tue, Sep 6, 2011 at 3:28 PM, Osier-mixon, Jeffrey
> <jeffrey.osier-mixon@intel.com> wrote:
>>
>> One more thing - if you prefer a tarball to git (easier on some corporat=
e
>> networks) the process is the same, just un-tar the tarball into a workin=
g
>> directory and cd into the poky subdir and go from there. The tarball sho=
uld
>> be the latest stable release.
>>
>> On Tue, Sep 6, 2011 at 12:27 PM, Osier-mixon, Jeffrey
>> <jeffrey.osier-mixon@intel.com> wrote:
>>>
>>> Hi Brian, sorry for the delay.
>>> If you download the poky tarball or use git to grab it and then follow
>>> the instructions on the quick-start, the tools should build automatical=
ly.
>>> =A0In a nutshell, try this:
>>> git clone git://git.yoctoproject.org/poky.git
>>> cd poky
>>> . ./oe-core-build-env
>>> [that should put you into a build directory]
>>> vi conf/local.conf =A0[set at least MACHINE, instructions in the file]
>>> bitbake core-minimal
>>> I hope this helps! =A0I'm on IRC as Jefro or available by email, let me
>>> know if I can help at all.
>>>
>>> On Sat, Sep 3, 2011 at 5:52 PM, Brian Duffy <brduffy@gmail.com> wrote:
>>>>
>>>> Thanks for the input Jeff. I have not downloaded the tools yet. I'll
>>>> probably download the tarball since I don't have much experience with =
git.
>>>> I'll set the bbpath in local.conf and uninstall bitbake from the packa=
ge
>>>> manager before I do so. I guess building the tools will take care of b=
itbake
>>>> and pseudo. Any help with how to build the tools would be appreciated,=
 but
>>>> no hurry, enjoy the holiday!
>>>> thnx
>>>> Brian
>>>>
>>>> On Sat, Sep 3, 2011 at 5:50 PM, Osier-mixon, Jeffrey
>>>> <jeffrey.osier-mixon@intel.com> wrote:
>>>>>
>>>>> Hi Brian - both bitbake and pseudo are part of the Yocto toolset. The
>>>>> standard bitbake from the package manager on your host is not the cor=
rect
>>>>> one. Make sure you have set your environment properly by sourcing the
>>>>> build-env script, and it should be set correctly.
>>>>> As Jason says, set BBPATH in your project directory in conf/local.con=
f
>>>>> How did you download the tools, tarball or git? =A0I find it easiest =
to
>>>>> do this:
>>>>> git clone git://git.yoctoproject.org/poky.git
>>>>> Note that responses may be delayed on a US holiday weekend :)
>>>>> On Sat, Sep 3, 2011 at 1:48 PM, Jason Kridner
>>>>> <jkridner@beagleboard.org> wrote:
>>>>>>
>>>>>> On Sat, Sep 3, 2011 at 2:43 PM, Brian Duffy <brduffy@gmail.com> wrot=
e:
>>>>>> > Hi Yocto group. I am new to Yocto. I followed the starters guide a=
nd
>>>>>> > When
>>>>>> > running bitbake I get some errors. first it complains that pseudo =
is
>>>>>> > not
>>>>>> > available but required, and then it complains that bbpath is not
>>>>>> > set. What
>>>>>> > is pseudo?
>>>>>>
>>>>>> Google should have helped you with this question:
>>>>>> http://www.yoctoproject.org/projects/pseudo.
>>>>>>
>>>>>> I believe the primary purpose is to be able to create files with roo=
t
>>>>>> ownership without root access. =A0This is critical for building your
>>>>>> file system.
>>>>>>
>>>>>> > I have sudo installed and setup to work for me, but I don't know
>>>>>> > what pseudo is. Also, bitbake was not installed on my fresh instal=
l
>>>>>> > of
>>>>>> > Fedora 15 so I installed it through the package manager.
>>>>>>
>>>>>> I doubt you want to do that, but I don't see anything in the
>>>>>> instructions provided to tell you where to get it either.
>>>>>>
>>>>>> > I guess that was
>>>>>> > not included in the packages from the getting started guide. Where
>>>>>> > do I set
>>>>>> > the bbpath?
>>>>>>
>>>>>> Did you edit conf/local.conf?
>>>>>>
>>>>>> > I followed the getting started guide and replaced the
>>>>>> > appropriate commands with the ones from Davids blog post for the
>>>>>> > latest
>>>>>> > release.
>>>>>> >
>>>>>> > thnx
>>>>>> > Brian
>>>>>> > --
>>>>>> > Duff
>>>>>> >
>>>>>> > _______________________________________________
>>>>>> > yocto mailing list
>>>>>> > yocto@yoctoproject.org
>>>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>>>> >
>>>>>> >
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> Jeff Osier-Mixon=A0http://jefro.net/blog
>>>>> Yocto Project Community Manager @Intel=A0http://yoctoproject.org
>>>>
>>>>
>>>>
>>>> --
>>>> Duff
>>>
>>>
>>>
>>> --
>>> Jeff Osier-Mixon=A0http://jefro.net/blog
>>> Yocto Project Community Manager @Intel=A0http://yoctoproject.org
>>
>>
>>
>> --
>> Jeff Osier-Mixon=A0http://jefro.net/blog
>> Yocto Project Community Manager @Intel=A0http://yoctoproject.org
>
>
>
> --
> Duff
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

