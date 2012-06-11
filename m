Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C690E0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 12:12:16 -0700 (PDT)
Received: by eaab16 with SMTP id b16so2206922eaa.35
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 12:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=drp0nJOevDgcwE+NeJuTSo7Xi8/b3wPOVS+857pw5u4=;
	b=IfYz6NXhG/81Y7YHTmzhswqos2XGr/cX2M7NVX+U4Rkb/1kHf6MWwb/C/oD4BKsdbJ
	2v1Q9otjUujAADUYXsIHXyA5pjEnndtS5rrOfARLCou0UCMB3+qfmnGz5bxzLdmccd/s
	5CQ1nFKq0CjhO/VqD6rBmTCk9215IzJWpifU+LH1oHZDZum/kG4mliLnNxVoOMac8GvC
	kMhole0/P19aLhSnjPnY0IMzMoFLTD6U48ENNa/o+0/pcIWwsKeWpGfr837BtJVukiAf
	dVus6dv9OGv7Y7QrrzQ1xTiRU7NkSwecALUMcXPWLvx1yVWD8ZZ145rOQfOIAutkZgAi
	dBSQ==
Received: by 10.14.97.135 with SMTP id t7mr6032131eef.177.1339441935551; Mon,
	11 Jun 2012 12:12:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 11 Jun 2012 12:11:44 -0700 (PDT)
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC19143DFC@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC19143DFC@IRSMSX102.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Jun 2012 12:11:44 -0700
Message-ID: <CAMKF1sr_fi83gLuNUGYVh=t4cFdqhjo7EyR5BM3o_RLLvtiOBQ@mail.gmail.com>
To: "Serban, Laurentiu" <laurentiu.serban@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Weekly Test Report for Yocto 1.3_M1 20120606 Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Jun 2012 19:12:18 -0000
Content-Type: multipart/alternative; boundary=bcaec517234bc40d5f04c23720d9

--bcaec517234bc40d5f04c23720d9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747

seems not to exist

On Mon, Jun 11, 2012 at 10:52 AM, Serban, Laurentiu <
laurentiu.serban@intel.com> wrote:

>  This is the weekly test report for Yocto 1.3 20120606 build. We find
> some meta-intel BSPs failed to build with "Weekly build 1.3_M1 Week 4", o=
ne
> is for connman-gnome and another is for gst-ffmpeg, Due to the issue, QA
> testing against Sugarbay/eMenlow/Crownbay/FRI2/Huron River is blocked. Th=
e
> 2 bugs we reported for these build error are bug 2561 and 2562. Otherwise=
,
> Hob reports "no attribute __dummy_image__", which is reported as bug 2574
> and should be fixed in latest master. Another minor issue for Hob is that
> Incorrect image shown when loading template file, bug 2576. For ADT, we
> found two issues that are Segmentation fault on qemuarm from
> /usr/lib/libust.so.0 and  ADT-Installer failed if the folder
> /opt/poky/1.2+snapshot exist. There are also two issues on Core Build
> System. Other features perform well.****
>
> ** **
>
> Many thanks to Hongna, Jiajun and Yi for the help.****
>
> ** **
>
> *Test Summary:*
>
> *---------------------------------------*
>
> ** **
>
> *Test Result Summary***
>
> *Component***
>
> *Target***
>
> *Status***
>
> *Comments***
>
> *BSP***
>
> eMenlow****
>
> BLOCK****
>
> connman-gnome do_configure fail on autobuilder for several BSPs****
>
> Blacksand****
>
> GOOD****
>
> syslog is not started by default in background on bsps****
>
> Crownbay-emgd****
>
> BLOCK****
>
> connman-gnome do_configure fail on autobuilder for several BSPs****
>
> Sugarbay****
>
> BLOCK****
>
> connman-gnome do_configure fail on autobuilder for several BSPs****
>
> Fish River Island****
>
> BLOCK****
>
> connman-gnome do_configure fail on autobuilder for several BSPs****
>
> HuronRiver-sato-sdk****
>
> BLOCK****
>
> connman-gnome do_configure fail on autobuilder for several BSPs****
>
> Jasperforest-lsb****
>
> GOOD****
>
> Everything runs well****
>
> Beagleboard****
>
> GOOD****
>
> Everything runs well****
>
> Routerstationpro****
>
> GOOD****
>
> Everything runs well****
>
> Mpc8315e-rdb****
>
> GOOD****
>
> Everything runs well****
>
> *QEMU***
>
> qemux86****
>
> GOOD****
>
> Everything runs well****
>
> qemux86-64****
>
> GOOD****
>
> Everything runs well****
>
> qemuarm****
>
> GOOD****
>
> Everything runs well****
>
> qemuppc****
>
> GOOD****
>
> Everything runs well****
>
> qemumips****
>
> GOOD****
>
> Everything runs well****
>
> *ADT***
>
> ****
>
> GOOD****
>
> 32bit kernel generated oprofile data file can not be read by remote 64bit
> opreport;Segmentation fault on qemuarm from /usr/lib/libust.so.0;****
>
> *Core Build System***
>
> ****
>
> BUGGY****
>
> Everything runs well except
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2363****
>
> and  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747 ****
>
> **
>





