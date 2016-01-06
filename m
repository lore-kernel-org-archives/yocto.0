Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3E91E00C8C; Wed,  6 Jan 2016 13:27:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0402E00BDA
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 13:27:43 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id h5so2517254igh.0
	for <yocto@yoctoproject.org>; Wed, 06 Jan 2016 13:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=GSDRFGnfBVEvtcfeC4H3/l6e21zD1EMnixd3Tu9+ss0=;
	b=brHVdHy0o6YpuqwPHBRM5ngvaO7IWqP0QQ0RvmJwwLJ6Rg388lLonQAx2An1gBlZ2J
	vHTc3TrHvlvY3vZhFJNIMqcTum5TYkpJIppqPB5f2JPR8xOSFU3lppOBgete6xK9+2yF
	6i5/hUxXFA9DWk5L7d2M/dVf3AD0XTKTTFJ05+Wy9NCwAWg/l8oJCv2/2jrZoPLsQ5Vb
	AmsFwsjXMGwubMeu0t9tcKxrp9onfba6Pgzww6RcRxy8PjukQmY4lDtBIzmMRpntcDnD
	Ld4oZV5W6SqeBAQlViqMLeeZjivZm832dhR6DIQU3AOB2oMZ7KkvGG/J+39Z5tw0BWki
	he1g==
X-Received: by 10.50.143.39 with SMTP id sb7mr2955429igb.37.1452115663033;
	Wed, 06 Jan 2016 13:27:43 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
	<CAMKF1srrsm9YVJvaZi1Z38X0LQYvuwVFoHeJNrYwDs0mJN1PcA@mail.gmail.com>
	<CAFzUWGm2Np9EWeAMgyt+bR4bEkU0A8+3BiXHAosxOnAvPXpf6A@mail.gmail.com>
	<CAMKF1so4qVAcmcMThx7n7vxdVkY4pEZ5mJXwcWhVwKV-eTQPLA@mail.gmail.com>
	<CAFzUWGn5zpLzH3QrUMxHD49G0RG+0Mor=demKXfNSyEc-ktOBw@mail.gmail.com>
	<CAMKF1sq1JkXLAYkbu+y_ZNPWrtJp4SQFH5bPW8uH+BNUBGKbsw@mail.gmail.com>
	<CAFzUWGm6qK6-hGJVdZ3e_ZkDWg81YODuh9g4J4GmhCJCO9Y8MQ@mail.gmail.com>
	<CAFzUWG=F-U-4hJBG=D-tbP4YOLkZVCbv0iyVY6-MiRt6+jkumQ@mail.gmail.com>
	<CAFzUWGkJ72WZ5mQ_HZmRQp_Brr5zR-Dp=DRhv6OmSZEYcp_Edg@mail.gmail.com>
In-Reply-To: <CAFzUWGkJ72WZ5mQ_HZmRQp_Brr5zR-Dp=DRhv6OmSZEYcp_Edg@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 06 Jan 2016 21:27:32 +0000
Message-ID: <CAFzUWGmOnxUsmx4XooSttzaXHXAvzVQbVUpD9r_wM=kCPUqEPA@mail.gmail.com>
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
X-List-Received-Date: Wed, 06 Jan 2016 21:27:47 -0000
Content-Type: multipart/alternative; boundary=001a1134b42c449dfd0528b1061f

--001a1134b42c449dfd0528b1061f
Content-Type: text/plain; charset=UTF-8

Ping - any updates on this? I've tried a lot of ways to fix it, but I can't
seem to get it to compile at all...

On Wed, Dec 30, 2015 at 3:28 PM Giordon Stark <kratsg@gmail.com> wrote:

