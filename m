Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F40AE0104E; Fri, 19 Aug 2016 08:23:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3C07E01048
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 08:23:07 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 19 Aug 2016 08:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,544,1464678000"; 
	d="scan'208,217";a="750984466"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.25.136])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Aug 2016 08:23:06 -0700
Message-ID: <1471620185.6975.191.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Aug 2016 08:23:05 -0700
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Yocto Project Status WW34
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
X-List-Received-Date: Fri, 19 Aug 2016 15:23:12 -0000
Content-Type: multipart/alternative; boundary="=-v1blmPeIfJ+aoZpJ/6ni"

--=-v1blmPeIfJ+aoZpJ/6ni
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit



Current Dev Position: YP 2.2 M3
Next Deadline: YP 2.2 M3 which will be Aug 29th (5:00pm GMT)

SWAT team rotation: Juro -> Anibal
https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

Key Status/Updates:
 * We’re drawing close to the M3 deadline and feature freeze for 2.2. There is still a significant number of features outstanding with several looking to be at risk at this point.
 * The bitbake multi-config build series has now merged. 
 * We’ve re-enabled prelink on x86/mips. ppc/arm was disabled whilst we investigated test failures but will likely be enabled since the issues are looking to be a binutils bug.
 * We upgraded to gcc 6.2rc1 (we will track 6.2 through to our release)
 * Uninative 1.3 was released to deal with some locale problems. This will need to be backported to krogoth as a 1.0.1 release of uninative.
 * Current master is going to go through a full QA pass before M3 to try and make sure we are dealing with all the known bugs.
 * We are starting to see significant ‘random’ autobuilder failures again:
    * Mips machine ‘failure to start’ despite booting the kernel: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10136
    * Systemd logging failure: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10128
    * Unknown ppc failure: https://autobuilder.yoctoproject.org/main/builders/nightly-ppc/builds/910/steps/Running%20Sanity%20Tests/logs/stdio
    * Uvesa timeout issue: https://bugzilla.yoctoproject.org/show_bug.cgi?id=8245
    * Busybox parallel make race: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10116
We need to get to grips with these as a matter of urgency as they do keep recurring and several occurred during our QA build, sadly. I am getting quite concerned about these.
 * 2.1.1 has been released, finally!
 * We will be moving to the 4.7 kernel before M3 closes, and evaluating a move to 4.8 in mid-September.  We will be keeping both the 4.1 (as LTSI) and 4.4 (as LTS) kernels.  GregKH has announced that 4.9 will be the next LTS for a Dec/Jan release, therefore our 4.7 (or 4.8) will be short lived kernels.

Key YP 2.2 Dates:
 * YP 2.2 M1 release would be: 6/24/16
 * YP 2.2 M2 cut off would be: 7/18/16
 * YP 2.2 M2 release would be: 7/29/16
 * YP 2.2 M3 cut off would be: 8/29/16
 * YP 2.2 M3 release would be: 9/9/16
 * YP 2.2 M4 cut off would be: 10/3/16
 * YP 2.2 M4 release would be: 10/28/16

Tracking Metrics:
	WDD 2706  (last week 2712)
