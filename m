Return-Path: <taylor.winning@fundamentals-group.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E635C433EF
	for <webhook@archiver.kernel.org>; Mon, 22 Nov 2021 08:15:50 +0000 (UTC)
Subject: Useradd recipe not generating /etc/passwd entries #dunfell 
To: yocto@lists.yoctoproject.org
From: taylor.winning@fundamentals-group.com
X-Originating-Location: Perth, Western Australia, AU (110.145.30.150)
X-Originating-Platform: Windows Firefox 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Nov 2021 00:15:49 -0800
Message-ID: <tasT.1637568949701136232.XcDr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8kECA91v9w1FWkSv7SLh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Nov 2021 08:15:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55380

--8kECA91v9w1FWkSv7SLh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I=E2=80=99m attempting to create a few service users for our software produ=
cts. Initially I had inherited useradd in each recipe that required the use=
r, then had a corresponding user added from within the image recipe. I know=
 this is not ideal, however I have been unable to solve some issues I=E2=80=
=99m having so I=E2=80=99m hoping someone can help.

I'm on Dunfell branch.

I now have a recipe that creates two users, that all other recipes DEPENDS =
on. Here is the contents of that recipe (adh-user-add.bb):

FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"

SUMMARY =3D "Add adh and adhX user for other recipes"

LICENSE=3D"CLOSED"

PV =3D "${ADH_ADH_SVN_REVISION}"

require require/revisions.inc

PACKAGE_ARCH =3D "${MACHINE_ARCH}"

inherit useradd

USERADD_PACKAGES =3D "${PN}"

USERADD_PARAM_${PN} =3D "--system --uid 420 -g adh adh; --system --uid 421 =
-g adhX adhX "

GROUPADD_PARAM_${PN} =3D "-g 420 adh; -g 421 adhX "

Each recipe that needs these users simply DEPENDS on it from within its own=
 recipe. I understand that is the preferred way of doing this?

However, inside my image (development-image.bb) once its built, my /etc/pas=
swd file does not contain these users at all. I have tried the following th=
ings:

* IMAGE_INSTALL_append +=3D =E2=80=9C adh-user-add=E2=80=9D
* DEPENDS +=3D =E2=80=9C adh-user-add=E2=80=9D
* RDEPENDS +=3D =E2=80=9C adh-user-add=E2=80=9D

Each time I get a passwd file inside of adh-user-add/recipe-sysroots and de=
velopment-image/recipe-sysroots that contains both users, however the passw=
d file on the device is missing those users entirely.

My image recipe looks like this:

SUMMARY =3D "Development image"

inherit core-image extrausers

require require/revisions.inc

PV =3D "${CUBE_IMAGE_VERSION}"

PR =3D "${CUBE_IMAGE_REVISION}"

IMAGE_FSTYPES_append +=3D "wic wic.xz"

WKS_FILE =3D "sgc30cube.wks"

IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL} "

IMAGE_INSTALL_append =3D " \

*** packages removed ***

"

IMAGE_FEATURES_append =3D " ssh-server-dropbear"

MACHINE_FEATURES_remove =3D "kernel26 nc screen ext2 alsa gpu touchscreen q=
emu-usermode"

DEPENDS +=3D "adh-user-add"

IMAGE_FEATURES_append =3D " debug-tweaks"

I feel like I'm going crazy trying to figure this out. I wish I could figur=
e out how the final passwd file is generated. I've looked in some logs that=
 I've seen suggested online, but have been unable to ascertain if there are=
 any errors occurring.

Any help would be greatly appreciated,

Thanks,

Taylor W

--8kECA91v9w1FWkSv7SLh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-ans=
i-language: EN-US;" lang=3D"EN-US">Hi,<br/><br/></span>I=E2=80=99m attempti=
ng to create a few service users for our software products. Initially I had=
 inherited useradd in each recipe that required the user, then had a corres=
ponding user added from within the image recipe. I know this is not ideal, =
however I have been unable to solve some issues I=E2=80=99m having so I=E2=
=80=99m hoping someone can help. <br/><br/>I&#39;m on Dunfell branch.<br/><=
br/>I now have a recipe that creates two users, that all other recipes DEPE=
NDS on. Here is the contents of that recipe (adh-user-add.bb):</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">FILESEXTRAPATHS_prepend :=3D &#34;${THI=
SDIR}:&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">SUMMARY =3D &#34;Add adh and adhX user =
for other recipes&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">LICENSE=3D&#34;CLOSED&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">PV =3D &#34;${ADH_ADH_SVN_REVISION}&#34=
;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">require require/revisions.inc</span></p=
>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">PACKAGE_ARCH =3D &#34;${MACHINE_ARCH}&#=
34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">inherit useradd</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">USERADD_PACKAGES =3D &#34;${PN}&#34;</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">USERADD_PARAM_${PN} =3D &#34;--system -=
-uid 420 -g adh adh; --system --uid 421 -g adhX adhX &#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">GROUPADD_PARAM_${PN} =3D &#34;-g 420 ad=
h; -g 421 adhX &#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Each recipe that needs=
 these users simply DEPENDS on it from within its own recipe. I understand =