> **
>
> ** **
>
>   ****
>
> Critical bugs, more than 50% test cases are blocked****
>
> ****
>
> Only Normal, Minor or Enhancement bugs, or less than 10% test cases faile=
d
> ****
>
> ****
>
> Normal, Major and Critical bugs, and more than 10% test cases failed****
>
> ** **
>
> *Detailed Test Result for each component***
>
> *Target***
>
> *Total TCs* **
>
> *Not Run***
>
> *Passed* **
>
> *Failed* **
>
> *Not testable (Blocked)* **
>
> *eMenlow Sato-SDK***
>
> 66****
>
> 0****
>
> 0****
>
> 0****
>
> 66(bug 2562)****
>
> *n450 Sato-SDK***
>
> 64****
>
> 0****
>
> 63****
>
> 1(bug 2535)****
>
> 0****
>
> *Crownbay-Sato-SDK***
>
> 66****
>
> 0****
>
> 0****
>
> 0****
>
> 66(bug 2562)****
>
> *Sugarbay Sato-SDK***
>
> 69****
>
> 0****
>
> 0****
>
> 0****
>
> 69(bug 2562)****
>
> *HuronRiver Sato-SDK***
>
> 70****
>
> 0****
>
> 0****
>
> 0****
>
> 70(bug 2562)****
>
> *Jasperforest lsb-SDK***
>
> 32****
>
> 0****
>
> 32****
>
> 0****
>
> 0****
>
> *Beagleboard Sato-SDK***
>
> 40****
>
> 0****
>
> 40****
>
> 0****
>
> 0****
>
> *Routerstationpro Sato-SDK***
>
> 33****
>
> 0****
>
> 33****
>
> 0****
>
> 0****
>
> *Mpc8315e-rdb Sato-SDK***
>
> 36****
>
> 0****
>
> 36****
>
> 0****
>
> 0****
>
> *Qemux86-64 Sato***
>
> 30****
>
> 0****
>
> 30****
>
> 0****
>
> 0****
>
> *Qemux86-64 Sato-SDK***
>
> 35****
>
> 0****
>
> 35****
>
> 0****
>
> 0****
>
> *Qemux86 Sato***
>
> 30****
>
> 0****
>
> 30****
>
> 0****
>
> 0****
>
> *Qemux86 Sato-SDK***
>
> 35****
>
> 0****
>
> 35****
>
> 0****
>
> 0****
>
> *Qemuarm Sato***
>
> 30****
>
> 0****
>
> 30****
>
> 0****
>
> 0****
>
> *Qemuarm Sato-SDK***
>
> 35****
>
> 0****
>
> 35****
>
> 0****
>
> 0****
>
> *Qemumips Sato***
>
> 30****
>
> 0****
>
> 30****
>
> 0****
>
> 0****
>
> *Qemumips Sato-SDK***
>
> 35****
>
> 0****
>
> 35****
>
> 0****
>
> 0****
>
> *Qemuppc Sato***
>
> 30****
>
> 0****
>
> 30****
>
> 0****
>
> 0****
>
> *Qemuppc Sato-SDK***
>
> 35****
>
> 0****
>
> 35****
>
> 0****
>
> 0****
>
> *ADT***
>
> 27****
>
> 0****
>
> 24****
>
> 3 (bug 1452  2577 2553)****
>
> 0****
>
> *Core Build System*
>
> 13****
>
> 0****
>
> 11****
>
> 2(2363, 2747)****
>
> 0****
>
> *Total***
>
> 841****
>
> 0****
>
> 564****
>
> 6****
>
> 271****
>
> ** **
>
> * You can check the detailed test result in attachment for each target.
> ** The failed/blocked case number is listed with failed cases=E2=80=99 bu=
g number.
> ****
>
> ** **
>
> *Commit Information*
>
> *--------------------------------------- *
>
> Tree/Branch: poky/master
> Commit id: 348da93e283b2b8454fd9cde80d4b17378e2a168****
>
> master:df8f55a919b3cc602ce1f1c51630c7edf6e36b55****
>
> ** **
>
> Meta branch: master****
>
> Commit id: 8bc2fa135060e941bcbb4dcfb664e175a3eb871d****
>
> * *
>
> *Issue summary***
>
> *--------------------------------------*
>
> *Component***
>
> *Bug Number***
>
> *Target Milestone***
>
> *System & Core OS***
>
> *System Usage***
>
> Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with
> nightly build (20120523-2)****
>
> 1.3 M2****
>
> Bug 2509 The 'About' option with connman-properties doesn't display the
> picture.****
>
> 1.3 M2****
>
> Bug 2535 syslog is not started by default in background on
> bsps(Crownbay,N450 etc)****
>
> 1.3 M2****
>
> *Other***
>
> New! Bug 2562 connman-gnome do_configure fail on autobuilder for several
> BSPs****
>
> ****
>
> New! Bug 2561 gst-ffmpeg do_configure failed on autobuilder for lsb build=
*
> ***
>
> ****
>
> *ADT***
>
> Bug 1452 32bit kernel generated oprofile data file can not be read by
> remote 64bit operation****
>
> 1.3****
>
> Bug 2068 Clutter run failed in qemux86/x86-64 using toolchain****
>
> 1.3****
>
> Bug 2069 Clutter run failed in qemux86/qemux86_64 on
> ubuntu/opensuse/fedora. ****
>
> 1.2.1****
>
> Bug 2534 [Regression]Glxgears failed on qemux86/x86-64/arm/mips/ppc on
> Ubuntu 11.10 64bit ****
>
>  --****
>
> New! Bug 2553 ADT-Installer failed if the folder /opt/poky/1.2+snapshot
> exist****
>
> ****
>
> New! Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0****
>
> ****
>
> *HOB***
>
> New! Bug 2576 [Hob2] wrong image profile selected after template load ***=
*
>
> ****
>
> New! Bug 2574 [Hob2] no attribute '__dummy_image__' for RecipeListModel**=
*
> *
>
> ****
>
> *Core Build System*
>
> Bug 2747 eglibc do_package_write_deb fails****
>
> 1.2.1****
>
> Bug 2367 core-image-sato-sdk failed to do do_rootfs on fedora17 64bit****
>
> 1.2****
>
> ** **
>
> *Laurentiu Serban*
>
> QA Engineer ****
>
> Open Source Technology Center****
>
> System Software Division Romania****
>
> Desk: +40 31 8604742**
>
> iNET: 88451042****
>
> ** **
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--bcaec517234bc40d5f04c23720d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<font><font face=3D"courier new,monospace"><span class=3D"Apple-style-span"=
 style=3D"border-collapse:collapse;font-family:arial;line-height:14px"><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747" target=3D"=
