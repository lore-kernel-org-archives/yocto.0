Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DB81E00CE8; Thu,  2 Nov 2017 04:46:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_05_10,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.171 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f171.google.com (mail-ot0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A300E00CC4
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 04:46:32 -0700 (PDT)
Received: by mail-ot0-f171.google.com with SMTP id n74so1229342ota.8
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 04:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=PmZyRGUtddgoUBLAyEOkkEZpn+Dow7yESrh+dwPofpA=;
	b=XqJkpNK0ZbllIEDBw2ujilFZFOV4zQI5pRZFjM8l38L1EH57S3xf2qReeYZH98ooGs
	WxxA9xeMC2KY8Rdc0Jkx6KW8JtD98rRnWougboOj0J36qrlvnCPNMv10D172vOAgfEWl
	3adpjiUiTRWLhjjEIblqJHUqBXswsSDpALLkeGbgZB/qzEgUVFx9XZi/PWnYbm9dD9C0
	rBz172IVgy9G3GHgd8hFh4833HYCEUtqRR07dlhcsNtkt5hSKZRuXU4v09TtXq3PlSFQ
	W8NeiuQNuGrVT5f5RGnUveC3skImewKjqtbl9en+ykIIKy6MiM/1eiOOxwJ0NirrEJAl
	6SZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=PmZyRGUtddgoUBLAyEOkkEZpn+Dow7yESrh+dwPofpA=;
	b=c3pXzinhcmy2qHlVTA8Yx3qik4Hgs1uKyJEH9YbHZNs4ZiiDFKXxTohKEN1DVCxi4z
	MiS7voL1wbik8EK/8408l+/weju9PT4SUIfWUnpuoulNlZ9UFb8SOINrPjjXbhEkfhBD
	ppglstLJWvKzyVWflfos8xF76zryUVLHdVtbTzFZ7GQXnn3i4egiHkODlWcEiUXPprxw
	oUehDGKYx/1/NSOxeW+2szT4mIbH6TF3fL71KG0VVbmw4g8uDEMjEjQ/HNX88Jr2fBwP
	1dk+3jrxEqoOqVwdDMxnC7Aagtopd0Ss/a27Zay87BC4t5F8d151/u4ixnHwkFHXzQxY
	OccA==
X-Gm-Message-State: AJaThX46RIC22DA+vWyv/EZ3Z5ZAi4Rra1iAJlhpxxraKehBLE2FJ1j+
	LHaquNGqAvfIpt62iG3MjVjBVZIg+v8WRB1xh8hIng==
X-Google-Smtp-Source: ABhQp+TOIDnSJIz3zCaVXCF6cTC5yijxGiPCHRDjGvs3YU+rrWPQIm3lGiwZLzMCQGh2ezhRqhBnjseyh85Ji6/RBo4=
X-Received: by 10.157.37.106 with SMTP id j39mr1745918otd.30.1509623192453;
	Thu, 02 Nov 2017 04:46:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 2 Nov 2017 04:46:32 -0700 (PDT)
In-Reply-To: <CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
	<CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
	<CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 2 Nov 2017 12:46:32 +0100
Message-ID: <CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 02 Nov 2017 11:46:35 -0000
Content-Type: multipart/alternative; boundary="001a1141ad062195ed055cfe8a35"

--001a1141ad062195ed055cfe8a35
Content-Type: text/plain; charset="UTF-8"

I see, so I can't use the devshell to debug why the patch hasn't been
correctly applied.

The answer you gave help for debugging actual build and configure problems.
Debugging patching seems to be out scope for this thread.
Will start a new one.


On Thu, Nov 2, 2017 at 12:13 PM, Burton, Ross <ross.burton@intel.com> wrote:

> The patching is done by a bbclass (patch.bbclass) and helper modules
> (meta/oe/lib/patch.py), so you can't execute it like a shell task (such as
> do_compile).
>
> Ross
>
> On 2 November 2017 at 11:05, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>
>> Thanks for the suggestions
>> Am currently implementing both of them and am trying to understand how
>> the patching is done.
>>
>> In the temp directory I can see all the tasks.
>> For some reasons the patch wasn't applied correctly and I'm debugging why.
>>
>> I have patches from before which are being correctly applied, one of them
>> being "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch".
>> Am using that one just as a reference for this example.
>> I want to see the steps done to apply the patch so I do:
>>
>>     temp$ grep -r 0001-sun8i-configs *
>>     temp$ grep -r quilt *
>>
>> I am expecting to see some commands related to the patching process in
>> one of the run scripts.
>> For example,  "quilt" followed by some arguments or
>> "0001-sun8i-configs-Add-CONFIG_BOOTCOUNT_LIMIT-ENV-for-men.patch" being
>> applied
>> by some other tool instead of quilt.
>>
>> I only end up with some findings in the log files (log.do_fetch,
>> log.do_unpack which don't tell me much).
>>
>>
>> Where are the steps that apply the patches located?
>>
>> Be Well :)
>> Alan
>>
>>
>>
>>
>> I've gotten to the
>>
>> On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <alex.kiernan@hivehome.com>
>> wrote:
>>
>>> On 1 November 2017 at 17:38, Alan Martinovic <alan.martinovic@senic.com>
>>> wrote:
>>>
>>>> I'm just upgrading to pyro and have some issues with u-boot-fw-utils.
>>>>
>>>> The error fails at do_compile stage which looks like this:
>>>>
>>>>     do_compile () {
>>>>             oe_runmake ${UBOOT_MACHINE}
>>>>             oe_runmake env
>>>>     }
>>>>
>>>>
>>>> The error is:
>>>>
>>>> Log data follows:
>>>> | DEBUG: Executing shell function do_compile
>>>> | NOTE: make -j 16 CROSS_COMPILE=arm-senic-linux-gnueabi-
>>>> CC=arm-senic-linux-gnueabi-       gcc  -march=armv7ve -mfpu=neon-vfpv4
>>>>  -mfloat-abi=hard -mcpu=cortex-a7
>>>> --sysroot=/home/alan/senic-os-update/build/tmp-glibc/work/se
>>>> nic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-senic/v2017
>>>> .03+gitAUTOINC+5233f17333-r0/recipe-sysroot
>>>>  -O2 -pipe -g -feliminate-unused-debug-types
>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0=/usr/src/debug/u-boot-
>>>> fw-utils-senic/v2017.03+gitAUTOINC+5233f17333-r0
>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot-native=
>>>> -fdebug-prefix-map=/home/alan/senic-os-update/build/tmp-glib
>>>> c/work/senic_hub_beta-senic-linux-gnueabi/u-boot-fw-utils-se
>>>> nic/v2017.03+gitAUTOINC+5233f17333-r0/recipe-sysroot=
>>>>  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed V=1
>>>> | ERROR: oe_runmake failed
>>>> | make -f ./Makefile silentoldconfig
>>>> | make -f ./scripts/Makefile.build obj=scripts/basic
>>>> |   cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
>>>> -fomit-frame-pointer      -o scripts/basic/fixdep
>>>> scripts/basic/fixdep.c
>>>> | /bin/sh: 1: cc: not found
>>>>
>>>>
>>>> I would assume this is a to specific error to ask help about. It seems
>>>> that the compiler isn't being called correctly (it's called as cc,
>>>> which isn't the full compiler name).
>>>> Suggestions are welcome but that isn't the reason for my post.
>>>>
>>>>
>>> Guessing... apply this in your recipe:
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/rec
>>> ipes-bsp/u-boot/files/default-gcc.patch?h=pyro
>>>
>>> --
>>> Alex Kiernan
>>> Senior Engineering Manager
>>>
>>> hivehome.com <http://www.hivehome.com>
>>>
>>>
>>>
>>> Hive | London | Cambridge | Houston | Toronto
>>> The information contained in or attached to this email is confidential
>>> and intended only for the use of the individual(s) to which it is
>>> addressed. It may contain information which is confidential and/or covered
>>> by legal professional or other privilege. The views expressed in this email
>>> are not necessarily the views of Centrica plc, and the company, its
>>> directors, officers or employees make no representation or accept any
>>> liability for their accuracy or completeness unless expressly stated to the
>>> contrary.
>>> Centrica Connected Home Limited (company no: 5782908), registered in
>>> England and Wales with its registered office at Millstream, Maidenhead
>>> Road, Windsor, Berkshire SL4 5GD.
>>>
>>
>>
>

