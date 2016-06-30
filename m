Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2AA2E00E6E; Thu, 30 Jun 2016 02:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0105.outbound.protection.outlook.com [157.56.112.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB6AAE00D53
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 02:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=6zGy99yZBOriK7efxFeRMCsrrV+Hbn5SPEUH93MBn/4=;
	b=CRTI6c/jk3Tl8fZrXg2Lrngp8bgsWPZyI9RG3xOjrT89XO8SWVX36TmeuoyCs85mK3x7N8KVbUNmZtpK41b4sSGBiOXxp5MTt8r/YVsNu1BW2kopsVQhr4KfEe0jnTrW6tHqi/VZ6GWonpxurvC0k09jQQiftx2bzCUbHfb/Fvw=
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com (10.164.41.11) by
	DB5PR06MB1575.eurprd06.prod.outlook.com (10.164.41.13) with Microsoft
	SMTP Server (TLS) id 15.1.528.8; Thu, 30 Jun 2016 09:40:19 +0000
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) by
	DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) with mapi id
	15.01.0534.010; Thu, 30 Jun 2016 09:40:18 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: Chris Z. <winotu.email@gmail.com>
Thread-Topic: [yocto] Package build files not getting copied to sysroots
	directory
Thread-Index: AQHR0qPFx36SXbSwl0SHZWZBztB2eqABt2yAgAAJBks=
Date: Thu, 30 Jun 2016 09:40:18 +0000
Message-ID: <DB5PR06MB157388E96AD38C53FEB34989CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
References: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>,
	<CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
In-Reply-To: <CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [25.164.34.4]
x-ms-office365-filtering-correlation-id: 65e860d5-0641-4622-7477-08d3a0ca8c79
x-microsoft-exchange-diagnostics: 1; DB5PR06MB1575;
	6:W9VLvTiRpvB0c+6LCXMc90YixGbmZHI9vkmGzzch9DeD8RphrmE7k00sIGiB/24uj2fS6sZ/Tyyas8fOvPmCRWx3UOwrwwofJx8hl4cmUQfU5pqiOFBshMROM0piixXtxfo3H8v/72ufo+Zk1eQp9MrHW0FALzBK5fQjwCBL4gBrVlQ+ws1tIPTPl5v2h0O2FsQm3qs6EWvQYdNVjsOA3cuC00YsgIxXaphexEwsIKVHl0I8zjHfzVqwI+eO1Qj3k0eZ0FlOrm96vFAqGfI5gjLqgpJs44rpNXX1ILl0b7hlJRc5aly9dZunqaoGJtFy0RbVByL9BQ937P3dx0085w==;
	5:f8FvB/tpGODwK5JulZnTfEiUo6hmC06lxphSZrz6aQCNWZtQf9qjK+U4dnhAW97eBNbLLwVxkk6RFxn/HIxJROdOyuxcB4aaHA6tRgi40ihcvMlvzmOv5tDF2a7RMwVwugSuwSU5rtOX9HLIDv0ZPA==;
	24:l7YPkaH2N/o7duUu2XYMgPCHIvJfCoVIOZs0udlzX32I8Z5gBkOi0WYpmg94EWwpEVQK45HwNMfPt1GOp1MccsiI/nj97b5IZVPKFK2+d7o=;
	7:ilf/+IO7ZpAv8uUVpIrQfjUo7t7IF2frqLt1J54AMk1Rt3iVuACZO4FuCWClJysipcwXmqZxQeufQSiJxIrz/h+pm3QOmnT81W6bKgt6ojd94gtm5eCodg7gRYf/Dk02WwXuGhCyQHQ6yBae8GQN8FJ+bjqn/04m835pj/oHXCSiKbPydladxX9hpwzYWwUo/Bq/E8ab5lbLLfpxsy/BxD+IwL63jGHpPeDBYu3pWXW0lTA9qsMW6MM5JzU6qi0S
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR06MB1575;
x-microsoft-antispam-prvs: <DB5PR06MB157505D6E051C620CF15B63FCF240@DB5PR06MB1575.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(208512329853888);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6055026);
	SRVR:DB5PR06MB1575; BCL:0; PCL:0; RULEID:; SRVR:DB5PR06MB1575; 
