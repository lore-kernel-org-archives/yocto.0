Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B5AE013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 04:06:46 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id hi8so351830wib.16
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 04:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Iv9at3srcU8yJNO8BkH5JQf8bGtKokHZ8btrctBkT9Q=;
	b=KYu1vUEKBB7DSxDALi5rXAUL8ssRf3cj0U891BV4xmONTn/Z8bGEjRoYU+R9cOI/Gv
	L3cAR0f06pbLI8jht2/ccyyguOPCPmNOf1eG/afA+35LJtXDOVtwix1UQklSWrdryAeI
	9gVJUg/fNyu6vHTtt0wJRIZERHgJsFyK59jiuVGMzK5Ai4+BsfOflpQkqPkHhD1RA8Ev
	NQE74uOWIwHhpY/SPjbictMj0P9UxJDk1jDXVV9WdDSJLmvIDH4r3ULNVu4DFE/oOquR
	L1oIWck1cujEpxfeCsYUXn1ggettyc7bZFBEpnbvkkaI/MWJZ0raZSqCopCI22SY5KX+
	WAew==
X-Received: by 10.194.158.4 with SMTP id wq4mr85833116wjb.46.1367233605483;
	Mon, 29 Apr 2013 04:06:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 29 Apr 2013 04:06:25 -0700 (PDT)
In-Reply-To: <CAFMfyz+L8Fdi8iZJYCzm89zxfH_aqDF4vXdBOE2tDbTd+o1TFQ@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1419490.bYp03IPXpY@helios>
	<CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
	<1757782.s36vEYL6HR@helios>
	<CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
	<CAFMfyz+L8Fdi8iZJYCzm89zxfH_aqDF4vXdBOE2tDbTd+o1TFQ@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 13:06:25 +0200
Message-ID: <CAAGt+t2gRsaC7UtRg_0BzQdkk4uCkJ-m+1FKa22o3Y45iHnQaQ@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 11:06:47 -0000
Content-Type: multipart/alternative; boundary=089e0112bec861446804db7de191

--089e0112bec861446804db7de191
Content-Type: text/plain; charset=ISO-8859-1

bblayers.conf file:
I have added meta-gumstix and meta-gumstix-extras directory path to this
file.

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "6"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/zaif/poky-danny-8.0/meta \
  /home/zaif/poky-danny-8.0/meta-yocto \
  /home/zaif/poky-danny-8.0/meta-yocto-bsp \
  /home/zaif/poky-danny-8.0/meta-gumstix \
  /home/zaif/poky-danny-8.0/meta-gumstix-extras \
  "


On Mon, Apr 29, 2013 at 1:04 PM, Satya Swaroop Damarla <
swaroop.damarla@gmail.com> wrote:

> Hey,
>
> Please post your bblayers.conf file..
>
>
> On Mon, Apr 29, 2013 at 12:21 PM, Zafrullah Syed <zafrullahmehdi@gmail.com
> > wrote:
>
>> After setting MACHINE and adding the meta-gumstix and meta-gumstix-extras
>> path to conf/bblayers.conf and when building again, i get the following:
>>
>> WARNING: gumstix-repo-task: task.bbclass is deprecated, please inherit
>> packagegroup instead
>> | ETA:  00:00:30
>> Parsing recipes: 100%
>> |###########################################################################################################################|
>> Time: 00:00:37
>> Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 targets,
>> 44 skipped, 0 masked, 0 errors.
>> ERROR: No recipes available for:
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/systemd_git.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd/systemd_git.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4.8.1.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/base-passwd_3.5.24.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/rfkill/rfkill_0.4.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/vim_7.2.446.bbappend
>>
>> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.0.bbappend
>> ERROR: Command execution failed: Exited with 1
>>
>> i hope i am not annoying you. Thank You for your time and patience.
>>
>>
>> On Mon, Apr 29, 2013 at 11:50 AM, Paul Eggleton <
>> paul.eggleton@linux.intel.com> wrote:
>>
>>> On Monday 29 April 2013 11:28:22 Zafrullah Syed wrote:
>>> > I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder
>>> and i
>>> > tried to add these values of my machine in the local.conf file
>>> >
>>> > MACHINE_KERNEL_PR = "r1"
>>> >
>>> > KERNEL_IMAGETYPE = "uImage"
>>> >
>>> > UBOOT_ENTRYPOINT = "0x80008000"
>>> > UBOOT_LOADADDRESS = "0x80008000"
>>> >
>>> > TARGET_ARCH = "arm"
>>>
>>> Couple of things:
>>>
>>> 1) You should not be adding the above to conf/local.conf. Instead, you
>>> should
>>> set MACHINE in conf/local.conf to point to the appropriate machine (in
>>> this
>>> case "overo")
>>>
>>> 2) You must add at least the path to the directory where meta-gumstix is
>>> located on your build machine (and possibly meta-gumstix-extras) to
>>> conf/bblayers.conf.
>>>
>>> If you don't do both of these you will continue to get the errors above.
>>>
>>> Cheers,
>>> Paul
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>>>
>>
>>
>>
>> --
>> Regards,
>> Zafrullah Syed
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


-- 
Regards,
Zafrullah Syed

