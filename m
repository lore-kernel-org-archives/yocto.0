Return-Path: <evadeflow@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 443F0E00348
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 07:52:09 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so1133597iea.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 07:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Efz05VHywzbIumHJjtYtw+tF7d8r/DHawHgtIu6BV8o=;
	b=mo7JL1g4W3A19K3k2M2l6tRbDonXzPWE8PZcTYG3y/hf1HDSBEKGmirqEXLqrF6Jar
	UMjnJOMv8KV+Ge5GHbK0fEq8+fK+ZLZ2shlmgLCurSM8dHxmn1wmzjTo7FcEe68I7iq3
	ob64tZ9LKFj9sr6fOvOwB54W5mTF690q6x/j5+XyRVkUbcRv3lXCFgaG5kSkUoGIU3KW
	/+HShNc0E4fdwGODWLPLrfRP0SPndgabUI/JjbuacI2LQw3OipfUs88qa10JTT6SHsUT
	4fbCGTQYw+aAbg10whNngNzaUise5tKG8MdNjIKZQlq3uLB8Y15E5SyyCCiwjNY9ODSC
	6JBA==
MIME-Version: 1.0
Received: by 10.50.150.176 with SMTP id uj16mr5561513igb.38.1349880728741;
	Wed, 10 Oct 2012 07:52:08 -0700 (PDT)
Received: by 10.42.179.68 with HTTP; Wed, 10 Oct 2012 07:52:08 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B0D4B4@ORSMSX101.amr.corp.intel.com>
References: <CAMAb8ZO+56YJbrf8LAjbt1eS=GpSgmYr0=MSvx020K=1xwduWw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B0D4B4@ORSMSX101.amr.corp.intel.com>
Date: Wed, 10 Oct 2012 10:52:08 -0400
Message-ID: <CAMAb8ZNqpSF57v84E3-s=w6wK8e2Ewj_BQw+CMPyW6dfTdBikw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Control which host components are included in ADT output?
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
X-List-Received-Date: Wed, 10 Oct 2012 14:52:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> Seems you're more interested in generate a SDK for host?

I wouldn't say 'more' interested, just... interested. I guess this is a
general QA issue. We have components implementing state machines that
only communicate via sockets, for example, and don't talk directly to
hardware; these can be prototyped and tested on a Desktop Linux system.
We have Qt apps that can run either on the target or the host. In
general, we've been finding ways to get work done even without target
hardware, since boards are scarce and tend to 'walk off' when you're not
looking.

Unfortunately, each developer on our team seems to do this in a slightly
different way. We're 'supposed' to be using Ubuntu 12.04, but one guy
uses Ubuntu 12.10, another uses 10.04 because he despises Unity so much,
and another prefers Linux Mint. And each goes through a different
process of typing 'apt-get install' and manually building missing
dependencies until he's able to compile applications on his host system.

This isn't the best situation, but so far it hasn't caused any major
headaches. The 'ground truth' for the health of the project is based on
how apps behave on the target, and apps compiled for the target are
ALWAYS built using the same toolchain and libs. Apps compiled for the
host are just a convenience for prototyping and testing.

Still, it worries me that each developer is making lots of little
decisions every day based on feedback from applications compiled for his
host using a process that is essentially uncontrolled and variable.  It
seems I could remove most of the variation by including all required
host-side headers and libraries in the same tarball that supplies the
target SDK.

When I saw these two subdirectories in /opt/poky/1.2.1/sysroots:

  - armv5te-poky-linux-gnueabi/usr/lib
  - i686-pokysdk-linux/usr/lib

I got the impression that the Yocto ADT could be used to create a
complete host SDK as well as a target SDK, but it appears I was
mistaken?

Do other people have this same 'problem'? What's a good solution? Or...
is it not worth worrying about?


On Wed, Oct 10, 2012 at 2:14 AM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
> Hi Evade,
>
> The main purpose of Yocto ADT is for setting up a development environment=
 on your host which allows you to cross develop applications for your targe=