--001a1141ad062195ed055cfe8a35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see, so I can&#39;t use the devshell to debug why the pa=
tch hasn&#39;t been correctly applied.=C2=A0=C2=A0<div><br></div><div>The a=
nswer you gave help for debugging actual build and configure problems.<br><=
/div><div>Debugging patching seems to be out scope for this thread.<br>Will=
 start a new one.</div><div><div><span style=3D"font-size:12.8px"><br></spa=
n></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, N=
ov 2, 2017 at 12:13 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">The patching=
 is done by a bbclass (patch.bbclass) and helper modules (meta/oe/lib/patch=
.py), so you can&#39;t execute it like a shell task (such as do_compile).<s=
pan class=3D"m_-9066818731552652358HOEnZb"><font color=3D"#888888"><div><br=
></div><div>Ross</div></font></span></div><div class=3D"m_-9066818731552652=
358HOEnZb"><div class=3D"m_-9066818731552652358h5"><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 2 November 2017 at 11:05, Alan Martino=
vic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" targ=
et=3D"_blank">alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr">Thanks for the suggestions<div>Am cur=
rently implementing both of them and am trying to understand how the patchi=
ng is done.</div><div><br></div><div>In the temp directory I can see all th=
e tasks.=C2=A0</div><div>For some reasons the patch wasn&#39;t applied corr=
ectly and I&#39;m debugging why.</div><div><br></div><div>I have patches fr=
om before which are being correctly applied, one of them being &quot;0001-s=
un8i-configs-Add-CONFIG<wbr>_BOOTCOUNT_LIMIT-ENV-for-men.p<wbr>atch&quot;.<=
/div><div>Am using that one just as a reference for this example.</div><div=
>I want to see the steps done to apply the patch so I do:</div><div><br></d=
iv><div>=C2=A0 =C2=A0 temp$ grep -r 0001-sun8i-configs *<br></div><div>=C2=
=A0 =C2=A0 temp$ grep -r=C2=A0quilt *</div><div><br></div><div>I am expecti=
ng to see some commands related to the patching process in one of the run s=
cripts.</div><div>For example,=C2=A0 &quot;quilt&quot; followed by some arg=
uments or &quot;0001-sun8i-configs-Add-CONFIG<wbr>_BOOTCOUNT_LIMIT-ENV-for-=
men.p<wbr>atch&quot; being applied=C2=A0</div><div>by some other tool inste=
ad of quilt.=C2=A0</div><div><br></div><div>I only end up with some finding=
s in the log files (log.do_fetch, log.do_unpack which don&#39;t tell me muc=
h).=C2=A0</div><div><br></div><div><br></div><div>Where are the steps that =
apply the patches located?=C2=A0<br></div><div><br></div><div>Be Well :)</d=
iv><div>Alan</div><div><br></div><div><br></div><div><br><div><br></div><di=
v>I&#39;ve gotten to the=C2=A0</div></div></div><div class=3D"m_-9066818731=
552652358m_-1287795589794992332HOEnZb"><div class=3D"m_-9066818731552652358=
m_-1287795589794992332h5"><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Wed, Nov 1, 2017 at 8:05 PM, Alex Kiernan <span dir=3D"ltr">&lt=
;<a href=3D"mailto:alex.kiernan@hivehome.com" target=3D"_blank">alex.kierna=
n@hivehome.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span>On=
 1 November 2017 at 17:38, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D=
