Return-Path: <jim.schimpf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8309E007D5; Sat, 31 Oct 2015 06:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, MALFORMED_FREEMAIL, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jim.schimpf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [206.46.173.23 listed in list.dnswl.org]
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	* 2.4 MALFORMED_FREEMAIL Bad headers on message from free email service
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
X-Greylist: delayed 3614 seconds by postgrey-1.32 at yocto-www;
	Sat, 31 Oct 2015 06:35:22 PDT
Received: from vms173023pub.verizon.net (vms173023pub.verizon.net
	[206.46.173.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08BDDE005B3
	for <yocto@yoctoproject.org>; Sat, 31 Oct 2015 06:35:22 -0700 (PDT)
Received: from [192.168.1.6] ([96.235.8.117]) by vms173023.mailsrvcs.net
	(Oracle Communications Messaging Server 7.0.5.32.0 64bit (built Jul 16
	2014)) with ESMTPA id <0NX3008ZB4AGUS50@vms173023.mailsrvcs.net> for
	yocto@yoctoproject.org; Sat, 31 Oct 2015 07:35:08 -0500 (CDT)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.1 cv=WpDWSorv c=1 sm=1 tr=0	a=MecUTN0ogPH4FM4RiyfojA==:117
	a=pGLkceISAAAA:8 a=oR5dmqMzAAAA:8	a=IkcTkHD0fZMA:10 a=5lJygRwiOn0A:10
	a=_JxJTIk8cFoaAt2N8JsA:9	a=QEXdDO2ut3YA:10
From: jim Schimpf <jim.schimpf@gmail.com>
Message-id: <248B5DD4-47DB-4EF4-B115-393D045CB60D@gmail.com>
Date: Sat, 31 Oct 2015 08:35:03 -0400
To: yocto@yoctoproject.org
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: Where is the c compiler
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
X-List-Received-Date: Sat, 31 Oct 2015 13:35:23 -0000
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

Hi,
	I am building the core-image-full-cmdline code and want to have =
a C compiler on the board(Beagle Bone). I have added the line =
EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-sdk tools-debug=E2=80=9D in =
my local.conf file.  After this it builds the image and it is larger =
than previous ones without this. After this is done where is the c =
compiler and what is it=E2=80=99s name ? I=E2=80=99ve found things like =
distcc but no cc.

	Probably looking in the wrong place or did I not include the =
right stuff.  Thanks.

=E2=80=94jim schimpf=

