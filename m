Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17CCEE003E2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 15:51:06 -0700 (PDT)
X-ASG-Debug-ID: 1376952664-0499bf025c8c2e0001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id VMDDUuRxBWhZ9wJ1 for <yocto@yoctoproject.org>;
	Mon, 19 Aug 2013 15:51:04 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Mon, 19 Aug 2013 15:51:04 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Mon, 19 Aug 2013 15:51:04 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: What are _virtual providers? and other Suffixes?
X-ASG-Orig-Subj: What are _virtual providers? and other Suffixes?
Thread-Index: AQHOnS6V/to3o0BtQkmd1sK54dxWKA==
Date: Mon, 19 Aug 2013 22:51:04 +0000
Message-ID: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1376952664
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.138856
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: What are _virtual providers? and other Suffixes?
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
X-List-Received-Date: Mon, 19 Aug 2013 22:51:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_66996BFEC7A849869D47B1EF6827AD1Atasercom_"

--_000_66996BFEC7A849869D47B1EF6827AD1Atasercom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I searched the Yocto Mega Manual, but am still somewhat mystified by the su=
ffix formatting of various variable - especially virtual ones like this:


PREFERRED_PROVIDER_virtual/gettext =3D "gettext"

PREFERRED_PROVIDER_virtual/kernel_am335x-evm =3D "linux-ti-staging"

PREFERRED_PROVIDER_virtual/bootloader_am335x-evm =3D "u-boot-ti-staging"


Also, there seems to be some sort of prioritization going on with the multi=
ple levels underscore characters in places like this:


# Set the PREFERRED_PROVIDER for jpeg functionality based on the MACHINE

# architecture.  For armv7a devices libjpeg-turbo should be used to take

# advantage of the SIMD instructions.

PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"

PREFERRED_PROVIDER_jpeg_armv5te =3D "jpeg"


(all examples from the arago project in arago-prefs.inc)

Is there a succinct way of viewing these suffixes that will allow me to wra=
p my head around their various & myriad versions?

Am I right in assuming the "variable name" consists of the uppercase parse =
(regardless of number of underscores)?

Thanks,
Brad


--_000_66996BFEC7A849869D47B1EF6827AD1Atasercom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <42A0A4501068294BA38389A0BDA65A1C@taser.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
I searched the Yocto Mega Manual, but am still somewhat mystified by the su=
ffix formatting of various variable - especially virtual ones like this:
<div><br>
</div>
<div>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><!--StartFragment-->PR=
EFERRED_PROVIDER_virtual/gettext<span style=3D" color:#c0c0c0;"> </span>=3D=
<span style=3D" color:#c0c0c0;"> </span>&quot;gettext&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">PREFERRED_PROVIDER_vir=
tual/kernel_am335x-evm<span style=3D"color: rgb(192, 192, 192); "> </span>=
=3D<span style=3D"color: rgb(192, 192, 192); "> </span>&quot;linux-ti-stagi=
ng&quot;</pre>
<div>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">PREFERRED_PROVIDER_vir=
tual/bootloader_am335x-evm<span style=3D" color:#c0c0c0;"> </span>=3D<span =
style=3D" color:#c0c0c0;"> </span>&quot;u-boot-ti-staging&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br><!--EndFragment-->=
</pre>
<div>Also, there seems to be some sort of prioritization going on with the =
multiple levels underscore characters in places like this:</div>
</div>
</div>
<div><br>
</div>
<div>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><!--StartFragment--><s=
pan style=3D" color:#008000;">#</span><span style=3D" color:#c0c0c0;"> </sp=
an><span style=3D" color:#008000;">Set</span><span style=3D" color:#c0c0c0;=
"> </span><span style=3D" color:#008000;">the</span><span style=3D" color:#=
c0c0c0;"> </span><span style=3D" color:#008000;">PREFERRED_PROVIDER</span><=
span style=3D" color:#c0c0c0;"> </span><span style=3D" color:#008000;">for<=
/span><span style=3D" color:#c0c0c0;"> </span><span style=3D" color:#008000=
;">jpeg</span><span style=3D" color:#c0c0c0;"> </span><span style=3D" color=
:#008000;">functionality</span><span style=3D" color:#c0c0c0;"> </span><spa=
n style=3D" color:#008000;">based</span><span style=3D" color:#c0c0c0;"> </=
span><span style=3D" color:#008000;">on</span><span style=3D" color:#c0c0c0=
;"> </span><span style=3D" color:#008000;">the</span><span style=3D" color:=
#c0c0c0;"> </span><span style=3D" color:#008000;">MACHINE</span></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><span style=3D" color:=
#008000;">#</span><span style=3D" color:#c0c0c0;"> </span><span style=3D" c=
olor:#008000;">architecture.</span><span style=3D" color:#c0c0c0;">  </span=
><span style=3D" color:#008000;">For</span><span style=3D" color:#c0c0c0;">=
 </span><span style=3D" color:#008000;">armv7a</span><span style=3D" color:=
#c0c0c0;"> </span><span style=3D" color:#008000;">devices</span><span style=
=3D" color:#c0c0c0;"> </span><span style=3D" color:#008000;">libjpeg-turbo<=
/span><span style=3D" color:#c0c0c0;"> </span><span style=3D" color:#008000=
;">should</span><span style=3D" color:#c0c0c0;"> </span><span style=3D" col=
or:#008000;">be</span><span style=3D" color:#c0c0c0;"> </span><span style=
=3D" color:#008000;">used</span><span style=3D" color:#c0c0c0;"> </span><sp=
an style=3D" color:#008000;">to</span><span style=3D" color:#c0c0c0;"> </sp=
an><span style=3D" color:#008000;">take</span></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><span style=3D" color:=
#008000;">#</span><span style=3D" color:#c0c0c0;"> </span><span style=3D" c=
olor:#008000;">advantage</span><span style=3D" color:#c0c0c0;"> </span><spa=
n style=3D" color:#008000;">of</span><span style=3D" color:#c0c0c0;"> </spa=
n><span style=3D" color:#008000;">the</span><span style=3D" color:#c0c0c0;"=
> </span><span style=3D" color:#008000;">SIMD</span><span style=3D" color:#=
c0c0c0;"> </span><span style=3D" color:#008000;">instructions.</span></pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">PREFERRED_PROVIDER_jpe=
g<span style=3D" color:#c0c0c0;"> </span>=3D<span style=3D" color:#c0c0c0;"=
> </span>&quot;libjpeg-turbo&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; ">PREFERRED_PROVIDER_jpe=
g_armv5te<span style=3D" color:#c0c0c0;"> </span>=3D<span style=3D" color:#=
c0c0c0;"> </span>&quot;jpeg&quot;</pre>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; "><br></pre>
</div>
<div>(all examples from the arago project in arago-prefs.inc)</div>
<div><br>
</div>
<div>Is there a succinct way of viewing these suffixes that will allow me t=
o wrap my head around their various &amp; myriad versions?</div>
<div><br>
</div>
<div>Am I right in assuming the &quot;variable name&quot; consists of the u=
ppercase parse (regardless of number of underscores)?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Brad</div>
<div><br>
</div>
</body>
</html>

--_000_66996BFEC7A849869D47B1EF6827AD1Atasercom_--
