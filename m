Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F13AE0140A
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 08:02:37 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jz10so505931veb.33
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 08:02:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ybnRdfI3RIf8Mz5h2HU0oFMpjcQsO5Xh4gWMwCtykXU=;
	b=H6sqkl2unzBC87RpUiCcg14a/IWA3JMu+HMl3f3JWv24j4Sjs5jNkMBmpKcG08c0hs
	kdjmrSmAg27KPjERWLMeF54r/KeTNlAdKCm21J7Z43hXO5mpt2xihukSNy83tvEp4Sxg
	MLl8sFZu88/i+ARqXLnRNSheVcxLCoGyhu9Gmpo6oP8kiyPDZ2IRjPevshVd6wdjrH5b
	M2+salOEFIEh7VIpLO5EXBDuZf7OZvwMzI2+/pIuHY24j+NNvsYJc+8PXtrom1CHIpv9
	rVRAICWBDBvtNA1FyeRSBKvl5mww4QI9qPfTymMzF0VVJEomWvBwZ5F4h+Ewl7PZoM4l
	e++g==
X-Received: by 10.220.119.200 with SMTP id a8mr1797278vcr.38.1366124556445;
	Tue, 16 Apr 2013 08:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 16 Apr 2013 08:02:16 -0700 (PDT)
In-Reply-To: <CANwz6nypaO6k6qWqu+3yGB0CTY8C_ko0jurkrwtO=v4umvWvHw@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
	<CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
	<CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
	<CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
	<CANwz6nzYSqU=YT0V11Jo7dp0TX-NThe-yVXNCWNDEOXAy8-r2A@mail.gmail.com>
	<CAJTo0LYbbWMX6Gf9eOFO3HgCeio94rFLKfXSK7T8qiSs-WN5gw@mail.gmail.com>
	<CANwz6nypaO6k6qWqu+3yGB0CTY8C_ko0jurkrwtO=v4umvWvHw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Apr 2013 16:02:16 +0100
Message-ID: <CAJTo0Lb7cnx9fT5DQ=zyyCPGc9SGGTX5yKXW6LK5QtQ_Lg8kbQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQn2Jqq8gJF87YecOiAt8G6COyU+G5odSs95RaiV8NNRLySuDeGhJRU+E+BGpCLtfSdOmSzJ
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 15:02:37 -0000
Content-Type: multipart/alternative; boundary=bcaec54eed56e7ffbf04da7ba8c3

--bcaec54eed56e7ffbf04da7ba8c3
Content-Type: text/plain; charset=UTF-8

Hi,

Re-CCing the list so everyone else can see.

A quick comparison of the beagle and panda lists using "diff" shows exactly
what I was expecting.  Slightly different X configuration (omap+evdev vs
keyboard+mouse+evdev+fbdev) and a massively different kernel configuration:
the beaglebone image has 39 kernel module packages whereas the pandaboard
has 2141.

The Panda image appears to be pulling in every kernel module, instead of
the just the ones you want.  This is probably meta-ti's fault.

Ross

On 16 April 2013 15:52, Edward Vidal <vidal.develone@gmail.com> wrote:

> Ross,
> I attaching the pkgslist if it will help.  Are there anything else that I
> can provide?
> Thanks
> Should these be sent to the mailing list?
>
>  beagleboard_pkglist041513<https://docs.google.com/file/d/0B11sthVgwfufY0l1Q05TaUJCblE/edit?usp=drive_web>
>
>
>
> On Tue, Apr 16, 2013 at 8:41 AM, Burton, Ross <ross.burton@intel.com>wrote:
>
>> On 16 April 2013 15:35, Edward Vidal <vidal.develone@gmail.com> wrote:
>> > They all use EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk".in
>> local.conf
>> > Something within the build is deciding which pkgs get installed between
>> > different builds.  I would expect several different RPMs but not
>> hundreds as
>> > was the case.
>>
>> Different BSPs can cause different packages to get pulled in, but
>> without seeing full package lists from each of the images nobody can
>> really comment on what is causing the differences.
>>
>> Maybe the meta-ti kernels are building more options as modules in
>> their own packages?  Maybe you've found a bug in the locale package
>> selection? It's impossible to say without actually seeing the package
>> lists.
>>
>> Ross
>>
>
>

--bcaec54eed56e7ffbf04da7ba8c3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"text-align:left">Hi,</div><div style=3D"text-align:left"><br>=
</div><div style=3D"text-align:left">Re-CCing the list so everyone else can=
 see.</div><div style=3D"text-align:left"><br></div><div style=3D"text-alig=
n:left">

A quick comparison of the beagle and panda lists using &quot;diff&quot; sho=
ws exactly what I was expecting. =C2=A0Slightly different X configuration (=
omap+evdev vs keyboard+mouse+evdev+fbdev) and a massively different kernel =
configuration: the beaglebone image has 39 kernel module packages whereas t=
he pandaboard has 2141.</div>

<div style=3D"text-align:left"><br></div><div style=3D"text-align:left">The=
 Panda image appears to be pulling in every kernel module, instead of the j=
ust the ones you want. =C2=A0This is probably meta-ti&#39;s fault.</div><di=
v style=3D"text-align:left">

<br></div><div style=3D"text-align:left">Ross</div><br><div class=3D"gmail_=
quote">On 16 April 2013 15:52, Edward Vidal <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Ross,<br></d=
iv>I attaching the pkgslist if it will help.=C2=A0 Are there anything else =
that I can provide?<br>

</div>Thanks<br></div>Should these be sent to the mailing list?<br><div><di=
v><br><div class=3D"gmail_drive_chip" style=3D"width:396px;min-height:18px;=
max-height:18px;background-color:#f5f5f5;padding:5px;color:#222;font-family=
:arial;font-style:normal;font-weight:bold;font-size:13px;border:1px solid #=
ddd">


<a href=3D"https://docs.google.com/file/d/0B11sthVgwfufY0l1Q05TaUJCblE/edit=
?usp=3Ddrive_web" style=3D"display:inline-block;overflow:hidden;text-overfl=
ow:ellipsis;white-space:nowrap;text-decoration:none;padding:1px 0px;border:=
medium none;width:100%" target=3D"_blank"><img style=3D"vertical-align:bott=
om;border:none" src=3D"https://ssl.gstatic.com/docs/doclist/images/icon_10_=
generic_list.png">=C2=A0<span dir=3D"ltr" style=3D"color:#15c;text-decorati=
on:none;vertical-align:bottom">beagleboard_pkglist041513</span></a></div>


<br></div></div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D=
"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Apr 16, 2013 at 8:=
41 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@int=
el.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 16 April 2013 15:35, Edward Vidal &l=
t;<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.devel=
one@gmail.com</a>&gt; wrote:<br>



&gt; They all use EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-sdk&quo=
t;.in local.conf<br>
&gt; Something within the build is deciding which pkgs get installed betwee=
n<br>
&gt; different builds. =C2=A0I would expect several different RPMs but not =
hundreds as<br>
&gt; was the case.<br>
<br>
</div>Different BSPs can cause different packages to get pulled in, but<br>
without seeing full package lists from each of the images nobody can<br>
really comment on what is causing the differences.<br>
<br>
Maybe the meta-ti kernels are building more options as modules in<br>
their own packages? =C2=A0Maybe you&#39;ve found a bug in the locale packag=
e<br>
selection? It&#39;s impossible to say without actually seeing the package<b=
r>
lists.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br>

--bcaec54eed56e7ffbf04da7ba8c3--
