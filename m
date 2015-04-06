Return-Path: <rickard.bremer@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A8F4E00963; Mon,  6 Apr 2015 02:38:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB12E0076B
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 02:38:23 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t369cFlt024037
	for <yocto@yoctoproject.org>; Mon, 6 Apr 2015 11:38:20 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Mon, 6 Apr 2015 11:38:15 +0200
From: Rickard Bremer <rickard.bremer@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: python not found in the base feeds
Thread-Index: AdBwTWeqwoNEKKpaQ0Om/hco5LlkLw==
Date: Mon, 6 Apr 2015 09:38:14 +0000
Message-ID: <E0AAEDF37958A64591322A370796C7897C5D45@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.248.164.111]
MIME-Version: 1.0
Subject: ERROR: python not found in the base feeds
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
X-List-Received-Date: Mon, 06 Apr 2015 09:38:34 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_E0AAEDF37958A64591322A370796C7897C5D45post_"

--_000_E0AAEDF37958A64591322A370796C7897C5D45post_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to include python in my Build. I can build a image but whenever =
i add "python" in local.conf i get a crash.

ERROR: python not found in the base feeds (congatec_qa3_64 corei7-64-intel-=
common corei7-64 core2-64 x86_64 noarch any all).

// Lots of text....

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/thesis-buil=
d-yocto/intel/tmp/work/congatec_qa3_64-poky-linux/core-image-x11/1.0-r0/tem=
p/log.do_rootfs.10871
ERROR: Task 7 (/var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-g=
raphics/images/core-image-x11.bb, do_rootfs) failed with exit code '1'

/ Best Regards
Rickard

--_000_E0AAEDF37958A64591322A370796C7897C5D45post_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello,<br>
<br>
I'm trying to include python in my Build. I can build a image but whenever =
i add &quot;python&quot; in local.conf i get a crash.<br>
<br>
ERROR: python not found in the base feeds (congatec_qa3_64 corei7-64-intel-=
common corei7-64 core2-64 x86_64 noarch any all).<br>
<br>
// Lots of text....<br>
<br>
ERROR: Function failed: do_rootfs<br>
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/thesis-buil=
d-yocto/intel/tmp/work/congatec_qa3_64-poky-linux/core-image-x11/1.0-r0/tem=
p/log.do_rootfs.10871<br>
ERROR: Task 7 (/var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-g=
raphics/images/core-image-x11.bb, do_rootfs) failed with exit code '1'<br>
<br>
/ Best Regards<br>
Rickard<br>
</div>
</body>
</html>

--_000_E0AAEDF37958A64591322A370796C7897C5D45post_--
