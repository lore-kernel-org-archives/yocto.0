Return-Path: <sudhangathan@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0ACCE014BD
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 18:59:22 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id f11so19200wgh.3
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 18:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=w5JzymUIZoLJwzCGRefOPK2myWPyk2sokbFDHJI9Mf0=;
	b=KRp181SDHa0E9S55dJEEiForkt9U2eEwkgB6wPTNEkejj3YuvLjxsB501jsRgIvhyi
	7p321ehiHboiHUDkVH1NiVIrVLrubE2HtGLwpMb1cX+eYKRqRnRfXTguNAZ1E45U/qd8
	wMN5S/T/rB/+Z/uSJitus/JhVuIcZYPDKsYYVPM796o/ukDKL7IOcKyZESV2c/HR44ks
	Jr4kKiuHDLmCv7rJ6Suutq+nl1pf7BsSidsMQFAj4RIJn437r5PPMjYjcrgRbjdDhjfc
	NXzH+NDxbeB/fncnFkeA3VRECrNct+RmVWz1hw4fdeOCeMOxGRbwZmfMEEfIDxDVIWpT
	T1nw==
X-Received: by 10.180.83.199 with SMTP id s7mr21294364wiy.19.1367287161319;
	Mon, 29 Apr 2013 18:59:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.113.135 with HTTP; Mon, 29 Apr 2013 18:59:01 -0700 (PDT)
In-Reply-To: <CADwiJcY-cei6niPpzeeEeDYX5t+E48YQsVYzoeO44wfVt05pcA@mail.gmail.com>
References: <CAGX3a9_nTNHnFfnyup52AGD=ApvZy8WW0dNkSo-V2mO5hGvh5w@mail.gmail.com>
	<CADwiJcY-cei6niPpzeeEeDYX5t+E48YQsVYzoeO44wfVt05pcA@mail.gmail.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Tue, 30 Apr 2013 07:29:01 +0530
Message-ID: <CAGX3a98s4E0=1_pfATjWMV46nBhEuVm1azL4psc1acOMrzaY1A@mail.gmail.com>
To: Jun Yoshida <fantajista1089@gmail.com>, yocto@yoctoproject.org, 
	Chris Whittenburg <whittenburg@gmail.com>
Subject: Re: Missing something in UAP for Overo-Fire
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
X-List-Received-Date: Tue, 30 Apr 2013 01:59:23 -0000
Content-Type: multipart/alternative; boundary=14dae9cc973c8e769b04db8a59b9

--14dae9cc973c8e769b04db8a59b9
Content-Type: text/plain; charset=ISO-8859-1

bitbake -c compile_kernelmodules -f virtual/kernel ------ is only
working...
just bibake virtual/kernel too didn't work..
I had already configured it to compile as modules manually in defconfig. So
i didn't require "bitbake -c menuconfig virtual/kernel".

Thank a lot...!!!!!,
I'm now trying to up dhcp  server for IP addresses...!! any suggestions
would be helpful.
---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------

On Thu, Apr 25, 2013 at 7:22 PM, Chris Whittenburg <whittenburg@gmail.com>
 wrote:

>
> Hello,
>
> I think you should try the following to force kernel modules to be built.
>
> bitbake -c compile_kernelmodules -f virtual/kernel
>
> Or you could clean and "bitbake virtual/kernel" and it should build the
> kernel and modules.
>
> -chris
>

On Thu, Apr 25, 2013 at 8:02 PM, Jun Yoshida <fantajista1089@gmail.com>wrote:

> Hello,
>
> How about confirming your kernel configuration by executing the following
> command ?
>
> # bitbake -c menuconfig virtual/kernel
>
> If "CONFIG_LIBERTAS_UAP" is set, please build only your kernel by
>
> # bitbake -f -c compile virtual/kernel
> # bitbake virtual/kernel
>
> uap8xxx.ko will be in modules*.tar.bz2, and copy it to your rootfs.
>
>
> 2013/4/25 Sudhangathan B S <sudhangathan@gmail.com>
>
>>  Hello,
>>
>> I have included this folder in my poky folder, but still i'm not getting
>> the UAP drivers and firmware up and running.
>>
>> https://github.com/chrisw957/meta-gumstix/commit/d0dbc51e1643860f9066c5e817db023fb062362c
>>
>>
>>
>> I'm compiling for Gumstix overo fire on an x86 Ubuntu Studio machine.
>> No files related to the UAP are getting included in the rootfs tar ball.
>> I'm not able to find the uap8xxx.ko file in the final build.
>> The contents of this folder are:
>>
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-sakoman-3.5-r0/git/drivers/net/wireless/libertas_uap
>> built-in.o
>> Makefile
>> uap_debug.c
>> uap_drv.h
>> uap_fw.h
>> uap_headers.h
>> uap_main.c
>> uap_proc.c
>> uap_sdio_mmc.c
>> uap_sdio_mmc.h
>>
>> Looks like it is partially getting compiled but not the final .ko files.
>> I'l be glad to reply with any other details.
>>
>> Regards,
>> ---------------------------------
>> Sudhangathan BS
>> Ph:(+91) 9731-905-205
>> ---------------------------------
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--14dae9cc973c8e769b04db8a59b9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">bitbake -c compile_kernelmodules -f virtual/kernel</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">=A0------ is only working...=A0=
</span><div>

