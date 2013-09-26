Return-Path: <felix01.fischer@iav.de>
Received: from mailout03.rmx.de (mailout03.rmx.de [217.111.120.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 237D7E01640
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 04:00:18 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout03.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r8QB0BoC022177; Thu, 26 Sep 2013 13:00:12 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id E6E5A37048E;
	Thu, 26 Sep 2013 13:00:10 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout01.retarus.com (Postfix) with SMTP id 260DF37048E;
	Thu, 26 Sep 2013 13:00:09 +0200 (CEST)
X-RMX-Split: 2013-09-26 13:00:05 +0200
In-Reply-To: <2330193.rVqRLtpaqy@helios>
References: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
	<2378070.oljIghCm7B@helios>
	<OF09452752.EFA3380A-ONC1257BF1.002CFBA5-C1257BF1.002DBD31@retarus.de>
	<2330193.rVqRLtpaqy@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
MIME-Version: 1.0
X-KeepSent: 11396AF9:CF08F2EF-C1257BF2:003B92E0;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF11396AF9.CF08F2EF-ONC1257BF2.003B92E0-C1257BF2.003C5B4D@retarus.de>
Date: Thu, 26 Sep 2013 12:59:24 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 09/26/2013 12:59:58,
	Serialize complete at 09/26/2013 12:59:58
X-RMX-ID: 20130926-125958-r8QAxw0R024696-0@kdin01
X-RMX-TRACE: 2013-09-26 12:59:59 KdIn2013@kdin01/mailcc07 [0.3s]
	20130926-125958-r8QAxw0R024696-0@kdin01 0:00:00
X-RMX-TRACE: 2013-09-26 12:59:59 RmxMSO@kdin01/mailcc07 [0.1s]
	20130926-125958-r8QAxw0R024696-0@kdin01 0:00:01
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Antwort: Re: Is it possible to add machine specific changes in a separate custom layer?
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
X-List-Received-Date: Thu, 26 Sep 2013 11:00:21 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003C5B4BC1257BF2_="

--=_alternative 003C5B4BC1257BF2_=
Content-Type: text/plain; charset="US-ASCII"

Hi Paul
Another follow up Question :-)

Paul Eggleton <paul.eggleton@linux.intel.com> schrieb am 25.09.2013 
14:33:04:

> Von: Paul Eggleton <paul.eggleton@linux.intel.com>
> An: Felix01 Fischer <felix01.fischer@iav.de>, 
> Kopie: yocto@yoctoproject.org
> Datum: 25.09.2013 14:33
> Betreff: Re: Antwort: Re: [yocto] Is it possible to add machine 
> specific changes in a separate custom layer?
> 
> Hi Felix,
> 
> On Wednesday 25 September 2013 10:19:41 Felix01 Fischer wrote:
> > One Question: I want to add changes to a %MACHINE.conf via my layer
> > (to be specific: I want to add "APPEND += "video=LVDS-1:d" to
> > meta-intel/meta-chiefriver/conf/machine/chiefriver.conf)
> > Is this also possible via a separate layer? Once again, I didn't find 
out
> > via the documentation. ATM I have to modify the chiefriver.conf 
directly
> 
> Really the way to do this kind of thing is to have your own custom 
distro 
> config. If you're doing anything beyond the basics you should 
> probably have one 
> anyway. Generally this kind of thing is usually about how you are using 
the 
> machine as opposed to supporting the machine itself, so it's more ofa 
distro 
> policy type situation.

Is it possible to refer to a whole BSP?
For example, like the cronwbay.conf requires tune-atom.inc.
I would like to require the whole meta-crownbay BSP layer.
I tried this the naive way with a custom "/conf/machine/$MACHINE.conf and 
added
"require xxxxx/meta-crownbay/conf/machine/crownbay.conf" but that didn't 
worked.


> 
> Cheers,
> Paul
> 
> -- 
> 
> Paul Eggleton
> Intel Open Source Technology Centre

Regards,
Felix

--=_alternative 003C5B4BC1257BF2_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>Hi Paul<br>
Another follow up Question :-)<br>
<br>
Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; schrieb am 25.09.2013
14:33:04:<br>
<br>
&gt; Von: Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt;</font></tt>
<br><tt><font size=2>&gt; An: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;,
</font></tt>
<br><tt><font size=2>&gt; Kopie: yocto@yoctoproject.org</font></tt>
<br><tt><font size=2>&gt; Datum: 25.09.2013 14:33</font></tt>
<br><tt><font size=2>&gt; Betreff: Re: Antwort: Re: [yocto] Is it possible
to add machine <br>
&gt; specific changes in a separate custom layer?</font></tt>
<br><tt><font size=2>&gt; <br>
&gt; Hi Felix,<br>
&gt; <br>
&gt; On Wednesday 25 September 2013 10:19:41 Felix01 Fischer wrote:<br>
&gt; &gt; One Question: I want to add changes to a %MACHINE.conf via my
layer<br>
&gt; &gt; (to be specific: I want to add &quot;APPEND += &quot;video=LVDS-1:d&quot;
to<br>
&gt; &gt; meta-intel/meta-chiefriver/conf/machine/chiefriver.conf)<br>
&gt; &gt; Is this also possible via a separate layer? Once again, I didn't
find out<br>
&gt; &gt; via the documentation. ATM I have to modify the chiefriver.conf
directly<br>
&gt; <br>
&gt; Really the way to do this kind of thing is to have your own custom
distro <br>
&gt; config. If you're doing anything beyond the basics you should <br>
&gt; probably have one <br>
&gt; anyway. Generally this kind of thing is usually about how you are
using the <br>
&gt; machine as opposed to supporting the machine itself, so it's more
ofa distro <br>
&gt; policy type situation.<br>
<br>
Is it possible to refer to a whole BSP?<br>
For example, like the cronwbay.conf requires tune-atom.inc.</font></tt>
<br><tt><font size=2>I would like to require the whole meta-crownbay BSP
layer.</font></tt>
<br><tt><font size=2>I tried this the naive way with a custom &quot;/conf/machine/$MACHINE.conf
and added</font></tt>
<br><tt><font size=2>&quot;require xxxxx/meta-crownbay/conf/machine/crownbay.conf&quot;
but that didn't worked.<br>
<br>
<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt; <br>
&gt; -- <br>
&gt; <br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
<br>
Regards,<br>
Felix</font></tt>

--=_alternative 003C5B4BC1257BF2_=--