t.  And there're two key components help you to achieve this: cross-toolcha=
in and sysroot. That's why the sysroot provides you a collection of target =
libs and all the main focus of ADT manual is for how to customize your sysr=
oot to meet your special development needs.
>
> Seems you're more interested in generate a SDK for host?
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Evade Flow
> Sent: Tuesday, October 09, 2012 3:11 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Control which host components are included in ADT output=
?
>
> I have a question about the ADT and how it selects host SDK components.
> If I type:
>
> % bitbake meta-toolchain-sdk
>
> I wind up getting hundreds of target libs when I extract the generated
> tarball:
>
> % pwd
> /opt/poky/1.2.1/sysroots
> % ls armv5te-poky-linux-gnueabi/usr/lib | wc -l
> 696
>
> but a relatively small number of host libs:
>
> % ls i686-pokysdk-linux/usr/lib | wc -l
> 53
>
> Is this normal? Taking libxml2 as an example:
>
> % ls -1 armv5te-poky-linux-gnueabi/usr/lib/libxml*
> armv5te-poky-linux-gnueabi/usr/lib/libxml2.la
> armv5te-poky-linux-gnueabi/usr/lib/libxml2.so
> armv5te-poky-linux-gnueabi/usr/lib/libxml2.so.2
> armv5te-poky-linux-gnueabi/usr/lib/libxml2.so.2.7.8
> % ls -1 i686-pokysdk-linux/usr/lib/libxml*
> zsh: no matches found: i686-pokysdk-linux/usr/lib/libxml*
>
> It seems desirable to have libxml2 be part of the SDK I give to my develo=
pment team. We have a lot of test applications that can be run on the host,=
 and I don't like the thought of somebody wasting time chasing a bug that t=
urns out to be due to the fact that he is linking against a different (syst=
em-installed) version of libxml2 rather than the target version.
>
> Skimming the ADT manual, this section seems to hint at a solution:
>
>  - http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#ad=
t-package
>
> But I can't quite follow all the steps. :-% It says (using libglade as an=
 example):
>
>   First, you should generate the ipk file for the libglade package and
>   add it into a working opkg repository. Use these commands:
>
>     $ bitbake libglade
>     $ bitbake package-index
>
>
> Being totally new to opkg, this lost me. What does the 'package-index'
> target actually do?  Does bitbake "add it [libglade] into a working opkg =
repository" for me, or am I supposed to take the output of the command and =
do something with it? I had a look in these two locations for 'package-inde=
x' and came up empty:
>
>  - http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
>  - http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manu=
al.html
>
> What's the best place to look for these kinds of references when I get st=
uck on something?
>
> The ADT docs go on to say:
>
>   Next, source the environment setup script found in the Yocto Project
>   files. Follow that by setting up the installation destination to point
>   to your sysroot as <sysroot_dir>. Finally, have an OPKG configuration
>   file <conf_file> that corresponds to the opkg repository you have just
>   created.
>
>      $ opkg-cl -f <conf_file> -o <sysroot_dir> update
>      $ opkg-cl -f <cconf_file> -o <sysroot_dir> \
>         --force-overwrite install libglade
>      $ opkg-cl -f <cconf_file> -o <sysroot_dir> \
>         --force-overwrite install libglade-dbg
>      $ opkg-cl -f <conf_file> -o <sysroot_dir> \
>         --force-overwrite install libglade-dev
>
> <sysroot_dir> I understand, but what is <conf_file>? Did bitbake generate=
 this for me? Am I supposed to create one by hand? Where? These instruction=
s are a little hard to follow due to the use of placeholders rather than co=
ncrete arguments. I think a complete, explicit example would help a lot her=
e.
>
> Also, it seems likely that the above commands would only install a libgla=
de compiled for the target? How would I generate a libglade for the host?
>
> Another question is: is there a way to tune the ADT tarball to be a bette=
r fit for my needs so that I don't need to add so many packages by hand aft=
er-the-fact?
>
> Any advice much appreciated, thanks!
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

