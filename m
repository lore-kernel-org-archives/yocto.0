Return-Path: <michael.blaettler@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF8FE00B46; Tue, 29 Mar 2016 03:52:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0683]
X-Greylist: delayed 222 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Mar 2016 03:52:06 PDT
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6150AE00AE4
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 03:52:06 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id u2TAmNiJ032196
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 12:48:23 +0200
Received: from DEFTHW99ERKMSX.ww902.siemens.net
	(defthw99erkmsx.ww902.siemens.net [139.22.70.147])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTPS id u2TAmNmG004811
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 12:48:23 +0200
Received: from DENBGAT9ERPMSX.ww902.siemens.net (139.22.70.194) by
	DEFTHW99ERKMSX.ww902.siemens.net (139.22.70.147) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Tue, 29 Mar 2016 12:48:23 +0200
Received: from DEFTHW99EH2MSX.ww902.siemens.net ([169.254.12.131]) by
	DENBGAT9ERPMSX.ww902.siemens.net ([139.22.70.194]) with mapi id
	14.03.0279.002; Tue, 29 Mar 2016 12:48:22 +0200
From: "Blaettler, Michael" <michael.blaettler@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-java] Use openjdk-8 as javac and java VM
Thread-Index: AdGJqINmEKQhsw1VSMSm2SVMATGe3Q==
Date: Tue, 29 Mar 2016 10:48:22 +0000
Message-ID: <347AAC56F29ACA4EA31B39C2109A6FE702EA4441@DEFTHW99EH2MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.17]
MIME-Version: 1.0
Subject: [meta-java] Use openjdk-8 as javac and java VM
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
X-List-Received-Date: Tue, 29 Mar 2016 10:52:14 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_347AAC56F29ACA4EA31B39C2109A6FE702EA4441DEFTHW99EH2MSXw_"

--_000_347AAC56F29ACA4EA31B39C2109A6FE702EA4441DEFTHW99EH2MSXw_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all

I am currently struggling with selecting the Java virtual machine and Java =
compiler. I'd like to use the Java VM and Java Compiler provided by openjdk=
-8-native in the meta-java layer.
It was possible to build openjdk-8-native without any problems but after so=
urcing the environment-script the javac command points to the compiler inst=
alled by ecj-bootstrap-native and the java command points to the VM install=
ed by cacao-native.
Afterwards I tried to add openjdk-8 as a provider for "virtual/javac-native=
" and "virtual/java-native" but then the image isn't buildable due to recur=
sive inclusions.

How can I select the java vm and java compiler from openjdk-8 as my default=
 compiler/VM?
Can anybody assist me?


Thanks in advance

Michael


--_000_347AAC56F29ACA4EA31B39C2109A6FE702EA4441DEFTHW99EH2MSXw_
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
<div>Hi all</div>
<div>&nbsp;</div>
<div>I am currently struggling with selecting the Java virtual machine and =
Java compiler. I&#8217;d like to use the Java VM and Java Compiler provided=
 by openjdk-8-native in the meta-java layer.</div>
<div>It was possible to build openjdk-8-native without any problems but aft=
er sourcing the environment-script the javac command points to the compiler=
 installed by ecj-bootstrap-native and the java command points to the VM in=
stalled by cacao-native.</div>
<div>Afterwards I tried to add openjdk-8 as a provider for &#8220;virtual/j=
avac-native&#8221; and &#8220;virtual/java-native&#8221; but then the image=
 isn&#8217;t buildable due to recursive inclusions.</div>
<div>&nbsp;</div>
<div>How can I select the java vm and java compiler from openjdk-8 as my de=
fault compiler/VM?</div>
<div>Can anybody assist me?</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks in advance</div>
<div>&nbsp;</div>
<div>Michael </div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_347AAC56F29ACA4EA31B39C2109A6FE702EA4441DEFTHW99EH2MSXw_--
