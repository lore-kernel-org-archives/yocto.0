Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43263E00E6B; Fri,  2 Mar 2018 01:42:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A354E00DFB
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 01:42:06 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id d13so1157894itf.0
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2018 01:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HvB9mMqyaSJ3Yyr7w+J0djUJBPVGS6R2x6etWbaSfl0=;
	b=PMKpZrWqkF63TkPnMI5S/WryUy0juRwxCXX4JQEVU1XMKGNYZH9y0YomAIErjgzbLN
	aY7agvTCmzH2iqW/n/ZOP+QFoshMDBoUFcoZ/OuTL0Lz97rkcXYw0v2zDa+17em13QJZ
	2FxNgpJfN+Dlj8DFR3nDvPwLt5yUOpXEupRic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HvB9mMqyaSJ3Yyr7w+J0djUJBPVGS6R2x6etWbaSfl0=;
	b=YVbe4kOTgRU7Sc2HNKE0rpkDCH2/yOxTQW8Dmxiq2tbR94zsWI/7IyCBICwybLTqj2
	wVqCDsZruuv1OZpOEgSkcjSDzXsnK/VFeSQIG+eI292B22D4lWRH2dExZmxY5RN13xLe
	mnozC5DPA/ShyKeY2kjI6QFv7LHnGgw/2AS6AtsbQiYO2aOblZCZ3Fg6gsNZeo38/C+5
	2obR2NAdtMJQZy4Oa3twOtMjIf3xgRp9c+fypCXjRmF/l7uPEVIskdxOciCL7XQrp5lO
	XEFpxmqErH4tOFQ7sDb6i0VOC5fhxMofuJvBGRbwfLsqsv23AKYeDuoZgQJr7mR+TkbP
	i2AQ==
X-Gm-Message-State: AElRT7EuUg8CxY2fKNUfRgvvzzCjb2jZFbTB20c796s+cOUron7Tpslg
	wyQavC1c6p38+PZFhsI8iXDmHM6O6i2Z7+9qTP/HTA==
X-Google-Smtp-Source: AG47ELtMtSflpuzikVhN0JNLWTzehLKeXPX8eKWkVc8/oWK3r8J2vdZ1Uq3sEsEdJuZQLPz3TbJ4s3jG57YHgYUlaF8=
X-Received: by 10.36.31.10 with SMTP id d10mr1545653itd.127.1519983726168;
	Fri, 02 Mar 2018 01:42:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Fri, 2 Mar 2018 01:42:05 -0800 (PST)
In-Reply-To: <CAALXFYx90SYoFULnTPJw5ZKraNJEvDdntPhfqzNCXTePL_ifGA@mail.gmail.com>
References: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
	<c3c07c48-7729-7f75-21cf-d09ce0c4db33@intel.com>
	<CAALXFYyVio5UzkZUVS1xAPnkgfTt-7rTO+0ApEnKD4F2Gd1OSw@mail.gmail.com>
	<a41363bb-bfcf-cf81-9fdb-52d365d18d45@intel.com>
	<CAALXFYx90SYoFULnTPJw5ZKraNJEvDdntPhfqzNCXTePL_ifGA@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 2 Mar 2018 10:42:05 +0100
Message-ID: <CAALXFYwodk3i0bDqYqgghRNqc3ftN_2nw0+hfV=hORRzOik0dQ@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Fri, 02 Mar 2018 09:42:09 -0000
Content-Type: multipart/alternative; boundary="001a1145e7fc10252505666aca34"

--001a1145e7fc10252505666aca34
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have modified poky/meta/recipes-core/initrdscripts/initramfs-framework/in=
it
to force a shell script when the "fatal" function is called:

# Prints a message and start a endless loop
fatal() {
    echo $1 >/dev/console
    echo >/dev/console
    sh

    #if [ -n "$bootparam_init_fatal_sh" ]; then
    #    sh
    #else
    #while [ "true" ]; do
    #   sleep 3600
    #done
    #fi
}

After regenerating the hddimage, adding "noapic" to bootargs and booting
the "install" option, I have a shell console available, but with a very
limited toolbox (cp, cat or even ls command are not available).

