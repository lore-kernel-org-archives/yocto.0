Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FD6E00846; Tue, 23 Sep 2014 09:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA88E00786
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 09:10:48 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id z12so870695wgg.3
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 09:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=HjmMtLd+WNTfW2HQEIqlnTce+zn5mhC1dez1xDNP8to=;
	b=y3bvXYFy2Pyot8/N9qG/wldYorjVS+Zm/Eqk4GEdyq6DNcVea+93UkmF99jnwD9iWY
	j08Blx0t1w7ov0okx9s7axEVMqICepkNd4iMmUsVcalqTfcKScN+UXK6CckVXMrkU9qQ
	77WbAnCIxecEgvzt6OAh5rGF2jT7ju1p1RDJmfdnPOb42q6EG3RH15gt+ADY8SjKL9DR
	DiicmYU3aEGyXZyI3eMVKfV6ipTy58HX2tak8nSBu7dI04yRxKxR33+KmkM7PsWVBQVb
	nsaxuA/R8n4BU4aWPU/qV8ElT+KZ2sC+W11IXspWw9BWRYRb+7knm+r0a9W7WFPCsmV7
	qYsA==
MIME-Version: 1.0
X-Received: by 10.180.187.76 with SMTP id fq12mr4717721wic.4.1411488647229;
	Tue, 23 Sep 2014 09:10:47 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Tue, 23 Sep 2014 09:10:47 -0700 (PDT)
In-Reply-To: <5413C4C4.7070005@mindchasers.com>
References: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
	<CAMSG=xXmfOnQJwkQ5qHsSendSRX+xSHRH94jc5kJKGqqNV0gAg@mail.gmail.com>
	<5413487C.4050707@mindchasers.com>
	<CAMSG=xXsUOLFFRgqihdGdXMEKiGwZ3AgO+d85rp2Q1GhDLq-uQ@mail.gmail.com>
	<5413C4C4.7070005@mindchasers.com>
Date: Tue, 23 Sep 2014 09:10:47 -0700
Message-ID: <CAMSG=xUkSTCE9KXP1ufv5NfsLqe-GvFh=mevycYQ_u40GcSr+Q@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
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
X-List-Received-Date: Tue, 23 Sep 2014 16:10:56 -0000
Content-Type: multipart/alternative; boundary=001a11c37f806c38810503bdcf09

--001a11c37f806c38810503bdcf09
Content-Type: text/plain; charset=UTF-8

Ok, after much strife, here's what I've gotten working.  I installed the
Plugin via "Install New Software" through Eclipse:

1. While configuring the ADT Plugin for Eclipse, instead of "Build system
derived toolchain" I select "Standalone Pre-Built Toolchain."
2. Instead of BUILD as the top directory, I use build/tmp (the location of
the environment-setup script that gets created with bitbake
meta-ide-support)
3. Open Eclipse in a shell where I've already sourced that
environment-setup script <-- not sure if that's actually necessary.

Thanks to everyone for their help.. hope this helps someone else!

On Fri, Sep 12, 2014 at 9:15 PM, Bob Cochran <yocto@mindchasers.com> wrote:

