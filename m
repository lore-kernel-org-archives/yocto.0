Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 387A4E00C59; Thu,  2 Nov 2017 04:05:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF0F5E00C59
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 04:05:07 -0700 (PDT)
Received: by mail-ot0-f194.google.com with SMTP id q99so1144700ota.2
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 04:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=manpw0QGtotOSfDq63BCNHZpzZWX1hpCe5qul70poxI=;
	b=r0TbgkuMERE/8ccQgsWDd+lACJ4X9fwzslLUpIIRelC3Lmi3NldvQyrmA92yADJzX0
	Xy8XFR1Gol7B2w0BJmCuv/rFEjYD7ha8naVh/7GlbBP/6fljZet1q4uPDsFkM+ZeaeDX
	O5JD/dPHmrXIeZ1tWuHRb/BPgd6b/8C9YBTwzPukSmu1TcRG0DB+KBP72QYvZ3FxvQ+L
	4NYCeUVDCk2OaKvPzgdtD1kvRh/tE1nQKACoWd81M5fnX28hx/8z+HIDXgA0QIZPzpIQ
	EyKt94ZASUYJMmXI5CyK9zZ/dHOk6VUiQSkQfH0lRNiMmQQmwDwBUZ6PT6nqqOntIZS1
	Ra+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=manpw0QGtotOSfDq63BCNHZpzZWX1hpCe5qul70poxI=;
	b=nTInbjGSJBR3uH7VQ5SHssCOWzqDXmtg09swkJ7YVeKJj3BhNnJOXupuW9W+Wglr+d
	BRKFZzm+fM5767dO7k8VZRSR34vbAk7l/YNU017pKsZOklvTnox2ub9Hdm02QIpERLHu
	w2rzuZWSbZBuzdZpajQ3MnaW0NWJ8Ctm1EYYKBLbWgKW5FZr2Mh7M3eNxU18X+dQ+ZNo
	tir9qS1NDlIUaT2KXNnK/5ZeZis3oGtG/9kxOZX8ccC+WSd6oQPDb1W7aZq2E2RmVfa5
	CGc/b84LpmHD4jlO4coHghWDpa1qGIPYRLOsVWwFwR8GsCGREb827A7e75HpGy/yrcao
	uKUg==
X-Gm-Message-State: AJaThX5uAjFDRH7NOgWRiO9WbQ5OSuBpuyVlbnZsAf19HzH/6s7puXUI
	sViV0TcuME8ncOObSxUdfiv/sGYtHVgGbskW3TXrWA==
X-Google-Smtp-Source: ABhQp+QkgaIFoxkoACU6RXaLKX7O/5vytyN8CB5U7XUz3Dzh7fJquI3huwLD3PHR6ACzkIWHsA5xLSFwZWp8kIqg9qs=
X-Received: by 10.157.32.234 with SMTP id x97mr1899906ota.425.1509620706669;
	Thu, 02 Nov 2017 04:05:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 2 Nov 2017 04:05:06 -0700 (PDT)
In-Reply-To: <CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 2 Nov 2017 12:05:06 +0100
Message-ID: <CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
To: Alex Kiernan <alex.kiernan@hivehome.com>, ross.burton@intel.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Thu, 02 Nov 2017 11:05:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c0324c8f79e73055cfdf5db"

--94eb2c0324c8f79e73055cfdf5db
Content-Type: text/plain; charset="UTF-8"

Thanks for the suggestions
Am currently implementing both of them and am trying to understand how the
patching is done.

In the temp directory I can see all the tasks.
For some reasons the patch wasn't applied correctly and I'm debugging why.

I have patches from before which are being correctly applied, one of them
being "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch".
Am using that one just as a reference for this example.
I want to see the steps done to apply the patch so I do:

    temp$ grep -r 0001-sun8i-configs *
    temp$ grep -r quilt *

I am expecting to see some commands related to the patching process in one
of the run scripts.
For example,  "quilt" followed by some arguments or
"0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch" being
applied
by some other tool instead of quilt.

I only end up with some findings in the log files (log.do_fetch,
log.do_unpack which don't tell me much).


Where are the steps that apply the patches located?

Be Well :)
Alan




I've gotten to the

On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <alex.kiernan@hivehome.com>
wrote:

