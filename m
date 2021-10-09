Return-Path: <mrkozmic@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFF7C433F5
	for <webhook@archiver.kernel.org>; Sat,  9 Oct 2021 15:33:08 +0000 (UTC)
Subject: Re: LINUX_VERSION_EXTENSION has no effect #yocto #kernel #dunfell
To: yocto@lists.yoctoproject.org
From: mrkozmic@hotmail.com
X-Originating-Location: Gullaug, Viken, NO (109.247.173.63)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 09 Oct 2021 08:33:08 -0700
References: 
 <CADkTA4PwLNXJoU3ZdnE=0pa3UA0tpewNU1-yrr+M45EHp5dHwQ@mail.gmail.com>
In-Reply-To: 
 <CADkTA4PwLNXJoU3ZdnE=0pa3UA0tpewNU1-yrr+M45EHp5dHwQ@mail.gmail.com>
Message-ID: <25113.1633793588160556369@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KLhswkvpAthOx0RSEMFC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Oct 2021 15:33:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55008

--KLhswkvpAthOx0RSEMFC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Bruce, I just realized that I replied only to you and not to the group. Hop=
e it is ok that I post your answer here.

On Sat, Oct 9, 2021 at 6:19 AM <mrkozmic@hotmail.com> wrote:
>
> Bruce,
>
> Here .config is written in the kernel_configme task: https://emea01.safel=
inks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.yoctoproject.org%2Fcgi=
t%2Fcgit.cgi%2Fpoky%2Ftree%2Fmeta%2Fclasses%2Fkernel-yocto.bbclass%3Fh%3Ddu=
nfell%23n409&amp;data=3D04%7C01%7C%7C7757b810abc444e512cc08d98b32ecb1%7C84d=
f9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637693873092757103%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C1000&amp;sdata=3D%2FURpcXvzhAKEpN%2BHHmmMpshn3CJNHJxUvFkktaGCf80%3D&amp;r=
eserved=3D0
>

Yes, I'm the one that wrote all of the fragment handling and
processing, so unless something else is being injected into the tasks,
I know how it should work :)

> My kernel recipe (not written by me) is made up of several files. I found=
 this:
> do_configure_prepend() {
>=C2=A0=C2=A0=C2=A0=C2=A0 cp "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}=
" "${B}/.config" || bbfatal "CONFIG ${KBUILD_DEFCONFIG} NOT FOUND"
> }
> Which makes sense why it does not work. So I removed these lines and I se=
e why someone put them there. My defconfig is not put into the .config file=
 by the merge_config.sh script.
> It looks like the script does everything correctly, but the resulting .co=
nfig is always the default, nothing is included from my defconfig.

Considering that linux-yocto has had support for using an in-tree
defconfig for a long time, indeed, that is a strange thing for someone
to write!

Is KBUILD_DEFCONFIG defined in your recipe ? If so, the kernel-yocto
bbclass will do a similar copy and use that as the baseline.

>
> The final .config is generated in merge_config.sh by
> make LD=3D"$LD" KCONFIG_ALLCONFIG=3D$TMP_FILE $OUTPUT_ARG $ALLTARGET
> I have checked, and the $TMP_FILE is the same as my defconfig. The log fr=
om merge_script.sh lists all CONFIG_* that where requested, but not include=
d in the final .config, they all come from my defconfig.
>
> Looks like make does not care about KCONFIG_ALLCONFIG=3D$TMP_FILE

No, that wouldn't be the case.

Just because you have something in a defconfig, or a configuration
fragment, doesn't mean that it ends up in the final .config. They are
still subject to the dependencies, defaults, selects, etc, of the
Kconfig files within the kernel tree as the configuration phase of the
kernel is executed.

If you have a defconfig in your workdir, the mode of merge config is
set to "-n", which is an allnoconfig, and then what you have in your
defconfig will be applied based on those conditions. If your defconfig
is based on a savedefconfig (which many of them are now, in particular
in tree ones).=C2=A0 If you want to use defaults=C2=A0 and then apply your
defconfig, you need to specify KCONFIG_MODE=3D"alldefconfig" in your
kernel recipe (maybe you are already doing that, but it is worth
mentioning).

But given that KBUILD_DEFCONFIG copy that you found, clearly there are
some custom things happening, so I really can't say for sure.

=EE=9C=92

Bruce

>

--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