(https://wiki.yoctoproject.org/charts/combo.html)

Key Status Links for YP:
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features

[If anyone has suggestions for other information you’d like to see on this weekly status update, let us know!]

--=-v1blmPeIfJ+aoZpJ/6ni
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div><span id=3D"docs-internal-guid-7ea3a6e9-a365-=
97a4-8989-e03f3a89939d"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top=
:0pt;margin-bottom:0pt;"><br></p><br><p dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.66666666=
6666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: trans=
parent; vertical-align: baseline; white-space: pre-wrap;">Current Dev Posit=
ion: YP 2.2 M3</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; f=
ont-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vert=
ical-align: baseline; white-space: pre-wrap;">Next Deadline: YP 2.2 M3 whic=
h will be Aug 29th (5:00pm GMT)</span></p><br><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14=
.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); background-col=
or: transparent; vertical-align: baseline; white-space: pre-wrap;">SWAT tea=
m rotation: Juro -&gt; Anibal</span></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/Yocto_Build_Failure_Swat_Team" style=3D"text-decoration:none;">=
<span style=3D"font-size: 14.666666666666666px; font-family: Consolas; colo=
r: rgb(17, 85, 204); background-color: transparent; text-decoration: underl=
ine; vertical-align: baseline; white-space: pre-wrap;">https://wiki.yoctopr=
oject.org/wiki/Yocto_Build_Failure_Swat_Team</span></a></p><br><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=
=3D"font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0=
); background-color: transparent; vertical-align: baseline; white-space: pr=
e-wrap;">Key Status/Updates:</span></p><ul style=3D"margin-top:0pt;margin-b=
ottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.6=
66666666666666px; font-family: Arial; color: rgb(0, 0, 0); background-color=
: transparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666=
666666666666px; background-color: transparent; vertical-align: baseline; wh=
ite-space: pre-wrap;">We=E2=80=99re drawing close to the M3 deadline and fe=
ature freeze for 2.2. There is still a significant number of features outst=
anding with several looking to be at risk at this point.</span></p></li><li=
 dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.666666666666666p=
x; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; =
vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px;=
 background-color: transparent; vertical-align: baseline; white-space: pre-=
wrap;">The bitbake multi-config build series has now merged. </span></p></l=
i><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.66666666666=
6666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transpar=
ent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.6666666666666=
66px; background-color: transparent; vertical-align: baseline; white-space:=
 pre-wrap;">We=E2=80=99ve re-enabled prelink on x86/mips. ppc/arm was disab=
led whilst we investigated test failures but will likely be enabled since t=
he issues are looking to be a binutils bug.</span></p></li><li dir=3D"ltr" =
style=3D"list-style-type: disc; font-size: 14.666666666666666px; font-famil=
y: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-alig=
n: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; background-c=
olor: transparent; vertical-align: baseline; white-space: pre-wrap;">We upg=
raded to gcc 6.2rc1 (we will track 6.2 through to our release)</span></p></=
li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.6666666666=
66666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transpa=
rent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666=
666px; background-color: transparent; vertical-align: baseline; white-space=
: pre-wrap;">Uninative 1.3 was released to deal with some locale problems. =
This will need to be backported to krogoth as a 1.0.1 release of uninative.=
</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: =
14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); background-c=
olor: transparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14=
.666666666666666px; background-color: transparent; vertical-align: baseline=
; white-space: pre-wrap;">Current master is going to go through a full QA p=
ass before M3 to try and make sure we are dealing with all the known bugs.<=
/span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 1=
4.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); background-co=
lor: transparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.=
666666666666666px; background-color: transparent; vertical-align: baseline;=
 white-space: pre-wrap;">We are starting to see significant =E2=80=98random=
=E2=80=99 autobuilder failures again:</span></p></li><ul style=3D"margin-to=
p:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: circle;=
 font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); =
background-color: transparent; vertical-align: baseline;"><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"f=
ont-size: 14.666666666666666px; background-color: transparent; vertical-ali=
gn: baseline; white-space: pre-wrap;">Mips machine =E2=80=98failure to star=
t=E2=80=99 despite booting the kernel: </span><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D10136" style=3D"text-decoration:none;"><s=
pan style=3D"font-size: 14.666666666666666px; color: rgb(17, 85, 204); back=
ground-color: transparent; text-decoration: underline; vertical-align: base=
line; white-space: pre-wrap;">https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D10136</span></a></p></li><li dir=3D"ltr" style=3D"list-style-type: c=
ircle; font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0=
, 0); background-color: transparent; vertical-align: baseline;"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span styl=
e=3D"font-size: 14.666666666666666px; background-color: transparent; vertic=
al-align: baseline; white-space: pre-wrap;">Systemd logging failure: </span=
><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10128" styl=
e=3D"text-decoration:none;"><span style=3D"font-size: 14.666666666666666px;=
 color: rgb(17, 85, 204); background-color: transparent; text-decoration: u=