"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.=
com</a>&gt;</span> wrote:<br></span><div><div class=3D"m_-90668187315526523=
58m_-1287795589794992332m_-6888141748760329520h5"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">I&#39;m just upgrading to pyro and have some issue=
s with u-boot-fw-utils.<br>
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
UTOINC+5233f17333-r0/r<wbr>ecipe-sysroot<br>
=C2=A0-O2 -pipe -g -feliminate-unused-debug-types<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0=3D/usr/src/debug/u-boot-<wbr>fw-utils-se=
nic/v2017.03+gitAUT<wbr>OINC+5233f17333-r0<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0/recipe-sysroot-native=3D<br>
-fdebug-prefix-map=3D/home/alan/<wbr>senic-os-update/build/tmp-glib<wbr>c/w=
ork/senic_hub_beta-senic-li<wbr>nux-gnueabi/u-boot-fw-utils-se<wbr>nic/v201=
7.03+gitAUTOINC+5233f1<wbr>7333-r0/recipe-sysroot=3D<br>
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
=3Dpyro" target=3D"_blank">http://git.yoctoproject.org/cg<wbr>it/cgit.cgi/p=
oky/tree/meta/rec<wbr>ipes-bsp/u-boot/files/default-<wbr>gcc.patch?h=3Dpyro=
</a></div><span class=3D"m_-9066818731552652358m_-1287795589794992332m_-688=
8141748760329520HOEnZb"><font color=3D"#888888"><div><div><div class=3D"m_-=
9066818731552652358m_-1287795589794992332m_-6888141748760329520m_2972955679=
539863485gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif"><=
br></span></div><div dir=3D"ltr"><span style=3D"font-size:12.8px;font-famil=
y:arial,helvetica,sans-serif">--=C2=A0</span></div><div dir=3D"ltr"><span s=
tyle=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif">Alex Kiern=
an</span><div><span style=3D"font-size:12.8px;font-family:arial,helvetica,s=
ans-serif;color:rgb(255,122,0)">Senior Engineering Manager</span><br style=
=3D"font-size:12.8px;font-family:arial,helvetica,sans-serif"></div></div></=
div></div></div></div></div></font></span></div></div></div><span class=3D"=
m_-9066818731552652358m_-1287795589794992332m_-6888141748760329520HOEnZb"><=
font color=3D"#888888">

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
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div></div></div>

--001a1141ad062195ed055cfe8a35--
