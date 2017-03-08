Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1EF8E006D8; Wed,  8 Mar 2017 00:23:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A17E00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 00:23:38 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20170308082336119_0486
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 08:23:36 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [174.118.92.171] (port=47220 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1clWsc-0001TO-5n
	for yocto@yoctoproject.org; Wed, 08 Mar 2017 03:23:30 -0500
Date: Wed, 8 Mar 2017 03:23:28 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703080320510.2952@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: why is VOLATILE_LOG_DIR mentioned in ref manual when it doesn't exist?
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
X-List-Received-Date: Wed, 08 Mar 2017 08:23:42 -0000
Content-Type: text/plain; charset=US-ASCII


  not sure if i'm misreading this, but i note that an addition was
made to the ref manual back in dec 2016:

commit 5d2bdf49e569e44d02602501d72418f04dbe6e4a
Author: Scott Rifenbark <srifenbark@gmail.com>
Date:   Fri Dec 30 10:20:28 2016 -0800

    ref-manual: New VOLATILE_LOG_DIR variable description

    Fixes [YOCTO #6132]

    No mention of how to make the target directory /var/log
    persistent.  I added a note to the "post-install-logging"
    image feature that points to the new VOLATILE_LOG_DIR
    variable description, which I added to the glossary.

    Signed-off-by: Scott Rifenbark <srifenbark@gmail.com>

diff --git a/documentation/ref-manual/ref-features.xml
b/documentation/ref-manual/ref-features.xml
index 282a517..a4516a2 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -297,6 +297,12 @@
                     Enables logging postinstall script runs to
                     the <filename>/var/log/postinstall.log</filename> file
                     on first boot of the image on the target system.
+                    <note>
+                        To make the <filename>/var/log</filename> directory
+                        on the target persistent, use the
+                        <ulink url='&YOCTO_DOCS_REF_URL;#var-VOLATILE_LOG_DIR'><filename>VOLATILE_LOG_DIR</filename></ulink>
+                        variable by setting it to "no".
+                    </note>
                     </para></listitem>
                 <listitem><para><emphasis>ptest-pkgs:</emphasis>
                     Installs ptest packages for all ptest-enabled recipes.


but that is a broken link, and i see no definition or usage of that
variable. can someone clarify what is happening here?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