that is the preferred way of doing this?</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">However, inside my ima=
ge (development-image.bb) once its built, my /etc/passwd file does not cont=
ain these users at all. I have tried the following things:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<ol style=3D"margin-top: 0cm;" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left: 0cm; mso-list: l0 leve=
l1 lfo1;">IMAGE_INSTALL_append +=3D =E2=80=9C adh-user-add=E2=80=9D</li>
<li class=3D"MsoListParagraph" style=3D"margin-left: 0cm; mso-list: l0 leve=
l1 lfo1;">DEPENDS +=3D =E2=80=9C adh-user-add=E2=80=9D</li>
<li class=3D"MsoListParagraph" style=3D"margin-left: 0cm; mso-list: l0 leve=
l1 lfo1;">RDEPENDS +=3D =E2=80=9C adh-user-add=E2=80=9D</li>
</ol>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Each time I get a pass=
wd file inside of adh-user-add/recipe-sysroots and development-image/recipe=
-sysroots that contains both users, however the passwd file on the device i=
s missing those users entirely.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">My image recipe looks =
like this:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">SUMMARY =3D &#34;Development image&#34;=
</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">inherit core-image extrausers</span></p=
>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">require require/revisions.inc</span></p=
>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">PV =3D &#34;${CUBE_IMAGE_VERSION}&#34;<=
/span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">PR =3D &#34;${CUBE_IMAGE_REVISION}&#34;=
</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">IMAGE_FSTYPES_append +=3D &#34;wic wic.=
xz&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">WKS_FILE =3D &#34;sgc30cube.wks&#34;</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">IMAGE_INSTALL =3D &#34;packagegroup-cor=
e-boot ${CORE_IMAGE_EXTRA_INSTALL}<span style=3D"mso-spacerun: yes;">=C2=A0=
 </span>&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">IMAGE_INSTALL_append =3D &#34; \</span>=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;"><span style=3D"mso-tab-count: 3;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=
