Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0422AE00C08; Fri, 26 Aug 2016 10:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BD73E00BEB
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 10:29:37 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 26 Aug 2016 10:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,581,1464678000"; 
	d="scan'208,217";a="161348534"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.185.215])
	by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2016 10:29:37 -0700
Message-ID: <1472232576.7558.51.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Aug 2016 10:29:36 -0700
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Yocto Project Status WW35
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
X-List-Received-Date: Fri, 26 Aug 2016 17:29:39 -0000
Content-Type: multipart/alternative; boundary="=-sk+SsNHg5v9tA2hukT11"

--=-sk+SsNHg5v9tA2hukT11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


Current Dev Position: YP 2.2 M3
Next Deadline: YP 2.2 M3 which will be Aug 29th (5:00pm GMT)

SWAT team rotation: Anibal -> Tracy
https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

Key Status/Updates:
 * The M3 deadline and feature freeze for 2.2 is on Monday. The patch queue is relatively low at the moment but it will likely take a few days to stablise and get all the patches merged. Beyond this point we will only be taking bugfixes for 2.2.
 * The pre-M3 build we’ve run looks good from a QA perspective so far.
 * We continue to see a significant ‘random’ autobuilder failures. Currently unknown/unresolved issues:
    * Mips machine ‘failure to start’ despite booting the kernel: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10136
    * Systemd logging failure: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10128
    * Unknown ppc failure: https://autobuilder.yoctoproject.org/main/builders/nightly-ppc/builds/910/steps/Running%20Sanity%20Tests/logs/stdio
    * gobject-introspection issues on mips-lsb and ppc-lsb from gstreamer1.0-plugins-bad
    * Webkit gobject-introspection race over a file
These are all issue which potentially put the M3 and 2.2 final builds at risk
 * We had a good performance gain on the autobuilders by enabling kvm, now our oldest supported distros support it reliably. This took runtime QA testing on x86 from around 45 minutes down to around 3 minutes which is a significant win, even if its x86 only.
 * We have started testing musl world builds and also runtime x86 musl testing now the kvm change means the overhead is lower.

Key YP 2.2 Dates:
 * YP 2.2 M1 release would be: 6/24/16
 * YP 2.2 M2 cut off would be: 7/18/16
 * YP 2.2 M2 release would be: 7/29/16
 * YP 2.2 M3 cut off would be: 8/29/16
 * YP 2.2 M3 release would be: 9/9/16
 * YP 2.2 M4 cut off would be: 10/3/16
 * YP 2.2 M4 release would be: 10/28/16

Tracking Metrics:
	WDD 2747  (last week 2706)
(https://wiki.yoctoproject.org/charts/combo.html)

Key Status Links for YP:
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features

[If anyone has suggestions for other information you’d like to see on this weekly status update, let us know!]

--=-sk+SsNHg5v9tA2hukT11
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div><span id=3D"docs-internal-guid-7ea3a6e9-c7e5-=
5be0-e5a8-ea0ce3f9b396"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top=
:0pt;margin-bottom:0pt;"><br></p><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt;"><span style=3D"color: rgb(0, 0, 0); font-=
family: Arial; font-size: 14.666666666666666px; white-space: pre-wrap; back=
ground-color: transparent; line-height: 1.38;">Current Dev Position: YP 2.2=
 M3</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; font-family:=
 Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align:=
 baseline; white-space: pre-wrap;">Next Deadline: YP 2.2 M3 which will be A=
ug 29th (5:00pm GMT)</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.6666666666=
66666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transpa=
rent; vertical-align: baseline; white-space: pre-wrap;">SWAT team rotation:=
 Anibal -&gt; Tracy</span></p><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wik=
i/Yocto_Build_Failure_Swat_Team" style=3D"text-decoration:none;"><span styl=
e=3D"font-size: 14.666666666666666px; font-family: Consolas; color: rgb(17,=
 85, 204); background-color: transparent; text-decoration: underline; verti=
cal-align: baseline; white-space: pre-wrap;">https://wiki.yoctoproject.org/=
wiki/Yocto_Build_Failure_Swat_Team</span></a></p><br><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font=
-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); backg=
round-color: transparent; vertical-align: baseline; white-space: pre-wrap;"=
>Key Status/Updates:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0p=
t;"><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.666666666=
666666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transp=
arent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.66666666666=
6666px; background-color: transparent; vertical-align: baseline; white-spac=
e: pre-wrap;">The M3 deadline and feature freeze for 2.2 is on Monday. The =
patch queue is relatively low at the moment but it will likely take a few d=
ays to stablise and get all the patches merged. Beyond this point we will o=
nly be taking bugfixes for 2.2.</span></p></li><li dir=3D"ltr" style=3D"lis=
t-style-type: disc; font-size: 14.666666666666666px; font-family: Arial; co=
lor: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline;=
"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
;"><span style=3D"font-size: 14.666666666666666px; background-color: transp=
arent; vertical-align: baseline; white-space: pre-wrap;">The pre-M3 build w=
e=E2=80=99ve run looks good from a QA perspective so far.</span></p></li><l=
i dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.666666666666666=
px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent;=
 vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px=
