Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A611E01653
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 08:47:32 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id qd12so4228525ieb.33
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 08:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=AumWClcWoyJTCg7OnurGEBt3zEiGlTxTq2vTVLP8H8o=;
	b=H7ZmC4wl0/sxeuMsyv39wMNsUooIR2t71JeSFZ4yknqQPk8j7K/ErSf1ixKHUBSfFd
	mW9tDB/xopJsKmaMTqxTlTCoLLk9/u1HCU5u/Qz5AMwNmZwt7GoKEHKO1LkduygOOtnk
	a5MI+TnT/7813cJOKM/vceslRZ2hcJchA7OU63cm+re/6xsEi2/nuOEGNrteJ6H/HjXA
	VCD1v1RRyR59EO9dG+ZCkYF2KIFDI+EM/V4Cug97HuT4x2ZPTP8DRP6pLUMXM3XF5/ga
	YnJWbiwFvXrvRqS2fEb3gsyIEjzxzLoX4odEaN06+8FGdy3k/daakMgnyT8GVjak8pSG
	6a4g==
X-Received: by 10.43.77.212 with SMTP id zj20mr5856999icb.5.1382024851265;
	Thu, 17 Oct 2013 08:47:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 17 Oct 2013 08:47:10 -0700 (PDT)
In-Reply-To: <525FE3C9.3070003@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 17 Oct 2013 12:47:10 -0300
Message-ID: <CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 17 Oct 2013 15:47:37 -0000
Content-Type: multipart/alternative; boundary=047d7b45041e54a3f504e8f1bce0

--047d7b45041e54a3f504e8f1bce0
Content-Type: text/plain; charset=ISO-8859-1

2013/10/17 Bruce Ashfield <bruce.ashfield@windriver.com>

> Look at oe-core/meta-skeleton for the custom kernel recipe example.
> It has the inherit/include combinations that you need to follow.
>
>
>  My concern is: if doing this to just have the config fragment feature,
>> I'll possibly mess up the kernel build.
>>
>
> It shouldn't. It only adds to existing phases, and doesn't make
> any changes. I've tested it in many combinations and it should
> work fine.
>
> If something breaks, I'd like to know, so we can fix it.
>

Bruce,

I didn't change linux-mainline_3.8.bb.
My linux-mainline_3.8.bbappend is:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
inherit kernel
require recipes-kernel/linux/linux-yocto.inc
COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
SRC_URI += " file://mine.patch \
             file://config-addons.cfg \
             "

My config-addons.cfg:

CONFIG_WATCHDOG_NOWAYOUT=y
CONFIG_NTFS_FS=y
CONFIG_NTFS_RW=y

After a cleansstate the build got stucked on do_patch task.
Here is the content of log.do_patch:

DEBUG: Executing shell function do_patch
WARNING: no meta data branch found ...
Switched to branch 'linux-3.8.y'


Running with bitbake -v I got the following:

...
+ configme --reconfig --output
<...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/linux-beaglebone-standard-build
standard beaglebone
[INFO] Configuring target/machine combo: "standard/beaglebone"

[INFO] Configuring target/machine combo: "standard/beaglebone"
[INFO] collecting configs in ./meta/meta-series

[INFO] collecting configs in ./meta/meta-series
cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or directory

cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or directory
cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or directory

cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or directory
mv: target `3.8.13' is not a directory

mv: target `3.8.13' is not a directory
creation of pre-processed config data failed
config of "standard/beaglebone" failed

creation of pre-processed config data failed
config of "standard/beaglebone" failed
ERROR: Function failed: do_kernel_configme (see
<...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/temp/log.do_kernel_configme15450.
for further information)
ERROR: Task 7
(<...>/setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/
linux-mainline_3.8.bb, do_kernel_configme) failed with exit code '1'





Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--047d7b45041e54a3f504e8f1bce0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/17 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span><br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div style=3D"overflow:hidden">Look at oe-core/meta-skelet=
on for the custom kernel recipe example.<br>



It has the inherit/include combinations that you need to follow.<div><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
My concern is: if doing this to just have the config fragment feature,<br>
I&#39;ll possibly mess up the kernel build.<br>
</blockquote>
<br></div>
It shouldn&#39;t. It only adds to existing phases, and doesn&#39;t make<br>
any changes. I&#39;ve tested it in many combinations and it should<br>
work fine.<br>
<br>
If something breaks, I&#39;d like to know, so we can fix it.</div></blockqu=
ote></div><br>Bruce,</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">I didn&#39;t change <a href=3D"http://linux-mainline_3.8.b=
b">linux-mainline_3.8.bb</a>.=A0</div>