_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747</a></span>=
</font></font><div>

<font><span class=3D"Apple-style-span" style=3D"border-collapse:collapse;li=
ne-height:14px"><br></span></font></div><div><font><span class=3D"Apple-sty=
le-span" style=3D"border-collapse:collapse;line-height:14px">seems not to e=
xist=C2=A0<br>

</span></font><br><div class=3D"gmail_quote">On Mon, Jun 11, 2012 at 10:52 =
AM, Serban, Laurentiu <span dir=3D"ltr">&lt;<a href=3D"mailto:laurentiu.ser=
ban@intel.com" target=3D"_blank">laurentiu.serban@intel.com</a>&gt;</span> =
wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p style=3D"text-indent:10.5pt">This is the weekly test report for Yocto 1.=
3 20120606 build. We find some meta-intel BSPs failed to build with &quot;W=
eekly build 1.3_M1 Week 4&quot;, one is for connman-gnome and another is fo=
r gst-ffmpeg, Due to the
 issue, QA testing against Sugarbay/eMenlow/Crownbay/FRI2/Huron River is bl=
ocked. The 2 bugs we reported for these build error are bug 2561 and 2562. =
Otherwise, Hob reports &quot;no attribute __dummy_image__&quot;, which is r=
eported as bug 2574 and should be fixed in
 latest master. Another minor issue for Hob is that Incorrect image shown w=