Some relevant error messages appear on the boot process. I copy theses
error messages by hand:

sd 0:0:0:0: Attached scsi generic sg0 type 0
sd 0:0:0:0: [sda] 234441648 512-byte logical blocks: (120 GB/1112GiB)
sd 0:0:0:0: [sda] Write Protect is off
sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't
support DPO or FUA
GPT: Primary header thinks Alt. header is not at the end of disk
GPT:1298455 !=3D 234441647
GPT: Alternate GPT header not at the end of the disk
GPT: 1298455 !=3D 234441647
GPT: Use GPU Parted to correct GPT errors.
 sda: sda1 sda2 sda3
sd 0:0:0:0: [sda] Attached SCSI disk

After that, some "command not found messages"

    /init: line78: touch: command not found
    /init: line81: mkdir: command not found
    /init: line82: mount: command not found
    /init: line86: cat: command not found
    /init: line98: grep: command not found
    /init: line112: sed: command not found

And after all, this error message appears:

    ERROR: Initramfs failed to initialize the system

Hope all this information can be helpful to fix this issue.

Thank you in advance! :-)



2018-03-02 9:52 GMT+01:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

>
> First of all, thank you for your support Mr. Anuj.
>
> I extracted "initrd" image contents:
>
> $ binwalk initrd
>
> DECIMAL       HEXADECIMAL     DESCRIPTION
> ------------------------------------------------------------
> --------------------
> 0             0x0             ASCII cpio archive (SVR4 with no CRC), file
> name: "kernel", file name length: "0x00000007", file size: "0x00000000"
> 120           0x78            ASCII cpio archive (SVR4 with no CRC), file
> name: "kernel/x86", file name length: "0x0000000B", file size: "0x0000000=
0"
> 244           0xF4            ASCII cpio archive (SVR4 with no CRC), file
> name: "kernel/x86/microcode", file name length: "0x00000015", file size:
> "0x00000000"
> 376           0x178           ASCII cpio archive (SVR4 with no CRC), file
> name: "kernel/x86/microcode/.enuineIntel.align.0123456789abc", file name
> length: "0x00000036", file size: "0x00000000"
> 540           0x21C           ASCII cpio archive (SVR4 with no CRC), file
> name: "kernel/x86/microcode/GenuineIntel.bin", file name length:
> "0x00000026", file size: "0x00183400"
> 1586864       0x1836B0        ASCII cpio archive (SVR4 with no CRC), file
> name: "TRAILER!!!", file name length: "0x0000000B", file size: "0x0000000=
0"
> 1587200       0x183800        gzip compressed data, maximum compression,
> from Unix, last modified: 2018-02-28 14:29:13
>
> $ dd if=3Dinitrd bs=3D1587200 skip=3D1 | gunzip | cpio -idm
>
> Now I have the initrd filesystem available. I can confirm there is a bug
> in that filesystem because the "init" script uses "sleep" but that tool i=
s
> not installed on it.
>
> # Prints a message and start a endless loop
> fatal() {
>     echo $1 >/dev/console
>     echo >/dev/console
>
>     if [ -n "$bootparam_init_fatal_sh" ]; then
>         sh
>     else
>     while [ "true" ]; do
>         sleep 3600
>     done
>     fi
> }
>
> As you pointed, that "init" script is located into poky/meta/recipes-core=
/
> initrdscripts/initramfs-framework/init. In that init script there are two
> calls to "fatal" function. Maybe this information can be useful to discov=
er
> what is happening.
>
> I have tested adding suggested "init_fatal_sh" bootarg but I don't get an=
y
> shell to debug the problem.
>
>
>
> 2018-03-02 9:15 GMT+01:00 Anuj Mittal <anuj.mittal@intel.com>:
>
>> On 03/02/2018 03:41 PM, Iv=C3=A1n Castell wrote:
>> >
>> > 2018-03-02 0:41 GMT+01:00 Anuj Mittal <anuj.mittal@intel.com
>> > <mailto:anuj.mittal@intel.com>>:
>> >
>> >     Hi,
>> >
>> >     On 03/01/2018 07:20 PM, Iv=C3=A1n Castell wrote:
>> >     >
>> >     > Is this the proper way to install the generated image in the har=
d
>> >     disk?
>> >     > Maybe I am doing something wrong?
>> >
>> >     Does the image boot up if you select 'boot'?
>> >
>> >
>> > I tested selecting 'boot' option and it happens exactly the same: a
>> > black screen appears when booting with default options, and when addin=
g
>> > "noapic", the screen is flooded of "sleep: command not found" messages=
.
>> >
>> >
>> >
>> >     Do you eventually get options to select storage media after all
>> >     these 'not found' messages if you select 'install'?
>> >
>> >
>> > After waiting more than 5 minutes, the "sleep: command not found"
>> > message continues flooding the screen.
>> >
>> >
>> >
>> >     Can you share the logs?
>> >
>> >
>> > If I could, I would do it, but I have no way to get those logs out of
>> > the box without a terminal available.
>>
>> The error is probably coming from
>> meta/recipes-core/initrdscripts/initramfs-framework/init.
>>
>> You can pass a boot parameter 'init_fatal_sh' and that should help you
>> drop to a shell and debug this problem further.
>>
>>
>
>
>