x-forefront-prvs: 0989A7979C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(57704003)(24454002)(377454003)(189002)(199003)(3280700002)(586003)(3660700001)(3900700001)(105586002)(122556002)(106116001)(9686002)(106356001)(76576001)(19625215002)(101416001)(92566002)(7696003)(86362001)(7846002)(7736002)(66066001)(19617315012)(5003600100003)(87936001)(74316001)(68736007)(81156014)(19580405001)(81166006)(19580395003)(4326007)(10400500002)(189998001)(8676002)(2900100001)(2950100001)(15975445007)(8936002)(102836003)(19627405001)(6116002)(3846002)(77096005)(54356999)(97736004)(2906002)(7906003)(50986999)(76176999)(16236675004)(33656002)(110136002)(5002640100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR06MB1575;
	H:DB5PR06MB1573.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2016 09:40:18.8899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1575
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 09:40:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR06MB157388E96AD38C53FEB34989CF240DB5PR06MB1573eurp_"

--_000_DB5PR06MB157388E96AD38C53FEB34989CF240DB5PR06MB1573eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I looked into the output log of bitbake -e dlt-daemon. I could see that the=
 baselib variable expands to lib64. For e.g FILES_SOLIBSDEV expands to /lib=
64/lib*.so.


The dlt-daemon package build directory at tmp/work/aarch64-poky-linux/dlt-d=
aemon/2.11.1-r0/image has the following build output where I couldn't see a=
ny directory named lib64. Probably this is the reason I am getting the QA w=
arning as well.


.
|-- etc
|   |-- dlt.conf
|   |-- dlt-dbus.conf
|   `-- dlt-system.conf
|-- lib
|   `-- systemd
|       `-- system
`-- usr
    |-- bin
    |   |-- dlt-adaptor-stdin
    |   |-- dlt-adaptor-udp
    |   |-- dlt-control
    |   |-- dlt-convert
    |   |-- dlt-daemon
    |   |-- dlt-dbus
    |   |-- dlt-example-filetransfer
    |   |-- dlt-example-user
    |   |-- dlt-example-user-common-api
    |   |-- dlt-example-user-func
    |   |-- dlt-receive
    |   `-- dlt-system
    |-- include
    |   `-- dlt
    |-- lib
    |   |-- libdlt.so -> libdlt.so.2
    |   |-- libdlt.so.2 -> libdlt.so.2.11.1
    |   |-- libdlt.so.2.11.1
    |   `-- pkgconfig
    `-- share
        |-- dlt-filetransfer
        `-- man



Thanks & Regards,

Hari Prasath


________________________________
From: Chris Z. <winotu.email@gmail.com>
Sent: Thursday, June 30, 2016 2:34 PM
To: Gujulan Elango, Hari Prasath (H.)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Package build files not getting copied to sysroots dir=
ectory

Hi,

Check what files are added to the package of your distribution (deb, ipk )
Variable FILES_ defines what files should be added to the packages ( -dev, =
-dbg, -doc ) which are installed in sysroot.

bitbake.conf specify default files which should be packed.

You can check bitbake -e <you_package> &> output.log , for FILES_  variable=
 and check what files are search and where.

Probably FILES_${PN} +=3D  would help. But that would be mi first try to fi=
nd root cause.

Also check temp/ log.do_   files


On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango, Hari Prasath (H.) <hgujula=
n@visteon.com<mailto:hgujulan@visteon.com>> wrote:

Hello


I am trying to integrate the meta-ivi layer into my distribution. When I am=
 trying to build the audiomanager, some dependent package do_configure() fa=
ils. It looks for some packageconfig files(.pc) file in the tmp/sysroots/<m=
achine_specifid_directory>, but this file is not there.


When I look into the dependent package build directory in tmp/work/<arch-sp=
ecific_dir>/<package_name>/, I am able to see the files in the build output=
(libraries and .pc files). Any reason why it is not getting copied into tmp=
/sysroots/ directory ? Do I need specify it somewhere explicitly do get thi=
s done ?


Thanks & Regards,

Hari Prasath

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_DB5PR06MB157388E96AD38C53FEB34989CF240DB5PR06MB1573eurp_
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
<p>I looked into the output log of bitbake -e dlt-daemon. I could see that =
the baselib variable expands to lib64. For e.g
<span>FILES_SOLIBSDEV</span> expands to <span>/lib64/lib*.so</span>.</p>
<p><br>
</p>
<p>The dlt-daemon package build directory at <span>tmp/work/aarch64-poky-li=
nux/dlt-daemon/2.11.1-r0/image has the following build output</span> where =
I couldn't see any directory named lib64. Probably this is the reason I am =
getting the QA warning as well.</p>
<p><br>
</p>
<p></p>
<div><span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">.</spa=
n><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|-- etc</sp=
an><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|&nbsp;&nbs=
p; |-- dlt.conf</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|&nbsp;&nbs=
p; |-- dlt-dbus.conf</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|&nbsp;&nbs=
p; `-- dlt-system.conf</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|-- lib</sp=
an><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|&nbsp;&nbs=
p; `-- systemd</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">|&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; `-- system</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">`-- usr</sp=
an><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |-- bin</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-adaptor-stdin</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-adaptor-udp</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-control</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-convert</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-daemon</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-dbus</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-example-filetransfer</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-example-user</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-example-user-common-api</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-example-user-func</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- dlt-receive</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; `-- dlt-system</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |-- include</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; `-- dlt</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |-- lib</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- libdlt.so -&gt; libdlt.so.2</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- libdlt.so.2 -&gt; libdlt.so.2.11.1</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; |-- libdlt.so.2.11.1</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp; `-- pkgconfig</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp; `-- share</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |-- dlt-filetransfer</span><br>
<span style=3D"font-family: &quot;Cordia New&quot;,sans-serif;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `-- man</span><br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Chris Z. &lt;winotu=
.email@gmail.com&gt;<br>
<b>Sent:</b> Thursday, June 30, 2016 2:34 PM<br>
<b>To:</b> Gujulan Elango, Hari Prasath (H.)<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Package build files not getting copied to sysro=
ots directory</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div>
<div>
<div>
<div>
<div>Hi,<br>
<br>
</div>
Check what files are added to the package of your distribution (deb, ipk ) =
<br>
</div>
Variable FILES_ defines what files should be added to the packages ( -dev, =
-dbg, -doc ) which are installed in sysroot.<br>
<br>
</div>
bitbake.conf specify default files which should be packed.<br>
<br>
</div>
You can check bitbake -e &lt;you_package&gt; &amp;&gt; output.log , for FIL=
ES_&nbsp; variable and check what files are search and where.<br>
<br>
</div>
Probably FILES_${PN} &#43;=3D&nbsp; would help. But that would be mi first =
try to find root cause.<br>
<br>
</div>
Also check temp/ log.do_&nbsp;&nbsp; files<br>
<div>
<div>
<div>
<div><br>
</div>
</div>
</div>
</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango,=
 Hari Prasath (H.)
<span dir=3D"ltr">&lt;<a href=3D"mailto:hgujulan@visteon.com" target=3D"_bl=
ank">hgujulan@visteon.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-size:12pt; color:#000000; background-color:#ffffff; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello</p>
<p><br>
</p>
<p>I am trying to integrate the meta-ivi layer into my distribution. When I=
 am trying to build the audiomanager, some dependent package do_configure()=
 fails. It looks for some packageconfig files(.pc) file in the tmp/sysroots=
/&lt;machine_specifid_directory&gt;, but
 this file is not there.</p>
<p><br>
</p>
<p>When I look into the dependent package build directory in tmp/work/&lt;a=
rch-specific_dir&gt;/&lt;package_name&gt;/, I am able to see the files in t=
he build output(libraries and .pc files). Any reason why it is not getting =
copied into tmp/sysroots/ directory ? Do I need
 specify it somewhere explicitly do get this done ?<br>
</p>
<p><br>
</p>
<div>Thanks &amp; Regards,
<div style=3D"font-size:12pt; color:#000000; background-color:#ffffff; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB5PR06MB157388E96AD38C53FEB34989CF240DB5PR06MB1573eurp_--
