Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 338C1E009C2; Thu, 16 Apr 2015 01:59:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 281 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Apr 2015 01:58:56 PDT
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2ECEE009A3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 01:58:55 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t3G8s78U031583
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 10:54:12 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Thu, 16 Apr 2015 10:54:06 +0200
From: Peter Bergin <peter.bergin@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: python 2to3 conflicts when populating sdk
Thread-Index: AdB4IuS8fRS/o8ekTByv0sWx9KlWlg==
Date: Thu, 16 Apr 2015 08:54:05 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280C746D8F@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.236.6.200]
MIME-Version: 1.0
Subject: python 2to3 conflicts when populating sdk
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
X-List-Received-Date: Thu, 16 Apr 2015 08:59:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am building an image in daisy branch with both python and python3 include=
d. It works to build the image itself but when trying to make an sdk with '=
bitbake <image> -c populate_sdk' it fails with the following error when pac=
kages are installed:

error: file /usr/bin/2to3 from install of python-2to3-2.7.3-r0.3.0.cortexa9=
hf_vfp_neon conflicts with file from package python3-2to3-3.3.3-r0.0.2.cort=
exa9hf_vfp_neon


From the log-file it happens in the sequence after the following printout i=
n the stage do_populate_sdk:

NOTE: Installing complementary packages ...

NOTE: Installing the following packages: gst-plugins-good-jpeg-dev shadow-s=
ecuretty-dev gst-plugins-good-alpha-d........


Anyone having an idea how to resolv this conflict?

Regards,
/Peter







Peter Bergin



peter.bergin@tritech.se
+46 733 35 21 05


www.tritech.se
+46 31 763 38 00
Nordstadstorget 6
SE-411 05 G?teborg, Sweden

