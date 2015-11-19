Return-Path: <aelmadho@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D13E007C9; Wed, 18 Nov 2015 16:18:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.75 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from rcdn-iport-4.cisco.com (rcdn-iport-4.cisco.com [173.37.86.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF7BE005BB
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 16:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=5186; q=dns/txt; s=iport;
	t=1447892324; x=1449101924;
	h=from:to:subject:date:message-id:mime-version;
	bh=NWPSxx/RqQxBwIxCFMSaILPr4+zt4oFMcqyZvw8QQqU=;
	b=geggNMhp22oaNrdcP83yr83xmONnUHUb+YgFl9qtcI0wt3E6Mj08P2Z/
	NZr56JIpnJS4EwdT3Mx5s/Gz6xsvjMgx6o7cy4K2nuCi1ij1fOwBJlWHt
	5l4Tr+wo2VTIb+UkyHVD59beTuEIrQq/rkqzuuDue1utIT2pqbY6eK+lW c=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AOAgAJFU1W/5pdJa1egm5NgTQOBr5iA?=
	=?us-ascii?q?Q2BZYYPgU04FAEBAQEBAQGBCoQ0AQIEgQsBCAQNAwECKDkUCQoEARKILr83AQE?=
	=?us-ascii?q?BBwEBAQEBAR2GVYR9hHuEPgWNVYh1AY0qnEQBHwEBQoQEcoQZgQcBAQE?=
X-IronPort-AV: E=Sophos;i="5.20,315,1444694400"; d="scan'208,217";a="48063755"
Received: from rcdn-core-3.cisco.com ([173.37.93.154])
	by rcdn-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Nov 2015 00:18:41 +0000
Received: from XCH-RCD-020.cisco.com (xch-rcd-020.cisco.com [173.37.102.30])
	by rcdn-core-3.cisco.com (8.14.5/8.14.5) with ESMTP id tAJ0If9q030349
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 00:18:41 GMT
Received: from xch-rcd-020.cisco.com (173.37.102.30) by XCH-RCD-020.cisco.com
	(173.37.102.30) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Wed, 18 Nov 2015 18:18:40 -0600
Received: from xch-rcd-020.cisco.com ([173.37.102.30]) by
	XCH-RCD-020.cisco.com ([173.37.102.30]) with mapi id 15.00.1104.000;
	Wed, 18 Nov 2015 18:18:40 -0600
From: "Ahmed El-Madhoun (aelmadho)" <aelmadho@cisco.com>
To: "Ahmed El-Madhoun (aelmadho)" <aelmadho@cisco.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Include additional python modules...
Thread-Index: AQHRIl/Xj91NicQ5aEqReBmgbSMtZg==
Date: Thu, 19 Nov 2015 00:18:40 +0000
Message-ID: <D2727F4D.198B6%aelmadho@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.8.151023
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.82.240.186]
MIME-Version: 1.0
Subject: Re: Include additional python modules...
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
X-List-Received-Date: Thu, 19 Nov 2015 00:18:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D2727F4D198B6aelmadhociscocom_"

--_000_D2727F4D198B6aelmadhociscocom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Despite inheriting python native in my bbclass, I still could not see the p=
ython-pyyaml-native libraries/package, so I had to do this:


   import os

    os.sys.path.append(os.path.join(d.getVar('STAGING_DIR_NATIVE', True),
        d.getVar('PYTHON_SITEPACKAGES_DIR', True)[1::]))

   import yaml



From: <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org=
>> on behalf of aelmadho <aelmadho@cisco.com<mailto:aelmadho@cisco.com>>
Date: Wednesday, November 18, 2015 at 11:37 AM
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Include additional python modules...

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

--_000_D2727F4D198B6aelmadhociscocom_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <F0FBF7B7A50D184886CB512177EB508B@emea.cisco.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; color: rgb(0, 0, 0); font-size: 14px; font-fami=
ly: Calibri, sans-serif;">
<div>Despite inheriting python native in my bbclass, I still could not see =
the python-pyyaml-native libraries/package, so I had to do this:</div>
<div><br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp;import os</div>
<div><br>
</div>
<div>
<div>&nbsp; &nbsp; os.sys.path.append(os.path.join(d.getVar('STAGING_DIR_NA=
TIVE', True),</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; d.getVar('PYTHON_SITEPACKAGES_DIR', True)[=
1::]))</div>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp;import yaml</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<span id=3D"OLK_SRC_BODY_SECTION">
<div style=3D"font-family:Calibri; font-size:11pt; text-align:left; color:b=
lack; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; PADDING-BOTTOM:=
 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BORDER-TOP: #b5c4df 1pt solid;=
 BORDER-RIGHT: medium none; PADDING-TOP: 3pt">
<span style=3D"font-weight:bold">From: </span>&lt;<a href=3D"mailto:yocto-b=
ounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>&gt; on behalf o=
f aelmadho &lt;<a href=3D"mailto:aelmadho@cisco.com">aelmadho@cisco.com</a>=
&gt;<br>
<span style=3D"font-weight:bold">Date: </span>Wednesday, November 18, 2015 =
at 11:37 AM<br>
<span style=3D"font-weight:bold">To: </span>&quot;<a href=3D"mailto:yocto@y=
octoproject.org">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yoc=
to@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>
<span style=3D"font-weight:bold">Subject: </span>[yocto] Include additional=
 python modules...<br>
</div>
<div><br>
</div>
<div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line=
-break: after-white-space; color: rgb(0, 0, 0); font-size: 14px; font-famil=
y: Calibri, sans-serif;">
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
</div>
</div>
</span>
</body>
</html>

--_000_D2727F4D198B6aelmadhociscocom_--