--089e0112bec861446804db7de191
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>bblayers.conf file:</div><div style>I have adde=
d meta-gumstix and meta-gumstix-extras directory path to this file.</div><d=
iv style><br></div><div># LAYER_CONF_VERSION is increased each time build/c=
onf/bblayers.conf</div>

<div># changes incompatibly</div><div>LCONF_VERSION =3D &quot;6&quot;</div>=
<div><br></div><div>BBPATH =3D &quot;${TOPDIR}&quot;</div>
<div>BBFILES ?=3D &quot;&quot;</div><div><br></div><div>BBLAYERS ?=3D &quot=
; \</div><div>=A0 /home/zaif/poky-danny-8.0/meta \</div><div>=A0 /home/zaif=
/poky-danny-8.0/meta-yocto \</div><div>=A0 /home/zaif/poky-danny-8.0/meta-y=
octo-bsp \</div>


<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix \</div><div>=A0 /home/zaif/=
poky-danny-8.0/meta-gumstix-extras \</div><div>=A0 &quot;</div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Apr 29, 2013 at=
 1:04 PM, Satya Swaroop Damarla <span dir=3D"ltr">&lt;<a href=3D"mailto:swa=
roop.damarla@gmail.com" target=3D"_blank">swaroop.damarla@gmail.com</a>&gt;=
</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hey,<div><br></div><div>Ple=
ase post your bblayers.conf file..=A0</div></div><div class=3D"gmail_extra"=
><br>

<br>
<div class=3D"gmail_quote"><div><div>On Mon, Apr 29, 2013 at 12:21 PM, Zafr=
ullah Syed <span dir=3D"ltr">&lt;<a href=3D"mailto:zafrullahmehdi@gmail.com=
" target=3D"_blank">zafrullahmehdi@gmail.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div><div dir=3D"ltr">After=
 setting MACHINE and adding the meta-gumstix and meta-gumstix-extras path t=
o conf/bblayers.conf and when building again, i get the following:<div>



<br></div><div><div>WARNING: gumstix-repo-task: task.bbclass is deprecated,=
 please inherit packagegroup instead =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | E=
TA: =A000:00:30</div>


<div>Parsing recipes: 100% |###############################################=
###########################################################################=
#| Time: 00:00:37</div><div>Parsing of 889 .bb files complete (0 cached, 88=
9 parsed). 1196 targets, 44 skipped, 0 masked, 0 errors.</div>






<div>ERROR: No recipes available for:</div><div>=A0 /home/zaif/poky-danny-8=
.0/meta-gumstix/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.=
bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipe=
s-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend</div>






<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/system=
d_git.bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix-extras/=
recipes-core/systemd/systemd_git.bbappend</div><div>=A0 /home/zaif/poky-dan=
ny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4.8.1.bbappend</div>






<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/ba=
se-passwd_3.5.24.bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gums=
tix-extras/recipes-connectivity/rfkill/rfkill_0.4.bbappend</div><div>=A0 /h=
ome/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bbap=
pend</div>






<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/=
vim_7.2.446.bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix/r=
ecipes-core/gawk/gawk_4.0.0.bbappend</div><div>ERROR: Command execution fai=
led: Exited with 1</div>






</div><div><br></div><div>i hope i am not annoying you. Thank You for your =
time and patience.</div><div class=3D"gmail_extra"><div><br><br><div class=
=3D"gmail_quote">On Mon, Apr 29, 2013 at 11:50 AM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>






<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Monday 29 April 2013 11:28:22 Zafrul=
lah Syed wrote:<br>
&gt; I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder a=
nd i<br>
&gt; tried to add these values of my machine in the local.conf file<br>
&gt;<br>
&gt; MACHINE_KERNEL_PR =3D &quot;r1&quot;<br>
&gt;<br>
&gt; KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
&gt;<br>
&gt; UBOOT_ENTRYPOINT =3D &quot;0x80008000&quot;<br>
&gt; UBOOT_LOADADDRESS =3D &quot;0x80008000&quot;<br>
&gt;<br>
&gt; TARGET_ARCH =3D &quot;arm&quot;<br>
<br>
</div>Couple of things:<br>
<br>
1) You should not be adding the above to conf/local.conf. Instead, you shou=
ld<br>
set MACHINE in conf/local.conf to point to the appropriate machine (in this=
<br>
case &quot;overo&quot;)<br>
<br>
2) You must add at least the path to the directory where meta-gumstix is<br=
>
located on your build machine (and possibly meta-gumstix-extras) to<br>
conf/bblayers.conf.<br>
<br>
If you don&#39;t do both of these you will continue to get the errors above=
.<br>
<br>
Cheers,<br>
Paul<br>
<div><div><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div></div><=
span><font color=3D"#888888">-- <br><span style=3D"font-family:arial,sans-s=
erif;font-size:13px;border-collapse:collapse;color:rgb(136,136,136)">Regard=
s,<br>



Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-serif=
"><span style=3D"border-collapse:collapse"><br>


</span></font></div>
</font></span></div></div>
<br></div></div><div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></div></blockquote></div><br></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>


</span></font></div>
</div></div>

--089e0112bec861446804db7de191--
