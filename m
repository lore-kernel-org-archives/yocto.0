Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1CD7E00D6F; Tue, 26 Apr 2016 22:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_BL_SPAMCOP_NET,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.91 listed in list.dnswl.org]
	* 1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
	bl.spamcop.net
	* [Blocked - see <http://www.spamcop.net/bl.shtml?111.93.218.67>]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [111.93.218.67 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0091.outbound.protection.outlook.com [65.55.169.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39B56E00D69
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 22:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=z0ZNi1c7+4md74eqrbVmAbvCaKWUk5cn0ANPlgHX794=;
	b=gWtjzFVaQzup9JYgGR9rotfyJBxc8NQVJRzRF9jWRHOIkSAgw9Yo5krnJl4+ctkXabQCDFb61EbT8sHs59X6b6CIjISNN4GPemFr+81Sud8m8VVfji/kTWNYBkdAOqfXBbges8+xdThXJgx8EqeweABfm5O5WaUZXEmezh5YnrI=
Received: from CY1PR0701MB1600.namprd07.prod.outlook.com (10.163.20.15) by
	CY1PR0701MB1597.namprd07.prod.outlook.com (10.163.20.147) with
	Microsoft SMTP
	Server (TLS) id 15.1.477.8; Wed, 27 Apr 2016 05:53:33 +0000
Received: from CY1PR0701MB1600.namprd07.prod.outlook.com ([10.163.20.15]) by
	CY1PR0701MB1600.namprd07.prod.outlook.com ([10.163.20.15]) with mapi id
	15.01.0477.012; Wed, 27 Apr 2016 05:53:33 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding
	native build support for arm64/aarch64 in oe-rootfs.
Thread-Index: AQHRn5bTlMP1TWGpxUqB4PoRiPz5Mp+b9BAAgAFd944=
Date: Wed, 27 Apr 2016 05:53:33 +0000
Message-ID: <CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640@CY1PR0701MB1600.namprd07.prod.outlook.com>
References: <BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>,
	<CAJTo0Laus7estW8kY9vRqW5qa_0hQmVtkRs7W3YXvvoDi1ewvQ@mail.gmail.com>
In-Reply-To: <CAJTo0Laus7estW8kY9vRqW5qa_0hQmVtkRs7W3YXvvoDi1ewvQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
	header.d=none;intel.com; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [111.93.218.67]
x-ms-office365-filtering-correlation-id: bad21b19-6500-42a0-81b6-08d36e6044b9
x-microsoft-exchange-diagnostics: 1; CY1PR0701MB1597;
	5:3J9LFvsyY4I8DdT1jWS+zI0QXFLek/i+jBxFF/qxTTzCQSULxSDlpcEeSMVueT4i6N2oB0msRBeX3aaOJIr8RGoyWsPh+hQ/8hC5BrI/xQjj23LYRDqqm+BxJEaTynMQrHHlpEGQ6gs8xqDvN3SvwQ==;
	24:D2VSRHhMXnN+xdA0ShWmQlmFeQO36gQy0Q4LgWa7G8kxbnwSc0hxPlMKoXi4iXTjl6coDk2ncgwTjg/68lKcNOeGRISEusQZ2XEsXZjsztk=;
	7:8T75lmMnY+2+wAwLX3TJwdMIPxRwloa8aA7msLbriT5LXeqXdDVfzarktZ3Ajfs0ZTsjVJ6GSdl8ZmTgVhznh4crozjF933HiejIF6HHzrfYMDaDE+dIJw+fMhREkD23Q46B5m497pQw+yTHzHm6PuzOhIsqbyBB/cJ1dTqEB30PMcyChjnfVJVba3GqOzF5
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0701MB1597;
x-microsoft-antispam-prvs: <CY1PR0701MB15975E040F7D6C9A06B8A357E1640@CY1PR0701MB1597.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0701MB1597; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0701MB1597; 
x-forefront-prvs: 0925081676
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(377454003)(24454002)(2950100001)(5008740100001)(3846002)(50986999)(4326007)(66066001)(11100500001)(54356999)(2900100001)(76176999)(189998001)(2906002)(81166005)(19625215002)(33656002)(74316001)(76576001)(19580405001)(586003)(19580395003)(77096005)(16236675004)(3660700001)(19627405001)(5003600100002)(1220700001)(1096002)(86362001)(5002640100001)(110136002)(106116001)(99286002)(10400500002)(92566002)(122556002)(102836003)(87936001)(9686002)(3280700002)(6116002)(230783001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0701MB1597;
	H:CY1PR0701MB1600.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2016 05:53:33.6264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0701MB1597
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding native build support for arm64/aarch64 in oe-rootfs.
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
X-List-Received-Date: Wed, 27 Apr 2016 05:53:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640CY1PR0701MB1600_"

--_000_CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640CY1PR0701MB1600_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It worked, thanks!!


But I couldnt find support to include multilibs say for 32bit and 64bit gcc=
.

There is a MULTILIB macro but I am not sure how to use it?

I think multilib recipes (bbfiles) are required, how to get them?



Regards,
Manish Jaggi
________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Tuesday, April 26, 2016 2:27:12 PM
To: Jaggi, Manish
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding na=
tive build support for arm64/aarch64 in oe-rootfs.


On 26 April 2016 at 09:37, Jaggi, Manish <Manish.Jaggi@caviumnetworks.com<m=
ailto:Manish.Jaggi@caviumnetworks.com>> wrote:
IMAGE_INSTALL_append =3D "gcc"
IMAGE_INSTALL_append +=3D " glibc"
IMAGE_INSTALL_append +=3D " libgcc"
IMAGE_INSTALL_append +=3D " binutils"
IMAGE_INSTALL_append +=3D " gccmakedep"

You left out the development headers and libraries required to actually lin=
k.

IMAGE_FEATURES is a more efficient way of doing this.  EXTRA_IMAGE_FEATURES=
 +=3D "tools-sdk" will add gcc/cpp/make/etc, and "dev-pkgs" will ensure tha=
t all of the -dev packages are installed on your image, so you can link aga=
inst anything you've installed.

Ross

--_000_CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640CY1PR0701MB1600_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Candara,Sans-Serif;">
<p>It worked, thanks!!</p>
<p><br>
</p>
<p>But I couldnt find support to include multilibs say for 32bit and 64bit =
gcc.</p>
<p>There is a MULTILIB macro but I am not sure how to use it?</p>
<p>I think multilib&nbsp;recipes (bbfiles) are required, how to get them?</=
p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<font face=3D"Cordia New, sans-serif" size=3D"2">Regards,</font>
<div><font face=3D"Cordia New, sans-serif" size=3D"2">Manish Jaggi</font></=
div>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Tuesday, April 26, 2016 2:27:12 PM<br>
<b>To:</b> Jaggi, Manish<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] aarch64-oe-linux/bin/ld: cannot find -lgcc . Ad=
ding native build support for arm64/aarch64 in oe-rootfs.</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 26 April 2016 at 09:37, Jaggi, Manish <span d=
ir=3D"ltr">
&lt;<a href=3D"mailto:Manish.Jaggi@caviumnetworks.com" target=3D"_blank">Ma=
nish.Jaggi@caviumnetworks.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>IMAGE_INSTALL_append =3D &quot;gcc&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; glibc&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; libgcc&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; binutils&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; gccmakedep&quot;</div>
</blockquote>
</div>
<br>
You left out the development headers and libraries required to actually lin=
k.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">IMAGE_FEATURES is a more efficient way of doing =
this.&nbsp; EXTRA_IMAGE_FEATURES &#43;=3D &quot;tools-sdk&quot; will add gc=
c/cpp/make/etc, and &quot;dev-pkgs&quot; will ensure that all of the -dev p=
ackages are installed on your image, so you can link against anything
 you've installed.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0701MB160009A0C1EDFF2E34BEF4E4E1640CY1PR0701MB1600_--
