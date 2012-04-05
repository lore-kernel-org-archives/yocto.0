Return-Path: <joaohf@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE3F7E0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 11:00:20 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so2070988bkc.35
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 11:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6KxJJIiPfTIoqRc1FQi8k6fLhPPvdzg9qdK8wHwOdg8=;
	b=dP/S3itYzvtvEnolvDgGRB5wU4O5ijwNlTc4Dq/m55FhK3WWsVCMZNvB67Qu0AaOpN
	UNScnj4b2UYI/uoChzgSOiGZa9YMya9TGVj4u38ihJn9ztIMNshMzcNYm/IbjgVlCy5S
	Clnh5Ao7vhU8xH3B3ijZjdJ05tMfairWjozErI1P17GkxWRsrP0W2k8VZ/Lh7AaqfeDd
	wE05/K/5Zdq8BpQHsUnORZEnASpQKSadHNmsBr+39axsR++/Cv9Y9jZBogsz4QZMoVuc
	KlcImJt2nFhakqaASv7sR8utzkCwlx9XP4Qt2XmotSVkqDux5hxmbHV2zEHpQDp5e6sB
	Jutw==
MIME-Version: 1.0
Received: by 10.205.125.142 with SMTP id gs14mr1554070bkc.95.1333648819354;
	Thu, 05 Apr 2012 11:00:19 -0700 (PDT)
Received: by 10.205.40.4 with HTTP; Thu, 5 Apr 2012 11:00:19 -0700 (PDT)
In-Reply-To: <1634439.IYZyxqXxWH@helios>
References: <CANFVK7_ahuH9aSOepVX__Zw1ppSeHNRr_SM=x5xgWMGd=APr6g@mail.gmail.com>
	<1634439.IYZyxqXxWH@helios>
Date: Thu, 5 Apr 2012 15:00:19 -0300
Message-ID: <CANFVK799C_XeFAnUT1_nrDL2TSDisQ2uD+sRykUP=KZ4kChvAw@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using vendo kernel with Yocto
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
X-List-Received-Date: Thu, 05 Apr 2012 18:00:21 -0000
Content-Type: multipart/alternative; boundary=000e0ce0db2a21fbda04bcf25039

--000e0ce0db2a21fbda04bcf25039
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,


> However, for one of my hobby projects I have been trying to get an iPAQ
> h2200
> (currently stuck with the 2.6.21-hh kernel) booting with a rootfs produce=
d
> using Poky. The first problem is that the current version of udev that we
> have,
> 164, requires version 2.6.27 or later of the kernel, so you will need to
> provide an older udev. I've been testing with udev 092, but I still hit
> problems on boot


I disabled the device manage with:

VIRTUAL-RUNTIME_dev_manager =3D ""


> - if I disable the initscript that calls "ifup -a" it boots
> successfully, but with it the boot process hangs, even though there are n=
o
> network interfaces other than lo and if I run "ifup -a" after booting the=
n
> it
> works fine. That was the state a few weeks ago and I haven't done any
> further
> work on it since then.
>
>
I have the same behaviour. But after the boot, ifup -a freeze. This is the
strace:

open("/var/run/ifstate", O_RDONLY|O_LARGEFILE) =3D 3
fstat64(3, {st_mode=3DS_IFREG|0644, st_size=3D6, ...}) =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D
0x40003000
read(3, "lo=3Dlo\n", 4096)                =3D 6
read(3, "", 4096)                       =3D 0
close(3)                                =3D 0
munmap(0x40003000, 4096)                =3D 0
vfork()                                 =3D 768
wait4(768,

If I remore the 'auto' from /etc/network/interfaces, ifup didn't freeze but
no ethx was configured.



> I guess what you can take from the above is it's almost certainly possibl=
e
> to
> work with a kernel as old as 2.6.2x, however you will need to downgrade
> udev
> (most easily by just bringing across udev recipes from OE Classic) and
> possibly other components, and you may still need to do additional
> troubleshooting.
>
>
I will try udev from OE Classic or port the Mindspeed patchs to kernel
2.6.27.


> Have you contacted the vendor to see if they can provide an updated patch=
?
>
>
Yes, I contacted they. They said that the kernel is 2.6.22.19 and did not
have plans to upgrade it.


Thanks.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

--000e0ce0db2a21fbda04bcf25039
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br></div>Hi Paul,<div><br></div><div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><br>
However, for one of my hobby projects I have been trying to get an iPAQ h22=
00<br>
(currently stuck with the 2.6.21-hh kernel) booting with a rootfs produced<=
br>
using Poky. The first problem is that the current version of udev that we h=
ave,<br>
164, requires version 2.6.27 or later of the kernel, so you will need to<br=
>
provide an older udev. I&#39;ve been testing with udev 092, but I still hit=
<br>
problems on boot </blockquote><div><br></div><div>I disabled the device man=
age with:</div><div><br></div><div>VIRTUAL-RUNTIME_dev_manager =3D &quot;&q=
uot;</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
- if I disable the initscript that calls &quot;ifup -a&quot; it boots<br>
successfully, but with it the boot process hangs, even though there are no<=
br>
network interfaces other than lo and if I run &quot;ifup -a&quot; after boo=
ting then it<br>
works fine. That was the state a few weeks ago and I haven&#39;t done any f=
urther<br>
work on it since then.<br>
<br></blockquote><div><br></div><div>I have the same behaviour. But after t=
he boot, ifup -a freeze. This is the strace:</div><div><br></div><div><div>=
open(&quot;/var/run/ifstate&quot;, O_RDONLY|O_LARGEFILE) =3D 3</div><div>
fstat64(3, {st_mode=3DS_IFREG|0644, st_size=3D6, ...}) =3D 0</div><div>mmap=
2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0=
x40003000</div><div>read(3, &quot;lo=3Dlo\n&quot;, 4096) =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D 6</div>
<div>read(3, &quot;&quot;, 4096) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 0</div><div>close(3) =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D 0</div><div>munmap(0x40003000, 4096) =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D 0</div><div>vfork() =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D 768</div>
<div>wait4(768,</div></div><div><br></div><div>If I remore the &#39;auto&#3=
9; from /etc/network/interfaces, ifup didn&#39;t freeze but no ethx was con=
figured.</div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">

I guess what you can take from the above is it&#39;s almost certainly possi=
ble to<br>
work with a kernel as old as 2.6.2x, however you will need to downgrade ude=
v<br>
(most easily by just bringing across udev recipes from OE Classic) and<br>
possibly other components, and you may still need to do additional<br>
troubleshooting.<br>
<br></blockquote><div><br></div><div>I will try udev from OE Classic or por=
t the Mindspeed patchs to kernel 2.6.27.</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">

Have you contacted the vendor to see if they can provide an updated patch?<=
br>
<br></blockquote><div><br></div><div>Yes, I=C2=A0contacted=C2=A0they. They =
said that the kernel is 2.6.22.19 and did not have plans to upgrade it.</di=
v><div>=C2=A0</div><div><br></div><div>Thanks.</div></div><div><br></div>--=
 <br>-----------------------------------------------------------<br>
Jo=C3=A3o Henrique Freitas - <a href=3D"http://joaohf_at_gmail.com">joaohf_=
at_gmail.com</a><br>Campinas-SP-Brasil<br>BSD051283<br>LPI 1<br><a href=3D"=
http://www.joaohfreitas.eti.br">http://www.joaohfreitas.eti.br</a><br>
</div>

--000e0ce0db2a21fbda04bcf25039--
