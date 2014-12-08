Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE93BE0084A; Mon,  8 Dec 2014 09:48:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D74E007C1
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 09:48:29 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"chan.kitx.yu@intel.com" <chan.kitx.yu@intel.com>
Thread-Topic: Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NQ==
Date: Mon, 8 Dec 2014 17:48:27 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.254.6]
MIME-Version: 1.0
Subject: Building clang with Yocto
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
X-List-Received-Date: Mon, 08 Dec 2014 17:48:35 -0000
X-Groupsio-MsgNum: 22521
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_"

--_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Chan,=0A=
=0A=
I have been working to a similar goal, to include clang in the toolchain to=
 be used for compiling applications to run on the target.  Using clang to c=
ompile the OS and kernel are not required or  desired by me.  =0A=
=0A=
You may get some insight from the thread I started in November on the subje=
ct.  I'm not sure that this contains all of the posts on the subject. You m=
ay want to search the archive for November.=0A=
=0A=
I have not been successful yet in getting clang actually packaged in the to=
olchain, in the Yocto build,  but at least it builds.  I have a postbuild s=
cript that takes the built clang compiler from the work directory and jams =
it into the SDK tarball that is embedded in the sdk install script.=0A=
=0A=
-Jim-=0A=
=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of yocto-request@yoctoproject.org [yocto-request@yoctoproject.org]=0A=
Sent: Monday, December 08, 2014 2:56 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: yocto Digest, Vol 51, Issue 26=0A=
=0A=
Send yocto mailing list submissions to=0A=
        yocto@yoctoproject.org=0A=
=0A=
To subscribe or unsubscribe via the World Wide Web, visit=0A=
        https://lists.yoctoproject.org/listinfo/yocto=0A=
or, via email, send a message with subject or body 'help' to=0A=
        yocto-request@yoctoproject.org=0A=
=0A=
You can reach the person managing the list at=0A=
        yocto-owner@yoctoproject.org=0A=
=0A=
When replying, please edit your Subject line so it is more specific=0A=
than "Re: Contents of yocto digest..."=0A=

--_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Mon, 08 Dec 2014 09:57:22 GMT";
	modification-date="Mon, 08 Dec 2014 09:57:22 GMT"
Content-ID: <0473F2B9CD98024E9B6B0D68B8BA1CFD@spectralogic.com>

From: Poky Build User <pokybuild@ubuntu1204.osl.yoctoproject.org>
Precedence: list
CC: <otavio@ossystems.com.br>
To: <yocto@yoctoproject.org>
Date: Mon, 8 Dec 2014 09:02:30 +0000
Message-ID: <20141208090230.6C0242C0657@ubuntu1204.osl.yoctoproject.org>
Subject: [yocto] Release Candidate Build for yocto-1.8_M1.rc1 now available.
Message: 1
Content-Type: text/plain
MIME-Version: 1.0

-e 
A release candidate build for yocto-1.8_M1.rc1 is now available at:

 
http://autobuilder.yoctoproject.org/pub/releases/yocto-1.8_M1.rc1


Please begin QA on this build as soon as possible.


Build hash information: 
meta-intel : a72da6350e7a77256ad597e8e8c40909590a2a40 
meta-fsl-arm : a593ac48d1a13067d3e4000be616e34699ea4732 
meta-minnow : 13a5f2ab84c7284647a3e067a33109c11dae0568 
meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45 
meta-fsl-ppc : 486a72425f2f6e25efd9bfdbb9638fb58e90a85f 
poky : b813bdebb36501500e86fea5f7e15b4b15ea0902 


This is an automated message from
The Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder
Email: elizabeth.flanagan@intel.com 


--_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Mon, 08 Dec 2014 09:57:22 GMT";
	modification-date="Mon, 08 Dec 2014 09:57:22 GMT"
Content-ID: <D97E02A7F8926D488783D12E7A614C37@spectralogic.com>

