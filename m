Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BF04E00CD2; Wed, 30 Dec 2015 11:10:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3D64E0033E
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 11:10:19 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id mw1so55489225igb.1
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 11:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=IaxJnOL8+qt8IMPiO1Qb+EWGiiyTVFVLtKfUxESaUvI=;
	b=nZOMGDXMUSllWu2307iw5FUwZoCDpLFb0MVh+2xQK44ldss7gw2BZUidnbdOhbN6xV
	VdynRh/j3cFIwbIFr/Ri6ryRK9ECzi6gEOBSTxPfjSIA1X2fSjHflMELpxv9w7mmI5J+
	rJh8oyw7msllMmmQSfQ+q8VBofu5d2RePue3/OCb1Lvvs+jo8Qau+ROCuTA+QbSISgEK
	OCMhMg07IHCX5xaH0DCgPJuwPyZLW/nG1ybqD1XO29fpGjQZyDgQzt0kCKFli8+zUjkg
	y/QRivAeC5OrvdJtsEl1z1gkyF/JMNhQ6jXlngXw1TrgGE1gBsBMTc136od8IXVGal9X
	ke9w==
X-Received: by 10.50.136.226 with SMTP id qd2mr64837503igb.37.1451502619198;
	Wed, 30 Dec 2015 11:10:19 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
	<CAMKF1srrsm9YVJvaZi1Z38X0LQYvuwVFoHeJNrYwDs0mJN1PcA@mail.gmail.com>
	<CAFzUWGm2Np9EWeAMgyt+bR4bEkU0A8+3BiXHAosxOnAvPXpf6A@mail.gmail.com>
	<CAMKF1so4qVAcmcMThx7n7vxdVkY4pEZ5mJXwcWhVwKV-eTQPLA@mail.gmail.com>
	<CAFzUWGn5zpLzH3QrUMxHD49G0RG+0Mor=demKXfNSyEc-ktOBw@mail.gmail.com>
	<CAMKF1sq1JkXLAYkbu+y_ZNPWrtJp4SQFH5bPW8uH+BNUBGKbsw@mail.gmail.com>
	<CAFzUWGm6qK6-hGJVdZ3e_ZkDWg81YODuh9g4J4GmhCJCO9Y8MQ@mail.gmail.com>
In-Reply-To: <CAFzUWGm6qK6-hGJVdZ3e_ZkDWg81YODuh9g4J4GmhCJCO9Y8MQ@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 30 Dec 2015 19:10:09 +0000
Message-ID: <CAFzUWG=F-U-4hJBG=D-tbP4YOLkZVCbv0iyVY6-MiRt6+jkumQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add a recipe for ROOT
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
X-List-Received-Date: Wed, 30 Dec 2015 19:10:23 -0000
Content-Type: multipart/alternative; boundary=089e013cba04020db00528224ab0

--089e013cba04020db00528224ab0
Content-Type: text/plain; charset=UTF-8

Actually -- if you look here -- I'm already using pkg-config?

https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb#L9

Is there something wrong with the configuration then?

On Wed, Dec 30, 2015 at 2:07 PM Giordon Stark <kratsg@gmail.com> wrote:

> I'm unable to disable the internal build. I'm working on the pkg-config
> however.
>
> On Wed, Dec 30, 2015 at 1:34 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Wed, Dec 30, 2015 at 10:27 AM, Giordon Stark <kratsg@gmail.com> wrote:
>> > I'll look at pkg-config examples. How do I fix the llvm issue though? I
>> > don't know enough about bitbake to fix that.
>>
>> disable, internal build _somehow_
>> then add DEPENDS += "llvm3" to recipe
>> >
>> > Giordon
>> >
>> > On Wed, Dec 30, 2015 at 1:26 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> you mostly have one of these issues
>> >>
>> >> | ERROR:
>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> >> should not be used, use an alternative such as pkg-config
>> >> | ERROR:
>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> >> should not be used, use an alternative such as pkg-config
>> >> | ERROR:
>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> >> should not be used, use an alternative such as pkg-config
>> >> | ERROR:
>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>> >> should not be used, use an alternative such as pkg-config
>> >>
>> >> so you need to replace the use of pcre-config with pkg-config, there
>> >> are example how it has been done for some other recipes in OE
>> >>
>> >> second problem seems to be that its trying to compile its own version
>> >> of llvm and thats failing because the native compiler its finding does
>> >> not support c++11 or atleast the config tests think that way. Again
>> >> this components build system needs to fix that. You might be better
>> >> off using llvm provided bt meta-oe instead of internal version.
>> >>
>> >> On Wed, Dec 30, 2015 at 9:35 AM, Giordon Stark <kratsg@gmail.com>
>> wrote:
>> >> > https://gist.github.com/anonymous/adec2839deecce33702a
>> >> >
>> >> > Giordon
>> >> >
>> >> > On Wed, Dec 23, 2015 at 9:25 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >> >>
>> >> >> can you post output of
>> root/6.04.12-r0/build/CMakeFiles/CMakeError.log
>> >> >>
>> >> >> On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark <kratsg@gmail.com>
>> >> >> wrote:
>> >> >> > Hi all,
>> >> >> >
>> >> >> > I'm trying to add a recipe for ROOT (from CERN) but I'm running
>> into
>> >> >> > various
>> >> >> > issues with just trying to get compilers working.
>> >> >> >
>> >> >> > Current recipe:
>> >> >> >
>> >> >> >
>> >> >> >
>> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
>> >> >> >
>> >> >> > Current log: https://gist.github.com/kratsg/cd3184a167676eb69067
>> >> >> >
>> >> >> > Note that the goal is to have the bare-minimum with PyROOT (enable
>> >> >> > python
>> >> >> > support). So I'm following:
>> >> >> > - https://root.cern.ch/building-root
>> >> >> > - https://root.cern.ch/build-prerequisites
>> >> >> >
>> >> >> > Thanks,
>> >> >> >
>> >> >> > Giordon
>> >> >> >
>> >> >> > --
>> >> >> > _______________________________________________
>> >> >> > yocto mailing list
>> >> >> > yocto@yoctoproject.org
>> >> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >> >
>>
>

