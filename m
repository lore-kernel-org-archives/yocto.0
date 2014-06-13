Return-Path: <akini@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D8B2E00BEA; Fri, 13 Jun 2014 02:14:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8FBE00BB3
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 02:14:26 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id x13so3730589qcv.40
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 02:14:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IkEdZn0ASLzQjYB/HlnU/e28Y1q/C2qR/e005MpnXUA=;
	b=EW+drgYKAsX+cnVPy0zv2uoyo/Hc2CNypsex7zMl3GQRm3nd6+qkyzaQk4Oja+KLSB
	kVlITuGXcmtxFqIX80G1ScipQ2PeqHfI4tYUpxb8hOpghx1CQInGylq3ZGMrIEb+gjf9
	rhEcTCLxr+spzD/ypGHIfaSrMA4aDcO0uIctnS5UW1q7njOJXAnNC09Dpqr3CSrn/Wxp
	vRBpaTDNzIpKcQApHdZCn1kh5qRy+bpvSuV0KRF/c7SxABrhB/B2jW+uB8JSIQLY5zp3
	JLerL4YErMBkAbMhtNWHdZT9Ryq4No1KEdzQen9qPmPTi5VewMZ2MJSMa0a6566XomMT
	kSuw==
X-Gm-Message-State: ALoCoQm5JojkVgDWJPl0jCbcvdI2JxeCI43I9kZfEgukrozAGfgXYOFEAmjGWNLlPYJUl0lBlWoz
MIME-Version: 1.0
X-Received: by 10.224.87.130 with SMTP id w2mr1577429qal.5.1402650865864; Fri,
	13 Jun 2014 02:14:25 -0700 (PDT)
Received: by 10.140.93.244 with HTTP; Fri, 13 Jun 2014 02:14:25 -0700 (PDT)
In-Reply-To: <20140613082255.GH24880@gmail.com>
References: <CAKS01o=UeW1WYTAkAnKrvazMV+4kSgULOJW17tG+3M1RxmDgtg@mail.gmail.com>
	<20140613082255.GH24880@gmail.com>
Date: Fri, 13 Jun 2014 11:14:25 +0200
Message-ID: <CAKS01o=gnBRPGCsonCtFSYd6dC7H6j0jh3h1i2o1PHyWAKQMLg@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: building armhf deb with Yocto Daisy
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
X-List-Received-Date: Fri, 13 Jun 2014 09:14:33 -0000
Content-Type: multipart/alternative; boundary=001a1133d5f69aa6e504fbb41a4d

--001a1133d5f69aa6e504fbb41a4d
Content-Type: text/plain; charset=UTF-8

Hi Paul,

I did try that, but still the packages built are all armel.deb

I am trying to build armhf.deb packages.

I also checked in the package_deb.bbclass, where for arm, its defaulted to
armel.
I am not sure if this will effect the build and packaging process also.
I have a linaro armhf image and trying to add custom binaries to it by
building it from Yocto.

Looking forward for some suggestions.



On 13 June 2014 10:22, Paul Barker <paul@paulbarker.me.uk> wrote:

> On Fri, Jun 13, 2014 at 10:13:54AM +0200, Anup Kini wrote:
> > Dear All,
> >
> > I am currently trying to build armhf debs using Yocto.
> >
> > I use the machine tune = "cortexa9hf-neon" for an iMX6 Dual Lite Dev
> board.
> > All the debs built in the build/tmp/deploy/deb/ folder are XYZ_armel.deb
> >
> > How do i build XYZ_armhf.deb using Yocto ?
> >
>
> For my the Beagleboard xM I enabled hard float ABI by setting DEFAULTTUNE
> in my
> local.conf:
>
>     DEFAULTTUNE = "cortexa8hf-neon"
>
> You could give that a try with the appropriate value. I assume it will
> work in a
> machine conf file as well as in local.conf.
>
> Thanks,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>



-- 


*Anup Kini*Systems Engineer
*------------------------------*

*Synapticon*  |  Cyber-Physical System Solutions

Mobile:

Direct:

+49 151 / 638 646 73

+49 7335 / 186 999 21

Fax:
+49 7335 / 186 999 1






synapticon.com <http://www.synapticon.com/>  |  @synapticon_co
<https://twitter.com/#!/synapticon_co>

Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
Registry Court Ulm HRB 725114  |  USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended
solely for the use of the individual or entity to whom they are addressed.
Please notify the sender immediately if you have received this e-mail by
mistake and delete it from your system.