<font face=3D"arial, sans-serif">just bibake virtual/kernel too didn&#39;t =
work..<br></font><div><font face=3D"arial, sans-serif">I had already config=
ured it to compile as modules manually in defconfig. So i didn&#39;t requir=
e &quot;</font><span style=3D"font-family:arial,sans-serif;font-size:13px">=
bitbake -c menuconfig virtual/kernel</span><span style=3D"font-family:arial=
,sans-serif">&quot;.</span></div>

<div><div style><span style=3D"font-family:arial,sans-serif;font-size:13px"=
><br></span></div><div style><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">Thank a lot...!!!!!,</span></div></div><div class=3D"gmail_ex=
tra">

I&#39;m now trying to up dhcp =A0server for IP addresses...!! any suggestio=
ns would be helpful.<br clear=3D"all"><div>--------------------------------=
-<br>Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>--------------------------=
-------</div>


<div class=3D"gmail_extra"><br></div>On Thu, Apr 25, 2013 at 7:22 PM, Chris=
 Whittenburg=A0<span dir=3D"ltr">&lt;<a href=3D"mailto:whittenburg@gmail.co=
m" target=3D"_blank">whittenburg@gmail.com</a>&gt;</span>=A0wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;paddin=
g-left:1ex">

<div dir=3D"ltr"><div><div><div><div><div><br></div>Hello,<br><br></div>I t=
hink you should try the following to force kernel modules to be built.<br><=
/div><div><br></div>bitbake -c compile_kernelmodules -f virtual/kernel<br>

<br></div>Or you could clean and &quot;bitbake virtual/kernel&quot; and it =
should build the kernel and modules.<span class=3D""><font color=3D"#888888=
"><br><br></font></span></div><span class=3D""><font color=3D"#888888">-chr=
is<br>

</font></span></div></blockquote><br><div class=3D"gmail_quote">On Thu, Apr=
 25, 2013 at 8:02 PM, Jun Yoshida <span dir=3D"ltr">&lt;<a href=3D"mailto:f=
antajista1089@gmail.com" target=3D"_blank">fantajista1089@gmail.com</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">Hello,=A0<div><br></div><div>How about co=
nfirming your kernel configuration by executing the following command ?</di=
v>

<div><br></div><div># bitbake -c menuconfig virtual/kernel</div><div>
<br></div><div>If &quot;CONFIG_LIBERTAS_UAP&quot; is set, please build only=
 your kernel by</div><div><br></div><div># bitbake -f -c compile virtual/ke=
rnel</div><div># bitbake virtual/kernel<br></div>
<div><br></div><div><span style=3D"font-family:arial,sans-serif;font-size:1=
4.44444465637207px">uap8xxx.ko will be in modules*.tar.bz2, and copy it to =
your rootfs.</span><br></div></div><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote"><div><div class=3D"h5">2013/4/25 Sudhangatha=
n B S <span dir=3D"ltr">&lt;<a href=3D"mailto:sudhangathan@gmail.com" targe=
t=3D"_blank">sudhangathan@gmail.com</a>&gt;</span><br></div></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-le=
ft:1ex">

<div><div class=3D"h5">
<div dir=3D"ltr"><div>Hello,<br><br></div>I have included this folder in my=
 poky folder, but still i&#39;m not getting the UAP drivers and firmware up=
 and running.<br><div><pre><a href=3D"https://github.com/chrisw957/meta-gum=
stix/commit/d0dbc51e1643860f9066c5e817db023fb062362c" target=3D"_blank">htt=
ps://github.com/chrisw957/meta-gumstix/commit/d0dbc51e1643860f9066c5e817db0=
23fb062362c</a><br>




</pre>I&#39;m compiling for Gumstix overo fire on an x86 Ubuntu Studio mach=
ine.<br></div><div>No files related to the UAP are getting included in the =
rootfs tar ball. I&#39;m not able to find the uap8xxx.ko file in the final =
build.<br>




The contents of this folder are:<br>/home/desen555/yocto/build/tmp/work/ove=
ro-poky-linux-gnueabi/linux-sakoman-3.5-r0/git/drivers/net/wireless/liberta=
s_uap<br>built-in.o<br>Makefile=A0 <br>uap_debug.c=A0 <br>uap_drv.h=A0 <br>=
uap_fw.h=A0 <br>




uap_headers.h=A0 <br>uap_main.c=A0 <br>uap_proc.c=A0 <br>uap_sdio_mmc.c=A0 =
<br>uap_sdio_mmc.h<br><br></div><div>Looks like it is partially getting com=
piled but not the final .ko files. I&#39;l be glad to reply with any other =
details.<br>




<br></div><div>Regards,<br clear=3D"all"></div><div><div><div>-------------=
--------------------<br>Sudhangathan BS<br>Ph:<a href=3D"tel:%28%2B91%29%20=
9731-905-205" value=3D"+919731905205" target=3D"_blank">(+91) 9731-905-205<=
/a><br>


---------------------------------</div>
</div></div></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br></div></div></div>

--14dae9cc973c8e769b04db8a59b9--
