Return-Path: <btv1==91899773384==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 968DAE00E44; Wed, 20 Apr 2016 14:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.seescan.com (mail3.seescan.com [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D05EEE00DB3
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:04:34 -0700 (PDT)
X-ASG-Debug-ID: 1461186273-0b39aa668a1b19a0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id bI2Uk5krsFzelBJ5 (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Apr 2016 14:04:33 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 20 Apr 2016 14:04:32 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Wed, 20 Apr 2016 14:04:32 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Moti Cohen <motic.mail@gmail.com>
Thread-Topic: [yocto] MySQL recipe for yocto
X-ASG-Orig-Subj: Re: [yocto] MySQL recipe for yocto
Thread-Index: AQHRmyjOLapru0AWo0+245L7Iv2QYZ+THL+AgACSX4D//4sZDYAAjl6A//+Qv0E=
Date: Wed, 20 Apr 2016 21:04:32 +0000
Message-ID: <1461186266075.92629@seescan.com>
References: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
	<1461173123581.97537@seescan.com>
	<CAHvG4ADLMkqJ+6p=12u2WJxfkD025gi=jN5msa17LqT5ZfO2tQ@mail.gmail.com>
	<1461179526735.1762@seescan.com>,
	<CAHvG4ABwEc_5QT7jq2LKb976Jw=G6CHLt-UEJtrjk=brn-C4mA@mail.gmail.com>
In-Reply-To: <CAHvG4ABwEc_5QT7jq2LKb976Jw=G6CHLt-UEJtrjk=brn-C4mA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1461186273
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 6187
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.4612 1.0000 0.0000
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.28912
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MySQL recipe for yocto
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
X-List-Received-Date: Wed, 20 Apr 2016 21:04:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

| NOTE: nothing to configure


Seems like "configure" file is not there.


That sometimes happens when a source code tree is first checked out for dev=
elopers.


Sometimes there's an "autogen.sh" or you have to run stuff including but no=
t limited to "aclocal;autoconf".


I suggest the next step:


1. Post the .bb file here for mysql that you have so far.


2. Look into the source code dir for mysql and look for a "configure" file.


3. Read up on the usual directions on how mysql is now built from your sour=
ce code. Is there a README or the like in there?


4. For a quick sanity test, build the code for your PC to ensure that you c=
an do this and you know how the process works.


5. We can take the results of all the rest and fix the .bb file.


Frederick

________________________________
From: Moti Cohen <motic.mail@gmail.com>
Sent: Wednesday, April 20, 2016 1:39 PM
To: Fred Ollinger
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] MySQL recipe for yocto

OK,
I tried it and the patches errors went away, thanks !
Now, I'm facing a new one related to the do_configure:

ERROR: Function failed: do_configure (log file is located at /home/yocto/yo=
cto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/lo=
g.do_configure.7221)
ERROR: Logfile of failure stored in: /home/yocto/yocto/build_yocto/build/tm=
p/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/log.do_configure.7221
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| NOTE: nothing to configure
| sed: can't read /home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux=
/mysql5-native/5.6.29-r0/mysql-5.6.29/sql/share/Makefile: No such file or d=
irectory
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/yocto/=
yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/=
log.do_configure.7221)
ERROR: Task 1373 (/home/yocto/yocto/build_yocto/sources/meta-openembedded/m=
eta-oe/recipes-support/mysql/mysql5-native_5.6.29.bb<http://mysql5-native_5=
.6.29.bb>, do_configure) failed with exit code '1'

the recipe's .inc file include the below line, however it looks like the ma=
kefile do not exist.

do_configure_append() {
     sed -i /comp_err/d ${S}/sql/share/Makefile
}

Again, any help will be appreciated.




On Wed, Apr 20, 2016 at 10:12 PM, Fred Ollinger <Fred.Ollinger@seescan.com<=
mailto:Fred.Ollinger@seescan.com>> wrote:
You can get rid of the patches in the bb file.


Look for SRC_URI


See any .patch files and remove them and try to build again.


Please post build errors.


Frederick

________________________________
From: Moti Cohen <motic.mail@gmail.com<mailto:motic.mail@gmail.com>>
Sent: Wednesday, April 20, 2016 12:08 PM
To: Fred Ollinger
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] MySQL recipe for yocto

Thanks Fred,

I actually tried it and replaced the PV to a newer one, i used 5.6.29 inste=
ad of 5.1.40 which is the latest "real" MySQL supported by openembedded. I =
also added the relevant SHA numbers etc.

The problem is that the recipe includes quite a few patches that are now sh=
owing many errors when applied during the build. I guess that these patches=
 are related to the original 5.1.40 version and I'm not sure they should be=
 applied to the newer one. Unfortunetly, as I'm not an expert, it seems lik=
e it will be a difficult task for me to clean these errors.

I realy hope there's a simpler way go about it :)



On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger <Fred.Ollinger@seescan.com<m=
ailto:Fred.Ollinger@seescan.com><mailto:Fred.Ollinger@seescan.com<mailto:Fr=
ed.Ollinger@seescan.com>>> wrote:
I'd start with the mysql recipe and update the source reference and try to =
build it.


If this fails, you might need to change some other things.


Here's a howto on writing a recipe:


https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-re=
cipe-writing-a-new-recipe



________________________________
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
<mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.or=
g>> <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org><=
mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org=
>>> on behalf of Moti Cohen <motic.mail@gmail.com<mailto:motic.mail@gmail.c=
om><mailto:motic.mail@gmail.com<mailto:motic.mail@gmail.com>>>
Sent: Wednesday, April 20, 2016 10:18 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org><mailto:yocto@yoct=
oproject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] MySQL recipe for yocto

Hi all,
this is my 1'st post to this list so I hope I'm doing it right :)

I need to add MySQL for my yocto build.
Looking online for a recipe - i found that there is one for MySQL under:
/meta-openembedded/meta-oe/recipes-support/mysql/..
The thing is that instead of MySQL, the recipe reffers to MariaDB which is =
a kind of a drop-in replacemnet and since I need to have the "real" MySQL i=
n my build - I cannot use it.
looking into history log of mysql in the meta-openembedded git, it can be s=
een the the switch between MySQL and MariaDB was made at 2013 and from then=
 onwards it's MariaDB.

http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-suppo=
rt/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71

Now to the question, do you know how can I add the "real" MySQL to my build=
 ?
looking before 2013 at the meta-openembedded git i can find a recipe for My=
SQL which seems to support a "real" MySQL however, it's very old version (5=
.1) and I'm not sure how and if I can update it to one of the latest (e.g. =
MySQL 5.6).

Will appriciate any feedback on this.
Thanks in advance,
Motico