nderline; vertical-align: baseline; white-space: pre-wrap;">https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D10128</span></a></p></li><li dir=3D"lt=
r" style=3D"list-style-type: circle; font-size: 14.666666666666666px; font-=
family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical=
-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; backgro=
und-color: transparent; vertical-align: baseline; white-space: pre-wrap;">U=
nknown ppc failure: </span><a href=3D"https://autobuilder.yoctoproject.org/=
main/builders/nightly-ppc/builds/910/steps/Running%20Sanity%20Tests/logs/st=
dio" style=3D"text-decoration:none;"><span style=3D"font-size: 14.666666666=
666666px; color: rgb(17, 85, 204); background-color: transparent; text-deco=
ration: underline; vertical-align: baseline; white-space: pre-wrap;">https:=
//autobuilder.yoctoproject.org/main/builders/nightly-ppc/builds/910/steps/R=
unning%20Sanity%20Tests/logs/stdio</span></a></p></li><li dir=3D"ltr" style=
=3D"list-style-type: circle; font-size: 14.666666666666666px; font-family: =
Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: =
baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt;"><span style=3D"font-size: 14.666666666666666px; background-colo=
r: transparent; vertical-align: baseline; white-space: pre-wrap;">Uvesa tim=
eout issue: </span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D8245" style=3D"text-decoration:none;"><span style=3D"font-size: 14.6=
66666666666666px; color: rgb(17, 85, 204); background-color: transparent; t=
ext-decoration: underline; vertical-align: baseline; white-space: pre-wrap;=
">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8245</span></a></p></=
li><li dir=3D"ltr" style=3D"list-style-type: circle; font-size: 14.66666666=
6666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: trans=
parent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.6666666666=
66666px; background-color: transparent; vertical-align: baseline; white-spa=
ce: pre-wrap;">Busybox parallel make race: https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D10116</span></p></li></ul></ul><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span=
 style=3D"font-size: 14.666666666666666px; font-family: Arial; color: rgb(0=
, 0, 0); background-color: transparent; vertical-align: baseline; white-spa=
ce: pre-wrap;">We need to get to grips with these as a matter of urgency as=
 they do keep recurring and several occurred during our QA build, sadly. I =
am getting quite concerned about these.</span></p><ul style=3D"margin-top:0=
pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-type: disc; font=
-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); backg=
round-color: transparent; vertical-align: baseline;"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font=
-size: 14.666666666666666px; background-color: transparent; vertical-align:=
 baseline; white-space: pre-wrap;">2.1.1 has been released, finally!</span>=
</p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.6666=
66666666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: t=
ransparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666=
666666666px; background-color: transparent; vertical-align: baseline; white=
-space: pre-wrap;">We will be moving to the 4.7 kernel before M3 closes, an=
d evaluating a move to 4.8 in mid-September. &nbsp;We will be keeping both =
the 4.1 (as LTSI) and 4.4 (as LTS) kernels. &nbsp;GregKH has announced that=
 4.9 will be the next LTS for a Dec/Jan release, therefore our 4.7 (or 4.8)=
 will be short lived kernels.</span></p></li></ul><br><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font=
-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); backg=
round-color: transparent; vertical-align: baseline; white-space: pre-wrap;"=
>Key YP 2.2 Dates:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;=
"><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.66666666666=
6666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transpar=
ent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.6666666666666=
66px; background-color: transparent; vertical-align: baseline; white-space:=
 pre-wrap;">YP 2.2 M1 release would be: 6/24/16</span></p></li><li dir=3D"l=
tr" style=3D"list-style-type: disc; font-size: 14.666666666666666px; font-f=
amily: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-=
align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; backgrou=
nd-color: transparent; vertical-align: baseline; white-space: pre-wrap;">YP=
 2.2 M2 cut off would be: 7/18/16</span></p></li><li dir=3D"ltr" style=3D"l=
