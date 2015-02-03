Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9391E00968; Tue,  3 Feb 2015 11:42:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-ut.atk.com (mx-ut.atk.com [192.107.250.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 007AAE00961
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 11:42:31 -0800 (PST)
Received: from unknown (HELO UT40SVEH4.atk.com) ([146.168.70.141])
	by mx-ut.atk.com with ESMTP; 03 Feb 2015 13:35:56 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by UT40SVEH4.atk.com
	([146.168.70.141]) with mapi id 14.03.0174.001; Tue, 3 Feb 2015 12:42:25
	-0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Identifying image in os-release
Thread-Index: AdA/6KMO8umNP6amR1usyg4OeValOA==
Date: Tue, 3 Feb 2015 19:42:24 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7446EF@UT40SVCWEM001.atk.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: Identifying image in os-release
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
X-List-Received-Date: Tue, 03 Feb 2015 19:42:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For my system, we are generating two images: a release image and a debug im=
age. The debug image simply adds the debug image features (tools-debug, ecl=
ipse-debug, and dbg-pkgs). This approach looks like it is going to work wel=
l for our needs. However, the one issue that I have is that there doesn't a=
ppear to be a way to easily tell which image is running. My current plan fo=
r version identification is to make use of the /etc/os-release file that is=
 generated during the build, which is suitable for determining the version =
of the base distribution. However, I can't find a way to influence any of t=
hose values from within my image recipes, which I image is by design.

It would seem to me that having a way to assign a version, or some other id=
entifying information, to a final image would be very important. The DISTRO=
_VERSION is nice, but it doesn't seem like it's enough considering that you=
 can write an image recipe to add any number of additional packages.

Any suggestions on how I can achieve this?

Thanks,

Thomas=20