--KLhswkvpAthOx0RSEMFC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"aIkJiKjTQYvMBiVlJyTdA" style=3D"-webkit-font-smoothing: antia=
liased; margin: 0px 0px 0px 31px; padding: 0px; border: 0px; font-variant-n=
umeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; f=
ont-size: 15px; line-height: inherit; font-family: 'Segoe UI', 'Segoe UI We=
b (West European)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, =
'Helvetica Neue', sans-serif; vertical-align: baseline; color: #000000;">
<div class=3D"_3CbLhTPTmpzMzBFyiGPfe4 QMubUjbS-BOly_BTHEZj7 allowTextSelect=
ion" style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x 16px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left=
: 1px solid var(--themeDarkAlt); border-image: initial; font: inherit; vert=
ical-align: baseline; color: inherit; user-select: text; cursor: auto; over=
flow-y: auto;">
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;">
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;">
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;"><=
span style=3D"-webkit-font-smoothing: antialiased; font-size: small;"><span=
 style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; b=
order: 0px; font-style: inherit; font-variant: inherit; font-weight: inheri=
t; font-stretch: inherit; font-size: 11pt; line-height: inherit; font-famil=
y: inherit; vertical-align: baseline; color: inherit;"><span style=3D"color=
: #ff0000;">Bruce, I just realized that I replied only to you and not to th=
e group. Hope it is ok that I post your answer here.</span>&nbsp;</span></s=
pan></div>
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;">&=
nbsp;</div>
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;"><=
span style=3D"-webkit-font-smoothing: antialiased; font-size: small;"><span=
 style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; b=
order: 0px; font-style: inherit; font-variant: inherit; font-weight: inheri=
t; font-stretch: inherit; font-size: 11pt; line-height: inherit; font-famil=
y: inherit; vertical-align: baseline; color: inherit;">On Sat, Oct 9, 2021 =
at 6:19 AM &lt;mrkozmic@hotmail.com&gt; wrote:<br style=3D"-webkit-font-smo=
othing: antialiased;" />&gt;<br style=3D"-webkit-font-smoothing: antialiase=
d;" />&gt; Bruce,<br style=3D"-webkit-font-smoothing: antialiased;" />&gt;<=
br style=3D"-webkit-font-smoothing: antialiased;" />&gt; Here .config is wr=
itten in the kernel_configme task:&nbsp;<a id=3D"LPlnk575894" style=3D"-web=
kit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; fo=
nt: inherit; vertical-align: baseline;" href=3D"https://emea01.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.yoctoproject.org%2Fcgit%2Fcgi=
t.cgi%2Fpoky%2Ftree%2Fmeta%2Fclasses%2Fkernel-yocto.bbclass%3Fh%3Ddunfell%2=
3n409&amp;amp;data=3D04%7C01%7C%7C7757b810abc444e512cc08d98b32ecb1%7C84df9e=
7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637693873092757103%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1=
000&amp;amp;sdata=3D%2FURpcXvzhAKEpN%2BHHmmMpshn3CJNHJxUvFkktaGCf80%3D&amp;=
amp;reserved=3D0" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=
=3D"NotApplicable" data-linkindex=3D"0">https://emea01.safelinks.protection=
.outlook.com/?url=3Dhttps%3A%2F%2Fgit.yoctoproject.org%2Fcgit%2Fcgit.cgi%2F=
poky%2Ftree%2Fmeta%2Fclasses%2Fkernel-yocto.bbclass%3Fh%3Ddunfell%23n409&am=
p;amp;data=3D04%7C01%7C%7C7757b810abc444e512cc08d98b32ecb1%7C84df9e7fe9f640=
afb435aaaaaaaaaaaa%7C1%7C0%7C637693873092757103%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;=
amp;sdata=3D%2FURpcXvzhAKEpN%2BHHmmMpshn3CJNHJxUvFkktaGCf80%3D&amp;amp;rese=
rved=3D0</a><br style=3D"-webkit-font-smoothing: antialiased;" />&gt;<br st=
yle=3D"-webkit-font-smoothing: antialiased;" /><br style=3D"-webkit-font-sm=
oothing: antialiased;" />Yes, I'm the one that wrote all of the fragment ha=
ndling and<br style=3D"-webkit-font-smoothing: antialiased;" />processing, =
so unless something else is being injected into the tasks,<br style=3D"-web=
kit-font-smoothing: antialiased;" />I know how it should work :)<br style=
=3D"-webkit-font-smoothing: antialiased;" /><br style=3D"-webkit-font-smoot=
hing: antialiased;" />&gt; My kernel recipe (not written by me) is made up =
of several files. I found this:<br style=3D"-webkit-font-smoothing: antiali=
ased;" />&gt; do_configure_prepend() {<br style=3D"-webkit-font-smoothing: =
antialiased;" />&gt;&nbsp;&nbsp;&nbsp;&nbsp; cp "${S}/arch/${ARCH}/configs/=
${KBUILD_DEFCONFIG}" "${B}/.config" || bbfatal "CONFIG ${KBUILD_DEFCONFIG} =
NOT FOUND"<br style=3D"-webkit-font-smoothing: antialiased;" />&gt; }<br st=
yle=3D"-webkit-font-smoothing: antialiased;" />&gt; Which makes sense why i=
t does not work. So I removed these lines and I see why someone put them th=
ere. My defconfig is not put into the .config file by the merge_config.sh s=
cript.<br style=3D"-webkit-font-smoothing: antialiased;" />&gt; It looks li=
ke the script does everything correctly, but the resulting .config is alway=
s the default, nothing is included from my defconfig.<br style=3D"-webkit-f=
ont-smoothing: antialiased;" /><br style=3D"-webkit-font-smoothing: antiali=
ased;" />Considering that linux-yocto has had support for using an in-tree<=
br style=3D"-webkit-font-smoothing: antialiased;" />defconfig for a long ti=
me, indeed, that is a strange thing for someone<br style=3D"-webkit-font-sm=
oothing: antialiased;" />to write!<br style=3D"-webkit-font-smoothing: anti=
aliased;" /><br style=3D"-webkit-font-smoothing: antialiased;" />Is KBUILD_=
DEFCONFIG defined in your recipe ? If so, the kernel-yocto<br style=3D"-web=
kit-font-smoothing: antialiased;" />bbclass will do a similar copy and use =
that as the baseline.<br style=3D"-webkit-font-smoothing: antialiased;" /><=
br style=3D"-webkit-font-smoothing: antialiased;" />&gt;<br style=3D"-webki=
t-font-smoothing: antialiased;" />&gt; The final .config is generated in me=
rge_config.sh by<br style=3D"-webkit-font-smoothing: antialiased;" />&gt; m=
ake LD=3D"$LD" KCONFIG_ALLCONFIG=3D$TMP_FILE $OUTPUT_ARG $ALLTARGET<br styl=
e=3D"-webkit-font-smoothing: antialiased;" />&gt; I have checked, and the $=
TMP_FILE is the same as my defconfig. The log from merge_script.sh lists al=
l CONFIG_* that where requested, but not included in the final .config, the=
y all come from my defconfig.<br style=3D"-webkit-font-smoothing: antialias=
ed;" />&gt;<br style=3D"-webkit-font-smoothing: antialiased;" />&gt; Looks =
like make does not care about KCONFIG_ALLCONFIG=3D$TMP_FILE<br style=3D"-we=
bkit-font-smoothing: antialiased;" /><br style=3D"-webkit-font-smoothing: a=
ntialiased;" />No, that wouldn't be the case.<br style=3D"-webkit-font-smoo=
thing: antialiased;" /><br style=3D"-webkit-font-smoothing: antialiased;" /=
>Just because you have something in a defconfig, or a configuration<br styl=
e=3D"-webkit-font-smoothing: antialiased;" />fragment, doesn't mean that it=
 ends up in the final .config. They are<br style=3D"-webkit-font-smoothing:=
 antialiased;" />still subject to the dependencies, defaults, selects, etc,=
 of the<br style=3D"-webkit-font-smoothing: antialiased;" />Kconfig files w=
