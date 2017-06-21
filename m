Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A65DE00B83; Wed, 21 Jun 2017 07:26:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB950E00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:26:12 -0700 (PDT)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.20/8.16.0.20) with SMTP id v5LELMOC025976
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:26:12 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2b52h2fyn4-1
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:26:12 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 3A23415C:FC5BE850-88258146:004EBF04;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OF3A23415C.FC5BE850-ON88258146.004EBF04-88258146.004F4D9B@selinc.com>
From: Aaron_Wright@selinc.com
Date: Wed, 21 Jun 2017 07:26:12 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 06/21/2017 07:26:12 AM,
	Serialize complete at 06/21/2017 07:26:12 AM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8566
	signatures=668485
Subject: Yocto eSDK nativesdk vs native vs normal
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
X-List-Received-Date: Wed, 21 Jun 2017 14:26:15 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004F4D9B88258146_="

--=_alternative 004F4D9B88258146_=
Content-Type: text/plain; charset="US-ASCII"

I'm having a hard time figuring out what specific package to install when 
I'm in the eSDK environment.

Say I want to install cmake, do I:

   devtool sdk-install cmake

or:

   devtool sdk-install cmake-native

or:

   devtool sdk-install nativesdk-cmake

CMake is just one example, any other package would cause the same 
confusion for me. 
Does it depend on the package; tools for use in the eSDK vs libraries for 
the target?

--=_alternative 004F4D9B88258146_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I'm having a hard time figuring out what
specific package to install when I'm in the eSDK environment.</font>
<br>
<br><font size=2 face="sans-serif">Say I want to install cmake, do I:</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp;devtool sdk-install cmake</font>
<br>
<br><font size=2 face="sans-serif">or:</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp;devtool sdk-install cmake-native</font>
<br>
<br><font size=2 face="sans-serif">or:</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp;devtool sdk-install nativesdk-cmake</font>
<br>
<br><font size=2 face="sans-serif">CMake is just one example, any other
package would cause the same confusion for me. </font>
<br><font size=2 face="sans-serif">Does it depend on the package; tools
for use in the eSDK vs libraries for the target?</font>

--=_alternative 004F4D9B88258146_=--