hen loading template file, bug 2576. For ADT, we found two issues that are =
Segmentation fault on qemuarm from /usr/lib/libust.so.0 and=C2=A0 ADT-Insta=
ller failed if the folder /opt/poky/1.2+snapshot
 exist. There are also two issues on Core Build System. Other features perf=
orm well.<u></u><u></u></p>
<p style=3D"text-indent:10.5pt"><u></u>=C2=A0<u></u></p>
<p style=3D"text-indent:10.5pt">Many thanks to Hongna, Jiajun and Yi for th=
e help.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Test Summary:<u></u><u></u></span></b>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><u></u>=C2=A0<u></u=
></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"965" style=
=3D"width:724.05pt;border-collapse:collapse">
<tbody>
<tr style=3D"min-height:15.0pt">
<td width=3D"965" nowrap colspan=3D"4" valign=3D"bottom" style=3D"width:724=
.05pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"line-height:115%;font-size:10.0pt;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Test Result Summary</span></b><b><=
span style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"132" nowrap valign=3D"bottom" style=3D"width:99.0pt;border:sol=
id black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"line-he=
ight:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;">Component</span></b><b><span style=3D"line-height:115%;font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></sp=
an></b></p>


</td>
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"line-he=
ight:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;">Target</span></b><b><span style=3D"line-height:115%;font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span>=
</b></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"line-he=
ight:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;">Status</span></b><b><span style=3D"line-height:115%;font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span>=
</b></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"line-he=
ight:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;">Comments</span></b><b><span style=3D"line-height:115%;font-size:10.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></spa=
n></b></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"132" nowrap rowspan=3D"10" style=3D"width:99.0pt;border:solid =
black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"line-height:115%;font-size:10.0pt;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">BSP</span></b><b><span style=3D"li=
ne-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">eMenlow</span><span style=3D"line-height:115%;font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BLOCK</span><span style=3D"line-height:115%;font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">connman-gnome do_configure fail on autobuilder for several BSPs</span><s=
pan style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Blacksand</span><span style=3D"line-height:115%;font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">syslog is not started by default in background on bsps</span><span style=
=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Crownbay-emgd</span><span style=3D"line-height:115%;font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p=
>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BLOCK</span><span style=3D"line-height:115%;font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">connman-gnome do_configure fail on autobuilder for several BSPs</span><s=
pan style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Sugarbay</span><span style=3D"line-height:115%;font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BLOCK</span><span style=3D"line-height:115%;font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">connman-gnome do_configure fail on autobuilder for several BSPs</span><s=
pan style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Fish River Island</span><span style=3D"line-height:115%;font-size:10.0pt=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span=
></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BLOCK</span><span style=3D"line-height:115%;font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">connman-gnome do_configure fail on autobuilder for several BSPs</span><s=
pan style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">HuronRiver-sato-sdk</span><span style=3D"line-height:115%;font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></sp=
an></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BLOCK</span><span style=3D"line-height:115%;font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">connman-gnome do_configure fail on autobuilder for several BSPs</span><s=
pan style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Jasperforest-lsb</span><span style=3D"line-height:115%;font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span>=
</p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Beagleboard</span><span style=3D"line-height:115%;font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Routerstationpro</span><span style=3D"line-height:115%;font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span>=
</p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Mpc8315e-rdb</span><span style=3D"line-height:115%;font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"132" nowrap rowspan=3D"5" style=3D"width:99.0pt;border:solid b=
lack 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"line-height:115%;font-size:10.0pt;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">QEMU</span></b><b><span style=3D"l=
ine-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">qemux86</span><span style=3D"line-height:115%;font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">qemux86-64</span><span style=3D"line-height:115%;font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">qemuarm</span><span style=3D"line-height:115%;font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">qemuppc</span><span style=3D"line-height:115%;font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"216" nowrap valign=3D"bottom" style=3D"width:162.3pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">qemumips</span><span style=3D"line-height:115%;font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well</span><span style=3D"line-height:115%;font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:28.5pt">
<td width=3D"132" nowrap style=3D"width:99.0pt;border:solid black 1.0pt;bor=
der-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"line-height:115%;font-size:10.0pt;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">ADT</span></b><b><span style=3D"li=
ne-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"216" nowrap style=3D"width:162.3pt;border-top:none;border-left=
:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;paddin=
g:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun">=E3=80=80</span><span style=3D"font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;"><u></u><u></u></span></p>
</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#92d050;padding:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">GOOD</span><span style=3D"line-height:115%;font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">32bit kernel generated oprofile data file can not be read by remote 64bi=
t opreport;Segmentation fault on qemuarm from
 /usr/lib/libust.so.0;</span><span style=3D"line-height:115%;font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></sp=
