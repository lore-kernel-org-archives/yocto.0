Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32656E00B01; Tue, 20 Jun 2017 09:12:45 -0700 (PDT)
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
	*      [74.117.214.143 listed in list.dnswl.org]
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3936E0094C
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 09:12:42 -0700 (PDT)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.20/8.16.0.20) with SMTP id v5KGBoAB000397
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 09:12:42 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com with ESMTP id 2b5001wtdw-1
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 09:12:42 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 5F1B2CD5:4DE7426A-88258145:00523D4A;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OF5F1B2CD5.4DE7426A-ON88258145.00523D4A-88258145.00590DA8@selinc.com>
From: Aaron_Wright@selinc.com
Date: Tue, 20 Jun 2017 09:12:42 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 06/20/2017 09:12:42 AM,
	Serialize complete at 06/20/2017 09:12:42 AM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8566
	signatures=668485
Subject: Minimal eSDK with PKGDATA causes licensing issues
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
X-List-Received-Date: Tue, 20 Jun 2017 16:12:45 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00590DA888258145_="

--=_alternative 00590DA888258145_=
Content-Type: text/plain; charset="US-ASCII"

I added these lines to my eSDK image I'm trying to build:
 
SDK_EXT_TYPE = "minimal"
SDK_INCLUDE_TOOLCHAIN = "1"
SDK_INCLUDE_PKGDATA = "1"

But bitbake comes back with lots of license issues (mpv, gstreamer, 
libvdpau, etc). These are all the commercial licensed recipes.

I don't want PKGDATA for recipes that I haven't already listed in 
LICENSE_FLAGS_WHITELIST to end up the eSDK, so I don't care about 
these errors, but they stop the build in its tracks.

How can I exclude commercial licensed (or any incompatible license) 
recipes from my eSDK?

--=_alternative 00590DA888258145_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>I added these lines to my eSDK image I'm trying to build:</font></tt>
<br><tt><font size=2>&nbsp;<br>
SDK_EXT_TYPE = &quot;minimal&quot;</font></tt>
<br><tt><font size=2>SDK_INCLUDE_TOOLCHAIN = &quot;1&quot;</font></tt>
<br><tt><font size=2>SDK_INCLUDE_PKGDATA = &quot;1&quot;</font></tt>
<br><tt><font size=2><br>
But bitbake comes back with lots of license issues (mpv, gstreamer, <br>
libvdpau, etc). These are all the commercial licensed recipes.</font></tt>
<br><tt><font size=2><br>
I don't want PKGDATA for recipes that I haven't already listed in <br>
LICENSE_FLAGS_WHITELIST to end up the eSDK, so I don't care about <br>
these errors, but they stop the build in its tracks.</font></tt>
<br><tt><font size=2><br>
How can I exclude commercial licensed (or any incompatible license) <br>
recipes from my eSDK?</font></tt>

--=_alternative 00590DA888258145_=--