From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
Precedence: list
CC: "'yuchankit@gmail.com'" <yuchankit@gmail.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Mon, 8 Dec 2014 09:35:31 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9@PGSMSX101.gar.corp.intel.com>
Content-Type: multipart/alternative;
	boundary="_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_"
Subject: [yocto] Need guidance on compiling clang+rt-compiler+llvm 3.3
Message: 2
MIME-Version: 1.0

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Before I go to my errors let me outline the steps I took.

I started off with the LLVM recipe that I got from http://cgit.openembedded=
.org/meta-openembedded/tree/meta-oe/recipes-core/llvm . Then I added the fo=
llowing to llvm.inc's do_configure_prepend() because I wanted to compile Cl=
ang, rt-compiler and Clang tools together with LLVM. I also added the SRC_U=
RI and Licensing for all of them but I don't think that's the main issue he=
re:

mv ${WORKDIR}/cfe-${PV}.src ${S}/tools/clang
mv ${WORKDIR}/compiler-rt-${PV}.src ${S}/projects/compiler-rt
mv ${WORKDIR}/clang-tools-extra-${PV}.src ${S}/tools/clang/extra

The three lines copies the extracted files to the source directory because =
that's the way the LLVM does it according to http://clang.llvm.org/get_star=
ted.html .

The compilation went well but I got "Files/directories were installed but n=
ot shipped error".  The log is at http://pastebin.com/e831Ex9E .

I then tried to add the install -d ${D}${libdir}/clang to do_install() func=
tion but no good..hence my reason of posting here to have more eyes looking=
 at this.

Let me know if you need more info.

Thanks,
Chan Kit

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Before I go to my errors let me outline the steps I =
took.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I started off with the LLVM recipe that I got from <=
a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recip=
es-core/llvm">
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/ll=
vm</a> . Then I added the following to llvm.inc&#8217;s do_configure_prepen=
d() because I wanted to compile Clang, rt-compiler and Clang tools together=
 with LLVM. I also added the SRC_URI and
 Licensing for all of them but I don&#8217;t think that&#8217;s the main is=
sue here:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">mv ${WORKDIR}/cfe-${PV}.src ${S}/tools/clang<o:p></o=
:p></p>
<p class=3D"MsoNormal">mv ${WORKDIR}/compiler-rt-${PV}.src ${S}/projects/co=
mpiler-rt<o:p></o:p></p>
<p class=3D"MsoNormal">mv ${WORKDIR}/clang-tools-extra-${PV}.src ${S}/tools=
/clang/extra<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The three lines copies the extracted files to the so=
urce directory because that&#8217;s the way the LLVM does it according to
<a href=3D"http://clang.llvm.org/get_started.html">http://clang.llvm.org/ge=
t_started.html</a> .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The compilation went well but I got &#8220;Files/dir=
ectories were installed but not shipped error&#8221;. &nbsp;The log is at
<a href=3D"http://pastebin.com/e831Ex9E">http://pastebin.com/e831Ex9E</a> .=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I then tried to add the install -d ${D}${libdir}/cla=
ng to do_install() function but no good..hence my reason of posting here to=
 have more eyes looking at this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Let me know if you need more info.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Chan Kit<o:p></o:p></p>
</div>
</body>
</html>

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_--

--_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Mon, 08 Dec 2014 09:57:22 GMT";
	modification-date="Mon, 08 Dec 2014 09:57:22 GMT"
Content-ID: <4E5419E27640CD44BF0221706EC3F175@spectralogic.com>

Content-Transfer-Encoding: 7Bit
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Precedence: list
CC: <yocto@yoctoproject.org>
To: Ulf Winberg <ulfwin@gmail.com>
References: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
In-Reply-To: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
Date: Mon, 8 Dec 2014 09:41:14 +0000
Message-ID: <1426837.Z6YLN2FboT@peggleto-mobl5.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [yocto] Using anonymous python function to define variables
Message: 3
MIME-Version: 1.0

Hi Ulf,