an></p>
</td>
</tr>
<tr style=3D"min-height:28.5pt">
<td width=3D"132" nowrap style=3D"width:99.0pt;border:solid black 1.0pt;bor=
der-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"line-height:115%;font-size:10.0pt;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Core Build System</span></b><b><sp=
an style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"216" nowrap style=3D"width:162.3pt;border-top:none;border-left=
:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;paddin=
g:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun">=E3=80=80</span><span style=3D"font-family:SimSun"><u></u><u></u>=
</span></p>
</td>
<td width=3D"82" nowrap valign=3D"bottom" style=3D"width:.85in;border-top:n=
one;border-left:none;border-bottom:solid black 1.0pt;border-right:solid bla=
ck 1.0pt;background:#ffc000;padding:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BUGGY</span><span style=3D"line-height:115%;font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"line-heigh=
t:115%;font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Everything runs well except
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2363"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2363=
</a><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">and =C2=A0<a href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747" target=3D"_blank">htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747</a>
<span style=3D"line-height:115%;font-size:10.0pt;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;">
<u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><u></u>=C2=A0</span=
></p></div></div></blockquote><div><br></div><div><br></div><div><br></div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">

<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNorm=
al"><span style=3D"font-size:10.5pt"><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><u></u>=C2=A0<u></u=
></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"671" style=
=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"min-height:14.25pt">
<td width=3D"168" nowrap valign=3D"bottom" style=3D"width:125.8pt;backgroun=
d:red;padding:0in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">=C2=A0<=
span style=3D"font-size:10.0pt;font-family:SimSun">=E3=80=80</span><span st=
yle=3D"font-size:10.0pt;font-family:SimSun"><u></u><u></u></span></p>
</td>
<td width=3D"504" nowrap valign=3D"bottom" style=3D"width:377.8pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Critical bugs, more than 50% test cases a=
re blocked</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:14.25pt">
<td width=3D"168" nowrap valign=3D"bottom" style=3D"width:125.8pt;backgroun=
d:#9bbb59;padding:0in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:SimSun">=E3=80=80</span><span style=3D=
"font-size:10.0pt;font-family:SimSun"><u></u><u></u></span></p>
</td>
<td width=3D"504" nowrap valign=3D"bottom" style=3D"width:377.8pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Only Normal, Minor or Enhancement bugs, o=
r less than 10% test cases failed</span><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p=
>


</td>
</tr>
<tr style=3D"min-height:14.25pt">
<td width=3D"168" nowrap valign=3D"bottom" style=3D"width:125.8pt;backgroun=
d:#ffc000;padding:0in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:SimSun">=E3=80=80</span><span style=3D=
"font-size:10.0pt;font-family:SimSun"><u></u><u></u></span></p>
</td>
<td width=3D"504" nowrap valign=3D"bottom" style=3D"width:377.8pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Normal, Major and Critical bugs, and more=
 than 10% test cases failed</span><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><u></u>=C2=A0<u></u=