> I hope one of the Intel ADT developers will jump in to help you out.
>
> Here are a few other long shots (things that I'm doing, and it works good
> for me):
>
> i) Make sure you set your environment before you start eclipse.  In other
> words, invoke eclipse from a shell with the proper paths set up.
>
> ii) Use at least Poky 1.6 (I'm currently using master with success).
>
> iii) Use the pre-built plugin
>
>
> There's also an ADT installer script, but I have never tried it.  I do
> everything working from git & build everything from scratch (except the
> Yocto ADT Eclipse plugin).
>
> Good luck!
>
> Bob
>
>
>
>
>
> On 09/12/2014 08:57 PM, Nemicolopterus Crypticus wrote:
>
>> Yes - I can source the script, and I do successfully get my path
>> updated. That's unfortunate.  I can run the toolchain on the command
>> line, but the developers I am working with need to use Eclipse. The
>> plug-in seems like the right solution, so I would very much like to get
>> this to work.
>>
>> It occurred to me that these issues might be because I'm using an older
>> version of bitbake:
>> $ bitbake --version
>> BitBake Build Tool Core version 1.20.0, bitbake version 1.20.0
>>
>> Could that have something to do with the failure?
>>
>> On Fri, Sep 12, 2014 at 12:24 PM, Bob Cochran <yocto@mindchasers.com
>> <mailto:yocto@mindchasers.com>> wrote:
>>
>>     On 09/12/2014 12:57 PM, Nemicolopterus Crypticus wrote:
>>
>>           >Just double checking that you are specifying the "toolchain
>> root
>>         location" as your top level build directory (the one above
>>         /conf/local.conf - the directory where you run bitbake).
>>
>>         Yes that occurred to me too, since the phrasing is a bit unclear.
>> I
>>         tried both.  Here's a depiction of my directory structure:
>>
>>         oe-core
>>                |---- build
>>                     |---- conf (including local.conf)
>>                     |---- downloads
>>                     |---- tmp-eglibc
>>                        |---- environment-setup-blahblah
>>                        |---- <etc.>
>>                     |---- <etcc>
>>                |---- bitbake
>>                |---- gcc-toolchain
>>                |---- meta
>>                |---- <etc. lots more>
>>
>>         I tried with the root at build, and in build/tmp-eglibc with no
>>         luck.
>>
>>         Is it possible the toolchain didn't get built?
>>
>>
>>     What happens when you source your environment script?  You should
>>     have your path set up to find your cross toolchain.  If that's the
>>     case, you should be able to run the toolchain on the command line.
>>
>>     I work with the powerpc toolchain, so I can cross-compile a simple
>>     test app after sourcing my env script:
>>
>>     powerpc64-poky-linux-gcc main.c -o tst
>>
>>     and verify I have generated a 64-bit powerpc ELF executable with
>>
>>     file tst
>>
>>
>>
>>
>>
>>     I'm just wondering since
>>
>>         that's what the error claims. Is there any way to confirm that the
>>         toolchain did indeed get built?  I ran bitbake
>>         meta-ide-toolchain, but
>>         our system is large and I'm not familiar with every aspect of
>>         it. Is it
>>         possible some other settings elsewhere got changed in a way that
>>         would
>>         prevent the toolchain from building?
>>
>>
>>
>>
>

--001a11c37f806c38810503bdcf09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, after much strife, here&#39;s what I&#39;ve gotten wor=
king.=C2=A0 I installed the Plugin via &quot;Install New Software&quot; thr=
ough Eclipse:<div><br></div><div>1. While configuring the ADT Plugin for Ec=
lipse, instead of &quot;Build system derived toolchain&quot; I select &quot=
;Standalone Pre-Built Toolchain.&quot;=C2=A0</div><div>2. Instead of BUILD =
as the top directory, I use build/tmp (the location of the environment-setu=
p script that gets created with bitbake meta-ide-support)</div><div>3. Open=
 Eclipse in a shell where I&#39;ve already sourced that environment-setup s=
