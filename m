Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B432E0076F; Tue,  3 Mar 2015 09:56:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C40E00750
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 09:55:56 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] SDK generation issue
Thread-Index: AQHQVYuCjpFkzcpVA0GQOwoilLToFZ0LCf8o
Date: Tue, 3 Mar 2015 17:55:54 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E46B81@reactor.sldomain.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
	<26096207.41.1423630551583.JavaMail.kraghavendra@Raghavendra>
	<74932485.zASdODCka1@peggleto-mobl5.ger.corp.intel.com>,
	<26169231.54.1423648818817.JavaMail.kraghavendra@Raghavendra>,
	<1425361303765.315@inedasystems.com>
In-Reply-To: <1425361303765.315@inedasystems.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.15]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK generation issue
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
X-List-Received-Date: Tue, 03 Mar 2015 17:56:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Try doing:=0A=
=0A=
${CC} test.c=0A=
=0A=
This will invoke the cross compiler with all the compilation flags required=
 to produce=0A=
an executable for the target, using libraries on the target root file syste=
m.=0A=
=0A=
=0A=
=0A=
________________________________________=0A=
From: Raghavendra Kakarla [Raghavendra.Kakarla@inedasystems.com]=0A=
Sent: Monday, March 02, 2015 10:41 PM=0A=
To: Paul Eggleton=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: [yocto] SDK generation issue=0A=
=0A=
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
Raghavendra Kakarla.=0A=

