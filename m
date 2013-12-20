Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1812CE00801
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2013 01:01:59 -0800 (PST)
X-ASG-Debug-ID: 1387530117-0499bf7ce0443fd0001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id QlOsna8qmxZPzPEs for <yocto@yoctoproject.org>;
	Fri, 20 Dec 2013 02:01:57 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-ODIN.tasernet.com (172.16.1.112) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Fri, 20 Dec 2013 02:01:57 -0700
Received: from TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789]) by
	TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8%20]) with mapi id
	14.02.0347.000; Fri, 20 Dec 2013 02:01:56 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::7c49:ae21:6650:2789
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: BB_NO_NETWORK question
X-ASG-Orig-Subj: BB_NO_NETWORK question
Thread-Index: Ac79YNLzXE8JGW/zSzWZO3xf4cFJow==
Date: Fri, 20 Dec 2013 09:01:56 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8D019ADB8C@TI-THOR.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1387530117
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.143248
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: BB_NO_NETWORK question
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
X-List-Received-Date: Fri, 20 Dec 2013 09:02:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8D019ADB8CTITHORtasernetc_"

--_000_E51394554A503C4E852F9BEE46B03E8D019ADB8CTITHORtasernetc_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am having trouble getting my build environment to work offline.  I follow=
ed the instructions here:
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_sourc=
e_download_mirror_.3F

I've built my project, created the tarballs, etc.  However, it appears ther=
e is still something I'm missing.  I get an error here:

$ bitbake base-files
...
Loaded 57 entries from dependency cache.
NOTE: Error during finalise of /home/brad/etm2/sources/meta-arago/meta-arag=
o-extras/recipes-devtools/ltp-ddt/ltp-ddt-legacy_1.0.bb
ERROR: ExpansionError during parsing /home/brad/etm2/sources/meta-arago/met=
a-arago-extras/recipes-devtools/ltp-ddt/ltp-ddt-legacy_1.0.bb: Failure expa=
nding variable S: ExpansionError: Failure expanding variable SRCPV, express=
ion was ${@bb.fetch2.get_srcrev(d)} which triggered exception NetworkAccess=
: Network access disabled through BB_NO_NETWORK but access requested with c=
ommand git ls-remote git://arago-project.org/git/projects/test-automation/l=
tp-ddt.git master (for url None)
ERROR: Command execution failed: Exited with 1

In this case, the SRC_URI looks like this:

SRCREV =3D "5fba3d42f126ce13333fb7d0412d729b753ee5a4"
BRANCH ?=3D "master"
SRC_URI =3D "git://arago-project.org/git/projects/test-automation/ltp-ddt.g=
it;protocol=3Dgit;branch=3D${BRANCH}"

So, I figured apply  the same fix as mentioned on the Wiki:

SRCREV =3D "5fba3d42f126ce13333fb7d0412d729b753ee5a4"
#BRANCH ?=3D "master"
#SRC_URI =3D "git://arago-project.org/git/projects/test-automation/ltp-ddt.=
git;protocol=3Dgit;branch=3D${BRANCH}"
SRC_URI =3D "git://arago-project.org/git/projects/test-automation/ltp-ddt.g=
it;protocol=3Dgit"

But I get the same error?  And I'm not even using ltp-ddt...

Is there something I'm missing in setting up BB_NO_NETWORK?

Thanks,
Brad


--_000_E51394554A503C4E852F9BEE46B03E8D019ADB8CTITHORtasernetc_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>
<div>I am having trouble getting my build environment to work offline. &nbs=
p;I followed the instructions here:</div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_cre=
ate_my_own_source_download_mirror_.3F" target=3D"_blank">https://wiki.yocto=
project.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_=
.3F</a></div>
<div><br>
</div>
<div>I've built my project, created the tarballs, etc. &nbsp;However, it ap=
pears there is still something I'm missing. &nbsp;I get an error here:</div=
>
<div><br>
</div>
<div>$ bitbake base-files</div>
<div><span style=3D"font-size: 10pt;">...</span></div>
<div><span style=3D"font-size: 10pt;">Loaded 57 entries from dependency cac=
he.</span></div>
<div>NOTE: Error during finalise of /home/brad/etm2/sources/meta-arago/meta=
-arago-extras/recipes-devtools/ltp-ddt/ltp-ddt-legacy_1.0.bb</div>
<div>ERROR: ExpansionError during parsing /home/brad/etm2/sources/meta-arag=
o/meta-arago-extras/recipes-devtools/ltp-ddt/ltp-ddt-legacy_1.0.bb: Failure=
 expanding variable S: ExpansionError: Failure expanding variable SRCPV, ex=
pression was ${@bb.fetch2.get_srcrev(d)}
 which triggered exception NetworkAccess: Network access disabled through B=
B_NO_NETWORK but access requested with command git ls-remote git://arago-pr=
oject.org/git/projects/test-automation/ltp-ddt.git master (for url None)</d=
iv>
<div>ERROR: Command execution failed: Exited with 1</div>
</div>
<div><br>
</div>
<div>In this case, the SRC_URI looks like this:</div>
<div>
<div><br>
</div>
<div>SRCREV =3D &quot;5fba3d42f126ce13333fb7d0412d729b753ee5a4&quot;</div>
<div>BRANCH ?=3D &quot;master&quot;</div>
<div>SRC_URI =3D &quot;git://arago-project.org/git/projects/test-automation=
/ltp-ddt.git;protocol=3Dgit;branch=3D${BRANCH}&quot;</div>
</div>
<div><br>
</div>
<div>So, I figured apply &nbsp;the same fix as mentioned on the Wiki:</div>
<div><br>
</div>
<div>
<div>
<div>SRCREV =3D &quot;5fba3d42f126ce13333fb7d0412d729b753ee5a4&quot;</div>
<div>#BRANCH ?=3D &quot;master&quot;</div>
<div>#SRC_URI =3D &quot;git://arago-project.org/git/projects/test-automatio=
n/ltp-ddt.git;protocol=3Dgit;branch=3D${BRANCH}&quot;</div>
</div>
</div>
<div>SRC_URI =3D &quot;git://arago-project.org/git/projects/test-automation=
/ltp-ddt.git;protocol=3Dgit&quot;</div>
<div><br>
</div>
<div><span style=3D"font-size: 10pt;">But I get the same error? &nbsp;And I=
'm not even using ltp-ddt...</span></div>
<div><br>
</div>
<div>Is there something I'm missing in setting up BB_NO_NETWORK?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Brad</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8D019ADB8CTITHORtasernetc_--
