Return-Path: <felix01.fischer@iav.de>
Received: from mailout03.rmx.de (mailout03.rmx.de [217.111.120.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F4A3E015BD
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 01:20:14 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout03.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r8P8K87c012310; Wed, 25 Sep 2013 10:20:09 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id 1766337048C;
	Wed, 25 Sep 2013 10:20:07 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout01.retarus.com (Postfix) with SMTP id B0AAA370489;
	Wed, 25 Sep 2013 10:20:05 +0200 (CEST)
X-RMX-Split: 2013-09-25 10:20:01 +0200
In-Reply-To: <2378070.oljIghCm7B@helios>
References: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
	<2378070.oljIghCm7B@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
MIME-Version: 1.0
X-KeepSent: 09452752:EFA3380A-C1257BF1:002CFBA5;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF09452752.EFA3380A-ONC1257BF1.002CFBA5-C1257BF1.002DBD31@retarus.de>
Date: Wed, 25 Sep 2013 10:19:41 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 09/25/2013 10:19:54,
	Serialize complete at 09/25/2013 10:19:54
X-RMX-ID: 20130925-101954-r8P8Jroo031313-0@kdin02
X-RMX-TRACE: 2013-09-25 10:19:54 KdIn2013@kdin02/mailcc07 [0.2s]
	20130925-101954-r8P8Jroo031313-0@kdin02 0:00:00
X-RMX-TRACE: 2013-09-25 10:19:54 RmxMSO@kdin02/mailcc06 [0.1s]
	20130925-101954-r8P8Jroo031313-0@kdin02 0:00:00
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Is it possible to add machine specific changes in a separate custom layer?
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
X-List-Received-Date: Wed, 25 Sep 2013 08:20:18 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 002DBD31C1257BF1_="

--=_alternative 002DBD31C1257BF1_=
Content-Type: text/plain; charset="US-ASCII"

Great! Thank you Paul!
I didn't get the "Variable_$machine" part from the documentation.

One Question: I want to add changes to a %MACHINE.conf via my layer
(to be specific: I want to add "APPEND += "video=LVDS-1:d" to 
meta-intel/meta-chiefriver/conf/machine/chiefriver.conf)
Is this also possible via a separate layer? Once again, I didn't find out 
via the documentation. ATM I have to modify the chiefriver.conf directly 
:-(
Thank you for your help so far,
Regards,
Felix

Paul Eggleton <paul.eggleton@linux.intel.com> schrieb am 24.09.2013 
10:52:00:

> Von: Paul Eggleton <paul.eggleton@linux.intel.com>
> An: Felix01 Fischer <felix01.fischer@iav.de>, 
> Kopie: yocto@yoctoproject.org
> Datum: 24.09.2013 10:52
> Betreff: Re: [yocto] Is it possible to add machine specific changes 
> in a separate custom layer?
> 
> Hi Felix,
> 
> On Monday 23 September 2013 18:40:19 Felix01 Fischer wrote:
> > My goal is to build a custom-layer which supports 2 devices building 
on
> > top of the meta-intel and meta-ivi layer without changing anything 
except
> > my meta-custom layer.
> > 
> > Is it possible to have machine specific changes in a separate layer
> > building on top of  another layer?
> > I want to costumise meta-intel/meta-crownbay and
> > meta-intel/meta-chiefriver without changing something inside the
> > meta-intel layer.
> > My goal is to have modifications for the meta-intel layer in a 
meta-custom
> > layer, which only get considered if a certain MACHINE ?= "XXXX" 
(crownbay
> > or chiefriver) from the meta-intel layer is set.
> > Is this possible?
> 
> This is definitely possible - the key is to make use of bbappends and 
machine
> overrides. Append files are covered here:
> 
> http://www.yoctoproject.org/docs/current/dev-manual/dev-
> manual.html#using-bbappend-files
> 
> Overrides effectively make an assignment statement apply only when the
> specified override appears in the value of the OVERRIDES variable. For
> example:
> 
> VARIABLENAME = "the default value"
> VARIABLENAME_crownbay = "value specific to crownbay machine"
> 
> You can use append/prepend to add to the variable value instead of just
> setting it:
> 
> ANOTHERVARIABLE_append_chiefriver = " appended only for chiefriver"
> ANOTHERVARIABLE_prepend_crownbay = "prepended only for crownbay "
> 
> By default, the value of OVERRIDES includes the value of MACHINE, 
DISTRO, etc.
> If you run bitbake -e | less and then search (with /) for OVERRIDES= you 
can
> see how how OVERRIDES is constructed.
> 
> > I have the same question regarding DISTRO. I want some changes to be
> > considered if DISTRO = poky and some other changes when DISTRO =
> > poky-ivi-systemd.
> 
> Same as above only you'd be using the distro name as the override e.g.
> 
> SOMETHING_append_poky = " whatever poky-specific additions are needed"
> 
> > Is it possible to maintain these modifications in ONE custom layer or 
do I
> > need to have seperate layers (one for poky, one for poky-ivi-systemd 
and
> > machine specific changes inside the meta-intel layer)?
> 
> You don't have to, but generally we recommend keeping the machine
> customisations separate from policy (distro) customisations. This can 
make
> things easier if you have to change the machine later.
> 
> Cheers,
> Paul
> 
> -- 
> 
> Paul Eggleton
> Intel Open Source Technology Centre

--=_alternative 002DBD31C1257BF1_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Great! Thank you Paul!</font>
<br><font size=2 face="sans-serif">I didn't get the &quot;Variable_$machine&quot;
part from the documentation.<br>
<br>
One Question: I want to add changes to a %MACHINE.conf via my layer</font>
<br><font size=2 face="sans-serif">(to be specific: I want to add &quot;APPEND
+= &quot;video=LVDS-1:d&quot; to meta-intel/meta-chiefriver/conf/machine/chiefriver.conf)<br>
Is this also possible via a separate layer? Once again, I didn't find out
via the documentation. ATM I have to modify the chiefriver.conf directly
:-(<br>
Thank you for your help so far,<br>
Regards,<br>
Felix</font>
<br>
<br><tt><font size=2>Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt;
schrieb am 24.09.2013 10:52:00:<br>
<br>
&gt; Von: Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt;</font></tt>
<br><tt><font size=2>&gt; An: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;,
</font></tt>
<br><tt><font size=2>&gt; Kopie: yocto@yoctoproject.org</font></tt>
<br><tt><font size=2>&gt; Datum: 24.09.2013 10:52</font></tt>
<br><tt><font size=2>&gt; Betreff: Re: [yocto] Is it possible to add machine
specific changes <br>
&gt; in a separate custom layer?</font></tt>
<br><tt><font size=2>&gt; <br>
&gt; Hi Felix,<br>
&gt; <br>
&gt; On Monday 23 September 2013 18:40:19 Felix01 Fischer wrote:<br>
&gt; &gt; My goal is to build a custom-layer which supports 2 devices building
on<br>
&gt; &gt; top of the meta-intel and meta-ivi layer without changing anything
except<br>
&gt; &gt; my meta-custom layer.<br>
&gt; &gt; <br>
&gt; &gt; Is it possible to have machine specific changes in a separate
layer<br>
&gt; &gt; building on top of &nbsp;another layer?<br>
&gt; &gt; I want to costumise meta-intel/meta-crownbay and<br>
&gt; &gt; meta-intel/meta-chiefriver without changing something inside
the<br>
&gt; &gt; meta-intel layer.<br>
&gt; &gt; My goal is to have modifications for the meta-intel layer in
a meta-custom<br>
&gt; &gt; layer, which only get considered if a certain MACHINE ?= &quot;XXXX&quot;
&nbsp;(crownbay<br>
&gt; &gt; or chiefriver) from the meta-intel layer is set.<br>
&gt; &gt; Is this possible?<br>
&gt; <br>
&gt; This is definitely possible - the key is to make use of bbappends
and machine<br>
&gt; overrides. Append files are covered here:<br>
&gt; <br>
&gt; </font></tt><a href="http://www.yoctoproject.org/docs/current/dev-manual/dev-"><tt><font size=2>http://www.yoctoproject.org/docs/current/dev-manual/dev-</font></tt></a><tt><font size=2><br>
&gt; manual.html#using-bbappend-files<br>
&gt; <br>
&gt; Overrides effectively make an assignment statement apply only when
the<br>
&gt; specified override appears in the value of the OVERRIDES variable.
For<br>
&gt; example:<br>
&gt; <br>
&gt; VARIABLENAME = &quot;the default value&quot;<br>
&gt; VARIABLENAME_crownbay = &quot;value specific to crownbay machine&quot;<br>
&gt; <br>
&gt; You can use append/prepend to add to the variable value instead of
just<br>
&gt; setting it:<br>
&gt; <br>
&gt; ANOTHERVARIABLE_append_chiefriver = &quot; appended only for chiefriver&quot;<br>
&gt; ANOTHERVARIABLE_prepend_crownbay = &quot;prepended only for crownbay
&quot;<br>
&gt; <br>
&gt; By default, the value of OVERRIDES includes the value of MACHINE,
DISTRO, etc.<br>
&gt; If you run bitbake -e | less and then search (with /) for OVERRIDES=
you can<br>
&gt; see how how OVERRIDES is constructed.<br>
&gt; <br>
&gt; &gt; I have the same question regarding DISTRO. I want some changes
to be<br>
&gt; &gt; considered if DISTRO = poky and some other changes when DISTRO
=<br>
&gt; &gt; poky-ivi-systemd.<br>
&gt; <br>
&gt; Same as above only you'd be using the distro name as the override
e.g.<br>
&gt; <br>
&gt; SOMETHING_append_poky = &quot; whatever poky-specific additions are
needed&quot;<br>
&gt; <br>
&gt; &gt; Is it possible to maintain these modifications in ONE custom
layer or do I<br>
&gt; &gt; need to have seperate layers (one for poky, one for poky-ivi-systemd
and<br>
&gt; &gt; machine specific changes inside the meta-intel layer)?<br>
&gt; <br>
&gt; You don't have to, but generally we recommend keeping the machine<br>
&gt; customisations separate from policy (distro) customisations. This
can make<br>
&gt; things easier if you have to change the machine later.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt; <br>
&gt; -- <br>
&gt; <br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
</font></tt>

--=_alternative 002DBD31C1257BF1_=--
