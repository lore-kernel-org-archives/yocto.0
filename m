Return-Path: <sanjuchopracool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B5B2E00C46; Tue, 18 Dec 2018 06:56:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sanjuchopracool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 376F8E009B1
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 06:56:51 -0800 (PST)
Received: by mail-lj1-f179.google.com with SMTP id c19-v6so14473207lja.5
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 06:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Q4RR8vLGjk4+T7A7NUjLqRfbDnlVQg99sODnyZVCd1Y=;
	b=GJCCoPHmajarPgxuAlzmmrbqYMbc6EdyI6WZ00qNlhrxGxyGqeHO1bE1MnEUF+kj/K
	XBnP+Cv0QXn4T3+IB3RNE8NoTMcTLGxO5EgLQmgj6pVavCjLviGnND9dV9cP2SgEIMQ5
	3gBvxboK6XAIE6Se7BRyCGCNi5lTKYYChJF330jVuh+iC7QbRPAu71YHsu33cgrlNdmh
	Ssf9OSnBOnqj060vIn2cqYitzicZDE/8v2AarztapwEsk1664qMoVvC/Zv6CmddvkKPg
	KWEoGLwG25enecZH2YRn9cb5mkzKD8mSd6ixZMavoEHY39N/TE8mWSfQ8Drb3U5OwvaL
	JgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Q4RR8vLGjk4+T7A7NUjLqRfbDnlVQg99sODnyZVCd1Y=;
	b=QPTtOrgb4f8pc3yoAxkCYk5aj1bWvs8KtVXOqEiEiwea+XuHbuDCvLBd2zJKpiEf/c
	ve/71HjF5F+zaX9utEZHcEuwfUfj+qyLfp7sOLKdl8HqB4e50ixYPNWQxgbMAllbxRjA
	fYjiM/XFAiVCnVGtYbH1DrIc5GwUUK+p08E83XhIGkxGqhsm1uoZp6ILK2cTHoJws0xo
	Ov9T6H2Rf16O+RucC3ilNdKuYry0i/GX3vK205lY/pG+q1C5PE6MdcoWVq2UsrQW9ptg
	oXeA2ED1Db2yuvOG/D4aiVDAUPZ9vkCTfXuWxX8snVclJlzn0k/vZscfSKP8x0EXHeUo
	qXyg==
X-Gm-Message-State: AA+aEWZILVRMC/x7IyQebrckLFI2gnnT5iWSu61juDvMPYhlnLmzrTd4
	3aVl5TLURk4mmY6452N03cEFAFlKqYgHLIaLuKk=
X-Google-Smtp-Source: AFSGD/WW30240a3kbATdWEcS6BC+KjPzzy0KlPOBhpguPv0LDvJVZvx2aFEf4dGzWyiCBPtsPMxPxq+2C2fsPq1HSr8=
X-Received: by 2002:a2e:20f:: with SMTP id
	15-v6mr10434585ljc.172.1545145009952; 
	Tue, 18 Dec 2018 06:56:49 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
	<CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
	<CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
	<CAMKF1so-DSbCCb5PavqLCkdsQ0vVPSOr6kRV_HEZrenzWDwWEQ@mail.gmail.com>
	<CAC0z2vFvJPrwMQSjRsJZGitb9WP0JOsOEBWTc=2tDJTf5czNZg@mail.gmail.com>
	<CAJTo0LY9NF5D0+f3eSuMBPADWBQHSN8ASd1By1uiVaEZq-M_jw@mail.gmail.com>
	<CAC0z2vGxYjWUbY1vYJ8T6p4yEfTUM2ZMxUSB-b9P6L2K0mRFvg@mail.gmail.com>
