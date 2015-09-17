Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA40E00E85; Thu, 17 Sep 2015 09:50:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	HTML_MESSAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Sep 2015 09:50:16 PDT
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C55FE00C36
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 09:50:16 -0700 (PDT)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Thu, 17 Sep 2015 12:49:09 -0400
From: "Stath, Paul" <PStath@Axxcelera.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: build host toolchain
Thread-Index: AdDxUHwJMvKgeb/lSse2pkvXoZtmmg==
Date: Thu, 17 Sep 2015 16:49:09 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D695DAD@RIC-MS02.MWSG.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Subject: build host toolchain
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
X-List-Received-Date: Thu, 17 Sep 2015 16:50:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5B5D636C5F0AA747B37D0EFC72B563C42D695DADRICMS02MWSGint_"

--_000_5B5D636C5F0AA747B37D0EFC72B563C42D695DADRICMS02MWSGint_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I was recently tasked with migrating our Jenkins based build server to new =
hardware.
During this migration, the OS was also upgraded to the latest Ubuntu LTS re=
lease.

The previous build server was hosted on Ubuntu 12.04 LTS.
The new build server is hosted on Ubuntu 14.04 LTS.

We have a couple of existing Yocto projects which are based on older Poky r=
eleases.
The Freescale SDK that is being used is based on Dylan.
So alas, no updating to Fido. (sigh)

During the migration, I had trouble building these two projects due to newe=
r versions
of tools on the build host platform.

Specifically:

tar:         v1.26   -->  v1.27.1
texinfo:     v4.13   -->  v5.2
perl:        v5.14.2 -->  v5.18.2
gcc:         v4.6.3  -->  v4.8.4

The tar command in 1.27.1 got more stringent on argument parsing and refuse=
d to allow
the '-s' argument in concert with '-c'.
(Note: this is patched by commits bf19a8617d05f17506dcb7154e19e2aa2b61838b
and d3846f06d1e3faedcbc3c28e22c427bb0088683d, which were introduced in 'dor=
a'.)

In texinfo, between v4.13 and v5.2 the parser became a lot more strict,
and several recipes failed when generating documentation.

In perl, the pod2* programs also also became stricter, and several recipes
failed when 'pod2man' was used to generate man pages.


I was able to work around these issues by downloading and compiling the
old versions of the above tools, and installing them in a non-standard
bin directory, and adding that to the beginning of PATH prior to running bi=
tbake.

The real pain was the errors that occurred because of the gcc compiler on t=
he build host
going from v4.6.3 to v4.8.4.  I suppose I could have solved it as above,
compiling a v4.6.3 version of GCC and putting it at the beginning of PATH.
However, I ended up cherry-picking commits from Dora that corrected the iss=
ues.

It looks like a buildtools-tarball target was added in Dora to generate
a stable set of build host executables.
The packages in the recipe (Dora) are python, chrpath, tar, git, pigz, make=
.

Has anyone backported the buildtool-tarball recipe to pre-Dora releases,
and could one bbappend other native packages such as texinfo-native, and gc=
c-native?

---
Paul Stath
Senior Software Engineer
Axxcelera Broadband Wireless
email: pstath@axxcelera.com



--_000_5B5D636C5F0AA747B37D0EFC72B563C42D695DADRICMS02MWSGint_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Arial;color: #000000;font-size: 1=
2pt;"><font face=3D"Courier New">I was recently tasked with migrating our J=
enkins based build server to new hardware.<br>
During this migration, the OS was also upgraded to the latest Ubuntu LTS re=
lease.<br>
<br>
The previous build server was hosted on Ubuntu 12.04 LTS.<br>
The new build server is hosted on Ubuntu 14.04 LTS.<br>
<br>
We have a couple of existing Yocto projects which are based on older Poky r=
eleases.<br>
The Freescale SDK that is being used is based on Dylan.<br>
So alas, no updating to Fido. (sigh)<br>
<br>
During the migration, I had trouble building these two projects due to newe=
r versions<br>
of tools on the build host platform.<br>
<br>
Specifically:<br>
<br>
tar:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v1.26&nbsp;&nbsp; --&g=
t;&nbsp; v1.27.1<br>
texinfo:&nbsp;&nbsp;&nbsp;&nbsp; v4.13&nbsp;&nbsp; --&gt;&nbsp; v5.2<br>
perl:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v5.14.2 --&gt;&nbsp; v5.18.=
2<br>
gcc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v4.6.3&nbsp; --&gt;&nb=
sp; v4.8.4<br>
<br>
The tar command in 1.27.1 got more stringent on argument parsing and refuse=
d to allow<br>
the '-s' argument in concert with '-c'.<br>
(Note: this is patched by commits bf19a8617d05f17506dcb7154e19e2aa2b61838b<=
br>
and d3846f06d1e3faedcbc3c28e22c427bb0088683d, which were introduced in 'dor=
a'.)<br>
<br>
In texinfo, between v4.13 and v5.2 the parser became a lot more strict,<br>
and several recipes failed when generating documentation.<br>
<br>
In perl, the pod2* programs also also became stricter, and several recipes<=
br>
failed when 'pod2man' was used to generate man pages.<br>
<br>
<br>
I was able to work around these issues by downloading and compiling the<br>
old versions of the above tools, and installing them in a non-standard<br>
bin directory, and adding that to the beginning of PATH prior to running bi=
tbake.<br>
<br>
The real pain was the errors that occurred because of the gcc compiler on t=
he build host<br>
going from v4.6.3 to v4.8.4.&nbsp; I suppose I could have solved it as abov=
e,<br>
compiling a v4.6.3 version of GCC and putting it at the beginning of PATH.<=
br>
However, I ended up cherry-picking commits from Dora that corrected the iss=
ues.<br>
<br>
It looks like a buildtools-tarball target was added in Dora to generate<br>
a stable set of build host executables.<br>
The packages in the recipe (Dora) are python, chrpath, tar, git, pigz, make=
.<br>
<br>
Has anyone backported the buildtool-tarball recipe to pre-Dora releases,<br=
>
and could one bbappend other native packages such as texinfo-native, and gc=
c-native?<br>
<br>
---<br>
Paul Stath<br>
Senior Software Engineer<br>
Axxcelera Broadband Wireless<br>
email: pstath@axxcelera.com<br>
<br>
<br>
</font></div>
</body>
</html>

--_000_5B5D636C5F0AA747B37D0EFC72B563C42D695DADRICMS02MWSGint_--