<div class=3D"gmail_extra">My=A0linux-mainline_3.8.bbappend is:</div><div c=
lass=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px 40px;border:no=
ne;padding:0px"><div class=3D"gmail_extra"><div class=3D"gmail_extra">
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.8:&quot;</div><div cl=
ass=3D"gmail_extra">inherit kernel<br></div><div class=3D"gmail_extra">requ=
ire recipes-kernel/linux/linux-yocto.inc</div><div class=3D"gmail_extra">CO=
MPATIBLE_MACHINE_beaglebone =3D &quot;(beaglebone)&quot;<br>


</div><div class=3D"gmail_extra">SRC_URI +=3D &quot; file://mine.patch \<br=
></div><div class=3D"gmail_extra">=A0 =A0 =A0 =A0 =A0 =A0 =A0file://config-=
addons.cfg \</div><div class=3D"gmail_extra">=A0 =A0 =A0 =A0 =A0 =A0 =A0&qu=
ot;</div></div></blockquote>My config-addons.cfg:<br>


</div><div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px 40=
px;border:none;padding:0px"><div class=3D"gmail_extra" style><div class=3D"=
gmail_extra">CONFIG_WATCHDOG_NOWAYOUT=3Dy</div><div class=3D"gmail_extra">C=
ONFIG_NTFS_FS=3Dy</div>

<div class=3D"gmail_extra">CONFIG_NTFS_RW=3Dy</div><div><br></div></div></b=
lockquote></div><div class=3D"gmail_extra">After a cleansstate the build go=
t stucked on do_patch task.</div><div class=3D"gmail_extra">Here is the con=
tent of log.do_patch:</div>

<div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px">
<div class=3D"gmail_extra"><div class=3D"gmail_extra">DEBUG: Executing shel=
l function do_patch</div><div class=3D"gmail_extra">WARNING: no meta data b=
ranch found ...</div><div class=3D"gmail_extra">Switched to branch &#39;lin=
ux-3.8.y&#39;</div>


</div></blockquote></div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Running with bitbake -v I got the following:</div><div class=
=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px 40px;border:none;p=
adding:0px">


<div class=3D"gmail_extra"><div class=3D"gmail_extra">...</div><div class=
=3D"gmail_extra">+ configme --reconfig --output &lt;...&gt;/build/tmp-angst=
rom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3=
.8.13-r23a/linux-beaglebone-standard-build standard beaglebone</div>


<div class=3D"gmail_extra">[INFO] Configuring target/machine combo: &quot;s=
tandard/beaglebone&quot;</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">[INFO] Configuring target/machine combo: &quot;standard/=
beaglebone&quot;</div>


<div class=3D"gmail_extra">[INFO] collecting configs in ./meta/meta-series<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">[INFO]=
 collecting configs in ./meta/meta-series</div><div class=3D"gmail_extra">c=
at: meta/cfg/standard/beaglebone/config_frag.txt: No such file or directory=
</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">cat: meta/c=
fg/standard/beaglebone/config_frag.txt: No such file or directory</div><div=
 class=3D"gmail_extra">cat: meta/cfg/standard/beaglebone/config_frag.txt: N=
o such file or directory</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">cat: meta/c=
fg/standard/beaglebone/config_frag.txt: No such file or directory</div><div=
 class=3D"gmail_extra">mv: target `3.8.13&#39; is not a directory</div><div=
 class=3D"gmail_extra">


<br></div><div class=3D"gmail_extra">mv: target `3.8.13&#39; is not a direc=
tory</div><div class=3D"gmail_extra">creation of pre-processed config data =
failed</div><div class=3D"gmail_extra">config of &quot;standard/beaglebone&=
quot; failed</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">creation of=
 pre-processed config data failed</div><div class=3D"gmail_extra">config of=
 &quot;standard/beaglebone&quot; failed</div><div class=3D"gmail_extra">ERR=
OR: Function failed: do_kernel_configme (see &lt;...&gt;/build/tmp-angstrom=
_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.=
13-r23a/temp/log.do_kernel_configme15450. for further information)</div>


<div class=3D"gmail_extra">ERROR: Task 7 (&lt;...&gt;/setup-scripts/sources=
/meta-beagleboard/common-bsp/recipes-kernel/linux/<a href=3D"http://linux-m=
ainline_3.8.bb">linux-mainline_3.8.bb</a>, do_kernel_configme) failed with =
exit code &#39;1&#39;<br>


</div></div></blockquote></div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br><br clear=3D"a=
ll"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>
Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--047d7b45041e54a3f504e8f1bce0--