> On 1 November 2017 at 17:38, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>
>> I'm just upgrading to pyro and have some issues with u-boot-fw-utils.
>>
>> The error fails at do_compile stage which looks like this:
>>
>>     do_compile () {
>>             oe_runmake ${UBOOT_MACHINE}
>>             oe_runmake env
>>     }
>>
>>
>> The error is:
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make -j 16 CROSS_COMPILE=arm-senic-linux-gnueabi-
>> CC=arm-senic-linux-gnueabi-       gcc  -march=armv7ve -mfpu=neon-vfpv4
>>  -mfloat-abi=hard -mcpu=cortex-a7
>> --sysroot=/home/alan/senic-os-update/build/tmp-glibc/work/se
>> nic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017
>> .03+gitAUTOINC+5233f17333-r0/recipe-sysroot
>>  -O2 -pipe -g -feliminate-unused-debug-types
>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-
>> senic/v2017.03+gitAUTOINC+5233f17333-r0=/usr/src/debug/
>> u-boot-fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-
>> senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=
>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-
>> senic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=
>>  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed V=1
>> | ERROR: oe_runmake failed
>> | make -f ./Makefile silentoldconfig
>> | make -f ./scripts/Makefile.build obj=scripts/basic
>> |   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
>> -fomit-frame-pointer      -o scripts/basic/fixdep
>> scripts/basic/fixdep.c
>> | /bin/sh: 1: cc: not found
>>
>>
>> I would assume this is a to specific error to ask help about. It seems
>> that the compiler isn't being called correctly (it's called as cc,
>> which isn't the full compiler name).
>> Suggestions are welcome but that isn't the reason for my post.
>>
>>
> Guessing... apply this in your recipe:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/
> recipes-bsp/u-boot/files/default-gcc.patch?h=pyro
>
> --
> Alex Kiernan
> Senior Engineering Manager
>
> hivehome.com <http://www.hivehome.com>
>
>
>
> Hive | London | Cambridge | Houston | Toronto
> The information contained in or attached to this email is confidential and
> intended only for the use of the individual(s) to which it is addressed. It
> may contain information which is confidential and/or covered by legal
> professional or other privilege. The views expressed in this email are not
> necessarily the views of Centrica plc, and the company, its directors,
> officers or employees make no representation or accept any liability for
> their accuracy or completeness unless expressly stated to the contrary.
> Centrica Connected Home Limited (company no: 5782908), registered in
> England and Wales with its registered office at Millstream, Maidenhead
> Road, Windsor, Berkshire SL4 5GD.
>

