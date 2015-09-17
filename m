Return-Path: <prvs=169572a12b=Jeff.Hatch@multitech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36C99E00E6B; Thu, 17 Sep 2015 08:55:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [65.126.90.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 213 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Sep 2015 08:55:50 PDT
Received: from mail3.multitech.com (mail3.multitech.com [65.126.90.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D96C3E00CA0
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 08:55:50 -0700 (PDT)
Received: from mail3.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	6FB3D84518_5FAE1B1B
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 15:52:17 +0000 (GMT)
Received: from SVMVVWPEXCH10.dc.multitech.prv (unknown [192.168.11.10])
	(using TLSv1 with cipher AES128-SHA (128/128 bits)) (Client CN "",
	Issuer "MultiTech Systems Intermediate CA 01" (not verified))
	by mail3.multitech.com (Sophos Email Appliance) with ESMTPS id
	C0B7A8509C_5FAE1B0F
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 15:52:16 +0000 (GMT)
Received: from [192.168.52.75] (192.168.52.75) by
	SVMVVWPEXCH10.dc.multitech.prv (192.168.11.10) with Microsoft SMTP
	Server (TLS) id 14.2.347.0; Thu, 17 Sep 2015 10:52:16 -0500
Message-ID: <1442505133.5509.57.camel@hatchville>
From: Jeff Hatch <jhatch@multitech.com>
To: <yocto@yoctoproject.org>
Date: Thu, 17 Sep 2015 10:52:13 -0500
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-Originating-IP: [192.168.52.75]
Subject: Cross-compiling Node-RED 0.10.10 on Openembedded Yocto project LINUX
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
X-List-Received-Date: Thu, 17 Sep 2015 15:55:55 -0000
X-Groupsio-MsgNum: 26424
Content-Type: multipart/related; type="multipart/alternative";
	boundary="=-z2K5z2oheWoQ1++UTfZA"

--=-z2K5z2oheWoQ1++UTfZA
Content-Type: multipart/alternative; boundary="=-5V7SV7rBrDrumQsI1wx2"

--=-5V7SV7rBrDrumQsI1wx2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I'm running into some difficulty building Node-RED 0.10.10 for an ARM 
architecture project.  I am trying to build using the Openembedded Yocto
core
to cross-compile the firmware for the project I am working on.  There
are some 
custom modifications that we have made to Node-RED, primarily adding our
own 
nodes integrated for our hardware.  These changes have been integrated
using 
diffs applied to the code from GitHub.  Due to these changes, I need to
follow 
the development procedure:

# git clone https://github.com/node-red/node-red.git

# cd node-red

# npm install

# sudo npm install -g grunt-cli

# grunt build

# node red

Previously the build was using "npm install --production" and built 
successfully, and Node-RED would run just fine on our ARM based product.
This 
is no longer sufficient for building and running Node-RED 0.10.10 in the
manner
we wish to build and install it because it appears that the build is now
generating files that don't get created with "npm install --production".
I am 
presuming that Node-RED 0.11.1 will have the same requirement(s). 

There is a command in the Yocto project bitbake recipes called oe_runnpm
that
allows the running of npm commands in the build with the appropriate 
environment all set up.  This is not working with the "grunt build"
command.  
Whether grunt is installed locally or globally the following error
indicating that, 
from what I can tell, grunt is using the build server architecture
instead of 
the cross-compile ARM architecture occurs:

ERROR: QA Issue: Architecture did not match (40 to 62)
on /work/arm926ejste-mlinux-linux-gnueabi/node-red/0.10.4-r47/packages-split/node-red/opt/node-red/node_modules/grunt-sass/node_modules/node-sass/vendor/linux-x64-11/binding.node

The following is what my bitbake recipe looks like:


DESCRIPTION = "Node-RED"
HOMEPAGE = "http://nodered.org"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2ee41112a44fe7014dce33e26468ba93"
DEPENDS = "nodejs nodejs-native"
PR = "r47"

inherit npm
inherit update-rc.d

.
.
.

S = "${WORKDIR}/git"

INITSCRIPT_NAME = "node-red"
INITSCRIPT_PARAMS = "defaults 99 21"

do_install() {
    # npm install dependencies
    oe_runnpm install
    # npm install more stuff
    oe_runnpm install grunt-cli
    ./node_modules/grunt-cli/bin/grunt build
   
    oe_runnpm install serialport nodemailer

    # remove dupe deps
    oe_runnpm dedupe

    # install node-red
    install -d ${D}/opt/node-red
    cp -r * ${D}/opt/node-red/

    # install -d -p ${D}/opt/node-red/nodes/mts
    # cp -r ${WORKDIR}/apps/lora ${D}/opt/node-red/nodes/mts/

    install -d ${D}${sysconfdir}/init.d
    install -m 0755 ${WORKDIR}/node-red.init
${D}${sysconfdir}/init.d/node-red

    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/update-flows ${D}${bindir}/
}


I am not very familiar with this grunt utility.  Is there any guidance
or an
alternative that you could give me that might work to get this build to
succeed?  This error is related to grunt-sass which requires node-sass,
which
requires libsass.  The version of node-js being integrated with this is
0.10.40.

Thank You,

-- 
Jeff Hatch
Senior Software Engineer


1 (763) 717 - 5574   DIRECT
1 (763) 228 - 3603   MOBILE

2205 Woodale Drive 
Mounds View, MN 55112

www.multitech.com




--=-5V7SV7rBrDrumQsI1wx2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/4.6.6">
</HEAD>
<BODY>
I'm running into some difficulty building Node-RED 0.10.10 for an ARM <BR>
architecture project.&nbsp; I am trying to build using the Openembedded Yocto core<BR>
to cross-compile the firmware for the project I am working on.&nbsp; There are some <BR>
custom modifications that we have made to Node-RED, primarily adding our own <BR>
nodes integrated for our hardware.&nbsp; These changes have been integrated using <BR>
diffs applied to the code from GitHub.&nbsp; Due to these changes, I need to follow <BR>
the development procedure:<BR>
<BR>
# git clone <A HREF="https://github.com/node-red/node-red.git">https://github.com/node-red/node-red.git</A><BR>
<BR>
# cd node-red<BR>
<BR>
# npm install<BR>
<BR>
# sudo npm install -g grunt-cli<BR>
<BR>
# grunt build<BR>
<BR>
# node red<BR>
<BR>
Previously the build was using &quot;npm install --production&quot; and built <BR>
successfully, and Node-RED would run just fine on our ARM based product.&nbsp; This <BR>
is no longer sufficient for building and running Node-RED 0.10.10 in the manner<BR>
we wish to build and install it because it appears that the build is now<BR>
generating files that don't get created with &quot;npm install --production&quot;.&nbsp; I am <BR>
presuming that Node-RED 0.11.1 will have the same requirement(s). <BR>
<BR>
There is a command in the Yocto project bitbake recipes called oe_runnpm that<BR>
allows the running of npm commands in the build with the appropriate <BR>
environment all set up.&nbsp; This is not working with the &quot;grunt build&quot; command.&nbsp; <BR>
Whether grunt is installed locally or globally the following error indicating that, <BR>
from what I can tell, grunt is using the build server architecture instead of <BR>
the cross-compile ARM architecture occurs:<BR>
<BR>
ERROR: QA Issue: Architecture did not match (40 to 62) on /work/arm926ejste-mlinux-linux-gnueabi/node-red/0.10.4-r47/packages-split/node-red/opt/node-red/node_modules/grunt-sass/node_modules/node-sass/vendor/linux-x64-11/binding.node<BR>
<BR>
The following is what my bitbake recipe looks like:<BR>
<BR>
<BR>
DESCRIPTION = &quot;Node-RED&quot;<BR>
HOMEPAGE = &quot;<A HREF="http://nodered.org">http://nodered.org</A>&quot;<BR>
LICENSE = &quot;Apache-2.0&quot;<BR>
LIC_FILES_CHKSUM = &quot;<A HREF="file://LICENSE">file://LICENSE</A>;md5=2ee41112a44fe7014dce33e26468ba93&quot;<BR>
DEPENDS = &quot;nodejs nodejs-native&quot;<BR>
PR = &quot;r47&quot;<BR>
<BR>
inherit npm<BR>
inherit update-rc.d<BR>
<BR>
.<BR>
.<BR>
.<BR>
<BR>
S = &quot;${WORKDIR}/git&quot;<BR>
<BR>
INITSCRIPT_NAME = &quot;node-red&quot;<BR>
INITSCRIPT_PARAMS = &quot;defaults 99 21&quot;<BR>
<BR>
do_install() {<BR>
&nbsp;&nbsp;&nbsp; # npm install dependencies<BR>
&nbsp;&nbsp;&nbsp; oe_runnpm install<BR>
&nbsp;&nbsp;&nbsp; # npm install more stuff<BR>
&nbsp;&nbsp;&nbsp; oe_runnpm install grunt-cli<BR>
&nbsp;&nbsp;&nbsp; ./node_modules/grunt-cli/bin/grunt build<BR>
&nbsp;&nbsp; <BR>
&nbsp;&nbsp;&nbsp; oe_runnpm install serialport nodemailer<BR>
<BR>
&nbsp;&nbsp;&nbsp; # remove dupe deps<BR>
&nbsp;&nbsp;&nbsp; oe_runnpm dedupe<BR>
<BR>
&nbsp;&nbsp;&nbsp; # install node-red<BR>
&nbsp;&nbsp;&nbsp; install -d ${D}/opt/node-red<BR>
&nbsp;&nbsp;&nbsp; cp -r * ${D}/opt/node-red/<BR>
<BR>
&nbsp;&nbsp;&nbsp; # install -d -p ${D}/opt/node-red/nodes/mts<BR>
&nbsp;&nbsp;&nbsp; # cp -r ${WORKDIR}/apps/lora ${D}/opt/node-red/nodes/mts/<BR>
<BR>
&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/init.d<BR>
&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/node-red.init ${D}${sysconfdir}/init.d/node-red<BR>
<BR>
&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}<BR>
&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/update-flows ${D}${bindir}/<BR>
}<BR>
<BR>
<BR>
I am not very familiar with this grunt utility.&nbsp; Is there any guidance or an<BR>
alternative that you could give me that might work to get this build to<BR>
succeed?&nbsp; This error is related to grunt-sass which requires node-sass, which<BR>
requires libsass.&nbsp; The version of node-js being integrated with this is 0.10.40.<BR>
<BR>
Thank You,<BR>
<BR>
<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
<TR>
<TD>
-- <BR>
Jeff Hatch<BR>
Senior Software Engineer<BR>
<BR>
<IMG SRC="cid:1442504354.5509.48.camel@hatchville" ALIGN="bottom" BORDER="0"><BR>
1 (763) 717 - 5574&nbsp;&nbsp; DIRECT<BR>
1 (763) 228 - 3603&nbsp;&nbsp; MOBILE<BR>
<BR>
2205 Woodale Drive&nbsp;<BR>
Mounds View, MN 55112<BR>
<BR>
<A HREF="http://www.multitech.com/">www.multitech.com</A><BR>
<BR>
<BR>
<BR>
</TD>
</TR>
</TABLE>
</BODY>
</HTML>

--=-5V7SV7rBrDrumQsI1wx2--

--=-z2K5z2oheWoQ1++UTfZA
Content-ID: <1442504354.5509.48.camel@hatchville>
Content-Disposition: attachment; filename="Mulitech.jpg"
Content-Type: image/jpeg; name="Mulitech.jpg"
Content-Transfer-Encoding: base64

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

--=-z2K5z2oheWoQ1++UTfZA--
