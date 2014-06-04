Return-Path: <Anooj.Gopi@alpine.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9223FE00B6F; Wed,  4 Jun 2014 07:22:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=DRUGS_MUSCLE, HTML_MESSAGE,
	X_IP autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 X_IP Message has X-IP header
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  2.5 DRUGS_MUSCLE Refers to a muscle relaxant
Received: from ipmx01.kddinet.de (ipmx01.kddinet.de [195.82.33.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32248E00B68
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 07:22:32 -0700 (PDT)
X-SBRS: None
X-Policy: $RELAYED_Alpine
X-Group: Alpine_RLY
X-IP: 195.82.37.17
X-MID: 9386488
X-IronPort-AV: E=Sophos;i="4.98,973,1392159600"; 
   d="scan'208";a="9386488"
Received: from unknown (HELO destln01.corp.alpine.eu) ([195.82.37.17])
	by ipmx01.kddinet.de with ESMTP; 04 Jun 2014 16:22:04 +0200
In-Reply-To: <CAMKF1socvoTCDN_=GkZz-ec4KrAt9Lknkt9_dN4sE5i0_EFbuQ@mail.gmail.com>
References: <OFD5EA41E8.B3B2A295-ONC1257CE8.004C09F4-C1257CE8.004E22D1@alpine.de>
	<CAMKF1spDE3pO8nXaiMGDGZKbOTXYB0wn_g7Vh0gtEMBR=7=d3Q@mail.gmail.com>
	<OF78987838.ED2425C4-ONC1257CEC.0045117A-C1257CEC.0046F17C@alpine.de>
	<CAMKF1socvoTCDN_=GkZz-ec4KrAt9Lknkt9_dN4sE5i0_EFbuQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
MIME-Version: 1.0
X-KeepSent: 83B6AA56:F6123696-C1257CED:004E7A85;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: Anooj Gopi <Anooj.Gopi@alpine.de>
Message-ID: <OF83B6AA56.F6123696-ONC1257CED.004E7A85-C1257CED.004EECA6@alpine.de>
Date: Wed, 4 Jun 2014 16:22:03 +0200
X-MIMETrack: Serialize by Router on AOGSLN001/SRV/AOGS/SPEED(Release
	8.5.3FP5|July 31, 2013) at 04.06.2014 16:22:04,
	Serialize complete at 04.06.2014 16:22:04
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Detailed steps involved in populate_sdk
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
X-List-Received-Date: Wed, 04 Jun 2014 14:22:36 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004EECA6C1257CED_="

--=_alternative 004EECA6C1257CED_=
Content-Type: text/plain; charset="US-ASCII"

Hello,

Could you please tell me how to control/select the packages to be 
installed in SDK Machine.

For example I have an hmi application based on qt. I can see qmake is 
available in "./tmp/sysroots/i686-linux/usr/bin/qt5/qmake" at Build host, 
but it is not available in sdk machine after installing sdk. 
How yocto decide which host packages to be included in sdk?

Thanks in advance.

Regards,
Anooj Gopi



From:   Khem Raj <raj.khem@gmail.com>
To:     Anooj Gopi <Anooj.Gopi@alpine.de>, 
Cc:     "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date:   03.06.2014 21:24
Subject:        Re: [yocto] Detailed steps involved in populate_sdk



On Tue, Jun 3, 2014 at 5:54 AM, Anooj Gopi <Anooj.Gopi@alpine.de> wrote:
> Would there be any option for me to tell yocto to generate all the tools 
and
> use exactly the same for 'build host' as well as 'sdk host'?

I don't think so




Alpine Electronics R&D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,
Registergericht Stuttgart, HRB 25265
Geschaeftsfuehrer: Satoshi Soma, Shuji Taguchi 
Working office: Vor dem Lauch 14, 70567 Stuttgart

--=_alternative 004EECA6C1257CED_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hello,</font>
<br>
<br><font size=2 face="sans-serif">Could you please tell me how to control/select
the packages to be installed in SDK Machine.</font>
<br>
<br><font size=2 face="sans-serif">For example I have an hmi application
based on qt. I can see qmake is available in &quot;./tmp/sysroots/i686-linux/usr/bin/qt5/qmake&quot;
at Build host, but it is not available in sdk machine after installing
sdk. </font>
<br><font size=2 face="sans-serif">How yocto decide which host packages
to be included in sdk?</font>
<br>
<br><font size=2 face="sans-serif">Thanks in advance.</font>
<br>
<br><font size=2 face="sans-serif">Regards,</font>
<br><font size=2 face="sans-serif">Anooj Gopi</font>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">From: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Khem Raj &lt;raj.khem@gmail.com&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">To: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Anooj Gopi &lt;Anooj.Gopi@alpine.de&gt;,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Cc: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">&quot;yocto@yoctoproject.org&quot;
&lt;yocto@yoctoproject.org&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Date: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">03.06.2014 21:24</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Subject: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: [yocto]
Detailed steps involved in populate_sdk</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Tue, Jun 3, 2014 at 5:54 AM, Anooj Gopi &lt;Anooj.Gopi@alpine.de&gt;
wrote:<br>
&gt; Would there be any option for me to tell yocto to generate all the
tools and<br>
&gt; use exactly the same for 'build host' as well as 'sdk host'?<br>
<br>
I don't think so<br>
</font></tt>
<br>
<br>
<font size="2" face="Arial">Alpine Electronics R&amp;D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,</font><br>
<font size="2" face="Arial">Registergericht Stuttgart, HRB 25265</font><br>
<font size="2" face="Arial">Geschaeftsfuehrer: </font><font size="2" face="Arial">Satoshi Soma, Shuji Taguchi </font><br>
<font size="2" face="Arial">Working office: Vor dem Lauch 14, 70567 Stuttgart</font>

--=_alternative 004EECA6C1257CED_=--
