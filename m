Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB62E007DC
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 12:47:44 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id wo20so15811487obc.25
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 12:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=l1wqpiTRjh+mr8My5rB04LxyPwXbK8GUQVuMdK+W6PI=;
	b=0ej/7PdZWoxGy5tA1dMwrMxzw3Qm9LB4tPOX6VPbM4ROdtIEMVZMn00XrICrQl6Q1+
	Ni482/zp50GWAY4gRSWPUC/qnEH5910maFdLODcK1kChFl5Qc/vAw47Q2lUUW0SYFG8j
	0kQNfs0GkCes6wOfGTxdTGgMOMKbE+H+MIfEAUyrMqtO+ZOoOdGukKHVJ4UX1yzjWtQY
	pqV/JJUFpxuet214MuR7rzAaAsz/vI+Gf7/8kg81O1Wv45xVwgx5XS7fmrW9rzkH6Ze9
	Boks+rlR/ax7mCej2s8E440MhQDu4kKeqZxUy2I+nu7tguFa4y/TU5nRc3NJrBMVl3Dv
	W1MQ==
MIME-Version: 1.0
X-Received: by 10.60.78.9 with SMTP id x9mr1184543oew.72.1388782063572; Fri,
	03 Jan 2014 12:47:43 -0800 (PST)
Received: by 10.76.159.136 with HTTP; Fri, 3 Jan 2014 12:47:43 -0800 (PST)
In-Reply-To: <CAOJdAdX0O9bE1+9ovwNy-ySA-oXaHktNOTHm6EYajE+eWHFfRw@mail.gmail.com>
References: <CAOJdAdVfPGaSMcvB7-8LJ=oYDKwi1j_oKRbChNXGzwGV+zfT=Q@mail.gmail.com>
	<2898237.6VA6PFO9Mg@koontz>
	<CAOJdAdVekJ6VV5ea=ZfQJsBSb4YwTUnWG1r_swBVyoWaBfb8pg@mail.gmail.com>
	<CAOJdAdX0O9bE1+9ovwNy-ySA-oXaHktNOTHm6EYajE+eWHFfRw@mail.gmail.com>
Date: Fri, 3 Jan 2014 15:47:43 -0500
Message-ID: <CAE8H0+WysiXjDsHxsJF-DM=G7ddKzD1p7+HiOP+CZuAE1NY==A@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 03 Jan 2014 20:47:45 -0000
X-Groupsio-MsgNum: 17656
Content-Type: multipart/mixed; boundary=089e0111bc6491f9d404ef1705d4

--089e0111bc6491f9d404ef1705d4
Content-Type: multipart/alternative; boundary=089e0111bc6491f9ce04ef1705d2

--089e0111bc6491f9ce04ef1705d2
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

With the caution that I'm a bit clumsy at Yocto myself, here's how I did
it, using kernel fragments.

So in meta-myboard/recipes-kernel/linux/ I have something like the attached
.bbappend file.
Then in meta-myboard/recipes-kernel/linux/linux-yocto is the
can-socket-support-kernel.cfg file.  The version number in the bbappend
name should match the kernel version you're building.
You can add other .cfg files if you need other configuration changes, and
still keep them separated by function, just add them to the list in the
bbappend file
My build bblayers.conf file includes the meta-myboard directory in the
BBLAYERS ?=3D  line.

I'm using
bitbake -c cleansstate linux-yocto
bitbake -c compile linux-yocto
bitbake linux-yocto

to do a clean build of the kernel.

FWIW,

John


On Fri, Jan 3, 2014 at 8:34 AM, wuteng wu <wutengss@gmail.com> wrote:

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
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0111bc6491f9ce04ef1705d2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>With the caution that I&#39;m a bit clumsy at Yocto m=
yself, here&#39;s how I did it, using kernel fragments.</div><div><br></div=
><div>So in meta-myboard/recipes-kernel/linux/ I have something like the at=
tached .bbappend file.=A0</div>
<div>Then in meta-myboard/recipes-kernel/linux/linux-yocto is the can-socke=
t-support-kernel.cfg file. =A0The version number in the bbappend name shoul=
d match the kernel version you&#39;re building. =A0</div><div>You can add o=
ther .cfg files if you need other configuration changes, and still keep the=
m separated by function, just add them to the list in the bbappend file</di=
v>
<div>My build bblayers.conf file includes the meta-myboard directory in the=
 BBLAYERS ?=3D =A0line.</div><div><br></div><div>I&#39;m using=A0</div><div=
>bitbake -c cleansstate linux-yocto</div><div>bitbake -c compile linux-yoct=
o</div>
<div>bitbake linux-yocto</div><div><br></div><div>to do a clean build of th=
e kernel.=A0</div><div><br></div><div>FWIW,</div><div><br></div><div>John</=
div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Fri, Jan 3, 2014 at 8:34 AM, wuteng wu <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:wutengss@gmail.com" target=3D"_blank">wutengss@gmail.com</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Hi,<br><br></div>=
I think i have just found where to do the configure, under the dir: /poky/m=
eta-atmel/recipes-kernel/linux/files/sama5d3xek, i will try out your config=
 file, thanks alot.<br>
</div></div>
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
&gt;<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
</font></span></div></div><span class=3D"HOEnZb"><font color=3D"#888888"><s=
pan><font color=3D"#888888">--<br>
S=F8ren Holm</font></span></font></span></blockquote></div><span class=3D"H=
OEnZb"><font color=3D"#888888"><br></font></span></div>
</div></div></blockquote></div><br></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e0111bc6491f9ce04ef1705d2--

--089e0111bc6491f9d404ef1705d4
Content-Type: application/octet-stream; name="can-socket-support-kernel.cfg"
Content-Disposition: attachment; filename="can-socket-support-kernel.cfg"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hpzwl1oz0

Q09ORklHX0NBTj15CkNPTkZJR19DQU5fUkFXPXkKQ09ORklHX0NBTl9CQ009eQpDT05GSUdfQ0FO
X0dXPXkKQ09ORklHX0NBTl9ERVY9eQpDT05GSUdfUENIX0NBTj15Cgo=

--089e0111bc6491f9d404ef1705d4
Content-Type: application/octet-stream; name="linux-yocto_3.8.bbappend"
Content-Disposition: attachment; filename="linux-yocto_3.8.bbappend"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hpzwla531

RklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vJHtQTn06IgoKU1JDX1VSSV9h
cHBlbmQgPSAiIGZpbGU6Ly9jYW4tc29ja2V0LXN1cHBvcnQta2VybmVsLmNmZyBcCiAgICAgICAg
ICAgICIKClBSSU5DIDo9ICIke0BpbnQoUFJJTkMpICsgMn0iCgoK

--089e0111bc6491f9d404ef1705d4--
