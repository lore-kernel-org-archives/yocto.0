Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10FCBE00810; Mon,  2 Mar 2015 21:41:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C59E00404
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 21:41:49 -0800 (PST)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by
	SOC-EDGE-01.invecas.local (10.0.30.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 3 Mar 2015 11:12:57 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Tue, 3 Mar 2015 11:11:43 +0530
Received: from SOC-EXCH-02.invecas.local ([fe80::99f5:2524:170c:1d9e]) by
	SOC-EXCH-02.invecas.local ([fe80::99f5:2524:170c:1d9e%17]) with mapi id
	15.00.0995.028; Tue, 3 Mar 2015 11:11:43 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: SDK generation issue
Thread-Index: AQHQVXSZgocaVcDLukOF35msQZrD1w==
Date: Tue, 3 Mar 2015 05:41:43 +0000
Message-ID: <1425361303765.315@inedasystems.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
	<26096207.41.1423630551583.JavaMail.kraghavendra@Raghavendra>
	<74932485.zASdODCka1@peggleto-mobl5.ger.corp.intel.com>,
	<26169231.54.1423648818817.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <26169231.54.1423648818817.JavaMail.kraghavendra@Raghavendra>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.55]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SDK generation issue
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
X-List-Received-Date: Tue, 03 Mar 2015 05:41:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul Eggleton,=0A=
Thanks for your help in the solving the issue for adding the bsp to yocto.=
=0A=
Now I am working on the yocto sdk generation.=0A=
=0A=
I am generated the yocto SDK using the yocto sdk script "bitbake core-image=
-minimal -c populate_sdk" command. With this command I am able to generte t=
he installation script file and .manifest file.=0A=
=0A=
I run the installation script file. After running installation script file =
it propts that following message:=0A=
=0A=
Extracting SDK...done=0A=
Setting it up...done=0A=
SDK has been successfully set up and is ready to be used.=0A=
=0A=
=0A=
After this i run the ". /opt/poky/1.7/environment-setup-mips32rel-poky-linu=
x" and echo $PATH i got the correct path.=0A=
=0A=
After this i built wrote a small example and try to build with the sdk gene=
rated toolchain by running following command:=0A=
=0A=
mipsel-poky-linux-gcc test.c=0A=
=0A=
but i got the following errors:=0A=
***************************************************************************=
***********************************************************************=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crt1.o: No such file or director=
y=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crti.o: No such file or director=
y=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtbegin.o: No such file or dire=
ctory=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc_s=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lc=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find -lgcc_s=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtend.o: No such file or direct=
ory=0A=
/opt/poky/1.7/sysroots/x86_64-pokysdk-linux/usr/libexec/mipsel-poky-linux/g=
cc/mipsel-poky-linux/4.9.1/ld: cannot find crtn.o: No such file or director=
y=0A=
collect2: error: ld returned 1 exit status=0A=
=0A=
***************************************************************************=
***************************************************************************=
*****=0A=
Please help me to resolving this issue.=0A=
=0A=
Thanks in advance.=0A=
=0A=
Cheers,=0A=
=0A=
Raghavendra Kakarla.=