ithin the kernel tree as the configuration phase of the<br style=3D"-webkit=
-font-smoothing: antialiased;" />kernel is executed.<br style=3D"-webkit-fo=
nt-smoothing: antialiased;" /><br style=3D"-webkit-font-smoothing: antialia=
sed;" />If you have a defconfig in your workdir, the mode of merge config i=
s<br style=3D"-webkit-font-smoothing: antialiased;" />set to "-n", which is=
 an allnoconfig, and then what you have in your<br style=3D"-webkit-font-sm=
oothing: antialiased;" />defconfig will be applied based on those condition=
s. If your defconfig<br style=3D"-webkit-font-smoothing: antialiased;" />is=
 based on a savedefconfig (which many of them are now, in particular<br sty=
le=3D"-webkit-font-smoothing: antialiased;" />in tree ones).&nbsp; If you w=
ant to use defaults&nbsp; and then apply your<br style=3D"-webkit-font-smoo=
thing: antialiased;" />defconfig, you need to specify KCONFIG_MODE=3D"allde=
fconfig" in your<br style=3D"-webkit-font-smoothing: antialiased;" />kernel=
 recipe (maybe you are already doing that, but it is worth<br style=3D"-web=
kit-font-smoothing: antialiased;" />mentioning).<br style=3D"-webkit-font-s=
moothing: antialiased;" /><br style=3D"-webkit-font-smoothing: antialiased;=
" />But given that KBUILD_DEFCONFIG copy that you found, clearly there are<=
br style=3D"-webkit-font-smoothing: antialiased;" />some custom things happ=
ening, so I really can't say for sure.<br style=3D"-webkit-font-smoothing: =
antialiased;" /></span></span></div>
</div>
</div>
</div>
<div class=3D"_1SgEp1U4PIR58Iv0wG1X4P" style=3D"-webkit-font-smoothing: ant=
ialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-a=
lign: baseline; color: inherit; clear: both;">&nbsp;</div>
</div>
<button class=3D"ms-Button ms-Button--icon is-checked _2iWl1qSrTwtGaG9a-cxE=
KS root-49" style=3D"-webkit-font-smoothing: antialiased; margin-top: 12px;=
 margin-left: 50px; padding: 0px 4px; font-size: 14px; font-family: 'Segoe =
UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-system, BlinkMacSys=
temFont, Roboto, 'Helvetica Neue', sans-serif; vertical-align: baseline; ou=
tline: transparent; position: relative; border-radius: 2px; width: 32px; he=
ight: 12px; user-select: none; border: initial none initial;" title=3D"Hide=
 trimmed quoted text" type=3D"button" aria-label=3D"Hide trimmed quoted tex=
t" data-is-focusable=3D"true"><span class=3D"ms-Button-flexContainer flexCo=
ntainer-50" data-automationid=3D"splitbuttonprimary" style=3D"-webkit-font-=
smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inher=
it; vertical-align: baseline; color: inherit; display: flex; height: 12px; =
flex-wrap: nowrap; justify-content: center; align-items: center;"><span dat=
a-icon-name=3D"More" aria-hidden=3D"true" class=3D"ms-Button-icon _2xDHAc7n=
AVmnybEWPQ_ofd icon-64" style=3D"-webkit-font-smoothing: antialiased; displ=
ay: inline-block; speak: none; font-family: controlIcons; font-size: 16px; =
margin: 0px 4px; height: 16px; line-height: 16px; flex-shrink: 0; color: va=
r(--themedark); position: relative;">=EE=9C=92</span></span></button>
<div class=3D"aIkJiKjTQYvMBiVlJyTdA" style=3D"-webkit-font-smoothing: antia=
liased; margin: 0px 0px 0px 31px; padding: 0px; border: 0px; font-variant-n=
umeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; f=
ont-size: 15px; line-height: inherit; font-family: 'Segoe UI', 'Segoe UI We=
b (West European)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, =
'Helvetica Neue', sans-serif; vertical-align: baseline; color: #000000;">
<div class=3D"_2SAgzfLK_5Ndk0nG1HhYMs" style=3D"-webkit-font-smoothing: ant=
ialiased; margin: 16px 0px 16px 17px; padding: 0px; border-width: 0px 0px 1=
px; border-image: initial; font: inherit; vertical-align: baseline; color: =
inherit; border-color: initial initial var(--neutralLight) initial; border-=
style: initial initial solid initial;">&nbsp;</div>
<div class=3D"_3QCsM9-LPIxe1EDTYYKDn0 QMubUjbS-BOly_BTHEZj7 allowTextSelect=
ion" style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x 16px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left=
: 1px solid var(--neutralTertiaryAlt); border-image: initial; font: inherit=
; vertical-align: baseline; color: inherit; user-select: text; cursor: auto=
; overflow-y: auto;">
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;">
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;">
<div style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0p=
x; border: 0px; font: inherit; vertical-align: baseline; color: inherit;"><=
span style=3D"-webkit-font-smoothing: antialiased; font-size: small;"><span=
 style=3D"-webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; b=
order: 0px; font-style: inherit; font-variant: inherit; font-weight: inheri=
t; font-stretch: inherit; font-size: 11pt; line-height: inherit; font-famil=
y: inherit; vertical-align: baseline; color: inherit;">Bruce<br style=3D"-w=
ebkit-font-smoothing: antialiased;" /><br style=3D"-webkit-font-smoothing: =
antialiased;" />&gt;<br style=3D"-webkit-font-smoothing: antialiased;" /><b=
r style=3D"-webkit-font-smoothing: antialiased;" /><br style=3D"-webkit-fon=
t-smoothing: antialiased;" /><br style=3D"-webkit-font-smoothing: antialias=
ed;" />--<br style=3D"-webkit-font-smoothing: antialiased;" />- Thou shalt =
not follow the NULL pointer, for chaos and madness await<br style=3D"-webki=
t-font-smoothing: antialiased;" />thee at its end<br style=3D"-webkit-font-=
smoothing: antialiased;" />- "Use the force Harry" - Gandalf, Star Trek II<=
/span></span></div>
</div>
</div>
</div>
</div>

--KLhswkvpAthOx0RSEMFC--

