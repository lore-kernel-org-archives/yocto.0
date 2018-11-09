Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CE3FE00A0A; Fri,  9 Nov 2018 07:05:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.100.80 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0080.outbound.protection.outlook.com [104.47.100.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 660B4E00901
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 07:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=AnmQjqaLbKx+lEbMvz6MFbrxPok1zwjgfk6FkhJ+JCY=;
	b=WYj89mGDlpFdjQC8v09FGI7Dbv3HPRCj9Dg+hxcMN61fi1/J6b/HbPXDaQ47v1nFR3uyAVuwusEUIGkuGIuVYc4LK56gsGLHcD4B2Y6Aq0thihnv0YwG+aAaYNQitiUlSdzftsa/Q1HNJM3x+tZ0c9/v79D86weM3YeIJ+aKzec=
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM (52.134.148.204) by
	MA1PR01MB1036.INDPRD01.PROD.OUTLOOK.COM (10.174.60.13) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.26; Fri, 9 Nov 2018 15:05:27 +0000
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c5bc:8574:a8b7:a28d]) by
	MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c5bc:8574:a8b7:a28d%4]) with mapi id 15.20.1294.039;
	Fri, 9 Nov 2018 15:05:27 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] so how does PACKAGECONFIG_remove really work?
Thread-Index: AQHUeDV4pElhuLdu3kuRYa/axKzlQqVHfgRWgAAF2gCAAAbbbg==
Date: Fri, 9 Nov 2018 15:05:27 +0000
Message-ID: <MA1PR01MB26043832D051A6182FF772DD91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2604734A613E22FAFAA2424A91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
	<MA1PR01MB2604847AB21F2309705B5AA091C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>,
	<CAJTo0Lai9bbJeTgtwOvwB_jmNtfMGLj1PP2ywQdzee6ugNELaw@mail.gmail.com>
