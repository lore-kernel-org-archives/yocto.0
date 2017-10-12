Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF114E00CC1; Thu, 12 Oct 2017 16:14:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F42E00CA2
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 16:14:44 -0700 (PDT)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.21/8.16.0.21) with SMTP id v9CNB15K029930
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 16:14:43 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2dh228p6gq-1
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 16:14:43 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: A4AE2162:FA6B3913-882581B7:007EEDE8;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFA4AE2162.FA6B3913-ON882581B7.007EEDE8-882581B7.007FB0EE@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 12 Oct 2017 16:14:43 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP8|February  23,
	2017) at 10/12/2017 04:14:43 PM,
	Serialize complete at 10/12/2017 04:14:43 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8682
	signatures=668578
Subject: devtool sdk-install <recipe>
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
X-List-Received-Date: Thu, 12 Oct 2017 23:14:45 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 007FB0EE882581B7_="

--=_alternative 007FB0EE882581B7_=
Content-Type: text/plain; charset="US-ASCII"

I'm confused as to how the devtool sdk-install command is supposed to 
work. Take for example:

devtool sdk-install cxxtest

This installs all the /usr/lib and /usr/include stuff into the sysroot, 
but doesn't install the /usr/bin stuff required to actually use cxxtest.

So should I install nativesdk-cxxtest instead? Still doesn't work, but I 
was just curious about the nativesdk- prefix.
cxxtest-native doesn't work either.
Does the cxxtest recipe need a SYSROOT_DIRS_append = " ${bindir}" in order 
to get the /usr/bin files installed in the eSDK when someone installs it?



PS - often devtool sdk-install <recipe> will act like it is working and 
then print an error at the end:

NOTE: Tasks Summary: Attempted 105 tasks of which 71 didn't need to be 
rerun and all succeeded.
ERROR: Failed to install nativesdk-cxxtest - unavailable



PPS - a google search for devtool sdk-install returns nothing, so 
hopefully the mailing list can help.

--=_alternative 007FB0EE882581B7_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I'm confused as to how the devtool sdk-install
command is supposed to work. Take for example:</font>
<br>
<br><font size=2 face="sans-serif">devtool sdk-install cxxtest</font>
<br>
<br><font size=2 face="sans-serif">This installs all the /usr/lib and /usr/include
stuff into the sysroot, but doesn't install the /usr/bin stuff required
to actually use cxxtest.</font>
<br>
<br><font size=2 face="sans-serif">So should I install nativesdk-cxxtest
instead? Still doesn't work, but I was just curious about the nativesdk-
prefix.</font>
<br><font size=2 face="sans-serif">cxxtest-native doesn't work either.</font>
<br><font size=2 face="sans-serif">Does the cxxtest recipe need a SYSROOT_DIRS_append
= &quot; ${bindir}&quot; in order to get the /usr/bin files installed in
the eSDK when someone installs it?</font>
<br>
<br>
<br>
<br><font size=2 face="sans-serif">PS - often devtool sdk-install &lt;recipe&gt;
will act like it is working and then print an error at the end:</font>
<br>
<br><font size=2 face="sans-serif">NOTE: Tasks Summary: Attempted 105 tasks
of which 71 didn't need to be rerun and all succeeded.</font>
<br><font size=2 face="sans-serif">ERROR: Failed to install nativesdk-cxxtest
- unavailable</font>
<br>
<br>
<br>
<br><font size=2 face="sans-serif">PPS - a google search for devtool sdk-install
returns nothing, so hopefully the mailing list can help.</font>

--=_alternative 007FB0EE882581B7_=--