></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"652" style=
=3D"width:489.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"min-height:15.0pt">
<td width=3D"652" nowrap colspan=3D"6" valign=3D"bottom" style=3D"width:489=
.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Detailed Test Result for each component</span></b><b><span style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u><=
/u><u></u></span></b></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Target</span></b><b><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Total TCs</span></b><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;"><u></u><u></u></span></b></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Not Run</span></b><b><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Passed</span></b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;"><u></u><u></u></span></b></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Failed</span></b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;"><u></u><u></u></span></b></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Not testable (Blocked)</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;"><u></u><u></u></span></b></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">eMenlow Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></=
p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">66</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></p=
>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">66(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span>=
</p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">n450 Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">64</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">63</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1(bug 2535)</span><span style=3D"font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span><=
/p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Crownbay-Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b><=
/p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">66</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></p=
>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">66(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span>=
</p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Sugarbay Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b><=
/p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">69</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></p=
>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">69(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span>=
</p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HuronRiver Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b=
></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">70</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></p=
>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">70(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span>=
</p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Jasperforest lsb-SDK</span></b><b><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></=
b></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">32</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Beagleboard Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></=
b></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">40</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">40</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:26.25pt">
<td width=3D"167" style=3D"width:125.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Routerstationpro Sato-SDK</span></b><b><span style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></sp=
an></b></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">33</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">33</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" style=3D"width:125.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Mpc8315e-rdb Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span><=
/b></p>


</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">36</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">36</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86-64 Sato</span></b><b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p=
>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86-64 Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b=
></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86 Sato</span></b><b><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86 Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></=
p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuarm Sato</span></b><b><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuarm Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></=
p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemumips Sato</span></b><b><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemumips Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b><=
/p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuppc Sato</span></b><b><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuppc Sato-SDK</span></b><b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></=
p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:26.25pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">ADT</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">27</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">24</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00b050"><u></u><u></u></span></=
p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">3 (bug 1452=C2=A0 2577 2553)</span><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><u></=
u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
<tr style=3D"min-height:26.25pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Core Build System<u></u><u></u></span></b></p>
</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">13<u></u><u></u></span></p>
</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<u></u><u></u></span></p>
</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00b050">11<u></u><u></u></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2(2363, 2747)<u></u><u></u></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"167" nowrap style=3D"width:125.0pt;border:solid black 1.0pt;bo=
rder-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Total</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"71" nowrap style=3D"width:53.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">841</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"63" nowrap style=3D"width:47.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"57" nowrap style=3D"width:43.0pt;border-top:none;border-left:n=
one;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">564</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">6</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">271</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:red"><u></u><u></u></span></p>


</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal">* You can check the detailed test result in attachme=
nt for each target.<br>
** The failed/blocked case number is listed with failed cases=E2=80=99 bug =
number.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p><b>Commit Information<u></u><u></u></b></p>
<p class=3D"MsoNormal"><b>---------------------------------------=C2=A0<u><=
/u><u></u></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">Tree/Branch: poky/mast=
er<br>
Commit id: 348da93e283b2b8454fd9cde80d4b17378e2a168<u></u><u></u></p>
<p class=3D"MsoNormal">master:df8f55a919b3cc602ce1f1c51630c7edf6e36b55<span=
 style=3D"font-size:12.0pt;font-family:SimSun"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.5pt;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Meta branch=
: master<u></u><u></u></span></p>
<pre><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;">Commit id: 8bc2fa135060e941bcbb4dcfb664e175a3eb871d<u></u><=
u></u></span></pre>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt"><u></u>=C2=A0<u>=
</u></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Issue summary</span></b><b><span style=
=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></b></p>


<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
<u></u><u></u></span></b></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"1013" styl=
e=3D"width:760.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"min-height:15.0pt">
<td width=3D"221" nowrap colspan=3D"2" valign=3D"bottom" style=3D"width:166=
.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Component</span></b><b><span style=3D"font-size:10.0pt;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Bug Number</span></b><b><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:sol=
id black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0=
pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Target Milestone</span></b><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><u></u><u></u></span></b></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"125" nowrap rowspan=3D"5" style=3D"width:93.45pt;border:solid =
black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">System &amp; Core OS</span></b><b><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></=
b></p>


</td>
<td width=3D"97" nowrap rowspan=3D"3" style=3D"width:72.55pt;border-top:non=
e;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black=
 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">System Usage</span></b><b><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"679" nowrap valign=3D"bottom" style=3D"width:509.0pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 2508 Fotowall icons appear abnormal o=