; background-color: transparent; vertical-align: baseline; white-space: pre=
-wrap;">We continue to see a significant =E2=80=98random=E2=80=99 autobuild=
er failures. Currently unknown/unresolved issues:</span></p></li><ul style=
=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr" style=3D"list-style-=
type: circle; font-size: 14.666666666666666px; font-family: Arial; color: r=
gb(0, 0, 0); background-color: transparent; vertical-align: baseline;"><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><sp=
an style=3D"font-size: 14.666666666666666px; background-color: transparent;=
 vertical-align: baseline; white-space: pre-wrap;">Mips machine =E2=80=98fa=
ilure to start=E2=80=99 despite booting the kernel: </span><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10136" style=3D"text-decorat=
ion:none;"><span style=3D"font-size: 14.666666666666666px; color: rgb(17, 8=
5, 204); background-color: transparent; text-decoration: underline; vertica=
l-align: baseline; white-space: pre-wrap;">https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D10136</span></a></p></li><li dir=3D"ltr" style=3D"list-=
style-type: circle; font-size: 14.666666666666666px; font-family: Arial; co=
lor: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline;=
"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
;"><span style=3D"font-size: 14.666666666666666px; background-color: transp=
arent; vertical-align: baseline; white-space: pre-wrap;">Systemd logging fa=
ilure: </span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D10128" style=3D"text-decoration:none;"><span style=3D"font-size: 14.6666=
66666666666px; color: rgb(17, 85, 204); background-color: transparent; text=
-decoration: underline; vertical-align: baseline; white-space: pre-wrap;">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10128</span></a></p></li=
><li dir=3D"ltr" style=3D"list-style-type: circle; font-size: 14.6666666666=
66666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transpa=
rent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666=
666px; background-color: transparent; vertical-align: baseline; white-space=
: pre-wrap;">Unknown ppc failure: </span><a href=3D"https://autobuilder.yoc=
toproject.org/main/builders/nightly-ppc/builds/910/steps/Running%20Sanity%2=
0Tests/logs/stdio" style=3D"text-decoration:none;"><span style=3D"font-size=
: 14.666666666666666px; color: rgb(17, 85, 204); background-color: transpar=
ent; text-decoration: underline; vertical-align: baseline; white-space: pre=
-wrap;">https://autobuilder.yoctoproject.org/main/builders/nightly-ppc/buil=
ds/910/steps/Running%20Sanity%20Tests/logs/stdio</span></a></p></li><li dir=
=3D"ltr" style=3D"list-style-type: circle; font-size: 14.666666666666666px;=
 font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; ve=
rtical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; b=
ackground-color: transparent; vertical-align: baseline; white-space: pre-wr=
ap;">gobject-introspection issues on mips-lsb and ppc-lsb from gstreamer1.0=
-plugins-bad</span></p></li><li dir=3D"ltr" style=3D"list-style-type: circl=
e; font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0)=
; background-color: transparent; vertical-align: baseline;"><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D=
"font-size: 14.666666666666666px; background-color: transparent; vertical-a=
lign: baseline; white-space: pre-wrap;">Webkit gobject-introspection race o=
ver a file</span></p></li></ul></ul><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span style=3D"font-=
size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); backgr=
ound-color: transparent; vertical-align: baseline; white-space: pre-wrap;">=
These are all issue which potentially put the M3 and 2.2 final builds at ri=
sk</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li dir=3D"ltr=
" style=3D"list-style-type: disc; font-size: 14.666666666666666px; font-fam=
ily: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-al=
ign: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; background=
-color: transparent; vertical-align: baseline; white-space: pre-wrap;">We h=
ad a good performance gain on the autobuilders by enabling kvm, now our old=
est supported distros support it reliably. This took runtime QA testing on =
x86 from around 45 minutes down to around 3 minutes which is a significant =
win, even if its x86 only.</span></p></li><li dir=3D"ltr" style=3D"list-sty=
le-type: disc; font-size: 14.666666666666666px; font-family: Arial; color: =
rgb(0, 0, 0); background-color: transparent; vertical-align: baseline;"><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><s=
pan style=3D"font-size: 14.666666666666666px; background-color: transparent=
; vertical-align: baseline; white-space: pre-wrap;">We have started testing=
 musl world builds and also runtime x86 musl testing now the kvm change mea=
ns the overhead is lower.</span></p></li></ul><br><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size=
: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); background=
-color: transparent; vertical-align: baseline; white-space: pre-wrap;">Key =
YP 2.2 Dates:</span></p><ul style=3D"margin-top:0pt;margin-bottom:0pt;"><li=
 dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.666666666666666p=
x; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; =
vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px;=
 background-color: transparent; vertical-align: baseline; white-space: pre-=
