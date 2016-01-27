Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 150B6E00AD7; Wed, 27 Jan 2016 08:13:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 69 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Jan 2016 08:13:13 PST
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51C90E00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 08:13:13 -0800 (PST)
Received: from serv031.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Wed, 27 Jan 2016 14:12:00 -0200
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv031.corp.eldorado.org.br (192.168.4.31) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Wed, 27 Jan 2016 14:11:59 -0200
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.0775.031; Wed, 27 Jan 2016 14:11:59 -0200
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_compile fails in Jethro
Thread-Index: AdFZHE6PhGmOY0MWROSiCB021ANIZA==
Date: Wed, 27 Jan 2016 16:11:59 +0000
Message-ID: <14d020d8b9fa445d8094c9a4a7825750@serv031.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFjrJIsWRWlGSWpSXmKPExsVyYsojJt2ANyvCDBre7vrLaTHp5Ro2B0aP9hN9bAGMUayZeUn5FQmsGS17bjMW7OGqOHjCt4GxnbOLkYtDSGAno8TCy5sZIZx9jBJLH+9gg3BOM0rs2reYvYuRk4NNwFPi+ts2ZhBbRMBU4sWxL2wgtrCAssTHeXdYIOIaEvP61gDZHEC2nsTZd84gYRYBVYnD5y+DlfMKeEv82/qcFcRmFJCVmPtnL9h4ZgFxiVtP5jOB2BIC2hLbX+1jhbB1JDZdW8UCYTtL/Hz/lhnCFpBYsuc8lK0k0Xv7HVSvqMTLx/+genUlun+eYISwAyWab++AqjeVeLPkEtRMW4kTa/8yw8z/sfUGVK+8xP9796FqHCRuHHoPVaMgceDZV6hdARI/FvyCqg+W+P94ERuEXS6xpfkxM0y87fovRlCQgMx/0sgOEY6UaNu3iHUCo8EsJN9D2DoSC3Z/YoOwtSWWLXzNPAsccoISJ2c+YVnAyLKKUao4t6TAUC85v6hALzUnJb8oMSVfL78oXS+paBMjMDns9lh9dQfjhdXuhxiZODhvMUpzHGAS4khLLC4pSCwuFmLJy89LlYImG6kGRpN42YjsCzO3W4fnycWV25udi6zVWjrjh2f5tMXmJ9Y9FJi85vnjiOUJoj9DeWIOvNi++Bnvl6gdamevPjG9/Xq/xoydS5J9I/eV3dx1Mfd2wnOn483PW0S9Jeco5GbFaAdetAmc4lOoun9duQDvet2mEuWbBoVfmF3XqC7bd3SOlHO5tdTcVCWW4oxEQy3mouJEACbQnoDcAgAA
Subject: do_compile fails in Jethro
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
X-List-Received-Date: Wed, 27 Jan 2016 16:13:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi!

The first time I tried to upgrade my build to Jethro I received the followi=
ng error message while do_compiling krb5:

(...)
| .build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64=
-poky-linux/5.2.0/ld: plugins.so: relocation R_X86_64_PC32 against symbol `=
krb5int_open_plugin' can not be used when making a shared object; recompile=
 with -fPIC
| .build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64=
-poky-linux/5.2.0/ld: final link failed: Bad value
| collect2: error: ld returned 1 exit status
| make[2]: *** [libkrb5support.so.0.1] Error 1
| make[2]: Leaving directory `.build/tmp/work/core2-64-poky-linux/krb5/1.13=
.2-r0/krb5-1.13.2/src/util/support'
| make[1]: *** [all-recurse] Error 1
| make[1]: Leaving directory `.build/tmp/work/core2-64-poky-linux/krb5/1.13=
.2-r0/krb5-1.13.2/src/util'
| make: *** [all-recurse] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at .build/tmp/wor=
k/core2-64-poky-linux/krb5/1.13.2-r0/temp/log.do_compile.9043)
ERROR: Task 1764 (.meta-openembedded/meta-oe/recipes-connectivity/krb5/krb5=
_1.13.2.bb, do_compile) failed with exit code '1'


This error doesn't occur when I was using Fido. Please, could anyone give m=
e a help?

Thanks in advance.

Regards,
Alexandre

