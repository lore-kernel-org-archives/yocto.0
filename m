Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9947E00830; Sat,  8 Nov 2014 06:29:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, URIBL_RHS_DOB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day
	Old Bread) *      [URIs: ripperd.com]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (b.hutchman[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EC16E007BA
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 06:29:21 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id uz6so3881498obc.19
	for <yocto@yoctoproject.org>; Sat, 08 Nov 2014 06:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cXbhncmlY61TP33X/uC2YC7D+9zoksL08tenHtjMGyo=;
	b=KnPHsXDzoj+jirL44IhtZKCu86VambNRgNdGaTzCFM8juibWtNRG5Cf3HiDV4QwVfJ
	gkGo9uJ79poAjUuwLtTX4iLcwoH0pr2au9drEB8oPgVwn3EU5cfhidPUkAyQ2LI7KCgw
	8J94ZnRv1FXnhHp5MvOa4oh3PVTn7zUWGrTPDn9R+tFjtNR2fVEqejbJxjjxsQiziMQQ
	leXhWRIFQRl+Ji6qNL/46JXyzKe9HOL9aPcBX9G5ECS9wJUuaAIveoDBvs7prTvQUa4j
	Vm8Td9xBlv4EzsPXZ1Pe860NrovrvDh0zHJOGheRnIiUNXvRGFlk6LaIJTl3MXgNk4p0
	i0OA==
MIME-Version: 1.0
X-Received: by 10.60.34.227 with SMTP id c3mr15451261oej.23.1415456961138;
	Sat, 08 Nov 2014 06:29:21 -0800 (PST)
Received: by 10.60.166.109 with HTTP; Sat, 8 Nov 2014 06:29:21 -0800 (PST)
Received: by 10.60.166.109 with HTTP; Sat, 8 Nov 2014 06:29:21 -0800 (PST)
In-Reply-To: <CAFZh4h_rar=t5MV5jsEsoZ6YPx04jVx9QkTq-SJV5jmXk6oUqw@mail.gmail.com>
References: <545E21EA.9040403@ripperd.com>
	<CAFZh4h_rar=t5MV5jsEsoZ6YPx04jVx9QkTq-SJV5jmXk6oUqw@mail.gmail.com>
Date: Sat, 8 Nov 2014 09:29:21 -0500
Message-ID: <CAFZh4h--eNE6CNprgYUvHkscNCqAnA6yk+Ut-+QAtotrawGzrQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Dean <dean@ripperd.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build optimization question
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
X-List-Received-Date: Sat, 08 Nov 2014 14:29:29 -0000
Content-Type: multipart/alternative; boundary=089e011762635d17eb050759c1fb

--089e011762635d17eb050759c1fb
Content-Type: text/plain; charset=ISO-8859-1

On Nov 8, 2014 9:23 AM, "Brian Hutchinson" <b.hutchman@gmail.com> wrote:
>
>
> On Nov 8, 2014 9:02 AM, "Dean" <dean@ripperd.com> wrote:
> >
> > So I am using core-image-minimal and trying to shrink things as much as
possible for boot speed. I wrap the bitbake command in some other commands
to basically extract the image and then attach it to a kernel as a ramdisk.
So the size of the image is critical to boot speed.
> >
> > In some of my custom packages I have used -Os in the gcc command line.
> > Is there a way to set this globally for all the packages built into the
image?
> >
> > Any other hints or tips to reduce the size of the build? Or potential
changes to u-boot to make it load faster? This is running on a beaglebone
black.
> >
> >
> > Thanks,
> > Dean
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> ... I've been noticing over the last few releases that core - image -
minimal isn't so minimal anymore.  Its been picking up weight as it ages
(like me).
>
> I'm planning to just start excluding some of the packages in it ... I
don't need sound, wireless, Bluetooth etc.
>
> Regards,
>
> Brian

... going from memory about my last dizzy build, /use/share was 35M.  I've
been using the rootfs tar to build my image and exclude some of this stuff
but I need to look into ways to tame this kind of thing with recipes etc.

Regards,

Brian

--089e011762635d17eb050759c1fb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Nov 8, 2014 9:23 AM, &quot;Brian Hutchinson&quot; &lt;<a href=3D"mailto:=
b.hutchman@gmail.com">b.hutchman@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Nov 8, 2014 9:02 AM, &quot;Dean&quot; &lt;<a href=3D"mailto:dean@ri=
pperd.com">dean@ripperd.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; So I am using core-image-minimal and trying to shrink things as m=
uch as possible for boot speed. I wrap the bitbake command in some other co=
mmands to basically extract the image and then attach it to a kernel as a r=
amdisk. So the size of the image is critical to boot speed.<br>
&gt; &gt;<br>
&gt; &gt; In some of my custom packages I have used -Os in the gcc command =
line.<br>
&gt; &gt; Is there a way to set this globally for all the packages built in=
to the image?<br>
&gt; &gt;<br>
&gt; &gt; Any other hints or tips to reduce the size of the build? Or poten=
tial changes to u-boot to make it load faster? This is running on a beagleb=
one black.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Dean<br>
&gt; &gt; -- <br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt; ... I&#39;ve been noticing over the last few releases that core - imag=
e - minimal isn&#39;t so minimal anymore.=A0 Its been picking up weight as =
it ages (like me).<br>
&gt;<br>
&gt; I&#39;m planning to just start excluding some of the packages in it ..=
. I don&#39;t need sound, wireless, Bluetooth etc.<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Brian</p>
<p dir=3D"ltr">... going from memory about my last dizzy build, /use/share =
was 35M.=A0 I&#39;ve been using the rootfs tar to build my image and exclud=
e some of this stuff but I need to look into ways to tame this kind of thin=
g with recipes etc.</p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian</p>

--089e011762635d17eb050759c1fb--