wrap;">YP 2.2 M1 release would be: 6/24/16</span></p></li><li dir=3D"ltr" s=
tyle=3D"list-style-type: disc; font-size: 14.666666666666666px; font-family=
: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align=
: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; background-co=
lor: transparent; vertical-align: baseline; white-space: pre-wrap;">YP 2.2 =
M2 cut off would be: 7/18/16</span></p></li><li dir=3D"ltr" style=3D"list-s=
tyle-type: disc; font-size: 14.666666666666666px; font-family: Arial; color=
: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline;"><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;">=
<span style=3D"font-size: 14.666666666666666px; background-color: transpare=
nt; vertical-align: baseline; white-space: pre-wrap;">YP 2.2 M2 release wou=
ld be: 7/29/16</span></p></li><li dir=3D"ltr" style=3D"list-style-type: dis=
c; font-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0)=
; background-color: transparent; vertical-align: baseline;"><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D=
"font-size: 14.666666666666666px; background-color: transparent; vertical-a=
lign: baseline; white-space: pre-wrap;">YP 2.2 M3 cut off would be: 8/29/16=
</span></p></li><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: =
14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); background-c=
olor: transparent; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14=
.666666666666666px; background-color: transparent; vertical-align: baseline=
; white-space: pre-wrap;">YP 2.2 M3 release would be: 9/9/16</span></p></li=
><li dir=3D"ltr" style=3D"list-style-type: disc; font-size: 14.666666666666=
666px; font-family: Arial; color: rgb(0, 0, 0); background-color: transpare=
nt; vertical-align: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.66666666666666=
6px; background-color: transparent; vertical-align: baseline; white-space: =
pre-wrap;">YP 2.2 M4 cut off would be: 10/3/16</span></p></li><li dir=3D"lt=
r" style=3D"list-style-type: disc; font-size: 14.666666666666666px; font-fa=
mily: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-a=
lign: baseline;"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; backgroun=
d-color: transparent; vertical-align: baseline; white-space: pre-wrap;">YP =
2.2 M4 release would be: 10/28/16</span></p></li></ul><br><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style=3D"f=
ont-size: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); ba=
ckground-color: transparent; vertical-align: baseline; white-space: pre-wra=
p;">Tracking Metrics:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.6666666666666=
66px; font-family: Arial; color: rgb(0, 0, 0); background-color: transparen=
t; vertical-align: baseline; white-space: pre-wrap;"><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre;">	</span></span><span style=3D"font-size=
: 14.666666666666666px; font-family: Arial; color: rgb(0, 0, 0); background=
-color: transparent; vertical-align: baseline; white-space: pre-wrap;">WDD =
2747 &nbsp;(last week 2706)</span></p><p dir=3D"ltr" style=3D"line-height:1=
.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;"><span style=3D"fon=
t-size: 14.666666666666666px; font-family: Consolas; color: rgb(0, 0, 0); b=
ackground-color: transparent; vertical-align: baseline; white-space: pre-wr=
ap;">(</span><a href=3D"https://wiki.yoctoproject.org/charts/combo.html" st=
yle=3D"text-decoration:none;"><span style=3D"font-size: 14.666666666666666p=
x; font-family: Arial; color: rgb(17, 85, 204); background-color: transpare=
nt; text-decoration: underline; vertical-align: baseline; white-space: pre-=
wrap;">https://wiki.yoctoproject.org/charts/combo.html</span></a><span styl=
e=3D"font-size: 14.666666666666666px; font-family: Consolas; color: rgb(0, =
0, 0); background-color: transparent; vertical-align: baseline; white-space=
: pre-wrap;">)</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666p=
x; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; =
vertical-align: baseline; white-space: pre-wrap;">Key Status Links for YP:<=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2=
_Status" style=3D"text-decoration:none;"><span style=3D"font-size: 14.66666=
6666666666px; font-family: Consolas; color: rgb(17, 85, 204); background-co=
lor: transparent; text-decoration: underline; vertical-align: baseline; whi=
te-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_=
Status</span></a></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2=
.2_Schedule" style=3D"text-decoration:none;"><span style=3D"font-size: 14.6=
66666666666666px; font-family: Consolas; color: rgb(17, 85, 204); backgroun=
d-color: transparent; text-decoration: underline; vertical-align: baseline;=
 white-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_2.2_Sched=
ule</span></a></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.2_=
Features" style=3D"text-decoration:none;"><span style=3D"font-size: 14.6666=
66666666666px; font-family: Consolas; color: rgb(17, 85, 204); background-c=
olor: transparent; text-decoration: underline; vertical-align: baseline; wh=
ite-space: pre-wrap;">https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features=
</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt;"><span style=3D"font-size: 14.666666666666666px; font-fa=
mily: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-a=
lign: baseline; white-space: pre-wrap;">[If anyone has suggestions for othe=
r information you=E2=80=99d like to see on this weekly status update, let u=
s know!]</span></p><br></span></div><div></div></body></html>

--=-sk+SsNHg5v9tA2hukT11--
