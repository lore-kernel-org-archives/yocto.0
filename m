Return-Path: <Raxeshkumar.Oriya@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC641E00DA9; Thu, 10 Oct 2019 03:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [165.225.104.75 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.148.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1727 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Oct 2019 03:34:56 PDT
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20E20E00D9D
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 03:34:56 -0700 (PDT)
Received: from pps.filterd (m0184429.ppops.net [127.0.0.1])
	by mx0a-00209e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9AA46t9031187
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 06:06:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : cc : subject
	: date : message-id : content-type : mime-version; s=mail;
	bh=Vi7hs4hiCNcTKODbF9N7N6uXZ2NegkwaoMVlQN03q6k=;
	b=nMqeh4HQH/8PY6oGh58m/fKSurFet5yOxkGhF8frP23u72hGSoHicTnzkiv0EJXoHyo6
	WiNFHXN8k415+ZcPKtrC/jbr7mcfvPqDLhflkq/wYRL9/EASkv9MVuDGAV5qaynCyNIB
	QuNymh/hfaL3ijInUg/FyKCo8v9/8FQEDVI5+hX2fi+nTN/CEmfFdPDXXmSHThmiCmo0
	sgykDNv6QIMZr21czMRUDUyd+4GOeYOQiy+H3HKEIlHyyBhyZesLrDy4iiyzu2YPWffF
	lh3NgPPd1WwmLk+PbWbVSyMa8R/F8EM0G1eCB3wMJoZ+mvUexUweisClcxNHkuP/MQtw
	PA== 
Received: from nam03-by2-obe.outbound.protection.outlook.com
	(mail-by2nam03lp2058.outbound.protection.outlook.com [104.47.42.58])
	by mx0a-00209e01.pphosted.com with ESMTP id 2vj26yr41a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 06:06:08 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=GNey9nPJLK3iU54borULfwhIOXDA7JGJ6JBaGPUGpb1XA27z3XM0B8MKdv+cI4qF/ID7wDUstfcWgqyZozOj7l1uqkvIzKiPUnG5MpkjZxeqF6FeU34mJ+VoGHM/xD1ge6Kl6jdBRRajIdou5caamDA6GX53bVWVwpAnTMeLCfIK867y+r73Kl6Pykf+zAe6JVIrpjO3JDxnl21kCsM7kxsYbRQWAaf0HB8mNchd5Sc9TG8Kg98aZm/5Lmz/WyMF5CAPRSf4IpwKglyxZlrA+yL20GPR6wrG1B3xzayxBqq7XvncnRRrwZKr8EPUz5CiSS+MuZu4ZgiVGswemIET7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Vi7hs4hiCNcTKODbF9N7N6uXZ2NegkwaoMVlQN03q6k=;
	b=kGOYy5nBKJJlWCvxgFmxtuJFArClq/IYcznxtIHlbsTcL9fd6abk3xNCrIcJfPJz7SE4PVRPzEMMiocx1E3m+QJBlvgTXpFYfIaan+DjzBcsScAov9W4Uhf2CPryzhfaAedAw6EKjyorwi+ME8M8+/vBnTRVhRXO+ZXQLMmaBhx0YhBV15KPou+KH/z532/eaSqEB0yMBqKCgwTT91oFBjuCOba3I/p0Gy7PLpskg30+DA5xydwLOwMFYQ5xrXcHlBEQF4Ebr6WWXLS0FL+F8JZqGOgMF9gNaoXl9M3NBlRTmg1X937h8uk72KXY2+hJh6YL0GPTCc/Nhv89MhCQAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ncr.com; dmarc=pass action=none header.from=ncr.com;
	dkim=pass header.d=ncr.com; arc=none
Received: from CY4PR15MB1878.namprd15.prod.outlook.com (10.172.78.151) by
	CY4PR15MB1208.namprd15.prod.outlook.com (10.172.177.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Thu, 10 Oct 2019 10:06:07 +0000
Received: from CY4PR15MB1878.namprd15.prod.outlook.com
	([fe80::c50d:31bc:eed2:44b1]) by
	CY4PR15MB1878.namprd15.prod.outlook.com
	([fe80::c50d:31bc:eed2:44b1%12]) with mapi id 15.20.2347.016;
	Thu, 10 Oct 2019 10:06:07 +0000
From: "Oriya, Raxesh" <Raxeshkumar.Oriya@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: No SELinux security context (/etc/crontab)
Thread-Index: AdV/Uhb3HHP1BMJiQa+eiW5WyNU+RQ==
Date: Thu, 10 Oct 2019 10:06:07 +0000
Message-ID: <CY4PR15MB187891A4521D2DE0C68BF9C3FD940@CY4PR15MB1878.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=ro185046@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2019-10-10T10:06:03.4344597Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_ActionId=7c894adf-a132-4b87-b702-83a477870c52;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual
x-originating-ip: [165.225.104.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcbb8855-c312-4058-bd43-08d74d6977db
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: CY4PR15MB1208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR15MB1208D3B0F1F9E19D6FA7CDA7FD940@CY4PR15MB1208.namprd15.prod.outlook.com>
x-from-ncr-tenant: Processed
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(366004)(136003)(199004)(189003)(33656002)(71200400001)(71190400001)(4326008)(2351001)(86362001)(81166006)(8936002)(81156014)(1730700003)(8676002)(54906003)(9686003)(6436002)(5640700003)(9326002)(52536014)(66066001)(55016002)(316002)(54896002)(790700001)(6116002)(476003)(3846002)(66476007)(66556008)(64756008)(76116006)(66946007)(2420400007)(15650500001)(478600001)(4744005)(7110500001)(25786009)(14454004)(2501003)(5660300002)(486006)(99286004)(6306002)(7696005)(256004)(14444005)(66446008)(2906002)(186003)(6506007)(55236004)(102836004)(6916009)(26005)(74316002)(7736002)(6606295002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1208;
	H:CY4PR15MB1878.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FqMtVSNoPTMgd4weK0NwvQfu/F98ZxcjVl31L8G2zmfKAuBVwl2SjO3PvTTKfiIM1BD83oKmSiGftO/7wWAMJC+4vsZW8CN8n9JGfaxpSW157D7a38KNkSRJ5qh6CNwkUpHz7zY2r2qlkB2scr053bZHkMnbrZyFAFSadttHzTfNNfMzOU8Gz6AboeI3ZNsPoxmXadPyPGSjHnRNwGV//5oZMYEjnIYrxY2A2F8QBQSSR8bfOgVmEs97acbUe3mV4mz5XvQyfQ0In/AfbZ51U/oxtxbnEvEJ0LydghvEthMY/OVbuxjBnS12AnbCia2PmsMaOsk7spmYOuQdLG4rpEgWj8dbkWNwXbnzoAJnURQI1JNY/oO6+gEUErfbWIW0cZLb+Vft1iNLqXW4fsxshA40+39uSnFpIqNkKB0ZwvE=
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcbb8855-c312-4058-bd43-08d74d6977db
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 10:06:07.2509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MZH0HboXJTfPjf9tfH8ku1Zb2o/IriFef4BfJWvqkOXiQO3LWviGSqYzGBfP3XqJ4k2FFHGkB4yLewB/nuXkPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1208
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-10_04:2019-10-10,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0
	impostorscore=0 mlxlogscore=507 malwarescore=0 bulkscore=0
	clxscore=1015
	mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-1908290000 definitions=main-1910100090
X-Mailman-Approved-At: Mon, 14 Oct 2019 04:18:56 -0700
Cc: "C M, Kiran Reddy" <kiran.reddy@ncr.com>, "Mohammad,
	Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Subject: No SELinux security context (/etc/crontab)
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
X-List-Received-Date: Thu, 10 Oct 2019 10:34:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR15MB187891A4521D2DE0C68BF9C3FD940CY4PR15MB1878namp_"

--_000_CY4PR15MB187891A4521D2DE0C68BF9C3FD940CY4PR15MB1878namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have enabled SELinux in my yocto project(warrior branch) but cron is not =
functioning because of some SELinux context isuue. I am using minimum SELin=
ux policy. Here is the error from `/var/log/messages`

    Oct  9 04:50:01 panther2 cron.info crond[261]: ((null)) No SELinux secu=
rity context (/etc/crontab)
    Oct  9 04:50:01 panther2 cron.info crond[261]: (root) FAILED (loading c=
ron table)

Here are some contexts for relevant files,

    root@panther2:~# ps -efZ | grep cron
    system_u:system_r:kernel_t:s0   root       464     1  0 04:54 ?    00:0=
0:00 /usr/sbin/crond -n

    root@panther2:~# ls -lZ /etc/crontab
    -rw-------. 1 root root system_u:object_r:unconfined_t:s0 653 Oct  9  2=
019 /etc/crontab

    root@panther2:~# ls -lZ /usr/sbin/crond
    -rwxr-xr-x. 1 root root system_u:object_r:unlabeled_t:s0 68160 Oct  9  =
2019 /usr/sbin/crond

Any help? Thanks !!

Regards,
Thanks

--_000_CY4PR15MB187891A4521D2DE0C68BF9C3FD940CY4PR15MB1878namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have enabled SELinux in my yocto project(warrior b=
ranch) but
<b>cron </b>is not functioning because of some SELinux context isuue. I am =
using <b>
minimum</b> SELinux policy. Here is the error from `/var/log/messages`<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Oct&nbsp; 9 04:50:01 panther2 cro=
n.info crond[261]: ((null)) No SELinux security context (/etc/crontab)&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;Oct&nbsp; 9 04:50:01 panther=
2 cron.info crond[261]: (root) FAILED (loading cron table)&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are some contexts for relevant files,<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; root@panther2:~# ps -efZ | grep c=
ron<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; system_u:system_r:kernel_t:s0&nbs=
p;&nbsp; root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 464&nbsp;&nbsp;&nbsp;&nbs=
p; 1&nbsp; 0 04:54 ?&nbsp;&nbsp;&nbsp; 00:00:00 /usr/sbin/crond -n<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; root@panther2:~# ls -lZ /etc/cron=
tab <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;-rw-------. 1 root root syst=
em_u:object_r:unconfined_t:s0 653 Oct&nbsp; 9&nbsp; 2019 /etc/crontab<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; root@panther2:~# ls -lZ /usr/sbin=
/crond <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;-rwxr-xr-x. 1 root root syst=
em_u:object_r:unlabeled_t:s0 68160 Oct&nbsp; 9&nbsp; 2019 /usr/sbin/crond<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help? Thanks !!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4PR15MB187891A4521D2DE0C68BF9C3FD940CY4PR15MB1878namp_--