ist-style-type: disc; font-size: 14.666666666666666px; font-family: Arial; =
color: rgb(0, 0, 0); background-color: transparent; vertical-align: baselin=
e;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt;"><span style=3D"font-size: 14.666666666666666px; background-color: tran=
sparent; vertical-align: baseline; white-space: pre-wrap;">YP 2.2 M2 releas=
e would be: 7/29/16</span></p></li><li dir=3D"ltr" style=3D"list-style-type=
: disc; font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, =
0, 0); background-color: transparent; vertical-align: baseline;"><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span sty=
le=3D"font-size: 14.666666666666666px; background-color: transparent; verti=
cal-align: baseline; white-space: pre-wrap;">YP 2.2 M3 cut off would be: 8/=
29/16</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-s=
ize: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); backgro=
und-color: transparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-siz=
e: 14.666666666666666px; background-color: transparent; vertical-align: bas=
eline; white-space: pre-wrap;">YP 2.2 M3 release would be: 9/9/16</span></p=
></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.6666666=
66666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: tran=
sparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666=
666666px; background-color: transparent; vertical-align: baseline; white-sp=
ace: pre-wrap;">YP 2.2 M4 cut off would be: 10/3/16</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type: disc; font-size: 14.666666666666666px; f=
ont-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vert=
ical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; bac=
kground-color: transparent; vertical-align: baseline; white-space: pre-wrap=
;">YP 2.2 M4 release would be: 10/28/16</span></p></li></ul><br><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span styl=
e=3D"font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, =
0); background-color: transparent; vertical-align: baseline; white-space: p=
re-wrap;">Tracking Metrics:</span></p><p dir=3D"ltr" style=3D"line-height:1=
.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.6666666=
66666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: tran=
sparent; vertical-align: baseline; white-space: pre-wrap;"><span class=3D"A=
pple-tab-span" style=3D"white-space:pre;">	</span></span><span style=3D"fon=
t-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); back=
ground-color: transparent; vertical-align: baseline; white-space: pre-wrap;=
">WDD 2706 &nbsp;(last week 2712)</span></p><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;"><span style=
=3D"font-size: 14.666666666666666px; font-family: Consolas; color: rgb(0, 0=
, 0); background-color: transparent; vertical-align: baseline; white-space:=
 pre-wrap;">(</span><a href=3D"https://wiki.yoctoproject.org/charts/combo.h=
tml" style=3D"text-decoration:none;"><span style=3D"font-size: 14.666666666=
666666px; font-family: Arial; color: rgb(17, 85, 204); background-color: tr=
ansparent; text-decoration: underline; vertical-align: baseline; white-spac=
e: pre-wrap;">https://wiki.yoctoproject.org/charts/combo.html</span></a><sp=
an style=3D"font-size: 14.666666666666666px; font-family: Consolas; color: =
rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; whit=
e-space: pre-wrap;">)</span></p><br><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666=
666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transp=
arent; vertical-align: baseline; white-space: pre-wrap;">Key Status Links f=
or YP:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Proje=
ct_v2.2_Status" style=3D"text-decoration:none;"><span style=3D"font-size: 1=
4.666666666666666px; font-family: Consolas; color: rgb(17, 85, 204); backgr=
ound-color: transparent; text-decoration: underline; vertical-align: baseli=
ne; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_Projec=
t_v2.2_Status</span></a></p><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/=
Yocto_2.2_Schedule" style=3D"text-decoration:none;"><span style=3D"font-siz=
e: 14.666666666666666px; font-family: Consolas; color: rgb(17, 85, 204); ba=
ckground-color: transparent; text-decoration: underline; vertical-align: ba=
seline; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_2.=
2_Schedule</span></a></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yoc=
to_2.2_Features" style=3D"text-decoration:none;"><span style=3D"font-size: =
14.666666666666666px; font-family: Consolas; color: rgb(17, 85, 204); backg=
round-color: transparent; text-decoration: underline; vertical-align: basel=
ine; white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_2.2_F=
eatures</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; =
font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; ver=
tical-align: baseline; white-space: pre-wrap;">[If anyone has suggestions f=
or other information you=E2=80=99d like to see on this weekly status update=
, let us know!]</span></p><br></span></div><div></div></body></html>

--=-v1blmPeIfJ+aoZpJ/6ni--
