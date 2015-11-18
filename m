Return-Path: <aelmadho@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 595A2E007AE; Wed, 18 Nov 2015 08:39:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.86.76 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Nov 2015 08:39:00 PST
Received: from rcdn-iport-5.cisco.com (rcdn-iport-5.cisco.com [173.37.86.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3DCBE00978
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 08:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=2718; q=dns/txt; s=iport;
	t=1447864740; x=1449074340;
	h=from:to:subject:date:message-id:mime-version;
	bh=bPmwBf2qOzlDuih4YEGMSg9Hpi92gBzxtiu71fdvR+0=;
	b=VPAvLAdAYIHc4gbyq460cb+5LFMCC9cKOl0wrIJBg3r1dEZFGmw9opTY
	PDVlqtgYB9HIVBUvV8XgDgBDqZwGjKqsGGyVl6P9jkcEJA9a7+SSGXX7O
	5dbLWCtnfPpTF3Bu607b3vPnABz8bTdu3F6UKre36IqX5w4t6JQ6Y5ohN Y=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0D5AQDaqExW/5JdJa1egm5NgUi+TQENg?=
	=?us-ascii?q?WWHXjgUAQEBAQEBAX8LhDuBCwEMAXMnBIhBnwGgNQEBCAEBAQEfhlWONgWNVYh?=
	=?us-ascii?q?1AX6MLJxEAR8BAUKEBIR3AYEGAQEB?=
X-IronPort-AV: E=Sophos;i="5.20,313,1444694400"; d="scan'208,217";a="48029510"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
	by rcdn-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Nov 2015 16:37:55 +0000
Received: from XCH-RCD-018.cisco.com (xch-rcd-018.cisco.com [173.37.102.28])
	by rcdn-core-10.cisco.com (8.14.5/8.14.5) with ESMTP id tAIGbuDa016038
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 16:37:56 GMT
Received: from xch-rcd-020.cisco.com (173.37.102.30) by XCH-RCD-018.cisco.com
	(173.37.102.28) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Wed, 18 Nov 2015 10:37:55 -0600
Received: from xch-rcd-020.cisco.com ([173.37.102.30]) by
	XCH-RCD-020.cisco.com ([173.37.102.30]) with mapi id 15.00.1104.000;
	Wed, 18 Nov 2015 10:37:55 -0600
From: "Ahmed El-Madhoun (aelmadho)" <aelmadho@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Include additional python modules...
Thread-Index: AQHRIh95igqlPqDmy0i8BGibDD/8jA==
Date: Wed, 18 Nov 2015 16:37:55 +0000
Message-ID: <D272139E.197DA%aelmadho@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.8.151023
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [64.100.125.154]
MIME-Version: 1.0
Subject: Include additional python modules...
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
X-List-Received-Date: Wed, 18 Nov 2015 16:39:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D272139E197DAaelmadhociscocom_"

--_000_D272139E197DAaelmadhociscocom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am wondering if anything special needs to be done to provide additional p=
ython packages in python functions within recipes, for instance, in an imag=
e.bbclass extension, I have the following python function:

python do_write_yaml() {

    Import yaml

}

This fails indicating no such module, but when I use devshell, the os.sys.p=
ath seems to include the right path for native sysroot, and I have my "DEPE=
NDS +=3D python-pyyaml-native", however, within the python functions in the=
 recipes, it is not able to see the pyyaml package, do I need to add the pa=
th manually to os.sys.path? For instance, how is "bb" and "oe" are always i=
ncluded in the PATH, and how do we make other python packages available in =
the path for extending existing functionality through python modules?

Any help is greatly appreciated.

Thanks,
Ahmed

--_000_D272139E197DAaelmadhociscocom_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <F753460E4A4FC942A258C2428290B20C@emea.cisco.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; color: rgb(0, 0, 0); font-size: 14px; font-fami=
ly: Calibri, sans-serif;">
<div>Hi All,</div>
<div><br>
</div>
<div>I am wondering if anything special needs to be done to provide additio=
nal python packages in python functions within recipes, for instance, in an=
 image.bbclass extension, I have the following python function:</div>
<div><br>
</div>
<div>
<div>python do_write_yaml() {</div>
<div><br>
</div>
<div>&nbsp; &nbsp; Import yaml</div>
<div><br>
</div>
<div>}</div>
</div>
<div><br>
</div>
<div>This fails indicating no such module, but when I use devshell, the os.=
sys.path seems to include the right path for native sysroot, and I have my =
&#8220;DEPENDS &#43;=3D python-pyyaml-native&#8221;, however, within the py=
thon functions in the recipes, it is not able to see
 the pyyaml package, do I need to add the path manually to os.sys.path? For=
 instance, how is &#8220;bb&#8221; and &#8220;oe&#8221; are always included=
 in the PATH, and how do we make other python packages available in the pat=
h for extending existing functionality through python modules?</div>
<div><br>
</div>
<div>Any help is greatly appreciated.</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Ahmed</div>
</body>
</html>

--_000_D272139E197DAaelmadhociscocom_--
