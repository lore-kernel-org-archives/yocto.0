Return-Path: <Anooj.Gopi@alpine.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46950E00BEB; Tue, 10 Jun 2014 08:22:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=DRUGS_MUSCLE, HTML_MESSAGE,
	X_IP autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 X_IP Message has X-IP header
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  2.5 DRUGS_MUSCLE Refers to a muscle relaxant
Received: from ipmx01.kddinet.de (ipmx01.kddinet.de [195.82.33.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BC78E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:22:50 -0700 (PDT)
X-SBRS: None
X-Policy: $RELAYED_Alpine
X-Group: Alpine_RLY
X-IP: 195.82.37.17
X-MID: 9550001
X-IronPort-AV: E=Sophos;i="4.98,1009,1392159600"; d="scan'208";a="9550001"
Received: from unknown (HELO destln01.corp.alpine.eu) ([195.82.37.17])
	by ipmx01.kddinet.de with ESMTP; 10 Jun 2014 17:22:48 +0200
In-Reply-To: <OF83B6AA56.F6123696-ONC1257CED.004E7A85-C1257CED.004EECA6@alpine.de>
References: <OFD5EA41E8.B3B2A295-ONC1257CE8.004C09F4-C1257CE8.004E22D1@alpine.de>	<CAMKF1spDE3pO8nXaiMGDGZKbOTXYB0wn_g7Vh0gtEMBR=7=d3Q@mail.gmail.com>
	<OF78987838.ED2425C4-ONC1257CEC.0045117A-C1257CEC.0046F17C@alpine.de>	<CAMKF1socvoTCDN_=GkZz-ec4KrAt9Lknkt9_dN4sE5i0_EFbuQ@mail.gmail.com>
	<OF83B6AA56.F6123696-ONC1257CED.004E7A85-C1257CED.004EECA6@alpine.de>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 7D0A7165:3866DBB3-C1257CF3:00540DFF;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: Anooj Gopi <Anooj.Gopi@alpine.de>
Message-ID: <OF7D0A7165.3866DBB3-ONC1257CF3.00540DFF-C1257CF3.00547B07@alpine.de>
Date: Tue, 10 Jun 2014 17:22:47 +0200
X-MIMETrack: Serialize by Router on AOGSLN001/SRV/AOGS/SPEED(Release
	8.5.3FP5|July 31, 2013) at 10.06.2014 17:22:48,
	Serialize complete at 10.06.2014 17:22:48
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
X-List-Received-Date: Tue, 10 Jun 2014 15:22:59 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00547B05C1257CF3_="

--=_alternative 00547B05C1257CF3_=
Content-Type: text/plain; charset="US-ASCII"

I think "TOOLCHAIN_HOST_TASK" is the one I was looking for. This variable 
is not been used more often. Is there any better solution available to add 
more package to host sdk machine's sysroot? 




From:   Anooj Gopi <Anooj.Gopi@alpine.de>
To:     Khem Raj <raj.khem@gmail.com>, 
Cc:     "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date:   04.06.2014 16:24
Subject:        Re: [yocto] Detailed steps involved in populate_sdk
Sent by:        yocto-bounces@yoctoproject.org



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



From:        Khem Raj <raj.khem@gmail.com> 
To:        Anooj Gopi <Anooj.Gopi@alpine.de>, 
Cc:        "yocto@yoctoproject.org" <yocto@yoctoproject.org> 
Date:        03.06.2014 21:24 
Subject:        Re: [yocto] Detailed steps involved in populate_sdk 



On Tue, Jun 3, 2014 at 5:54 AM, Anooj Gopi <Anooj.Gopi@alpine.de> wrote:
> Would there be any option for me to tell yocto to generate all the tools 
and
> use exactly the same for 'build host' as well as 'sdk host'?

I don't think so


Alpine Electronics R&D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,
Registergericht Stuttgart, HRB 25265
Geschaeftsfuehrer: Satoshi Soma, Shuji Taguchi 
Working office: Vor dem Lauch 14, 70567 Stuttgart-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto




Alpine Electronics R&D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,
Registergericht Stuttgart, HRB 25265
Geschaeftsfuehrer: Satoshi Soma, Shuji Taguchi 
Working office: Vor dem Lauch 14, 70567 Stuttgart

--=_alternative 00547B05C1257CF3_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I think &quot;TOOLCHAIN_HOST_TASK&quot;
is the one I was looking for. This variable is not been used more often.
Is there any better solution available to add more package to host sdk
machine's sysroot? </font>
<br>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">From: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Anooj Gopi &lt;Anooj.Gopi@alpine.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">To: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Khem Raj &lt;raj.khem@gmail.com&gt;,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Cc: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">&quot;yocto@yoctoproject.org&quot;
&lt;yocto@yoctoproject.org&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Date: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">04.06.2014 16:24</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Subject: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: [yocto]
Detailed steps involved in populate_sdk</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Sent by: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">yocto-bounces@yoctoproject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=2 face="sans-serif">Hello,</font><font size=3> <br>
</font><font size=2 face="sans-serif"><br>
Could you please tell me how to control/select the packages to be installed
in SDK Machine.</font><font size=3> <br>
</font><font size=2 face="sans-serif"><br>
For example I have an hmi application based on qt. I can see qmake is available
in &quot;./tmp/sysroots/i686-linux/usr/bin/qt5/qmake&quot; at Build host,
but it is not available in sdk machine after installing sdk. <br>
How yocto decide which host packages to be included in sdk?</font><font size=3>
<br>
</font><font size=2 face="sans-serif"><br>
Thanks in advance.</font><font size=3> <br>
</font><font size=2 face="sans-serif"><br>
Regards,</font><font size=3> </font><font size=2 face="sans-serif"><br>
Anooj Gopi</font><font size=3> <br>
<br>
<br>
</font><font size=1 color=#5f5f5f face="sans-serif"><br>
From: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=1 face="sans-serif">Khem
Raj &lt;raj.khem@gmail.com&gt;</font><font size=3> </font><font size=1 color=#5f5f5f face="sans-serif"><br>
To: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=1 face="sans-serif">Anooj
Gopi &lt;Anooj.Gopi@alpine.de&gt;, </font><font size=1 color=#5f5f5f face="sans-serif"><br>
Cc: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=1 face="sans-serif">&quot;yocto@yoctoproject.org&quot;
&lt;yocto@yoctoproject.org&gt;</font><font size=3> </font><font size=1 color=#5f5f5f face="sans-serif"><br>
Date: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=1 face="sans-serif">03.06.2014
21:24</font><font size=3> </font><font size=1 color=#5f5f5f face="sans-serif"><br>
Subject: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=1 face="sans-serif">Re:
[yocto] Detailed steps involved in populate_sdk</font><font size=3> <br>
</font>
<hr noshade><font size=3><br>
<br>
</font><tt><font size=2><br>
On Tue, Jun 3, 2014 at 5:54 AM, Anooj Gopi &lt;Anooj.Gopi@alpine.de&gt;
wrote:<br>
&gt; Would there be any option for me to tell yocto to generate all the
tools and<br>
&gt; use exactly the same for 'build host' as well as 'sdk host'?<br>
<br>
I don't think so</font></tt><font size=3><br>
<br>
</font><font size=2 face="Arial"><br>
Alpine Electronics R&amp;D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,<br>
Registergericht Stuttgart, HRB 25265<br>
Geschaeftsfuehrer: Satoshi Soma, Shuji Taguchi <br>
Working office: Vor dem Lauch 14, 70567 Stuttgart</font><tt><font size=2>--
<br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=https://lists.yoctoproject.org/listinfo/yocto><tt><font size=2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><tt><font size=2><br>
</font></tt>
<br>
<br>
<font size="2" face="Arial">Alpine Electronics R&amp;D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,</font><br>
<font size="2" face="Arial">Registergericht Stuttgart, HRB 25265</font><br>
<font size="2" face="Arial">Geschaeftsfuehrer: </font><font size="2" face="Arial">Satoshi Soma, Shuji Taguchi </font><br>
<font size="2" face="Arial">Working office: Vor dem Lauch 14, 70567 Stuttgart</font>

--=_alternative 00547B05C1257CF3_=--
