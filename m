Return-Path: <wutengss@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EB60E007EC
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 00:13:36 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id q12so1524821vbe.35
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 00:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sEhsjUnzMJNqoVJBcCiIzmYUQVB5/DM58A7/JA+d8cM=;
	b=CV4iGgPrKGb02cYSG42s0UdJkJ1q58bkLvAt7QbTp8ieSsZDZWJvwkZy/tdl0BM4hn
	MX9BZ55JSzK0si1+4mM12dlZYMIbqWNni4MXd1j60vgj/YQuOUCE3ZuPxyqIPto9UN3L
	qCQ2fUpJsiWFji8zL112gXHQ90AuWkgG7iv6G1d+XyF4KirwEY7ICs4LtpEXV4vpsLIP
	hWgaTOcehzppOiXMxkUX0ekgMyq2YI1pAz8wQPSGMhBHJ5zAz68kOEulkk0rSxLr7Kea
	9ywdjUDDRU165OdGuA7WulQlpn3tGvP3cCuZ3snzy7shfKLu8sTpoj0M84B3OLs95ws+
	Nixg==
MIME-Version: 1.0
X-Received: by 10.52.166.6 with SMTP id zc6mr60109049vdb.10.1389082415222;
	Tue, 07 Jan 2014 00:13:35 -0800 (PST)
Received: by 10.52.37.39 with HTTP; Tue, 7 Jan 2014 00:13:35 -0800 (PST)
In-Reply-To: <CAOJdAdX0O9bE1+9ovwNy-ySA-oXaHktNOTHm6EYajE+eWHFfRw@mail.gmail.com>
References: <CAOJdAdVfPGaSMcvB7-8LJ=oYDKwi1j_oKRbChNXGzwGV+zfT=Q@mail.gmail.com>
	<2898237.6VA6PFO9Mg@koontz>
	<CAOJdAdVekJ6VV5ea=ZfQJsBSb4YwTUnWG1r_swBVyoWaBfb8pg@mail.gmail.com>
	<CAOJdAdX0O9bE1+9ovwNy-ySA-oXaHktNOTHm6EYajE+eWHFfRw@mail.gmail.com>
Date: Tue, 7 Jan 2014 10:13:35 +0200
Message-ID: <CAOJdAdVsF7d6a8PMink03b2zhYB8BYCg4=3zzx5DToSEuniH1g@mail.gmail.com>
From: wuteng wu <wutengss@gmail.com>
To: r10kindsofpeople@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: CAN bus protocol error
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
X-List-Received-Date: Tue, 07 Jan 2014 08:13:38 -0000
Content-Type: multipart/alternative; boundary=001a11c2c544ec548e04ef5cf320

--001a11c2c544ec548e04ef5cf320
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

Could you please tell me more details about the contents of the
can-socket-support-kernel.cfg file ?


I have put:


CONFIG_CAN_RAW=3Dy

CONFIG_CAN_BCM=3Dy

CONFIG_CAN_GW=3Dy


into it, is that enough, or any other config needed?


BR,

Teng





2014/1/3 wuteng wu <wutengss@gmail.com>

> Hi,
>
> I think i have just found where to do the configure, under the dir:
> /poky/meta-atmel/recipes-kernel/linux/files/sama5d3xek, i will try out yo=
ur
> config file, thanks alot.
>
>
> 2014/1/3 wuteng wu <wutengss@gmail.com>
>
>> Hi, could you tell me how to clean and rebuild the kernel?
>> I'm newbie to yocto, i have done something like linux-menuconfig when i
>> used the build-root, bu which i can config the kernel configuration, but=
 i
>> don't know how to do it in yocto, at least i didn't find any reference i=
n
>> ref-manual.
>>
>>
>> 2014/1/3 S=F8ren Holm <sgh@sgh.dk>
>>
>>> Hi Wuteng
>>>
>>> I've attached a working defconfig for you to look at.
>>>
>>> But it seems alright what you are doing. Have you tried doing a cleanal=
l
>>> to
>>> ensure a complete rebuild with your configuration?
>>>
>>> Fredag den 3. januar 2014 15:11:56 skrev wuteng wu:
>>> > Hi,
>>> >
>>> > I have cross compiled the canutils and installed it into the target
>>> rootfs,
>>> > but when i tried to test the CAN bus by using the candump command as
>>> below:
>>> >
>>> > candump can0
>>> > interface =3D can0, family =3D 29, type =3D 3, proto =3D 1
>>> > *socket: Protocol not supported*
>>> >
>>> > I got the "socket: Protocol not supported" error msg, i have searched
>>> and
>>> > found the related solution somewhere said that the 'can-raw protocol
>>> > module' need to be included into the kernel. but how should i do that
>>> in
>>> > yocto ?
>>> >
>>> > the needed driver has to be loaded by executing the commands:
>>> >
>>> >
>>> >
>>> >
>>> > *modprobe canmodprobe can-devmodprobe can-raw*
>>> >
>>> > but only the module can is build-in.
>>> >
>>> > It might be possible that the can-dev is also necessary.
>>> >
>>> > anyone have experience to share with me ?
>>> >
>>>
>>> --
>>> S=F8ren Holm
>>
>>
>>
>