--089e013cba04020db00528224ab0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Actually -- if you look here -- I&#39;m already using pkg-=
config?=C2=A0<div><br></div><div><a href=3D"https://github.com/kratsg/meta-=
l1calo/blob/master/recipes-core/root/root_6.04.12.bb#L9">https://github.com=
/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb#L9</a><br=
></div><div><br></div><div>Is there something wrong with the configuration =
then?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, De=
c 30, 2015 at 2:07 PM Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail.com"=
>kratsg@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr">I&#39;m unable to disable the internal build. I&#39;m workin=
g on the pkg-config however.</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Wed, Dec 30, 2015 at 1:34 PM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">On Wed, Dec 30, 2015 at 10:27 AM, Giordon=
 Stark &lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gma=
il.com</a>&gt; wrote:<br>
&gt; I&#39;ll look at pkg-config examples. How do I fix the llvm issue thou=
gh? I<br>
&gt; don&#39;t know enough about bitbake to fix that.<br>
<br>
disable, internal build _somehow_<br>
then add DEPENDS +=3D &quot;llvm3&quot; to recipe<br>
&gt;<br>
&gt; Giordon<br>
&gt;<br>
&gt; On Wed, Dec 30, 2015 at 1:26 PM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; you mostly have one of these issues<br>
&gt;&gt;<br>
&gt;&gt; | ERROR:<br>
&gt;&gt; /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-conf=
ig<br>
&gt;&gt; should not be used, use an alternative such as pkg-config<br>
&gt;&gt; | ERROR:<br>
&gt;&gt; /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-conf=
ig<br>
&gt;&gt; should not be used, use an alternative such as pkg-config<br>
&gt;&gt; | ERROR:<br>
&gt;&gt; /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-conf=
ig<br>
&gt;&gt; should not be used, use an alternative such as pkg-config<br>
&gt;&gt; | ERROR:<br>
&gt;&gt; /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-conf=
ig<br>
&gt;&gt; should not be used, use an alternative such as pkg-config<br>
&gt;&gt;<br>
&gt;&gt; so you need to replace the use of pcre-config with pkg-config, the=
re<br>
&gt;&gt; are example how it has been done for some other recipes in OE<br>
&gt;&gt;<br>
&gt;&gt; second problem seems to be that its trying to compile its own vers=
ion<br>
&gt;&gt; of llvm and thats failing because the native compiler its finding =
does<br>
&gt;&gt; not support c++11 or atleast the config tests think that way. Agai=
n<br>
&gt;&gt; this components build system needs to fix that. You might be bette=
r<br>
&gt;&gt; off using llvm provided bt meta-oe instead of internal version.<br=
>
&gt;&gt;<br>
&gt;&gt; On Wed, Dec 30, 2015 at 9:35 AM, Giordon Stark &lt;<a href=3D"mail=
to:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; <a href=3D"https://gist.github.com/anonymous/adec2839deecce33=
702a" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/anonymou=
s/adec2839deecce33702a</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Giordon<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Dec 23, 2015 at 9:25 PM Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; can you post output of root/6.04.12-r0/build/CMakeFiles/C=
MakeError.log<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark &lt;<a hre=
f=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt;<br=
>
&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I&#39;m trying to add a recipe for ROOT (from CERN) =
but I&#39;m running into<br>
&gt;&gt; &gt;&gt; &gt; various<br>
&gt;&gt; &gt;&gt; &gt; issues with just trying to get compilers working.<br=
>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Current recipe:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://github.com/kratsg/meta-l1calo/blo=
b/master/recipes-core/root/root_6.04.12.bb" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/r=
oot_6.04.12.bb</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Current log: <a href=3D"https://gist.github.com/krat=
sg/cd3184a167676eb69067" rel=3D"noreferrer" target=3D"_blank">https://gist.=
github.com/kratsg/cd3184a167676eb69067</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Note that the goal is to have the bare-minimum with =
PyROOT (enable<br>
&gt;&gt; &gt;&gt; &gt; python<br>
&gt;&gt; &gt;&gt; &gt; support). So I&#39;m following:<br>
&gt;&gt; &gt;&gt; &gt; - <a href=3D"https://root.cern.ch/building-root" rel=
=3D"noreferrer" target=3D"_blank">https://root.cern.ch/building-root</a><br=
>
&gt;&gt; &gt;&gt; &gt; - <a href=3D"https://root.cern.ch/build-prerequisite=
s" rel=3D"noreferrer" target=3D"_blank">https://root.cern.ch/build-prerequi=
sites</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Giordon<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/l=
istinfo/yocto</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
</blockquote></div></blockquote></div>

--089e013cba04020db00528224ab0--