In-Reply-To: <CAC0z2vGxYjWUbY1vYJ8T6p4yEfTUM2ZMxUSB-b9P6L2K0mRFvg@mail.gmail.com>
From: sanjay chopra <sanjuchopracool@gmail.com>
Date: Tue, 18 Dec 2018 20:26:38 +0530
Message-ID: <CAC0z2vGXfp9CK7Bk_vyhtMyTRzmBOLeGTHgtYHust+dkTQsRQg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: build fails for qemux86
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
X-List-Received-Date: Tue, 18 Dec 2018 14:56:52 -0000
Content-Type: multipart/alternative; boundary="00000000000071dd49057d4d1bf5"

--00000000000071dd49057d4d1bf5
Content-Type: text/plain; charset="UTF-8"

Hi,

I copied poky downloads in home directory and after that I tried a clean
build.
It worked after that. That means there is some issues if the poky downloads
are kept in other partition (NTFS)

On Tue, Dec 18, 2018 at 7:08 PM sanjay chopra <sanjuchopracool@gmail.com>
wrote:

> I have not changed anything, I also tried with fresh download from
> https://www.yoctoproject.org/software-overview/downloads/
> I tried cleaning build directory.
>
> I have kept my downloads in a separate partition(NTFS), but I am building
> inside my home directory (ext4 partition).
> I used default configuration files except only one line change in
> local.conf
>
> DL_DIR ?= "/mnt/DATA_PARTITION/poky-downloads"
>
>
> On Tue, Dec 18, 2018 at 6:44 PM Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On Tue, 18 Dec 2018 at 13:07, sanjay chopra <sanjuchopracool@gmail.com>
>> wrote:
>> > + qemu-i386 -r 3.2.0 -E
>> LD_LIBRARY_PATH=/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib
>> -L
>> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
>> -E
>> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/libexec/fc-cache
>> --sysroot=/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
>> --system-only
>> > usage: qemu-i386 [options] program [arguments...]
>> > Linux CPU emulator (compiled for i386 emulation)
>>
>> So qemu doesn't like what it's been passed.  Unpacking what you posted:
>>
>> qemu-i386 \
>>   -r 3.2.0 \
>>   -E LD_LIBRARY_PATH=WORKDIR/rootfs/usr/lib:WORKDIR/rootfs/lib \
>>   -L WORKDIR/rootfs \
>>   -E \
>>   WORKDIR/rootfs/usr/libexec/fc-cache \
>>     --sysroot=WORKDIR/rootfs \
>>     --system-only
>>
>> For some reason an extra -E is being passed. Have you changed the
>> intercepts? This is what the script should look like:
>>
>>   $ cat scripts/postinst-intercepts/update_font_cache
>>   #!/bin/sh
>>   set -e
>>   PSEUDO_UNLOAD=1 ${binprefix}qemuwrapper -L $D -E
>> ${fontconfigcacheenv} $D${libexecdir}/${binprefix}fc-cache --sysro
>> ot=$D --system-only ${fontconfigcacheparams}
>>
>> Note there's only one -E entry.
>>
>> Ross
>>
>
>
> --
>
> *RegardsSanjay*
>


-- 

*RegardsSanjay*

--00000000000071dd49057d4d1bf5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small;colo=
r:#000000">Hi,</div><div class=3D"gmail_default" style=3D"font-size:small;c=
olor:#000000"><br></div><div class=3D"gmail_default" style=3D"font-size:sma=
ll;color:#000000">I copied poky downloads in home directory and after that =
I tried a clean build.</div><div class=3D"gmail_default" style=3D"font-size=
:small;color:#000000">It worked after that. That means there is some issues=
 if the poky downloads are kept in other partition (NTFS)<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Dec 18, 2018 at 7:08 =
PM sanjay chopra &lt;<a href=3D"mailto:sanjuchopracool@gmail.com">sanjuchop=
racool@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-size:small;color:rgb(0,0,0)">I have not changed anything,=
 I also tried with fresh download from <a href=3D"https://www.yoctoproject.=
