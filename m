Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BBCBE01443
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 05:52:01 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so13609681obb.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 05:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=SVyXc1SAaLnfVJaJ+iZGGg1CirtuuJJ9VqbwZf6wZRc=;
	b=TCwrtfa+/uIS67EvVjXKOKgh+JK8HBlHEKcGeAVYhTGpOXa0540mQYcCEyw5/sX7Eq
	hPhmUjTPPsaGcQk61dxwDxOtczxzzLv4BceOmbfzhYFCc0xphI8Sivu9D2E/xASuIrTX
	Lr2AtSoZGbjEB3DeY+ESMtI3jaSaoU7F/APqQZpVoIXLsaZynSv4zE8J8m3TmnnaEMVs
	U4XcG75pwtJXWQkLoOO2XN+7g6x6CbsB015rYKEamCPRDOADe2ybCw5GUx1KTvwaaIPR
	yIpB5KkSmgXeGUV9AiEwhfSRR+KEyrUoDPuiaiEMmsSGRB4z+qM8aoW61QgAOOGvl/s0
	uIQw==
MIME-Version: 1.0
Received: by 10.182.212.36 with SMTP id nh4mr35669101obc.37.1341838321004;
	Mon, 09 Jul 2012 05:52:01 -0700 (PDT)
Received: by 10.76.151.161 with HTTP; Mon, 9 Jul 2012 05:52:00 -0700 (PDT)
In-Reply-To: <CANFv2E=PAjjxOVX3x4rP7=1Pw_Y3pjB+p3QYsYOz3nfY3k2Nfw@mail.gmail.com>
References: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
	<CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
	<CADkTA4N6WEQMd+wq_mA38oncby_AMiiCX0im+wdDb9UP6R28qA@mail.gmail.com>
	<CANFv2E=PAjjxOVX3x4rP7=1Pw_Y3pjB+p3QYsYOz3nfY3k2Nfw@mail.gmail.com>
Date: Mon, 9 Jul 2012 08:52:00 -0400
Message-ID: <CANFv2EnZCpSKbdAgD3gAd17DZrOywiDb_wMjxq7VpsXgb7vEig@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: menuconfig vs. config fragments?
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
X-List-Received-Date: Mon, 09 Jul 2012 12:52:01 -0000
Content-Type: multipart/alternative; boundary=e89a8f642902782ecd04c4651414

--e89a8f642902782ecd04c4651414
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 9, 2012 at 8:13 AM, James Abernathy <jfabernathy@gmail.com>wrote:

>
>
> On Mon, Jul 9, 2012 at 8:07 AM, Bruce Ashfield <bruce.ashfield@gmail.com>wrote:
>
>> On Mon, Jul 9, 2012 at 6:42 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> > On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy <jfabernathy@gmail.com>
>> > wrote:
>> >>
>> >> my goal of this test was to see if I could use the n450 BSP as a
>> starting
>> >> point for a BSP to support my Acer Aspire One n450 based netbook.  The
>> >> core-image-sato will boot from USB key on the netbook if I use the ZIP
>> drive
>> >> format for the USB key, but the current n450 BSP doesn't include the
>> drivers
>> >> for the networking hardware in the netbook.
>> >>
>> >> I found by testing, using the menuconfig option documented in the
>> >> Developer Manual Appendix B example, that I needed to add 2 parameters
>> to
>> >> the .config:
>> >>
>> >> CONFIG_ATH9K_PCI
>> >> CONFIG_ATL1C
>> >>
>> >> To make this change easier to manage and more permanent, I thought
>> about
>> >> creating a config fragment.  I put the config parameters in a file,
>> >> myconfig, in the linux-yocto directory at the same level as the
>> >> linux-yocto_3.2.bbappend file, where I added:
>> >>
>> >> SRC_URI += "file//myconfig"
>> >>
>> >
>> > Try to use myconfig.cfg.
>>
>> This would be the key part, since as a few noted, .cfg is what
>> triggers the fragment
>> processing to actually notice the file and stack it after the base /
>> defined configuration.
>>
>> Cheers,
>>
>> Bruce
>>
>> I'm testing it now, but it sound like the problem.  So the Developer
> Manual uses the .cfg in the example, but the BSP Guide does not.  That's an
> area to fix.  Since this is critical,it needs to be pointed out, in my mind.
>
> JIm A
>
> Adding the .cfg extension does indeed fix my problem. Thanks for the help.

Jim A



> >
>> > @g
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>>
>
>

--e89a8f642902782ecd04c4651414
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Mon, Jul 9, 2012 at 8:13 AM, James Ab=
ernathy <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com" targ=
et=3D"_blank">jfabernathy@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<br><br><div class=3D"gmail_quote"><div><div class=3D"h5">On Mon, Jul 9, 20=
12 at 8:07 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce=
.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;</sp=
an> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div><div>On Mon, Jul 9, 2012 at 6:42 AM, Andrei Gherzan &lt;<a href=3D"mai=
lto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<b=
r>
&gt; On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy &lt;<a href=3D"mailto:=
jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; my goal of this test was to see if I could use the n450 BSP as a s=
tarting<br>
&gt;&gt; point for a BSP to support my Acer Aspire One n450 based netbook. =
=A0The<br>
&gt;&gt; core-image-sato will boot from USB key on the netbook if I use the=
 ZIP drive<br>
&gt;&gt; format for the USB key, but the current n450 BSP doesn&#39;t inclu=
de the drivers<br>
&gt;&gt; for the networking hardware in the netbook.<br>
&gt;&gt;<br>
&gt;&gt; I found by testing, using the menuconfig option documented in the<=
br>
&gt;&gt; Developer Manual Appendix B example, that I needed to add 2 parame=
ters to<br>
&gt;&gt; the .config:<br>
&gt;&gt;<br>
&gt;&gt; CONFIG_ATH9K_PCI<br>
&gt;&gt; CONFIG_ATL1C<br>
&gt;&gt;<br>
&gt;&gt; To make this change easier to manage and more permanent, I thought=
 about<br>
&gt;&gt; creating a config fragment. =A0I put the config parameters in a fi=
le,<br>
&gt;&gt; myconfig, in the linux-yocto directory at the same level as the<br=
>
&gt;&gt; linux-yocto_3.2.bbappend file, where I added:<br>
&gt;&gt;<br>
&gt;&gt; SRC_URI +=3D &quot;file//myconfig&quot;<br>
&gt;&gt;<br>
&gt;<br>
&gt; Try to use myconfig.cfg.<br>
<br>
</div></div>This would be the key part, since as a few noted, .cfg is what<=
br>
triggers the fragment<br>
processing to actually notice the file and stack it after the base /<br>
defined configuration.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<div><div><br></div></div></blockquote></div></div><div>I&#39;m testing it =
now, but it sound like the problem.=A0 So the Developer Manual uses the .cf=
g in the example, but the BSP Guide does not.=A0 That&#39;s an area to fix.=
=A0 Since this is critical,it needs to be pointed out, in my mind.<br>

<br>JIm A<br> <br></div></div></blockquote><div>Adding the .cfg extension d=
oes indeed fix my problem. Thanks for the help.<br><br>Jim A<br><br>=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<div class=3D"gmail_quote"><div></div><div class=3D"im"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div>
&gt;<br>
&gt; @g<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
<br>
</div></div><span><font color=3D"#888888">--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;<br>
</font></span></blockquote></div></div><br>
</blockquote></div><br>

--e89a8f642902782ecd04c4651414--