In-Reply-To: <CAJTo0Lai9bbJeTgtwOvwB_jmNtfMGLj1PP2ywQdzee6ugNELaw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [103.230.148.242]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB1036;
	6:7BLqrNAMTVz4OoxarUmqNKBdpKwyIdjg6AkV7a+QX8BJRqjVdA4K+LH+ILjych6cPRADm21nh1QVdnKAQIZ+6Esb1DH46qE/8423wkQzL4usIYUKU06L3LaOo1ncdjpX1GWGFktj3SQV1z74qmmCB/LNw/f9/eYWoy1ozNWt6bw/5R1jwEQJb4AptgaFZeJdDet7eRbysyQDMKxo3XFi83IpuhK6PQjYBioAL37pPeH9GJwtN/TT5jHh7QvSifzNpNrO2ZFXT9lTEfDCTV/8nxYtoM5257rpSzYBTkhyKT0kSaip9vG/ujGjGTEvG0aCqe5MM8azjN/xszhVBJbUg1vv2j+651ks4HvkxaSc61jekKE6bATxuU6yqPme3ltG7Cf603Ft9y6qXEY1ZgB9n6N/+N2n06HV0OZg8ohWOF9ZRlAIgRei7YGE9DJo4b41I3wAnIwC0zbKZLqyr/prDA==;
	5:WuUx5CJIMOqmLaLG3SmcVgJyDIHty8lGc544zYaUVxicGlwtk4DyrTgemZG692Tlsf27Ltm1WFE30PvXeo32niXyDK5NnPMexdnJ5CxA20DLcUyKhNbgDghUN5e7O3rmC6AalHy2dnCA6XRu0qOYQhLOHpmugZkvphkISwjzSbo=;
	7:CnA2JkNHjNB9txmt3RKVfaiPhKc6uDnPg/svEx+RqjahTyCQpGCXfY5efGJzdnrXSTZttzY5+uvFo4ThFpSt07OMPX5AzxRJ+ExPdRfzpUn0WsMTBdzbOtL7fmShJr7gcOt2zUzXVfkofuRCrwK8Mw==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: febfb9f9-9ead-410c-dea2-08d64654c861
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB1036; 
x-ms-traffictypediagnostic: MA1PR01MB1036:
x-microsoft-antispam-prvs: <MA1PR01MB1036F57C439357D6B4C4C8B691C60@MA1PR01MB1036.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(228905959029699)(146161314209440);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231382)(944501410)(52105095)(6055026)(148016)(149066)(150057)(6041310)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:MA1PR01MB1036; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB1036; 
x-forefront-prvs: 08512C5403
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(136003)(39860400002)(346002)(376002)(396003)(199004)(189003)(478600001)(25786009)(86362001)(316002)(26005)(97736004)(33656002)(6916009)(102836004)(6606003)(6506007)(53546011)(99286004)(14454004)(229853002)(2900100001)(5660300001)(72206003)(4326008)(106356001)(76176011)(186003)(53936002)(14444005)(7696005)(19627405001)(81166006)(81156014)(9686003)(11346002)(66066001)(105586002)(8676002)(486006)(55016002)(6116002)(2906002)(446003)(68736007)(7736002)(8936002)(3846002)(74316002)(54896002)(66574009)(476003)(6246003)(71200400001)(6436002)(71190400001)(256004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB1036;
	H:MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Rg3o/oby8fD+tOrTITLB99jaOwaOfsSAn3KtTm53JQuAxHKojkZCDovq9gEoi68f4+wmBCg3y1S0/qXipIFFApSGO6xsn7/vqZ+DTjqhDGXyLHwhf9Oi+OmEkWImImV2Uayvy2R/SWh9sAwlmevXOcHbfRTlyWlXrlIajB78VwKdHwSemwmjLUN2ckBHRevKb4ul8rwYaiDZrgLF/40cXyjQ+z8sCa/n/FQapve/jnoF6HNfdiaZNuz8XE8p6U9VYcvcc8ThtUE4l56ijxGqgljQpfw5PeEe5Rc+T7ZNczs53g0Iub1cdNmXa7j8WYaEnbvzce3VbNHaes20TQR1WHLjB17SU4afEZXzZOPlSxg=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: febfb9f9-9ead-410c-dea2-08d64654c861
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2018 15:05:27.1177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB1036
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: so how does PACKAGECONFIG_remove really work?
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
X-List-Received-Date: Fri, 09 Nov 2018 15:05:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB26043832D051A6182FF772DD91C60MA1PR01MB2604INDP_"

--_000_MA1PR01MB26043832D051A6182FF772DD91C60MA1PR01MB2604INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Ross.


Regards,

Aditya Tayade

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Friday, November 9, 2018 8:10:22 PM
To: Aditya Tayade
Cc: Yocto-mailing-list
Subject: Re: [yocto] so how does PACKAGECONFIG_remove really work?

On Fri, 9 Nov 2018 at 14:36, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
> Can any one please help me to understand PACKAGECONFIG_remove feature
>
>
> Let's take an example of systemd recipe as follows:
>
> PACKAGECONFIG ??=3D "vconsole"
>
> PACKAGECONFIG[vconsole] =3D "-Dvconsole=3Dtrue,-Dvconsole=3Dfalse,,${PN}-=
vconsole-setup"
>
>
> Now how should we disable features set in PACKAGECONFIG[vconsole] using P=
ACKAGECONFIG_remove from it's bbappend file?

The _remove override removes a value from a variable. So this will
remove 'vconsole' from the value of PACKAGECONFIG:

PACKAGECONFIG_remove =3D "vconsole"

Ross
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MA1PR01MB26043832D051A6182FF772DD91C60MA1PR01MB2604INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Ross.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0;margin-bottom:0">Aditya Tayade<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Friday, November 9, 2018 8:10:22 PM<br>
<b>To:</b> Aditya Tayade<br>
<b>Cc:</b> Yocto-mailing-list<br>
<b>Subject:</b> Re: [yocto] so how does PACKAGECONFIG_remove really work?</=
font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Fri, 9 Nov 2018 at 14:36, Aditya Tayade &lt;Adi=
tya.Tayade@kpit.com&gt; wrote:<br>
&gt; Can any one please help me to understand PACKAGECONFIG_remove feature<=
br>
&gt;<br>
&gt;<br>
&gt; Let's take an example of systemd recipe as follows:<br>
&gt;<br>
&gt; PACKAGECONFIG ??=3D &quot;vconsole&quot;<br>
&gt;<br>
&gt; PACKAGECONFIG[vconsole] =3D &quot;-Dvconsole=3Dtrue,-Dvconsole=3Dfalse=
,,${PN}-vconsole-setup&quot;<br>
&gt;<br>
&gt;<br>
&gt; Now how should we disable features set in PACKAGECONFIG[vconsole] usin=
g PACKAGECONFIG_remove from it's bbappend file?<br>
<br>
The _remove override removes a value from a variable. So this will<br>
remove 'vconsole' from the value of PACKAGECONFIG:<br>
<br>
PACKAGECONFIG_remove =3D &quot;vconsole&quot;<br>
<br>
Ross<br>
</div>
</span></font></div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MA1PR01MB26043832D051A6182FF772DD91C60MA1PR01MB2604INDP_--