--001a1145e7fc10252505666aca34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have modified=C2=A0<span style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline">poky/meta/r=
ecipes-core/</span><wbr style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial"><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">initrdscripts/initramfs-</span>=
<wbr style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial"><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">framework/init to force a shell script when the &q=
uot;fatal&quot; function is called:</span><div><span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline"><b=
r></span></div><div><span style=3D"text-align:start;text-indent:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline"><div># Prints a message and start a =
endless loop</div><div>fatal() {</div><div>=C2=A0 =C2=A0 echo $1 &gt;/dev/c=
onsole</div><div>=C2=A0 =C2=A0 echo &gt;/dev/console</div><div>=C2=A0 =C2=
=A0 sh</div><div><br></div><div>=C2=A0 =C2=A0 #if [ -n &quot;$bootparam_ini=
t_fatal_sh&quot; ]; then</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0 sh</div><di=
v>=C2=A0 =C2=A0 #else</div><div>=C2=A0 =C2=A0 #while [ &quot;true&quot; ]; =
do</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0sleep 3600</div><div>=C2=A0 =C2=A0=
 #done</div><div>=C2=A0 =C2=A0 #fi</div><div>}</div><div><br></div><div>Aft=
er regenerating the hddimage, adding &quot;noapic&quot; to bootargs and boo=
ting the &quot;install&quot; option, I have a shell console available, but =
with a very limited <span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">toolbox (cp, cat or even ls c=
ommand are not available).=C2=A0</span></div><div><br></div><div>Some relev=
ant error messages appear on the boot process. I copy theses error messages=
 by hand:</div><div><br></div><div>sd 0:0:0:0: Attached scsi generic sg0 ty=