=3D"mso-spacerun: yes;">=C2=A0</span>*** packages removed ***</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;"><span style=3D"mso-tab-count: 3;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=
=3D"mso-spacerun: yes;">=C2=A0</span>&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">IMAGE_FEATURES_append =3D &#34; ssh-ser=
ver-dropbear&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">MACHINE_FEATURES_remove =3D &#34;kernel=
26 nc screen ext2 alsa gpu touchscreen qemu-usermode&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">DEPENDS +=3D &#34;adh-user-add&#34;</sp=
an></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: courier_newregular, courier;">IMAGE_FEATURES_append =3D &#34; debug-t=
weaks&#34;<br/><br/><span style=3D"font-family: arial, helvetica, sans-seri=
f;">I feel like I&#39;m going crazy trying to figure this out. I wish I cou=
ld figure out how the final passwd file is generated. I&#39;ve looked in so=
me logs that I&#39;ve seen suggested online, but have been unable to ascert=
ain if there are any errors occurring. </span><br/><br/><span style=3D"font=
-family: helvetica;">Any help would be greatly appreciated,</span><br/><br/=
></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Thanks,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Taylor W</p>
<!-- [if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]--><!-- [if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves/>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-AU</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
   <w:UseFELayout/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val=3D"Cambria Math"/>
   <m:brkBin m:val=3D"before"/>
   <m:brkBinSub m:val=3D"--"/>
   <m:smallFrac m:val=3D"off"/>
   <m:dispDef/>
   <m:lMargin m:val=3D"0"/>
   <m:rMargin m:val=3D"0"/>
   <m:defJc m:val=3D"centerGroup"/>
   <m:wrapIndent m:val=3D"1440"/>
   <m:intLim m:val=3D"subSup"/>
   <m:naryLim m:val=3D"undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!-- [if gte mso 9]><xml>
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"false"
  DefSemiHidden=3D"false" DefQFormat=3D"false" DefPriority=3D"99"
  LatentStyleCount=3D"376">
  <w:LsdException Locked=3D"false" Priority=3D"0" QFormat=3D"true" Name=3D"=
Normal"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 7"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 8"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 9"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 6"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 7"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 8"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index 9"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 7"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 8"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"toc 9"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Normal Indent"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"footnote text"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"annotation text"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"header"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"footer"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"index heading"/>
  <w:LsdException Locked=3D"false" Priority=3D"35" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"caption"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"table of figures"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"envelope address"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"envelope return"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"footnote reference"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"annotation reference"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"line number"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"page number"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"endnote reference"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"endnote text"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"table of authorities"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"macro"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"toa heading"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Bullet"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Number"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Bullet 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Bullet 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Bullet 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Bullet 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Number 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Number 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Number 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Number 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"10" QFormat=3D"true" Name=3D=
"Title"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Closing"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Signature"/>
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"Default Paragraph Font"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text Indent"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Continue"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Continue 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Continue 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Continue 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"List Continue 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Message Header"/>
  <w:LsdException Locked=3D"false" Priority=3D"11" QFormat=3D"true" Name=3D=
"Subtitle"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Salutation"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Date"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text First Indent"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text First Indent 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Note Heading"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text Indent 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Body Text Indent 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Block Text"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Hyperlink"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"FollowedHyperlink"/>
  <w:LsdException Locked=3D"false" Priority=3D"22" QFormat=3D"true" Name=3D=
"Strong"/>
  <w:LsdException Locked=3D"false" Priority=3D"20" QFormat=3D"true" Name=3D=
"Emphasis"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Document Map"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Plain Text"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"E-mail Signature"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Top of Form"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Bottom of Form"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Normal (Web)"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Acronym"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Address"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Cite"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Code"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Definition"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Keyboard"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Preformatted"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Sample"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Typewriter"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"HTML Variable"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Normal Table"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"annotation subject"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"No List"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Outline List 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Outline List 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Outline List 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Simple 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Simple 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Simple 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Classic 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Classic 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Classic 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Classic 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Colorful 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Colorful 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Colorful 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Columns 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Columns 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Columns 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Columns 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Columns 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 6"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 7"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Grid 8"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 4"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 5"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 6"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 7"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table List 8"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table 3D effects 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table 3D effects 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table 3D effects 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Contemporary"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Elegant"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Professional"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Subtle 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Subtle 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Web 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Web 2"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Web 3"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Balloon Text"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"Table Grid"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Table Theme"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Placeholder =
Text"/>
  <w:LsdException Locked=3D"false" Priority=3D"1" QFormat=3D"true" Name=3D"=
No Spacing"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Revision"/>
  <w:LsdException Locked=3D"false" Priority=3D"34" QFormat=3D"true"
   Name=3D"List Paragraph"/>
  <w:LsdException Locked=3D"false" Priority=3D"29" QFormat=3D"true" Name=3D=
"Quote"/>
  <w:LsdException Locked=3D"false" Priority=3D"30" QFormat=3D"true"
   Name=3D"Intense Quote"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"19" QFormat=3D"true"
   Name=3D"Subtle Emphasis"/>
  <w:LsdException Locked=3D"false" Priority=3D"21" QFormat=3D"true"
   Name=3D"Intense Emphasis"/>
  <w:LsdException Locked=3D"false" Priority=3D"31" QFormat=3D"true"
   Name=3D"Subtle Reference"/>
  <w:LsdException Locked=3D"false" Priority=3D"32" QFormat=3D"true"
   Name=3D"Intense Reference"/>
  <w:LsdException Locked=3D"false" Priority=3D"33" QFormat=3D"true" Name=3D=
"Book Title"/>
  <w:LsdException Locked=3D"false" Priority=3D"37" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" Name=3D"Bibliography"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"TOC Heading"/>
  <w:LsdException Locked=3D"false" Priority=3D"41" Name=3D"Plain Table 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"42" Name=3D"Plain Table 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"43" Name=3D"Plain Table 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"44" Name=3D"Plain Table 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"45" Name=3D"Plain Table 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"40" Name=3D"Grid Table Light=
"/>
  <w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Lig=
ht"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k"/>
  <w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Col=
orful"/>
  <w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Col=
orful"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Lig=
ht"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k"/>
  <w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Col=
orful"/>
  <w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Col=
orful"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"List Table 1 Light Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"List Table 1 Light Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"List Table 1 Light Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"List Table 1 Light Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"List Table 1 Light Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"46"
   Name=3D"List Table 1 Light Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"51"
   Name=3D"List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"52"
   Name=3D"List Table 7 Colorful Accent 6"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Mention"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Smart Hyperlink"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Hashtag"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Unresolved Mention"/>
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"
   Name=3D"Smart Link"/>
 </w:LatentStyles>
</xml><![endif]--><!-- [if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]-->

--8kECA91v9w1FWkSv7SLh--

