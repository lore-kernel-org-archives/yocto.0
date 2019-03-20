Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B99B7E00BC8; Wed, 20 Mar 2019 15:11:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 2461 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Mar 2019 15:11:37 PDT
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7CEEE006D8
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 15:11:37 -0700 (PDT)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x2KLSRRD014789
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 16:30:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=9U3Z9QxIzDAep+p1M8v1ZJhZb3B4fqO/ZKmw7IFzhFw=;
	b=TdvHlXO7+epD35gRmeqpp63fu7+LJWsokDIeXYMeUKB0/cm/UIAFKRH3tBslNJvfEAuc
	mouS+A0sJk3oTUQk8nFNlL2RLCRQ8D8xI+x131CETxv7Lle67G+n0X/Lrf1bJdVL8DTC
	sdFBBPWJgs96qvq7DUz2rXn24NnOO+ei7UFhbi2EBho2u+PuPj7xaU3x23BIY6+7fHY7
	hkqQ21EzaDnQ1xVB4ReRWOjTLF5iG5qrEx+87Tv/C3JPVLrnzbK+/QnRROLLjT1zp3Cq
	5MhsQz4+T8Ja0/V1tbbgcdrYh1RIsWoKoQJUw1us6wTOHJLv0yJlgVwAA/CfNATAeMdq
	8A== 
Received: from rkfdhc2.woodward.com ([10.1.100.159])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2r8wc32cuv-1
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 16:30:36 -0500
Received: from KempHC2.woodward.com (10.25.100.52) by rkfdhc2.woodward.com
	(10.1.100.159) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Wed, 20 Mar 2019 16:30:35 -0500
Received: from KempMail2.woodward.com ([169.254.2.162]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Wed, 20 Mar 2019 22:30:33
	+0100
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 20 Mar 2019 22:30:31 +0100
Thread-Topic: Thud: building SDK fails: cannot find -lssp
Thread-Index: AdTfV1HB2SojY41mS2qaQKMqMA34nQ==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55BAE8B824@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=879 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1903200154
Subject: Thud: building SDK fails: cannot find -lssp
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
X-List-Received-Date: Wed, 20 Mar 2019 22:11:38 -0000
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hello All,

I am trying to build SDK using Yocto thud tagged 2.6.1. Toolchain from meta=
-linaro (edb7ffc2a121df7596385595abe75180296103e0). Unfortunately it fails =
during perl build, complaining about missing ssp_nonshared and ssp librarie=
s.=20
Do you have any ideas how to fix it?=20
I know it is about stack smash protector, but shouldn't it be automatically=
 included and available for linker during a build?


| x86_64-pokysdk-linux-gcc  --sysroot=3D/data/home/user/00-projects/proj_my=
proj_system0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/n=
ativesdk-perl/5.24.4-r0/recipe-sysroot -Wl,-O1 -fstack-protector -o miniper=
l \
|     opmini.o perlmini.o  gv.o toke.o perly.o pad.o regcomp.o dump.o util.=
o mg.o reentr.o mro_core.o keywords.o hv.o av.o run.o pp_hot.o sv.o pp.o sc=
ope.o pp_ctl.o pp_sys.o doop.o doio.o regexec.o utf8.o taint.o deb.o univer=
sal.o globals.o perlio.o perlapi.o numeric.o mathoms.o locale.o pp_pack.o p=
p_sort.o caretx.o dquote.o time64.o  miniperlmain.o  -lpthread  -ldl -lm -l=
crypt -lutil -lc
| /data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/=
work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe-sysroot=
-native/usr/bin/x86_64-pokysdk-linux/../../libexec/x86_64-pokysdk-linux/gcc=
/x86_64-pokysdk-linux/7.1.1/ld: cannot find -lssp_nonshared
| /data/home/user/00-projects/proj_myproj_system0/build_myproj_system0/tmp/=
work/x86_64-nativesdk-pokysdk-linux/nativesdk-perl/5.24.4-r0/recipe-sysroot=
-native/usr/bin/x86_64-pokysdk-linux/../../libexec/x86_64-pokysdk-linux/gcc=
/x86_64-pokysdk-linux/7.1.1/ld: cannot find -lssp
| collect2: error: ld returned 1 exit status
| makefile:391: recipe for target 'lib/buildcustomize.pl' failed
| make[1]: *** [lib/buildcustomize.pl] Error 1
| make[1]: Leaving directory '/data/home/user/00-projects/proj_myproj_syste=
m0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-p=
erl/5.24.4-r0/perl-5.24.4'
| make[1]: Entering directory '/data/home/user/00-projects/proj_myproj_syst=
em0/build_myproj_system0/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-=
perl/5.24.4-r0/perl-5.24.4'
| ./miniperl -Ilib autodoc.pl
| make[1]: ./miniperl: Command not found
| makefile:441: recipe for target 'pod/perlintern.pod' failed

Thank you in advance,
Lukasz

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***