pe 0</div><div>sd 0:0:0:0: [sda] 234441648 512-byte logical blocks: (120 GB=
/1112GiB)</div><div>sd 0:0:0:0: [sda] Write Protect is off</div><div>sd 0:0=
:0:0: [sda] Write cache: enabled, read cache: enabled, doesn&#39;t support =
DPO or FUA</div><div>GPT: Primary header thinks Alt. header is not at the e=
nd of disk</div><div>GPT:1298455 !=3D 234441647</div><div>GPT: Alternate GP=
T header not at the end of the disk</div><div>GPT: 1298455 !=3D 234441647</=
div><div>GPT: Use GPU Parted to correct GPT errors.</div><div>=C2=A0sda: sd=
a1 sda2 sda3</div><div>sd 0:0:0:0: [sda] Attached SCSI disk</div><div><br><=
/div><div>After that, some &quot;command not found messages&quot;</div><div=
><br></div><div>=C2=A0 =C2=A0 /init: line78: touch: command not found<br></=
div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial;float:none;display:inline">=C2=A0 =C2=A0 /init: line81: mkdir: comm=
and not found</span><br></div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline"><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">=C2=A0 =C2=A0 /init: line82: mount: command not found</span><br=
></span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline"><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline">=C2=A0 =C2=A0 /init: line86: cat: command not found</=
span><br></span></span></div><div><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline"><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=
=A0 /init: line98: grep: command not found</span><br></span></span></span><=
/div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =
=C2=A0 /init: line112: sed: command not found</span><br></span></span></spa=
n></span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><span style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial;float:none;display:inline">=
<br></span></span></span></span></span></div><div><span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline"><span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">And after all, this error message appears:</s=
pan></span></span></span></span></div><div><span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline"><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><br></span></span></span></span></span></div><div><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 ERROR: I=
nitramfs failed to initialize the system</span></span></span></span></span>=
</div><div><br></div><div>Hope all this information can be helpful to fix t=
his issue.</div><div><br></div><div>Thank you in advance! :-)</div><div><br=
></div></span></div><div><span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline"><br></span></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-03-02 9:52 GMT+01:0=
0 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayars=
ystems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-co=
lor:initial"><br class=3D"m_-8893988390341426932gmail-Apple-interchange-new=
line">First of all, thank you for your support Mr. Anuj.=C2=A0</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration-style:initia=
l;text-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:i=
nitial">I extracted=C2=A0<span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline">&quot;initrd&quot; image=
=C2=A0</span>contents:</div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;text-decoration-style:initial;text-decoration-color:initial"><br></d=
iv><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-st=
yle:initial;text-decoration-color:initial">$ binwalk initrd=C2=A0<br></div>=
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial"><div><br></div><div>DECIMAL=C2=A0 =
=C2=A0 =C2=A0 =C2=A0HEXADECIMAL=C2=A0 =C2=A0 =C2=A0DESCRIPTION</div><div>--=
----------------------------<wbr>------------------------------<wbr>-------=
-------------</div><div>0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x=
0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ASCII cpio archive (SVR4 w=
ith no CRC), file name: &quot;kernel&quot;, file name length: &quot;0x00000=
007&quot;, file size: &quot;0x00000000&quot;</div><div>120=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00x78=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ASCII=
 cpio archive (SVR4 with no CRC), file name: &quot;kernel/x86&quot;, file n=
ame length: &quot;0x0000000B&quot;, file size: &quot;0x00000000&quot;</div>=
<div>244=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00xF4=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ASCII cpio archive (SVR4 with no CRC), file name: &quo=
t;kernel/x86/microcode&quot;, file name length: &quot;0x00000015&quot;, fil=
e size: &quot;0x00000000&quot;</div><div>376=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00x178=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ASCII cpio archive =
(SVR4 with no CRC), file name: &quot;kernel/x86/microcode/.enuineI<wbr>ntel=
.align.0123456789abc&quot;, file name length: &quot;0x00000036&quot;, file =
size: &quot;0x00000000&quot;</div><div>540=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00x21C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ASCII cpio archive =
(SVR4 with no CRC), file name: &quot;kernel/x86/microcode/GenuineI<wbr>ntel=
.bin&quot;, file name length: &quot;0x00000026&quot;, file size: &quot;0x00=
183400&quot;</div><div>1586864=C2=A0 =C2=A0 =C2=A0 =C2=A00x1836B0=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ASCII cpio archive (SVR4 with no CRC), file name: &quot;T=
RAILER!!!&quot;, file name length: &quot;0x0000000B&quot;, file size: &quot=
;0x00000000&quot;</div><div>1587200=C2=A0 =C2=A0 =C2=A0 =C2=A00x183800=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 gzip compressed data, maximum compression, from Un=
ix, last modified: 2018-02-28 14:29:13</div></div><div style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-=
color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;text-decoration-style:initial;text-decoration-color:initial">$ dd if=3D=
initrd bs=3D1587200 skip=3D1 | gunzip | cpio -idm<br></div><div style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;text-decoration-style:initial;text-de=
coration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;text-decoration-style:initial;text-decoration-color:initial">N=
ow I have the initrd filesystem available. I can confirm there is a bug in =
that filesystem because the &quot;init&quot; script uses &quot;sleep&quot; =
but that tool is not installed on it.</div><div style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:i=
nitial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration-style:initial;text-decoration-color:initial"><div># Prints a m=
essage and start a endless loop</div><div>fatal() {</div><div>=C2=A0 =C2=A0=
 echo $1 &gt;/dev/console</div><div>=C2=A0 =C2=A0 echo &gt;/dev/console</di=
v><div><br></div><div>=C2=A0 =C2=A0 if [ -n &quot;$bootparam_init_fatal_sh&=
quot; ]; then</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sh</div><div>=C2=A0 =C2=
=A0 else</div><div>=C2=A0 =C2=A0 while [ &quot;true&quot; ]; do</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sleep 3600</div><div>=C2=A0 =C2=A0 done</div><d=
iv>=C2=A0 =C2=A0 fi</div><div>}</div></div><div style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:i=
nitial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration-style:initial;text-decoration-color:initial">As you pointed, t=
hat &quot;init&quot; script is located into poky/meta/recipes-core/<wbr>ini=
trdscripts/initramfs-<wbr>framework/init. In that init script there are two=
 calls to &quot;fatal&quot; function. Maybe this information can be useful =
