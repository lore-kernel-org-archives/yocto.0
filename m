Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33B70E00CB4; Thu, 14 Jul 2016 06:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0051.outbound.protection.outlook.com [104.47.38.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC02E00CA5
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 06:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=WYuFTrC35mf/5o5n3PT5GNC2UR0Bdo8pJW7Imbv9Wmc=;
	b=GjIX9jmE+4MeczEDt99oKohXYeC/VCyIxtDWbF9GeVy76TPCbryw7IX+jOZANj88JpT1WVPTMhZ839idBx1rrr+ui/yacX3loCldNSv6K7MkiLvHVZu7RJqsW6nPqEDC3uFe944ez3Gr2hJETvAS3cQxdeIPfT8Uc819Ynh5h5E=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (TLS) id 15.1.539.14; Thu, 14 Jul 2016 13:06:51 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0534.023; Thu, 14 Jul 2016 13:06:50 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "Maxin B. John" <maxin.john@intel.com>
Thread-Topic: [yocto] image-vmdk with genericx86
Thread-Index: AQHR3PORhGVbgABKl0GCaRhP5tboYaAWeUMAgAFsjQg=
Date: Thu, 14 Jul 2016 13:06:50 +0000
Message-ID: <CY1PR0101MB1594D50A022FF0DB174D3D56D7320@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15949FCDF452F57DF16C5374D7310@CY1PR0101MB1594.prod.exchangelabs.com>,
	<20160713151652.GA6070@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20160713151652.GA6070@mbabyjoh-desk.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 56d77eef-4d3f-4a6c-b3ca-08d3abe7b86b
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	6:wfvFqlrPejvwyoRjLgtjQyrSxRjLGq9v0vZSQ7OGWOHYSzEiBcK4uUVwrRbRDEO4b43TiqyzbFgwWoVHAAbleVphu7I3zvp2SETc5mbkrAEFdXmV7b9QGan7+y+GgpMFc1b7gQU4JK4VQ1QEIcI7qXmfZQxNRSMgm2gvUgUe7XGmXktCPkZoA1cMgG4tbtL6jZjVZBeS/R8g6Wxh8Z6SrR1eu90eCJidBPA9awFqAZbT+nqT3uYeCZCzxObnexCKb429J+mxaTXgKveo0Zoyc+cW2Hnm46oN4pF4IV6KDEw=;
	5:3kGNR9dX5C2shmtH4icH/IuoGzuBk/wjGZD1DQdVfj7vzi4ximYDLMO9knFAfELGq7BAEq1MF7TxV8kcKN1IYhD26kz1uoPafBIHAxw6UNU7AGzRdQuOWYODACdENhY+ak7h7R8cOszSSOwAauuiKg==;
	24:M6xdH/cfy/hBJj+rybZcNohyDP8rhInVKe1PxlPRHJMIQT0701bPSOwltZ/nBeoO+7mw/XVvgrB7JdnsrSjN5Xn8PFUXPmQ9Wj0qV4zM3CQ=;
	7:eGdHluWqFYG/uzg4gzQdKny2FPtjYR68QLrFKkaauS325vTsG9j6LMyM4yljCL4RKxJKoYhHfAdjf/1Z+PqV0RzlFlL5BJwQCngEKH48xyHT1p5Cy2UZ+Tzt/HKeYq3jAoxlwLeNQfET72QqOT5320K4TE3FuiXw2vcvfELXvWpZilroBOSsJ7lPM6uTSOCK3UOFimQw/PTUzBe1Z+vj5FWBM9tqb8JVQ1jWYvXVpUozn/mflEaTvNsYATSNwikh
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1596;
x-microsoft-antispam-prvs: <CY1PR0101MB1596DD8FCCFEB4228F77E90FD7320@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 00032065B2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(52314003)(24454002)(377454003)(199003)(189002)(50986999)(3280700002)(19625215002)(16236675004)(3660700001)(33656002)(19580405001)(19580395003)(76176999)(101416001)(54356999)(86362001)(87936001)(10400500002)(3900700001)(122556002)(66066001)(4326007)(2906002)(8936002)(8676002)(81156014)(81166006)(74316002)(102836003)(6116002)(586003)(77096005)(3846002)(2950100001)(2900100001)(5002640100001)(106356001)(7736002)(7696003)(7846002)(5003600100003)(106116001)(19627405001)(105586002)(9686002)(68736007)(92566002)(97736004)(110136002)(189998001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2016 13:06:50.4628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: image-vmdk with genericx86
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
X-List-Received-Date: Thu, 14 Jul 2016 13:39:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594D50A022FF0DB174D3D56D7320CY1PR0101MB1594_"

--_000_CY1PR0101MB1594D50A022FF0DB174D3D56D7320CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

>IMAGE_FSTYPES +=3D "vmdk"

Thank you it worked.
(I should remember  '_append'  applied after all '=3D' assignments are done=
.)

After .hdddirect image is successfully created, I am still working on the f=
ollowing.

i) image does not boot, maybe its boot device path thing...
ii) hddimage, iso images are also generated.  I may want to disable generat=
ion of these (and leave images types that I need only), so that bitbake com=
pletes much earlier.
iii) same can be sade to do_populatesdk it seems to run default.