org/software-overview/downloads/" target=3D"_blank">https://www.yoctoprojec=
t.org/software-overview/downloads/</a></div><div class=3D"gmail_default" st=
yle=3D"font-size:small;color:rgb(0,0,0)">I tried cleaning build directory.<=
br></div><div class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,=
0,0)"><br></div><div class=3D"gmail_default" style=3D"font-size:small;color=
:rgb(0,0,0)">I have kept my downloads in a separate partition(NTFS), but I =
am building inside my home directory (ext4 partition).</div><div class=3D"g=
mail_default" style=3D"font-size:small;color:rgb(0,0,0)">I used default con=
figuration files except only one line change in local.conf</div><div class=
=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)">

<p style=3D"margin:0px;text-indent:0px;white-space:pre-wrap">DL_DIR ?=3D &q=
uot;/mnt/DATA_PARTITION/poky-downloads&quot;</p></div><div class=3D"gmail_d=
efault" style=3D"font-size:small;color:rgb(0,0,0)"><br></div></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Dec 18, 2018 at 6:44 =
PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On Tue, 18 Dec 2018 at 13:07, sanjay chopra &lt;<a=
 href=3D"mailto:sanjuchopracool@gmail.com" target=3D"_blank">sanjuchopracoo=
l@gmail.com</a>&gt; wrote:<br>
&gt; + qemu-i386 -r 3.2.0 -E LD_LIBRARY_PATH=3D/home/sanju/qemu_check/tmp/w=
ork/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju=
/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/li=
b -L /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/=
1.0-r0/rootfs -E /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/rootfs/usr/libexec/fc-cache --sysroot=3D/home/sanju/qemu=
_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs --syste=
m-only<br>
&gt; usage: qemu-i386 [options] program [arguments...]<br>
&gt; Linux CPU emulator (compiled for i386 emulation)<br>
<br>
So qemu doesn&#39;t like what it&#39;s been passed.=C2=A0 Unpacking what yo=
u posted:<br>
<br>
qemu-i386 \<br>
=C2=A0 -r 3.2.0 \<br>
=C2=A0 -E LD_LIBRARY_PATH=3DWORKDIR/rootfs/usr/lib:WORKDIR/rootfs/lib \<br>
=C2=A0 -L WORKDIR/rootfs \<br>
=C2=A0 -E \<br>
=C2=A0 WORKDIR/rootfs/usr/libexec/fc-cache \<br>
=C2=A0 =C2=A0 --sysroot=3DWORKDIR/rootfs \<br>
=C2=A0 =C2=A0 --system-only<br>
<br>
For some reason an extra -E is being passed. Have you changed the<br>
intercepts? This is what the script should look like:<br>
<br>
=C2=A0 $ cat scripts/postinst-intercepts/update_font_cache<br>
=C2=A0 #!/bin/sh<br>
=C2=A0 set -e<br>
=C2=A0 PSEUDO_UNLOAD=3D1 ${binprefix}qemuwrapper -L $D -E<br>
${fontconfigcacheenv} $D${libexecdir}/${binprefix}fc-cache --sysro<br>
ot=3D$D --system-only ${fontconfigcacheparams}<br>
<br>
Note there&#39;s only one -E entry.<br>
<br>
Ross<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail-m_-6583856232203778115gmail-m_-73512805219399877gmail_signature"><div =
dir=3D"ltr"><div><span style=3D"background-color:rgb(0,0,0)"><i style=3D"co=
lor:rgb(51,204,255)"><span style=3D"background-color:rgb(255,255,255)"><spa=
n style=3D"color:rgb(0,0,0)">Regards<br>Sanjay</span><span></span></span></=
i></span><br></div></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><span style=3D"background-color:rgb(0=
,0,0)"><i style=3D"color:rgb(51,204,255)"><span style=3D"background-color:r=
gb(255,255,255)"><span style=3D"color:rgb(0,0,0)">Regards<br>Sanjay</span><=
span></span></span></i></span><br></div></div></div>

--00000000000071dd49057d4d1bf5--