--94eb2c0324c8f79e73055cfdf5db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the suggestions<div>Am currently implementing b=
oth of them and am trying to understand how the patching is done.</div><div=
><br></div><div>In the temp directory I can see all the tasks.=C2=A0</div><=
div>For some reasons the patch wasn&#39;t applied correctly and I&#39;m deb=
ugging why.</div><div><br></div><div>I have patches from before which are b=
eing correctly applied, one of them being &quot;0001-sun8i-configs-Add-CONF=
IG_BOOTCOUNT_LIMIT-ENV-for-men.patch&quot;.</div><div>Am using that one jus=
t as a reference for this example.</div><div>I want to see the steps done t=
o apply the patch so I do:</div><div><br></div><div>=C2=A0 =C2=A0 temp$ gre=
p -r 0001-sun8i-configs *<br></div><div>=C2=A0 =C2=A0 temp$ grep -r=C2=A0qu=
ilt *</div><div><br></div><div>I am expecting to see some commands related =
to the patching process in one of the run scripts.</div><div>For example,=
=C2=A0 &quot;quilt&quot; followed by some arguments or &quot;0001-sun8i-con=
figs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch&quot; being applied=C2=A0=
</div><div>by some other tool instead of quilt.=C2=A0</div><div><br></div><=
div>I only end up with some findings in the log files (log.do_fetch, log.do=
_unpack which don&#39;t tell me much).=C2=A0</div><div><br></div><div><br><=
/div><div>Where are the steps that apply the patches located?=C2=A0<br></di=
v><div><br></div><div>Be Well :)</div><div>Alan</div><div><br></div><div><b=
r></div><div><br><div><br></div><div>I&#39;ve gotten to the=C2=A0</div></di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, N=
ov 1, 2017 at 8:05 PM, Alex Kiernan <span dir=3D"ltr">&lt;<a href=3D"mailto=
:alex.kiernan@hivehome.com" target=3D"_blank">alex.kiernan@hivehome.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D"">On 1 Nove=
mber 2017 at 17:38, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto=
:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>=
&gt;</span> wrote:<br></span><div><div class=3D"h5"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">I&#39;m just upgrading to pyro and have some iss=
ues with u-boot-fw-utils.<br>
<br>
The error fails at do_compile stage which looks like this:<br>
<br>
=C2=A0 =C2=A0 do_compile () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake ${UBOOT_MACHINE}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake env<br>
=C2=A0 =C2=A0 }<br>
<br>
<br>
The error is:<br>
<br>
Log data follows:<br>
| DEBUG: Executing shell function do_compile<br>
| NOTE: make -j 16 CROSS_COMPILE=3Darm-senic-linux-<wbr>gnueabi-<br>
CC=3Darm-senic-linux-gnueabi-=C2=A0 =C2=A0 =C2=A0 =C2=A0gcc=C2=A0 -march=3D=
armv7ve -mfpu=3Dneon-vfpv4<br>
=C2=A0-mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>
--sysroot=3D/home/alan/senic-os-<wbr>update/build/tmp-glibc/work/se<wbr>nic=
_hub_beta-senic-linux-gnuea<wbr>bi/u-boot-fw-utils-senic/v2017<wbr>.03+gitA=
UTOINC+5233f17333-r0/<wbr>recipe-sysroot<br>
=C2=A0-O2 -pipe -g -feliminate-unused-debug-types<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-<wbr>linux-gnueabi/u-boot-fw-utils-<wbr>senic/v201=
7.03+gitAUTOINC+<wbr>5233f17333-r0=3D/usr/src/debug/<wbr>u-boot-fw-utils-se=
nic/v2017.<wbr>03+gitAUTOINC+5233f17333-r0<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-<wbr>linux-gnueabi/u-boot-fw-utils-<wbr>senic/v201=
7.03+gitAUTOINC+<wbr>5233f17333-r0/recipe-sysroot-<wbr>native=3D<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-<wbr>linux-gnueabi/u-boot-fw-utils-<wbr>senic/v201=
7.03+gitAUTOINC+<wbr>5233f17333-r0/recipe-sysroot=3D<br>
=C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed V=3D1<br>
| ERROR: oe_runmake failed<br>
| make -f ./Makefile silentoldconfig<br>
| make -f ./scripts/Makefile.build obj=3Dscripts/basic<br>
|=C2=A0 =C2=A0cc -Wp,-MD,scripts/basic/.fixdep.<wbr>d -Wall -Wstrict-protot=
ypes -O2<br>
-fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -o scripts/basic/fixdep<br>
scripts/basic/fixdep.c<br>
| /bin/sh: 1: cc: not found<br>
<br>
<br>
I would assume this is a to specific error to ask help about. It seems<br>
that the compiler isn&#39;t being called correctly (it&#39;s called as cc,<=
br>
which isn&#39;t the full compiler name).<br>
Suggestions are welcome but that isn&#39;t the reason for my post.<br>
<br></blockquote><div><br></div></div></div><div>Guessing... apply this in =
your recipe:</div><div><br></div><div><a href=3D"http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/files/default-gcc.patch?h=
=3Dpyro" target=3D"_blank">http://git.yoctoproject.org/<wbr>cgit/cgit.cgi/p=
oky/tree/meta/<wbr>recipes-bsp/u-boot/files/<wbr>default-gcc.patch?h=3Dpyro=
</a></div><span class=3D"HOEnZb"><font color=3D"#888888"><div><div><div cla=
ss=3D"m_2972955679539863485gmail_signature"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><span style=3D"font-size:12.8px;font-family:arial,helve=
tica,sans-serif"><br></span></div><div dir=3D"ltr"><span style=3D"font-size=
:12.8px;font-family:arial,helvetica,sans-serif">--=C2=A0</span></div><div d=
ir=3D"ltr"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sans=
-serif">Alex Kiernan</span><div><span style=3D"font-size:12.8px;font-family=
:arial,helvetica,sans-serif;color:rgb(255,122,0)">Senior Engineering Manage=
r</span><br style=3D"font-size:12.8px;font-family:arial,helvetica,sans-seri=
f"></div></div></div></div></div></div></div></font></span></div></div></di=
v><span class=3D"HOEnZb"><font color=3D"#888888">

<br>
<a href=3D"http://www.hivehome.com" target=3D"_blank">hivehome.com</a><div>=
<div><br></div><div><img src=3D"https://s3-eu-west-1.amazonaws.com/81023081=
2/HiveSig.png"></div><div><br></div><div><br></div><div><div style=3D"font-=
size:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fa=
mily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">Hive | London | C=
ambridge | Houston | Toronto<u></u><u></u></font></div><div style=3D"font-s=
ize:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fam=
ily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">The information co=
ntained in or attached to this email is confidential and intended only for =
the use of the individual(s) to which it is addressed. It may contain infor=
mation which is confidential and/or covered by legal professional or other =
privilege. The views expressed in this email are not necessarily the views =
of Centrica plc, and the company, its directors, officers or employees make=
 no representation or accept any liability for their accuracy or completene=
ss unless expressly stated to the contrary.=C2=A0<u></u><u></u></font></div=
><div style=3D"font-size:12px;background-color:rgb(255,255,255);margin:0cm =
0cm 0.0001pt;font-family:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b=
7">Centrica Connected Home Limited (company no: 5782908), registered in Eng=
land and Wales with its registered office at Millstream, Maidenhead Road, W=
indsor, Berkshire SL4 5GD.</font></div></div></div></font></span></blockquo=
te></div><br></div>

--94eb2c0324c8f79e73055cfdf5db--
