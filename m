Return-Path: <Anooj.Gopi@alpine.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E47CAE00BDF; Tue,  3 Jun 2014 09:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=DRUGS_MUSCLE, HTML_MESSAGE,
	X_IP autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 X_IP Message has X-IP header
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  2.5 DRUGS_MUSCLE Refers to a muscle relaxant
Received: from ipmx01.kddinet.de (ipmx01.kddinet.de [195.82.33.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF72E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 09:00:41 -0700 (PDT)
X-SBRS: None
X-Policy: $RELAYED_Alpine
X-Group: Alpine_RLY
X-IP: 195.82.37.17
X-MID: 9349354
X-IronPort-AV: E=Sophos;i="4.98,966,1392159600"; 
   d="scan'208";a="9349354"
Received: from unknown (HELO destln01.corp.alpine.eu) ([195.82.37.17])
	by ipmx01.kddinet.de with ESMTP; 03 Jun 2014 18:00:41 +0200
In-Reply-To: <OF610A841C.679DDE21-ONC1257CEC.0056DCB5-C1257CEC.00576031@alpine.de>
References: <OF610A841C.679DDE21-ONC1257CEC.0056DCB5-C1257CEC.00576031@alpine.de>
To: Anooj Gopi <Anooj.Gopi@alpine.de>
MIME-Version: 1.0
X-KeepSent: A2ACDF73:22A5AE5B-C1257CEC:00578DCB;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: Anooj Gopi <Anooj.Gopi@alpine.de>
Message-ID: <OFA2ACDF73.22A5AE5B-ONC1257CEC.00578DCB-C1257CEC.0057F3E7@alpine.de>
Date: Tue, 3 Jun 2014 18:00:40 +0200
X-MIMETrack: Serialize by Router on AOGSLN001/SRV/AOGS/SPEED(Release
	8.5.3FP5|July 31, 2013) at 03.06.2014 18:00:40,
	Serialize complete at 03.06.2014 18:00:40
Cc: yocto@yoctoproject.org, yocto-bounces@yoctoproject.org
Subject: Re: external-linaro-sdk-toolchain.bb, do_package_write_rpm) failed with exit code '1'
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
X-List-Received-Date: Tue, 03 Jun 2014 16:00:53 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0057F3E7C1257CEC_="

--=_alternative 0057F3E7C1257CEC_=
Content-Type: text/plain; charset="US-ASCII"

Please note that the same sources when built in Ubuntu 12.04 passes 
without issue. Is this anything related to python version?
Note: The yocto project I am using is not the latest.




From:   Anooj Gopi <Anooj.Gopi@alpine.de>
To:     yocto@yoctoproject.org, 
Date:   03.06.2014 17:55
Subject:        [yocto] external-linaro-sdk-toolchain.bb, 
do_package_write_rpm) failed with exit code '1'
Sent by:        yocto-bounces@yoctoproject.org



When try to build in Ubuntu 14.04 x86_64 machine following failure occurs. 


| error: line 24: invalid tag value("^[A-Za-z0-9+._]+$") Version: Version: 
'libpseudo.so' 
| error: Package has no %description: 
binutils-cross-canadian-arm.x86_64_nativesdk 

I doubt following part of the bitbake fails due to some unknown issue 

inherit cross-canadian 

# ensure variable exists to avoid build error without external toolchain 
TOOLCHAIN_PATH ?= "" 

def elt_get_bfd_version(d): 
        import subprocess,os,bb 
        if os.path.exists(d.getVar('TOOLCHAIN_PATH', d, 
1)+'/bin/'+d.getVar('TARGET_PREFIX', d, 1)+'as'): 
                return subprocess.Popen([d.getVar('TOOLCHAIN_PATH', d, 
1)+'/bin/'+d.getVar('TARGET_PREFIX', d, 1)+'as', '-v', '--version'], 
stderr=subprocess.STDOUT,stdout=subprocess.PIPE).communicate()[0].splitlines()[0].split()[3] 


ELT_VER_BFD := "${@elt_get_bfd_version(d)}" 

Is any one face this issue in the past? 
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

--=_alternative 0057F3E7C1257CEC_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Please note that the same sources when
built in Ubuntu 12.04 passes without issue. Is this anything related to
python version?</font>
<br><font size=2 face="sans-serif">Note: The yocto project I am using is
not the latest.</font>
<br>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">From: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Anooj Gopi &lt;Anooj.Gopi@alpine.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">To: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">yocto@yoctoproject.org,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Date: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">03.06.2014 17:55</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Subject: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">[yocto] external-linaro-sdk-toolchain.bb,
do_package_write_rpm) failed with exit code '1'</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Sent by: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">yocto-bounces@yoctoproject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=2 face="sans-serif">When try to build in Ubuntu 14.04 x86_64
machine following failure occurs. </font><font size=3><br>
</font><font size=2 face="sans-serif"><br>
| error: line 24: invalid tag value(&quot;^[A-Za-z0-9+._]+$&quot;) Version:
Version: 'libpseudo.so'</font><font size=3> </font><font size=2 face="sans-serif"><br>
| error: Package has no %description: binutils-cross-canadian-arm.x86_64_nativesdk</font><font size=3>
<br>
</font><font size=2 face="sans-serif"><br>
I doubt following part of the bitbake fails due to some unknown issue</font><font size=3>
<br>
</font><font size=2 face="sans-serif"><i><br>
inherit cross-canadian</i></font><font size=3> <br>
</font><font size=2 face="sans-serif"><i><br>
# ensure variable exists to avoid build error without external toolchain</i></font><font size=3>
</font><font size=2 face="sans-serif"><i><br>
TOOLCHAIN_PATH ?= &quot;&quot;</i></font><font size=3> <br>
</font><font size=2 face="sans-serif"><i><br>
def elt_get_bfd_version(d):</i></font><font size=3> </font><font size=2 face="sans-serif"><i><br>
 &nbsp; &nbsp; &nbsp; &nbsp;import subprocess,os,bb</i></font><font size=3>
</font><font size=2 face="sans-serif"><i><br>
 &nbsp; &nbsp; &nbsp; &nbsp;if os.path.exists(d.getVar('TOOLCHAIN_PATH',
d, 1)+'/bin/'+d.getVar('TARGET_PREFIX', d, 1)+'as'):</i></font><font size=3>
</font><font size=2 face="sans-serif"><i><br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return subprocess.Popen([d.getVar('TOOLCHAIN_PATH',
d, 1)+'/bin/'+d.getVar('TARGET_PREFIX', d, 1)+'as', '-v', '--version'],
stderr=subprocess.STDOUT,stdout=subprocess.PIPE).communicate()[0].splitlines()[0].split()[3]</i></font><font size=3>
<br>
</font><font size=2 face="sans-serif"><i><br>
ELT_VER_BFD := &quot;${@elt_get_bfd_version(d)}&quot;</i></font><font size=3>
<br>
</font><font size=2 face="sans-serif"><br>
Is any one face this issue in the past?</font><font size=3> </font><font size=2 face="Arial"><br>
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

--=_alternative 0057F3E7C1257CEC_=--