On Sunday 07 December 2014 12:22:06 Ulf Winberg wrote:
> I'm struggling with trying to dynamically set a file name, to be used with
> "require". See code below:
> 
> python () {
>        TA = d.getVar('TARGET_ARCH', True)
>        if TA == "arm":
>                javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
>        elif TA == "i586":
>                javaPkg = "oracle-jse-jre-i586"
>        elif TA == "x86_64":
>                javaPkg = "oracle-jse-jre-x86-64"
>        else:
>                raise Exception("Target architecture '%s' is not supported
> by the meta-oracle-java layer" %TA)
>        d.setVar('JAVA_PKG', javaPkg)
> }
> 
> require ${JAVA_PKG}.inc
> 
> The python function executes properly (if I print javaPkg, it shows up
> correctly) but the "JAVA_PKG" variable does not become available for
> "require". From what I can read in section 3.4.4 in this link
> <http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manua
> l.html>, it seems to me it should work. Could someone please explain to me
> why it doesn't?

I'm pretty sure this is because anonymous functions don't get executed until 
finalize() is called, which is towards the end of parsing; the "require" 
statement must be handled immediately. Try this instead:

---------------- snip ----------------

def get_java_package(d):
    TA = d.getVar('TARGET_ARCH', True)
    if TA == "arm":
        javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
    elif TA == "i586":
        javaPkg = "oracle-jse-jre-i586"
    elif TA == "x86_64":
        javaPkg = "oracle-jse-jre-x86-64"
    else:
        raise bb.parse.SkipPackage("Target architecture '%s' is not supported 
by the meta-oracle-java layer" % TA)
    return javaPkg

JAVA_PKG = "${@get_java_package(d)}"

require ${JAVA_PKG}.inc

---------------- snip ----------------

The question is though, do you really need a separate inc file for each 
architecture? You can use overrides for this sort of thing e.g.:

---------------- snip ----------------

SOMEVAR = "default value"
SOMEVAR_arm = "value if arm"
SOMEVAR_x86-64 = "value if x86-64"

---------------- snip ----------------

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


--_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Mon, 08 Dec 2014 09:57:22 GMT";
	modification-date="Mon, 08 Dec 2014 09:57:22 GMT"
Content-ID: <5399EB62FD719B49A8A3C5D30C868A45@spectralogic.com>

From: Jegan Chandru <pcjegan@gmail.com>
Precedence: list
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
To: Qiang Yu <yuq825@gmail.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
In-Reply-To: <CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
Date: Mon, 8 Dec 2014 15:25:47 +0530
Message-ID: <CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f46d044306047706400509b16ffd"
Subject: Re: [yocto] prelink & mklibs problem
Message: 4
MIME-Version: 1.0

--f46d044306047706400509b16ffd
Content-Type: text/plain; charset="UTF-8"

I recommend you to file a bug here https://bugzilla.yoctoproject.org/ if
not done already. You may get a proper answer on armhf support there. From
what I see, (someone please correct me if I am wrong), there is no prelink
dynamic link armhf patch. You can also create and submit the patch for
review. AFAIK, you are gonna need to something like below,

.dynamic_linker = "/lib/ld-linux-armhf.so.3"  in arch-arm.c.

This is not tested though. Please do a test yourselves.

-JC

On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <yuq825@gmail.com> wrote:

> Thanks for your reply. I almost give up.
>
> You mean that current yocto build doesn't support hard float ABI prelink,
> and the prelink source code needs to
> be modified to use ld-linux-armhf.so.3?
>
> So this problem affect all armhf build of yocto, in other words prelink
> doesn't work for yocto armhf at all now?
>
> Regards,
> Qiang
>
> On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <pcjegan@gmail.com> wrote:
>
>> Hi,
>>
>> I think it has to do with the ld-linux-armhf.so.3. May be you should
>> tell prelink that you have hard float ARM ABI to prelink for, than
>> ld-linux.so.3 . It means you need to add ld-linux-armhf.so.3 as a dynamic
>> linker.
>> You should patch the prelink source to get this done.
>>
>> HTH.
>>
>> -JC
>>
>>
>>
>> On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <yuq825@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> I'm building a image with local.conf:
>>> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>>>
>>> but I think prelink does nothing on my image, because the MD5SUM is the
>>> same before and after
>>> the prelink stage. The mklibs stage is also strange not print anything.
>>> How to make prelink and
>>> mklibs really work?
>>>
>>> Here is the log of log.do_rootfs:
>>>
>>> NOTE: ###### Generate images #######
>>> NOTE: Executing mklibs_optimize_image ...
>>> DEBUG: Executing shell function mklibs_optimize_image
>>> DEBUG: Shell function mklibs_optimize_image finished
>>> NOTE: Executing prelink_image ...
>>> DEBUG: Executing shell function prelink_image
>>> Size before prelinking 49304.
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
>>> as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
>>> dynamic linker
>>> /opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
>>> /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>> /lib/ld-linux.so.3 as dynamic linker
>>> Size after prelinking 49304.
>>> DEBUG: Shell function prelink_image finished
>>>
>>> Regards,
>>> Qiang
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>> JCP
>>
>
>


-- 
JCP

--f46d044306047706400509b16ffd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"><d=
iv dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:'trebuchet=
 ms',sans-serif">I recommend you to file a bug here&nbsp;<a href=3D"https:/=
/bugzilla.yoctoproject.org/">https://bugzilla.yoctoproject.org/</a> if not =
done already. You may get a proper answer on armhf support there. From what=
 I see, (someone please correct me if I am wrong), there is no prelink dyna=
mic link armhf patch. You can also create and submit the patch for review. =
AFAIK, you are gonna need to something like below,</div><div class=3D"gmail=
_default" style=3D"font-family:'trebuchet ms',sans-serif"><br></div><div cl=
ass=3D"gmail_default" style=3D""><font face=3D"trebuchet ms, sans-serif">.d=
ynamic_linker =3D &quot;/lib/ld-linux-armhf.so.3&quot; &nbsp;</font><span s=
tyle=3D"font-family:'trebuchet ms',sans-serif">in arch-arm.c. &nbsp;</span>=
</div><div class=3D"gmail_default" style=3D""><span style=3D"font-family:'t=
rebuchet ms',sans-serif"><br></span></div><div class=3D"gmail_default" styl=
e=3D""><span style=3D"font-family:'trebuchet ms',sans-serif">This is not te=
sted though. Please do a test yourselves.</span></div><div class=3D"gmail_d=
efault" style=3D""><span style=3D"font-family:'trebuchet ms',sans-serif"><b=
r></span></div><div class=3D"gmail_default" style=3D""><span style=3D"font-=
family:'trebuchet ms',sans-serif">-JC</span></div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Mon, Dec 8, 2014 at 1:52 PM, Qian=
g Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail.com" target=3D"_b=
lank">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr">Thanks for your reply. I almost give up.<div><br></div=
><div>You mean that current yocto build doesn't support hard float ABI prel=
ink, and the prelink source code needs to&nbsp;</div><div>be modified to us=
e&nbsp;<span style=3D"font-size:13px;font-family:arial,sans-serif">ld-linux=
-armhf.so.3?</span></div><div><span style=3D"font-family:arial,sans-serif">=
<br></span></div><div><span style=3D"font-family:arial,sans-serif">So this =
problem affect all armhf build of yocto, in other words prelink doesn't wor=
k for yocto armhf at all now?</span></div><div><span style=3D"font-family:a=
rial,sans-serif;font-size:13px"><br></span></div><div><span style=3D"font-f=
amily:arial,sans-serif;font-size:13px">Regards,</span></div><div><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">Qiang</span></div></div><=
div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:pcjegan@gmail.com" target=3D"_blank">pcjeg=
an@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:'trebuchet ms'=
,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-family:'tr=
ebuchet ms',sans-serif"><br></div><div class=3D"gmail_default"><font face=
=3D"trebuchet ms, sans-serif">I think it has to do with the l</font><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">d-linux-armhf.so.3.&nb=
sp;</span><span style=3D"font-family:arial,sans-serif">May be you should te=
ll prelink that you have hard float ARM ABI to prelink for, than ld-linux.s=
o.3 . It means you need to add ld-linux-armhf.so.3 as a dynamic linker.</sp=
an></div><div class=3D"gmail_default"><font face=3D"arial, sans-serif">You =
should patch the prelink source to get this done.</font></div><div class=3D=
"gmail_default"><font face=3D"arial, sans-serif"><br></font></div><div clas=
s=3D"gmail_default"><font face=3D"arial, sans-serif">HTH.</font></div><div =
class=3D"gmail_default"><font face=3D"arial, sans-serif"><br></font></div><=
div class=3D"gmail_default"><font face=3D"arial, sans-serif">-JC</font></di=
v><div class=3D"gmail_default"><font face=3D"arial, sans-serif"><br></font>=
</div><div class=3D"gmail_default"><font face=3D"arial, sans-serif"><br></f=
ont></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><=
div><div>On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <span dir=3D"ltr">&lt;<a =
href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;=
</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><div=
 dir=3D"ltr">Hi all,<div><br></div><div>I'm building a image with local.con=
f:</div><div>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&=
quot;<br></div><div><br></div><div>but I think prelink does nothing on my i=
mage, because the MD5SUM is the same before and after</div><div>the prelink=
 stage. The mklibs stage is also strange not print anything. How to make pr=
elink and</div><div>mklibs really work?</div><div><br></div><div>Here is th=
e log of log.do_rootfs:</div><div><br></div><div><div>NOTE: ###### Generate=
 images #######</div><div>NOTE: Executing mklibs_optimize_image ...</div><d=
iv>DEBUG: Executing shell function mklibs_optimize_image</div><div>DEBUG: S=
hell function mklibs_optimize_image finished</div><div>NOTE: Executing prel=
ink_image ...</div><div>DEBUG: Executing shell function prelink_image</div>=
<div>Size before prelinking 49304.</div><div>/opt/yocto/rootfs/tmp/sysroots=
/x86_64-linux/usr/sbin/prelink: /sbin/fstab-decode: Using /lib/ld-linux-arm=
hf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/root=
fs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/bootlogd: Using /lib/l=
d-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt=
/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/killall5: U=
sing /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</di=
v><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/=
init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dy=
namic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin=
/prelink: /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-=
linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_6=
4-linux/usr/sbin/prelink: /sbin/shutdown.sysvinit: Using /lib/ld-linux-armh=
f.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootf=
s/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/runlevel.sysvinit: Usin=
g /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><=
div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/sbin=
/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as d=
ynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbi=
n/prelink: /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not /l=
ib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots=
/x86_64-linux/usr/sbin/prelink: /bin/busybox.suid: Using /lib/ld-linux-armh=
f.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootf=
s/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /bin/busybox.nosuid: Using /l=
ib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>=
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/utmp=
dump.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dy=
namic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin=
/prelink: /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/=
ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x8=
6_64-linux/usr/sbin/prelink: /usr/bin/last.sysvinit: Using /lib/ld-linux-ar=
mhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/roo=
tfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/opkg-cl: Using /li=
b/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/=
opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/bmw: =
Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</d=
iv><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/=
bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 a=
s dynamic linker</div><div>Size after prelinking 49304.</div><div>DEBUG: Sh=
ell function prelink_image finished</div></div><div><br></div><div>Regards,=
</div><div>Qiang</div><div><br></div></div>
<br></div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span><font color=3D"#888888"><br><br =
clear=3D"all"><div><br></div>-- <br><div>JCP</div>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature">JCP</div>
</div>

--f46d044306047706400509b16ffd--

--_005_86196249137E0843B2E0673D4F731E0C0108E2902Freactorsldoma_--
