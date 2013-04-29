Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B2EE013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 04:04:13 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x19so4964426vbf.24
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 04:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=lLTTlxI0ddgJfekWaoXuXSx3l8+62PCdDxnCG0knovs=;
	b=b46eAJoe4Sq8q0jDnOdCfkOBMTrXBWfn5kSEVFGTwPd299OwXh8x4NVHcv+j7VtkH+
	Tur4JhpMHe3STbZMnlyuIz5G4ymHWf2aKWZy7vjDloYplaVW/XDZ7lyeZhxAp/0bG7SF
	dSp5mDLLrxjFJ6S7sKi8XPHaFp+QIsVxc5LlSb+sL4W4nJuUpDqxAjawRRvIf4TVUYEx
	p08eCs6AXMnGDG/nx4bqlUd5e8DZlICEx0Elifpfkv1dc4UgB0wkcupaMrAidWCYiddq
	h8JYNTZ5tDv/lNySoSF12j64i2bJeD6QGOlqtkCT5i9TRTy100s8wIL4Q5themYSPk0O
	rB5g==
MIME-Version: 1.0
X-Received: by 10.52.103.50 with SMTP id ft18mr20073682vdb.108.1367233452289; 
	Mon, 29 Apr 2013 04:04:12 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.116.194 with HTTP; Mon, 29 Apr 2013 04:04:12 -0700 (PDT)
In-Reply-To: <CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1419490.bYp03IPXpY@helios>
	<CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
	<1757782.s36vEYL6HR@helios>
	<CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
Date: Mon, 29 Apr 2013 13:04:12 +0200
X-Google-Sender-Auth: EemmoC5ozVu3qGYWMmVyYLNJo84
Message-ID: <CAFMfyz+L8Fdi8iZJYCzm89zxfH_aqDF4vXdBOE2tDbTd+o1TFQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Apr 2013 11:04:13 -0000
Content-Type: multipart/alternative; boundary=047d7bacb7e440bb0904db7dd885

--047d7bacb7e440bb0904db7dd885
Content-Type: text/plain; charset=ISO-8859-1

Hey,

Please post your bblayers.conf file..


On Mon, Apr 29, 2013 at 12:21 PM, Zafrullah Syed
<zafrullahmehdi@gmail.com>wrote:

> After setting MACHINE and adding the meta-gumstix and meta-gumstix-extras
> path to conf/bblayers.conf and when building again, i get the following:
>
> WARNING: gumstix-repo-task: task.bbclass is deprecated, please inherit
> packagegroup instead
> | ETA:  00:00:30
> Parsing recipes: 100%
> |###########################################################################################################################|
> Time: 00:00:37
> Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 targets, 44
> skipped, 0 masked, 0 errors.
> ERROR: No recipes available for:
>
> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/systemd_git.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd/systemd_git.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4.8.1.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/base-passwd_3.5.24.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/rfkill/rfkill_0.4.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/vim_7.2.446.bbappend
>
> /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.0.bbappend
> ERROR: Command execution failed: Exited with 1
>
> i hope i am not annoying you. Thank You for your time and patience.
>
>
> On Mon, Apr 29, 2013 at 11:50 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> On Monday 29 April 2013 11:28:22 Zafrullah Syed wrote:
>> > I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder
>> and i
>> > tried to add these values of my machine in the local.conf file
>> >
>> > MACHINE_KERNEL_PR = "r1"
>> >
>> > KERNEL_IMAGETYPE = "uImage"
>> >
>> > UBOOT_ENTRYPOINT = "0x80008000"
>> > UBOOT_LOADADDRESS = "0x80008000"
>> >
>> > TARGET_ARCH = "arm"
>>
>> Couple of things:
>>
>> 1) You should not be adding the above to conf/local.conf. Instead, you
>> should
>> set MACHINE in conf/local.conf to point to the appropriate machine (in
>> this
>> case "overo")
>>
>> 2) You must add at least the path to the directory where meta-gumstix is
>> located on your build machine (and possibly meta-gumstix-extras) to
>> conf/bblayers.conf.
>>
>> If you don't do both of these you will continue to get the errors above.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>
>
> --
> Regards,
> Zafrullah Syed
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bacb7e440bb0904db7dd885
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey,<div><br></div><div>Please post your bblayers.conf fil=
e..=A0</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">On Mon, Apr 29, 2013 at 12:21 PM, Zafrullah Syed <span dir=3D"ltr">&lt=
;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=3D"_blank">zafrullahmeh=
di@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">After setting MACHINE and a=
dding the meta-gumstix and meta-gumstix-extras path to conf/bblayers.conf a=
nd when building again, i get the following:<div>
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
time and patience.</div><div class=3D"gmail_extra"><div class=3D"im"><br><b=
r><div class=3D"gmail_quote">On Mon, Apr 29, 2013 at 11:50 AM, Paul Eggleto=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" ta=
rget=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>



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
span class=3D"HOEnZb"><font color=3D"#888888">-- <br><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px;border-collapse:collapse;color:rgb(136=
,136,136)">Regards,<br>
Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-serif=
"><span style=3D"border-collapse:collapse"><br>


</span></font></div>
</font></span></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7bacb7e440bb0904db7dd885--
