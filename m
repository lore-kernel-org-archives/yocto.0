Return-Path: <vincent.chin.keong.kok@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62577E00DF0; Tue,  9 Jan 2018 05:35:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C2FE00A00
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 05:35:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jan 2018 05:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,335,1511856000"; d="scan'208,217";a="19535210"
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
	by fmsmga004.fm.intel.com with ESMTP; 09 Jan 2018 05:35:54 -0800
Received: from pgsmsx110.gar.corp.intel.com (10.221.44.111) by
	KMSMSX155.gar.corp.intel.com (172.21.73.106) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 9 Jan 2018 21:35:54 +0800
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.98]) by
	PGSMSX110.gar.corp.intel.com ([169.254.13.155]) with mapi id
	14.03.0319.002; Tue, 9 Jan 2018 21:35:53 +0800
From: "Kok, Vincent Chin Keong" <vincent.chin.keong.kok@intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Thread-Topic: [yocto] Upgrading Yocto Project Version - To Rocko
Thread-Index: AdOJQKWKB5lhfWrJSMemlihxJ3AcT///iAwAgACUMiM=
Date: Tue, 9 Jan 2018 13:35:52 +0000
Message-ID: <A2B3664D-B676-4A0C-ACC4-147C51D72B30@intel.com>
References: <04146D936EE8544DA96D472768509EC31AAD3DA9@PGSMSX111.gar.corp.intel.com>,
	<c0d1faf4-1896-3263-1046-bded8246f07b@linux.intel.com>
In-Reply-To: <c0d1faf4-1896-3263-1046-bded8246f07b@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Upgrading Yocto Project Version - To Rocko
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
X-List-Received-Date: Tue, 09 Jan 2018 13:35:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A2B3664DB6764A0CACC4147C51D72B30intelcom_"

--_000_A2B3664DB6764A0CACC4147C51D72B30intelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

How if I want to remain my database from previous version? How can I export=
 them?

Warmest regards,
Vincent Kok
On Jan 9, 2018, at 20:45, Alexander Kanavin <alexander.kanavin@linux.intel=
.com<mailto:alexander.kanavin@linux.intel.com>> wrote:

On 01/09/2018 01:55 PM, Kok, Vincent Chin Keong wrote:

I was wondering, how can I upgrade to Yocto version 2.4 (Rocko)? Do I just=
 remove the previous poky folder I downloaded and re-download a newer versi=
on of poky and checkout the branch and tags?

The easiest is to perform a clean clone of the poky repo, and check out th=
e tag you want.

Alex

--_000_A2B3664DB6764A0CACC4147C51D72B30intelcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
</head>
<body dir=3D"auto">
<div>How if I want to remain my database from previous version? How can I =
export them?<br>
<br>
<div>Warmest regards,</div>
<div>Vincent Kok</div>
<div><br>
</div>
<div><span style=3D"font-size: 13pt;">&nbsp;</span></div>
</div>
<div><br>
On Jan 9, 2018, at 20:45, Alexander Kanavin &lt;<a href=3D"mailto:alexande=
r.kanavin@linux.intel.com">alexander.kanavin@linux.intel.com</a>&gt; wrote:=
<br>
<br>
</div>
<blockquote type=3D"cite">
<div><span>On 01/09/2018 01:55 PM, Kok, Vincent Chin Keong wrote:</span><b=
r>
<span></span><br>
<blockquote type=3D"cite"><span>I was wondering, how can I upgrade to Yoct=
o version 2.4 (Rocko)? Do I just remove the previous poky folder I download=
ed and re-download a newer version of poky and checkout the branch and tags=
?</span><br>
</blockquote>
<span></span><br>
<span>The easiest is to perform a clean clone of the poky repo, and check =
out the tag you want.</span><br>
<span></span><br>
<span>Alex</span><br>
</div>
</blockquote>
</body>
</html>

--_000_A2B3664DB6764A0CACC4147C51D72B30intelcom_--