> Here's an update set of logs:
>
> (output) https://gist.github.com/anonymous/56f904b65feeb3346db6
> (CMakeError.log) https://gist.github.com/anonymous/d5d766badcee1df5efc1
>
> for the current recipe here:
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
>
> On Wed, Dec 30, 2015 at 2:10 PM Giordon Stark <kratsg@gmail.com> wrote:
>
>> Actually -- if you look here -- I'm already using pkg-config?
>>
>>
>> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb#L9
>>
>> Is there something wrong with the configuration then?
>>
>> On Wed, Dec 30, 2015 at 2:07 PM Giordon Stark <kratsg@gmail.com> wrote:
>>
>>> I'm unable to disable the internal build. I'm working on the pkg-config
>>> however.
>>>
>>> On Wed, Dec 30, 2015 at 1:34 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>> On Wed, Dec 30, 2015 at 10:27 AM, Giordon Stark <kratsg@gmail.com>
>>>> wrote:
>>>> > I'll look at pkg-config examples. How do I fix the llvm issue though?
>>>> I
>>>> > don't know enough about bitbake to fix that.
>>>>
>>>> disable, internal build _somehow_
>>>> then add DEPENDS += "llvm3" to recipe
>>>> >
>>>> > Giordon
>>>> >
>>>> > On Wed, Dec 30, 2015 at 1:26 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>> >>
>>>> >> you mostly have one of these issues
>>>> >>
>>>> >> | ERROR:
>>>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>>>> >> should not be used, use an alternative such as pkg-config
>>>> >> | ERROR:
>>>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>>>> >> should not be used, use an alternative such as pkg-config
>>>> >> | ERROR:
>>>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>>>> >> should not be used, use an alternative such as pkg-config
>>>> >> | ERROR:
>>>> >> /home/osboxes/poky/build/tmp/sysroots/i686-linux/usr/bin/pcre-config
>>>> >> should not be used, use an alternative such as pkg-config
>>>> >>
>>>> >> so you need to replace the use of pcre-config with pkg-config, there
>>>> >> are example how it has been done for some other recipes in OE
>>>> >>
>>>> >> second problem seems to be that its trying to compile its own version
>>>> >> of llvm and thats failing because the native compiler its finding
>>>> does
>>>> >> not support c++11 or atleast the config tests think that way. Again
>>>> >> this components build system needs to fix that. You might be better
>>>> >> off using llvm provided bt meta-oe instead of internal version.
>>>> >>
>>>> >> On Wed, Dec 30, 2015 at 9:35 AM, Giordon Stark <kratsg@gmail.com>
>>>> wrote:
>>>> >> > https://gist.github.com/anonymous/adec2839deecce33702a
>>>> >> >
>>>> >> > Giordon
>>>> >> >
>>>> >> > On Wed, Dec 23, 2015 at 9:25 PM Khem Raj <raj.khem@gmail.com>
>>>> wrote:
>>>> >> >>
>>>> >> >> can you post output of
>>>> root/6.04.12-r0/build/CMakeFiles/CMakeError.log
>>>> >> >>
>>>> >> >> On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark <kratsg@gmail.com>
>>>> >> >> wrote:
>>>> >> >> > Hi all,
>>>> >> >> >
>>>> >> >> > I'm trying to add a recipe for ROOT (from CERN) but I'm running
>>>> into
>>>> >> >> > various
>>>> >> >> > issues with just trying to get compilers working.
>>>> >> >> >
>>>> >> >> > Current recipe:
>>>> >> >> >
>>>> >> >> >
>>>> >> >> >
>>>> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
>>>> >> >> >
>>>> >> >> > Current log:
>>>> https://gist.github.com/kratsg/cd3184a167676eb69067
>>>> >> >> >
>>>> >> >> > Note that the goal is to have the bare-minimum with PyROOT
>>>> (enable
>>>> >> >> > python
>>>> >> >> > support). So I'm following:
>>>> >> >> > - https://root.cern.ch/building-root
>>>> >> >> > - https://root.cern.ch/build-prerequisites
>>>> >> >> >
>>>> >> >> > Thanks,
>>>> >> >> >
>>>> >> >> > Giordon
>>>> >> >> >
>>>> >> >> > --
>>>> >> >> > _______________________________________________
>>>> >> >> > yocto mailing list
>>>> >> >> > yocto@yoctoproject.org
>>>> >> >> > https://lists.yoctoproject.org/listinfo/yocto
>>>> >> >> >
>>>>
>>>

--001a1134b42c449dfd0528b1061f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ping - any updates on this? I&#39;ve tried a lot of ways t=
o fix it, but I can&#39;t seem to get it to compile at all...</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec 30, 2015 at 3:28 PM Gio=
rdon Stark &lt;<a href=3D"mailto:kratsg@gmail.com">kratsg@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Here&#39;s=
 an update set of logs:<br><br>(output) <a href=3D"https://gist.github.com/=
anonymous/56f904b65feeb3346db6" target=3D"_blank">https://gist.github.com/a=
nonymous/56f904b65feeb3346db6</a><br><div>(CMakeError.log) <a href=3D"https=
://gist.github.com/anonymous/d5d766badcee1df5efc1" target=3D"_blank">https:=
//gist.github.com/anonymous/d5d766badcee1df5efc1</a><br><br>for the current=
 recipe here:=C2=A0<a href=3D"https://github.com/kratsg/meta-l1calo/blob/ma=
ster/recipes-core/root/root_6.04.12.bb" target=3D"_blank">https://github.co=
m/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb</a></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec 30, 2015=
 at 2:10 PM Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail.com" target=3D=
"_blank">kratsg@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr">Actually -- if you look here -- I&#39;m already usin=
g pkg-config?=C2=A0<div><br></div><div><a href=3D"https://github.com/kratsg=
/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb#L9" target=3D"_b=
lank">https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/r=
oot_6.04.12.bb#L9</a><br></div><div><br></div><div>Is there something wrong=
 with the configuration then?</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Wed, Dec 30, 2015 at 2:07 PM Giordon Stark &lt;<a href=3D"=
mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I&#39;m unable to =
disable the internal build. I&#39;m working on the pkg-config however.</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec 30, 2015 at 1:=
34 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">=
raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n Wed, Dec 30, 2015 at 10:27 AM, Giordon Stark &lt;<a href=3D"mailto:kratsg=
@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
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
</blockquote></div></blockquote></div></blockquote></div></blockquote></div=
>

--001a1134b42c449dfd0528b1061f--
