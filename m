Return-Path: <Anooj.Gopi@alpine.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43AA4E00B20; Tue,  3 Jun 2014 08:54:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=DRUGS_MUSCLE, HTML_MESSAGE,
	X_IP autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 X_IP Message has X-IP header
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  2.5 DRUGS_MUSCLE Refers to a muscle relaxant
Received: from ipmx01.kddinet.de (ipmx01.kddinet.de [195.82.33.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B977DE0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 08:54:25 -0700 (PDT)
X-SBRS: None
X-Policy: $RELAYED_Alpine
X-Group: Alpine_RLY
X-IP: 195.82.37.17
X-MID: 9349174
X-IronPort-AV: E=Sophos;i="4.98,966,1392159600"; 
   d="scan'208";a="9349174"
Received: from unknown (HELO destln01.corp.alpine.eu) ([195.82.37.17])
	by ipmx01.kddinet.de with ESMTP; 03 Jun 2014 17:54:22 +0200
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 610A841C:679DDE21-C1257CEC:0056DCB5;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: Anooj Gopi <Anooj.Gopi@alpine.de>
Message-ID: <OF610A841C.679DDE21-ONC1257CEC.0056DCB5-C1257CEC.00576031@alpine.de>
Date: Tue, 3 Jun 2014 17:54:22 +0200
X-MIMETrack: Serialize by Router on AOGSLN001/SRV/AOGS/SPEED(Release
	8.5.3FP5|July 31, 2013) at 03.06.2014 17:54:22,
	Serialize complete at 03.06.2014 17:54:22
Subject: external-linaro-sdk-toolchain.bb, do_package_write_rpm) failed with exit code '1'
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
X-List-Received-Date: Tue, 03 Jun 2014 15:54:27 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00576031C1257CEC_="

--=_alternative 00576031C1257CEC_=
Content-Type: text/plain; charset="US-ASCII"

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
Working office: Vor dem Lauch 14, 70567 Stuttgart

--=_alternative 00576031C1257CEC_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">When try to build in Ubuntu 14.04 x86_64
machine following failure occurs. </font>
<br>
<br><font size=2 face="sans-serif">| error: line 24: invalid tag value(&quot;^[A-Za-z0-9+._]+$&quot;)
Version: Version: 'libpseudo.so'</font>
<br><font size=2 face="sans-serif">| error: Package has no %description:
binutils-cross-canadian-arm.x86_64_nativesdk</font>
<br>
<br><font size=2 face="sans-serif">I doubt following part of the bitbake
fails due to some unknown issue</font>
<br>
<br><font size=2 face="sans-serif"><i>inherit cross-canadian</i></font>
<br>
<br><font size=2 face="sans-serif"><i># ensure variable exists to avoid
build error without external toolchain</i></font>
<br><font size=2 face="sans-serif"><i>TOOLCHAIN_PATH ?= &quot;&quot;</i></font>
<br>
<br><font size=2 face="sans-serif"><i>def elt_get_bfd_version(d):</i></font>
<br><font size=2 face="sans-serif"><i>&nbsp; &nbsp; &nbsp; &nbsp; import
subprocess,os,bb</i></font>
<br><font size=2 face="sans-serif"><i>&nbsp; &nbsp; &nbsp; &nbsp; if os.path.exists(d.getVar('TOOLCHAIN_PATH',
d, 1)+'/bin/'+d.getVar('TARGET_PREFIX', d, 1)+'as'):</i></font>
<br><font size=2 face="sans-serif"><i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; return subprocess.Popen([d.getVar('TOOLCHAIN_PATH',
d, 1)+'/bin/'+d.getVar('TARGET_PREFIX', d, 1)+'as', '-v', '--version'],
stderr=subprocess.STDOUT,stdout=subprocess.PIPE).communicate()[0].splitlines()[0].split()[3]</i></font>
<br>
<br><font size=2 face="sans-serif"><i>ELT_VER_BFD := &quot;${@elt_get_bfd_version(d)}&quot;</i></font>
<br>
<br><font size=2 face="sans-serif">Is any one face this issue in the past?</font>
<br>
<font size="2" face="Arial">Alpine Electronics R&amp;D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,</font><br>
<font size="2" face="Arial">Registergericht Stuttgart, HRB 25265</font><br>
<font size="2" face="Arial">Geschaeftsfuehrer: </font><font size="2" face="Arial">Satoshi Soma, Shuji Taguchi </font><br>
<font size="2" face="Arial">Working office: Vor dem Lauch 14, 70567 Stuttgart</font>

--=_alternative 00576031C1257CEC_=--
