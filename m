Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA7E8E00A9C; Tue, 10 Oct 2017 13:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE4FE006CA
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 13:58:08 -0700 (PDT)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.21/8.16.0.21) with SMTP id v9AKvd0Y008235
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 13:58:07 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com with ESMTP id 2dgrh39drn-1
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 13:58:07 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: F27E9A29:BD452632-882581B5:007253AC;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFF27E9A29.BD452632-ON882581B5.007253AC-882581B5.00732F21@selinc.com>
From: Aaron_Wright@selinc.com
Date: Tue, 10 Oct 2017 13:58:06 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP8|February  23,
	2017) at 10/10/2017 01:58:06 PM,
	Serialize complete at 10/10/2017 01:58:06 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8680
	signatures=668577
Subject: populate_sdk_ext => "Cannot install package nativesdk-git-perltools"
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
X-List-Received-Date: Tue, 10 Oct 2017 20:58:09 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00732F21882581B5_="

--=_alternative 00732F21882581B5_=
Content-Type: text/plain; charset="US-ASCII"

I'm trying to create an extended SDK for a multilib environment and I run 
into this error during the buildtools-tarball-1.0-r0 do_populate_sdk task:

...snip lots of configuring lines...

Configuring nativesdk-buildtools-perl-dummy.
Collected errors:
 * check_conflicts_for: The following packages conflict with 
nativesdk-perl:
 * check_conflicts_for:         nativesdk-buildtools-perl-dummy *
 * opkg_solver_install: Cannot install package nativesdk-git-perltools.

...snip lots of configuring lines...

I'm using morty:

commit 493b1c9aeaeb60440085bb3692e9362a87553bce
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Tue Oct 10 11:01:38 2017 +0100

I'm not sure what to look for to solve this issue. Any ideas?

--=_alternative 00732F21882581B5_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I'm trying to create an extended SDK for
a multilib environment and I run into this error during the buildtools-tarball-1.0-r0
do_populate_sdk task:</font>
<br>
<br><font size=1 face="Lucida Console">...snip lots of configuring lines...</font>
<br>
<br><font size=1 face="Lucida Console">Configuring nativesdk-buildtools-perl-dummy.</font>
<br><font size=1 face="Lucida Console">Collected errors:</font>
<br><font size=1 face="Lucida Console">&nbsp;* check_conflicts_for: The
following packages conflict with nativesdk-perl:</font>
<br><font size=1 face="Lucida Console">&nbsp;* check_conflicts_for: &nbsp;
&nbsp; &nbsp; &nbsp; nativesdk-buildtools-perl-dummy *</font>
<br><font size=1 face="Lucida Console">&nbsp;* opkg_solver_install: Cannot
install package nativesdk-git-perltools.</font>
<br>
<br><font size=1 face="Lucida Console">...snip lots of configuring lines...</font>
<br>
<br><font size=1 face="Lucida Console">I'm using morty:</font>
<br>
<br><font size=1 face="Lucida Console">commit 493b1c9aeaeb60440085bb3692e9362a87553bce</font>
<br><font size=1 face="Lucida Console">Author: Richard Purdie &lt;richard.purdie@linuxfoundation.org&gt;</font>
<br><font size=1 face="Lucida Console">Date: &nbsp; Tue Oct 10 11:01:38
2017 +0100</font>
<br>
<br><font size=1 face="Lucida Console">I'm not sure what to look for to
solve this issue. Any ideas?</font>

--=_alternative 00732F21882581B5_=--