to discover what is happening.</div><div><br></div><div>I have tested addin=
g suggested &quot;init_fatal_sh&quot; bootarg but I don&#39;t get any shell=
 to debug the problem.</div><div><br></div><br></div><div class=3D"gmail_ex=
tra"><div><div class=3D"h5"><br><div class=3D"gmail_quote">2018-03-02 9:15 =
GMT+01:00 Anuj Mittal <span dir=3D"ltr">&lt;<a href=3D"mailto:anuj.mittal@i=
ntel.com" target=3D"_blank">anuj.mittal@intel.com</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span>On 03/02/2018 03:41 PM, Iv=C3=A1n Castell wr=
ote:<br>
&gt;<br>
&gt; 2018-03-02 0:41 GMT+01:00 Anuj Mittal &lt;<a href=3D"mailto:anuj.mitta=
l@intel.com" target=3D"_blank">anuj.mittal@intel.com</a><br>
</span>&gt; &lt;mailto:<a href=3D"mailto:anuj.mittal@intel.com" target=3D"_=
blank">anuj.mittal@intel.com</a>&gt;<wbr>&gt;:<br>
<span>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 03/01/2018 07:20 PM, Iv=C3=A1n Castell wrote:<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Is this the proper way to install the generate=
d image in the hard<br>
&gt;=C2=A0 =C2=A0 =C2=A0disk?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Maybe I am doing something wrong?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Does the image boot up if you select &#39;boot&#39;=
?<br>
&gt;<br>
&gt;<br>
&gt; I tested selecting &#39;boot&#39; option and it happens exactly the sa=
me: a<br>
&gt; black screen appears when booting with default options, and when addin=
g<br>
&gt; &quot;noapic&quot;, the screen is flooded of &quot;sleep: command not =
found&quot; messages.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Do you eventually get=C2=A0options to select storag=
e media after all<br>
&gt;=C2=A0 =C2=A0 =C2=A0these &#39;not found&#39; messages if=C2=A0you sele=
ct &#39;install&#39;?<br>
&gt;<br>
&gt;<br>
&gt; After waiting more than 5 minutes, the &quot;sleep: command not found&=
quot;<br>
&gt; message continues flooding the screen.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Can you share the logs?<br>
&gt;<br>
&gt;<br>
&gt; If I could, I would do it, but I have no way to get those logs out of<=
br>
&gt; the box without a terminal available.<br>
<br>
</span>The error is probably coming from<br>
meta/recipes-core/initrdscript<wbr>s/initramfs-framework/init.<br>
<br>
You can pass a boot parameter &#39;init_fatal_sh&#39; and that should help =
you<br>
drop to a shell and debug this problem further.<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div></div></div></div><=
/blockquote></div>
</div></div>

--001a1145e7fc10252505666aca34--
