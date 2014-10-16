Return-Path: <henry.bruce@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6778E00799; Wed, 15 Oct 2014 17:30:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C308E006EF
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 17:30:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Oct 2014 17:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,728,1406617200"; 
	d="scan'208,217";a="619539664"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga002.jf.intel.com with ESMTP; 15 Oct 2014 17:30:08 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 15 Oct 2014 17:30:07 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.12]) by
	ORSMSX114.amr.corp.intel.com ([169.254.8.51]) with mapi id
	14.03.0195.001; Wed, 15 Oct 2014 17:30:07 -0700
From: "Bruce, Henry" <henry.bruce@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Opencv Java binding not building
Thread-Index: Ac/o2FD3t8N87fBTT4CcAoBdm4+Qvw==
Date: Thu, 16 Oct 2014 00:30:06 +0000
Message-ID: <F81DC1078564A34BB4DA30CAE03814D1275FC06F@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Opencv Java binding not building
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
X-List-Received-Date: Thu, 16 Oct 2014 00:30:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F81DC1078564A34BB4DA30CAE03814D1275FC06FORSMSX104amrcor_"

--_000_F81DC1078564A34BB4DA30CAE03814D1275FC06FORSMSX104amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm trying to figure out why opencv 2.4.8 (daisy branch) is not building it=
s Java binding (jar file and matching JNI so). I can see from the do_config=
ure log that the Java tools are not being detected (message is 'Could NOT f=
ind JNI') which explains why it is not being built. However if I run 'bitba=
ke opencv -c devshell' and then run cmake manually in the devshell the Java=
 tools are detected and binding is built. I can't see anything in the recip=
e that would disable Java. Any ideas on why devshell is behaving correctly =
but image build is not? Note that openjdk-7 is part of the image build and =
it works.

Thanks,

Henry



--_000_F81DC1078564A34BB4DA30CAE03814D1275FC06FORSMSX104amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>All,</div>
<div>&nbsp;</div>
<div>I&#8217;m trying to figure out why opencv 2.4.8 (daisy branch) is not =
building its Java binding (jar file and matching JNI so). I can see from th=
e do_configure log that the Java tools are not being detected (message is &=
#8216;Could NOT find JNI&#8217;) which explains why
it is not being built. However if I run &#8216;bitbake opencv &#8211;c devs=
hell&#8217; and then run cmake manually in the devshell the Java tools are =
detected and binding is built. I can&#8217;t see anything in the recipe tha=
t would disable Java. Any ideas on why devshell is behaving
correctly but image build is not? Note that openjdk-7 is part of the image =
build and it works.</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>&nbsp;</div>
<div>Henry</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_F81DC1078564A34BB4DA30CAE03814D1275FC06FORSMSX104amrcor_--