n qemumips sato-sdk images with nightly build (20120523-2)</span><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"=
><u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border-top=
:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.3 M2</span><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" nowrap valign=3D"bottom" style=3D"width:509.0pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 2509 The &#39;About&#39; option with =
connman-properties doesn&#39;t display the picture.</span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u=
><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border-top=
:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.3 M2</span><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" nowrap valign=3D"bottom" style=3D"width:509.0pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 2535 syslog is not started by default=
 in background on bsps(Crownbay,N450 etc)</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></=
span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border-top=
:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.3 M2</span><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></s=
pan></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"97" nowrap rowspan=3D"2" style=3D"width:72.55pt;border-top:non=
e;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black=
 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Other</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"679" nowrap valign=3D"bottom" style=3D"width:509.0pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2562=
 connman-gnome do_configure fail on autobuilder for several BSPs</span><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;"><u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border-top=
:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun">=
=E3=80=80</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" nowrap valign=3D"bottom" style=3D"width:509.0pt;padding:0=
in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2561=
 gst-ffmpeg do_configure failed on autobuilder for lsb build</span><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border-top=
:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun">=
=E3=80=80</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"221" nowrap colspan=3D"2" rowspan=3D"6" style=3D"width:166.0pt=
;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;min-h=
eight:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">ADT</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 1452 32bit kernel generated oprofile =
data file can not be read by remote 64bit operation</span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u=
><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.3</span><span style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span=
></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 2068 Clutter run failed in qemux86/x8=
6-64 using toolchain</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.3</span><span style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span=
></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 2069 Clutter run failed in qemux86/qe=
mux86_64 on ubuntu/opensuse/fedora.
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;"><u></u><u></u></span></p>
</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.2.1</span><span style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u></sp=
an></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Bug 2534 [Regression]Glxgears failed on q=
emux86/x86-64/arm/mips/ppc on Ubuntu 11.10 64bit
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;"><u></u><u></u></span></p>
</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">=C2=A0--</span><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><u></u><u></u><=
/span></p>


</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2553=
 ADT-Installer failed if the folder /opt/poky/1.2+snapshot exist</span><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;"><u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun">=
=E3=80=80</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2577=
 Segmentation fault on qemuarm from /usr/lib/libust.so.0</span><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun">=
=E3=80=80</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:14.25pt">
<td width=3D"221" nowrap colspan=3D"2" rowspan=3D"2" style=3D"width:166.0pt=
;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;min-h=
eight:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HOB</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></b></p>


</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2576=
 [Hob2] wrong image profile selected after template load
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;"><u></u><u></u></span></p>
</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:14.=
25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun">=
=E3=80=80</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2574=
 [Hob2] no attribute &#39;__dummy_image__&#39; for RecipeListModel</span><s=
pan style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;"><u></u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun">=
=E3=80=80</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td colspan=3D"2" rowspan=3D"2" style=3D"border:solid black 1.0pt;border-to=
p:none;padding:0in 0in 0in 0in;min-height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Core Build System<u></u><u></u></span></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2747 eglibc do_package_write_deb fails<span style=3D"color:red"><u><=
/u><u></u></span></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border:non=
e;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.=
0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.2.1<u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"min-height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2367 core-image-sato-sdk failed to do do_rootfs on fedora17 64bit<u>=
</u><u></u></span></p>


</td>
<td width=3D"113" nowrap valign=3D"bottom" style=3D"width:85.0pt;border-top=
:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;min-height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.2<span style><u></u><u></u></span></spa=
n></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Verdana&quot;,&quot;sans-serif&quot;;color:#244061">Laurentiu Serban<u></u>=
<u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">QA Engineer
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Open Source Technology Cen=
ter<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#1f497d">System Software Division R=
omania</span><span style=3D"color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Desk: <a href=3D"tel:%2B40=
%2031%208604742" value=3D"+40318604742" target=3D"_blank">+40 31 8604742</a=
></span><b><span style=3D"color:#244061"><u></u><u></u></span></b></p>


<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">iNET: 88451042<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--bcaec517234bc40d5f04c23720d9--