--001a1133d5f69aa6e504fbb41a4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>I did try that, but still the =
packages built are all armel.deb</div><div><br></div><div>I am trying to bu=
ild armhf.deb packages.</div><div><br></div><div>I also checked in the pack=
age_deb.bbclass, where for arm, its defaulted to armel.</div>
<div>I am not sure if this will effect the build and packaging process also=
.<br></div><div>I have a linaro armhf image and trying to add custom binari=
es to it by building it from Yocto.</div><div><br></div><div>Looking forwar=
d for some suggestions.</div>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On 13 June 2014 10:22, Paul Barker <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Fri, Jun 13, 2014 at 10:1=
3:54AM +0200, Anup Kini wrote:<br>
&gt; Dear All,<br>
&gt;<br>
&gt; I am currently trying to build armhf debs using Yocto.<br>
&gt;<br>
&gt; I use the machine tune =3D &quot;cortexa9hf-neon&quot; for an iMX6 Dua=
l Lite Dev board.<br>
&gt; All the debs built in the build/tmp/deploy/deb/ folder are XYZ_armel.d=
eb<br>
&gt;<br>
&gt; How do i build XYZ_armhf.deb using Yocto ?<br>
&gt;<br>
<br>
</div>For my the Beagleboard xM I enabled hard float ABI by setting DEFAULT=
TUNE in my<br>
local.conf:<br>
<br>
=C2=A0 =C2=A0 DEFAULTTUNE =3D &quot;cortexa8hf-neon&quot;<br>
<br>
You could give that a try with the appropriate value. I assume it will work=
 in a<br>
machine conf file as well as in local.conf.<br>
<br>
Thanks,<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><p style=3D"margin:0px;color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:13px;background-color:rgb(255,255,255)"><b><span =
style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Anup K=
ini<br>
</span></b><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></p><div style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255);text-align:center" ali=
gn=3D"center">
<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S"><hr align=3D"center" size=3D"2" width=3D"100%"></span></b></div><p style=
=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:13px;background-color:rgb(255,255,255)">
<b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S">Synapticon</span></b><b><span style=3D"font-size:12pt;font-family:&#39;T=
imes New Roman&#39;,serif" lang=3D"EN-US">=C2=A0</span></b><span style=3D"f=
ont-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=C2=A0|=C2=A0=C2=
=A0</span><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=
=3D"EN-US">Cyber-Physical System Solutions</span><span style=3D"font-size:1=
0pt;font-family:Verdana,sans-serif" lang=3D"EN-US">=C2=A0</span><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<table style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
13px;text-align:start;background-color:rgb(255,255,255);border-collapse:col=
lapse" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbody><tr><td styl=
e=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" wid=
th=3D"57">
<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US">Mobile:</span></p><p style=3D"margin:0px"><span sty=
le=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Direct:</=
span></p>
</td><td style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D=
"top" width=3D"227"><p style=3D"margin:0px"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif" lang=3D"EN-US"><a value=3D"+49733518699917" st=
yle=3D"color:rgb(17,85,204)">+49 151 / 638 646 73</a></span></p>
<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US"><a value=3D"+49733518699917" style=3D"color:rgb(17,=
85,204)">+49 7335 / 186 999 21<br></a></span></p></td></tr><tr><td style=3D=
"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=
=3D"57">
<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US">Fax:</span><span lang=3D"EN-US"><u></u><u></u></spa=
n></p></td><td style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" val=
ign=3D"top" width=3D"227">
<a value=3D"+4973351869991" style=3D"color:rgb(17,85,204)">+49 7335 / 186 9=
99 1</a></td></tr><tr><td style=3D"margin:0px;width:42.55pt;padding:0cm 5.4=
pt 0cm 0cm" valign=3D"top" width=3D"57"><p style=3D"margin:0px"><span style=
=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US"><br>
</span></p><p style=3D"margin:0px"><span style=3D"font-size:6pt;font-family=
:Arial,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u></p></td><td style=3D=
"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=3D"22=
7"><p style=3D"margin:0px">
<span style=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p></td></tr></tbody></table><p style=3D"margin=
:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13p=
x;background-color:rgb(255,255,255)">
<span style=3D"font-size:10pt;font-family:Arial,sans-serif"><a href=3D"http=
://www.synapticon.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">sy=
napticon.com</a>=C2=A0=C2=A0| =C2=A0<a href=3D"https://twitter.com/#!/synap=
ticon_co" style=3D"color:rgb(17,85,204)" target=3D"_blank">@synapticon_co</=
a></span><u></u><u></u></p>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif;color:rgb(127,127,127)">Synapticon G=
mbH =C2=A0|=C2=A0 Hohlbachweg 2=C2=A0 | =C2=A073344 Gruibingen, DE<br>
Secretary=C2=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+=
49 7335 / 186 999 0</a>=C2=A0 |=C2=A0 General Manager: Nikolai Ensslen=C2=
=A0<br>Registry Court Ulm HRB 725114=C2=A0 |=C2=A0 USt-ID DE271647127</span=
><u></u><u></u></p><p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255)">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127=
,127)" lang=3D"EN-US">This message and any files transmitted with it are co=
nfidential and intended=C2=A0</span><span style=3D"font-size:8pt;font-famil=
y:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">solely for the use of the individual or entity=
 to whom they are addressed.=C2=A0</span><span style=3D"font-size:8pt;font-=
family:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">Please notify the sender immediately if you ha=
ve received this e-mail by=C2=A0</span><span style=3D"font-size:8pt;font-fa=
mily:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">mistake and delete it from your system.=C2=A0<=
/span></p></div>
</div>

--001a1133d5f69aa6e504fbb41a4d--