cript &lt;-- not sure if that&#39;s actually necessary.</div><div><br></div=
><div>Thanks to everyone for their help.. hope this helps someone else!</di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, S=
ep 12, 2014 at 9:15 PM, Bob Cochran <span dir=3D"ltr">&lt;<a href=3D"mailto=
:yocto@mindchasers.com" target=3D"_blank">yocto@mindchasers.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">I hope one of the Intel ADT de=
velopers will jump in to help you out.<br>
<br>
Here are a few other long shots (things that I&#39;m doing, and it works go=
od for me):<br>
<br>
i) Make sure you set your environment before you start eclipse.=C2=A0 In ot=
her words, invoke eclipse from a shell with the proper paths set up.<br>
<br>
ii) Use at least Poky 1.6 (I&#39;m currently using master with success).<br=
>
<br>
iii) Use the pre-built plugin<br>
<br>
<br>
There&#39;s also an ADT installer script, but I have never tried it.=C2=A0 =
I do everything working from git &amp; build everything from scratch (excep=
t the Yocto ADT Eclipse plugin).<br>
<br>
Good luck!<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Bob</font></span><span class=3D""><br>
<br>
<br>
<br>
<br>
<br>
On 09/12/2014 08:57 PM, Nemicolopterus Crypticus wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Yes - I can source the script, and I do successfully get my path<br>
updated. That&#39;s unfortunate.=C2=A0 I can run the toolchain on the comma=
nd<br>
line, but the developers I am working with need to use Eclipse. The<br>
plug-in seems like the right solution, so I would very much like to get<br>
this to work.<br>
<br>
It occurred to me that these issues might be because I&#39;m using an older=
<br>
version of bitbake:<br>
$ bitbake --version<br>
BitBake Build Tool Core version 1.20.0, bitbake version 1.20.0<br>
<br>
Could that have something to do with the failure?<br>
<br>
On Fri, Sep 12, 2014 at 12:24 PM, Bob Cochran &lt;<a href=3D"mailto:yocto@m=
indchasers.com" target=3D"_blank">yocto@mindchasers.com</a><br></span><div>=
<div class=3D"h5">
&lt;mailto:<a href=3D"mailto:yocto@mindchasers.com" target=3D"_blank">yocto=
@mindchasers.com</a>&gt;<u></u>&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 On 09/12/2014 12:57 PM, Nemicolopterus Crypticus wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;Just double checking that you are sp=
ecifying the &quot;toolchain root<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 location&quot; as your top level build director=
y (the one above<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /conf/local.conf - the directory where you run =
bitbake).<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Yes that occurred to me too, since the phrasing=
 is a bit unclear. I<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tried both.=C2=A0 Here&#39;s a depiction of my =
directory structure:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-core<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- build<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |----=
 conf (including local.conf)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |----=
 downloads<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |----=
 tmp-eglibc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|---- environment-setup-blahblah<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|---- &lt;etc.&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |----=
 &lt;etcc&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- bitbake<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- gcc-toolchain<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- meta<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- &lt;etc. lots =
more&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I tried with the root at build, and in build/tm=
p-eglibc with no<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 luck.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Is it possible the toolchain didn&#39;t get bui=
lt?<br>
<br>
<br>
=C2=A0 =C2=A0 What happens when you source your environment script?=C2=A0 Y=
ou should<br>
=C2=A0 =C2=A0 have your path set up to find your cross toolchain.=C2=A0 If =
that&#39;s the<br>
=C2=A0 =C2=A0 case, you should be able to run the toolchain on the command =
line.<br>
<br>
=C2=A0 =C2=A0 I work with the powerpc toolchain, so I can cross-compile a s=
imple<br>
=C2=A0 =C2=A0 test app after sourcing my env script:<br>
<br>
=C2=A0 =C2=A0 powerpc64-poky-linux-gcc main.c -o tst<br>
<br>
=C2=A0 =C2=A0 and verify I have generated a 64-bit powerpc ELF executable w=
ith<br>
<br>
=C2=A0 =C2=A0 file tst<br>
<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 I&#39;m just wondering since<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 that&#39;s what the error claims. Is there any =
way to confirm that the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 toolchain did indeed get built?=C2=A0 I ran bit=
bake<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-ide-toolchain, but<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 our system is large and I&#39;m not familiar wi=
th every aspect of<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 it. Is it<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 possible some other settings elsewhere got chan=
ged in a way that<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 would<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 prevent the toolchain from building?<br>
<br>
<br>
<br>
</div></div></blockquote>
<br>
</blockquote></div><br></div>

--001a11c37f806c38810503bdcf09--