--001a11c2c544ec548e04ef5cf320
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div><pre style=3D"font-family:courier,&=
#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wrap;word-wra=
p:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:=
19px">
Could you please tell me more details about the contents of the can-socket-=
support-kernel.cfg file ?</pre><pre style=3D"font-family:courier,&#39;couri=
er new&#39;,monospace;font-size:14px;white-space:pre-wrap;word-wrap:break-w=
ord;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19px">
<br></pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace=
;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;ma=
rgin-bottom:0px;color:rgb(0,0,0);line-height:19px">I have put:</pre><pre st=
yle=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size:14px;w=
hite-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;c=
olor:rgb(0,0,0);line-height:19px">
<br></pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace=
;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;ma=
rgin-bottom:0px;color:rgb(0,0,0);line-height:19px">CONFIG_CAN_RAW=3Dy</pre>
<pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size=
:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-botto=
m:0px;color:rgb(0,0,0);line-height:19px"><pre style=3D"font-size:14px;font-=
family:courier,&#39;courier new&#39;,monospace;white-space:pre-wrap;word-wr=
ap:break-word;margin-top:0px;margin-bottom:0px;line-height:19px">
CONFIG_CAN_BCM=3Dy</pre><pre style=3D"font-size:14px;font-family:courier,&#=
39;courier new&#39;,monospace;white-space:pre-wrap;word-wrap:break-word;mar=
gin-top:0px;margin-bottom:0px;line-height:19px">CONFIG_CAN_GW=3Dy</pre><pre=
 style=3D"font-size:14px;font-family:courier,&#39;courier new&#39;,monospac=
e;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0p=
x;line-height:19px">
<br></pre><pre style=3D"font-size:14px;font-family:courier,&#39;courier new=
&#39;,monospace;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;ma=
rgin-bottom:0px;line-height:19px">into it, is that enough, or any other con=
fig needed?</pre>
<pre style=3D"font-size:14px;font-family:courier,&#39;courier new&#39;,mono=
space;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-botto=
m:0px;line-height:19px"><br></pre><pre style=3D"font-size:14px;font-family:=
courier,&#39;courier new&#39;,monospace;white-space:pre-wrap;word-wrap:brea=
k-word;margin-top:0px;margin-bottom:0px;line-height:19px">
BR,=A0</pre><pre style=3D"font-size:14px;font-family:courier,&#39;courier n=
ew&#39;,monospace;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;=
margin-bottom:0px;line-height:19px">Teng</pre></pre><pre style=3D"font-fami=
ly:courier,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-w=
rap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);=
line-height:19px">
<br></pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace=
;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;ma=
rgin-bottom:0px;color:rgb(0,0,0);line-height:19px"><br></pre></div></div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014/1/3 wute=
ng wu <span dir=3D"ltr">&lt;<a href=3D"mailto:wutengss@gmail.com" target=3D=
"_blank">wutengss@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<div dir=3D"ltr"><div><div>Hi,<br><br></div>I think i have just found where=
 to do the configure, under the dir: /poky/meta-atmel/recipes-kernel/linux/=
files/sama5d3xek, i will try out your config file, thanks alot.<br></div>
</div><div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014/1/3 wute=
ng wu <span dir=3D"ltr">&lt;<a href=3D"mailto:wutengss@gmail.com" target=3D=
"_blank">wutengss@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">

<div dir=3D"ltr"><div>Hi, could you tell me how to clean and rebuild the ke=
rnel? <br></div>I&#39;m newbie to yocto, i have done something like linux-m=
enuconfig when i used the build-root, bu which i can config the kernel conf=
iguration, but i don&#39;t know how to do it in yocto, at least i didn&#39;=
t find any reference in ref-manual.<br>


</div><div><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">2014/1/3 S=F8ren Holm <span dir=3D"ltr">&lt;<a href=3D"mailto:sgh@sgh.dk=
" target=3D"_blank">sgh@sgh.dk</a>&gt;</span><br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">


Hi Wuteng<br>
<br>
I&#39;ve attached a working defconfig for you to look at.<br>
<br>
But it seems alright what you are doing. Have you tried doing a cleanall to=
<br>
ensure a complete rebuild with your configuration?<br>
<br>
Fredag den 3. januar 2014 15:11:56 skrev wuteng wu:<br>
<div>&gt; Hi,<br>
&gt;<br>
&gt; I have cross compiled the canutils and installed it into the target ro=
otfs,<br>
&gt; but when i tried to test the CAN bus by using the candump command as b=
elow:<br>
&gt;<br>
&gt; candump can0<br>
&gt; interface =3D can0, family =3D 29, type =3D 3, proto =3D 1<br>
</div>&gt; *socket: Protocol not supported*<br>
<div>&gt;<br>
&gt; I got the &quot;socket: Protocol not supported&quot; error msg, i have=
 searched and<br>
&gt; found the related solution somewhere said that the &#39;can-raw protoc=
ol<br>
&gt; module&#39; need to be included into the kernel. but how should i do t=
hat in<br>
&gt; yocto ?<br>
&gt;<br>
&gt; the needed driver has to be loaded by executing the commands:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div>&gt; *modprobe canmodprobe can-devmodprobe can-raw*<br>
<div><div>&gt;<br>
&gt; but only the module can is build-in.<br>
&gt;<br>
&gt; It might be possible that the can-dev is also necessary.<br>
&gt;<br>
&gt; anyone have experience to share with me ?<br>
&gt;<br>
<br>
</div></div><span><font color=3D"#888888">--<br>
S=F8ren Holm</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c2c544ec548e04ef5cf320--