________________________________
From: Maxin B. John <maxin.john@intel.com>
Sent: Thursday, July 14, 2016 12:16 AM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] image-vmdk with genericx86

Hi Takashi-san,

On Wed, Jul 13, 2016 at 10:51:34AM +0000, Takashi Matsuzawa wrote:
>Hello, Yocto.
>
>Should it be possible to simply change image class of genericx86 from xxxx=
.hddimg to xxxx.hdddirect?
>
>I have been successfully building genericx86 image (that is image-live.bbc=
lass based), and now trying to build it with directdisk (xxxx.hdddirect).
>
>I thought it would be simpler to use pre-existing imageclass, so I tried f=
ollowing after finding image-vmdk.bbclass inherits boot-directdisk.
>
>Currently my build is based on Yocto 1.8 (fido).
>
>
>(in my local.conf)
>
>IMAGE_FSTYPES_remove =3D " live"
>IMAGE_FSTYPES_append =3D " vmdk"

Instead of the above two, could you use the following line in local.conf an=
d build again ?

IMAGE_FSTYPES +=3D "vmdk"

>But this caused following error.
>
>I am currently looking into the class files to find the cause of error, bu=
t anyway, this should work?
>
>
>>ERROR: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'vmdk' - possibly inv=
alid type name or missing support class
>> ERROR: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>>/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/genericx86-poky-linux/core-image-min=
imal-initramfs/1.0-r0/temp/log.do_rootfs.20432
>> ERROR: Task 229
>>(/mnt/ssd2/yocto/dev/wk/x86/wk3/build-root/sources/poky/meta/recipes-core=
/images/core-image-minimal-initramfs.bb, do_rootfs) failed with exit code '=
1'


Best Regards,
Maxin

--_000_CY1PR0101MB1594D50A022FF0DB174D3D56D7320CY1PR0101MB1594_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello</p>
<p><br style=3D"color: rgb(33, 33, 33); font-size: 13.3333px;">
<span style=3D"color: rgb(33, 33, 33); font-size: 13.3333px;">&gt;IMAGE_FST=
YPES &#43;=3D &quot;vmdk&quot;</span><br>
</p>
<div><br>
</div>
Thank you it worked.
<div>(I should remember &nbsp;'_append' &nbsp;applied after all '=3D' assig=
nments are done.)</div>
<div><br>
</div>
<div>After .hdddirect image is successfully&nbsp;created,&nbsp;I am still w=
orking on the following.</div>
<div><br>
</div>
<div>i) image does not boot, maybe its boot device path thing...<br>
<div>ii) hddimage, iso images are also generated. &nbsp;I may want to disab=
le generation of these (and leave images types that I need only), so that b=
itbake completes much earlier.</div>
<div>iii) same can be sade to do_populatesdk it seems to run default.&nbsp;=
<br>
<div>
<div><br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Maxin B. John &lt;m=
axin.john@intel.com&gt;<br>
<b>Sent:</b> Thursday, July 14, 2016 12:16 AM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] image-vmdk with genericx86</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Takashi-san,<br>
<br>
On Wed, Jul 13, 2016 at 10:51:34AM &#43;0000, Takashi Matsuzawa wrote:<br>
&gt;Hello, Yocto.<br>
&gt;<br>
&gt;Should it be possible to simply change image class of genericx86 from x=
xxx.hddimg to xxxx.hdddirect?<br>
&gt;<br>
&gt;I have been successfully building genericx86 image (that is image-live.=
bbclass based), and now trying to build it with directdisk (xxxx.hdddirect)=
.<br>
&gt;<br>
&gt;I thought it would be simpler to use pre-existing imageclass, so I trie=
d following after finding image-vmdk.bbclass inherits boot-directdisk.<br>
&gt;<br>
&gt;Currently my build is based on Yocto 1.8 (fido).<br>
&gt;<br>
&gt;<br>
&gt;(in my local.conf)<br>
&gt;<br>
&gt;IMAGE_FSTYPES_remove =3D &quot; live&quot;<br>
&gt;IMAGE_FSTYPES_append =3D &quot; vmdk&quot;<br>
<br>
Instead of the above two, could you use the following line in local.conf an=
d build again ?<br>
<br>
IMAGE_FSTYPES &#43;=3D &quot;vmdk&quot;<br>
<br>
&gt;But this caused following error.<br>
&gt;<br>
&gt;I am currently looking into the class files to find the cause of error,=
 but anyway, this should work?<br>
&gt;<br>
&gt;<br>
&gt;&gt;ERROR: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'vmdk' - possib=
ly invalid type name or missing support class<br>
&gt;&gt; ERROR: Function failed: do_rootfs<br>
&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt;/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/genericx86-poky-linux/core-ima=
ge-minimal-initramfs/1.0-r0/temp/log.do_rootfs.20432<br>
&gt;&gt; ERROR: Task 229<br>
&gt;&gt;(/mnt/ssd2/yocto/dev/wk/x86/wk3/build-root/sources/poky/meta/recipe=
s-core/images/core-image-minimal-initramfs.bb, do_rootfs) failed with exit =
code '1'<br>
<br>
<br>
Best Regards,<br>
Maxin<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0101MB1594D50A022FF0DB174D3D56D7320CY1PR0101MB1594_--
