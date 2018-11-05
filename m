Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 992AFE008E3; Mon,  5 Nov 2018 01:01:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.148.55 listed in list.dnswl.org]
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com
	[148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26949E00872
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 01:01:28 -0800 (PST)
Received: from pps.filterd (m0115755.ppops.net [127.0.0.1])
	by mx0a-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA58xGbP032243
	for <yocto@yoctoproject.org>; Mon, 5 Nov 2018 04:01:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=epeTHCaBZJ2HfZJbOXCmvZNhoeV0Z9Psa2ZLTzyv4so=;
	b=QCLZf13e8REkyGcebLQetC0CHdDpdFPlUpstxsv+M2VRftsB6sworG4kKI28v9YRK0Wd
	+SXS0ZjlYS+uqzbZWWFUKSfLEPAbx5N0WOWoEZMO94ij8YF4S8BcreKl6f13yjMB/f0u
	SGAKpCIUpgav+6hEYPC0y3mqnis5P5YxdiT2+PIBkLVfwrPPzamhMXsFMgh6lqEJxaP4
	ECIDl7iysgHhhobbANHhyi0z5YudCM2VXRJsv0ik3gjshg4wA72PnzywlilDb6y7fKAf
	gv/ALBI6VIixhM7nGScPR2s78D3BW45m2/RbO3QJDluTiySwTvPeHjg3Vg1Wmc4NBR8/
	GA== 
Received: from nam02-bl2-obe.outbound.protection.outlook.com
	(mail-bl2nam02lp0081.outbound.protection.outlook.com [207.46.163.81])
	by mx0a-00209e01.pphosted.com with ESMTP id 2njj6a86n2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 04:01:27 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1594.namprd15.prod.outlook.com (10.173.222.149) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.26; Mon, 5 Nov 2018 09:01:25 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%5]) with mapi id 15.20.1294.032;
	Mon, 5 Nov 2018 09:01:25 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Server Certificate Verification Failed
Thread-Index: AdR05dfpF76pDlcgQN2tlbh44QjBsw==
Date: Mon, 5 Nov 2018 09:01:25 +0000
Message-ID: <DM5PR15MB19135EE912E9C5A6575D0E20F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-05T09:01:21.7445018Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [32.66.192.217]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1594;
	6:U0qLccBnjb1IGI5rOmM4d7YdvJWL2Vb7X8I58LYFEAX2nJUMFIeuKZ7anUP9A3r/wCY6vPtZ4IHOyxE9Fexx9i/FjQ0M1StNsDz8s+OuoKG2KiGWfMMPc2uWG+F72BZ2JCnvPYsqI/R5ZOX90eWYwled2TVNZyIBKWeucPBZaURmhhurEdhZyx63dULvZVjVx72HVshfiJGjwKpG3h7WBLDLW0EnvtGJi36Wma61o7KRtwcF2uqNC7nsUpoffCSCBO3KfpOusnLHi0sCy56RG7epwocimCsUbj/rTIFUepvopQ2Pll6j71B/RyKC6Fw0qxZcptduPf2TWjeYHSnvjf/JID55xQ3yDE6ReUugC/pyiT9EbSl5n1HTyASDh9279/rVEPqug6+NQlC7imIMmMxwCiApfyNcmXjYP+rxkJRANGPjN7PRUaUpnircFe/r5M035Sejnuvu9W/cu5euaA==;
	5:w3YenSHZmP5tBSM33jZ7N0kBURf9KUJGDViGeoF+fxGxVNcvzueVyBD/1U6RD4UMB74Xh+UQIIZ3yLuVrfh3f3lZ5e7Ob6vOnHirn39vqzWOoPKwWb5+ekhoqZd6sVaArb2hxorERYG33l6Jdn6wDXwhWqd6GMzQSMrYCQ8sO4c=;
	7:shyv6C2/Yqcr5gRVZdhvHy86I8EdZhUgClkXLspzjFPGONC66c/xT8SCUj3Iu+6vptUYZ2y1yLUDmvuZ94WMkOU5rYix3TKxm/MRl85t2rehZoplV6oouW5a7zzdmXE+vSklPG/PbXNx9MQwrkhVYA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: dbae4812-a1e1-4a1e-85ac-08d642fd43fc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1594; 
x-ms-traffictypediagnostic: DM5PR15MB1594:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB15947206D791E2FD93FED3ECF0CA0@DM5PR15MB1594.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(5213294742642)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231382)(944501410)(52105095)(3002001)(10201501046)(6055026)(148016)(149066)(150057)(6041310)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1594; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1594; 
x-forefront-prvs: 08476BC6EF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(366004)(136003)(39860400002)(396003)(189003)(199004)(14444005)(256004)(2351001)(102836004)(186003)(2900100001)(86362001)(476003)(81166006)(8676002)(66066001)(486006)(26005)(8936002)(81156014)(1730700003)(316002)(6506007)(7736002)(7696005)(105586002)(106356001)(74316002)(68736007)(71200400001)(6916009)(71190400001)(2906002)(478600001)(72206003)(2501003)(99286004)(97736004)(10710500007)(3480700004)(3846002)(790700001)(6116002)(9686003)(54896002)(6306002)(6436002)(5660300001)(9326002)(25786009)(2420400007)(15650500001)(33656002)(53936002)(55016002)(5640700003)(14454004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1594;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 4HiPpHzbv1jYPrjP8l25vmTUYJ6N+1p8pjz6fBXS8QG/jF2nvht9t6HV6SjrKCCRUe7wgBPYpT7bqQ+C0VtkhESjOiAmUqLz92NhxCxk2mWRXm7lBPwT1ssG3tE8K2NuWwkDuTY8042jYGhlFxXwo+FOzrOGcy8YIDpNbOG6ECQt/rKsTvyeAVBJxrJ2W3WfyD9KjEp2rH3/b7EeG6VuPRexGm3CBqDqLp69OXzY5GhRNsOJLxUWuHlzfzI38HtUYh5VmPWK7ws2gKqRSy8N200r6a9IRJUfdzDIng0ad0kcj/BMqQxkFJxRLCxpLMG502GDMJgz1CjGcCIp50yUDoGDF+7cgsC3h5iv9cqkxQE=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbae4812-a1e1-4a1e-85ac-08d642fd43fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2018 09:01:25.3234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1594
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-05_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=680 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811050085
Subject: Server Certificate Verification Failed
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
X-List-Received-Date: Mon, 05 Nov 2018 09:01:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB19135EE912E9C5A6575D0E20F0CA0DM5PR15MB1913namp_"

--_000_DM5PR15MB19135EE912E9C5A6575D0E20F0CA0DM5PR15MB1913namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am getting the following error :

Fetching projects:  60% (3/5)  fatal: unable to access 'https://git.yoctopr=
oject.org/git/poky/': server certificate verification failed. CAfile: /etc/=
ssl/certs/ca-certificates.crt CRLfile: none
fatal: unable to access 'https://git.yoctoproject.org/git/meta-intel/': ser=
ver certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates=
.crt CRLfile: none
error: Cannot fetch poky

I then tried to open the above link from website, I got a similar message: =
NET::ERR_CERT_DATE_INVALID
Can you please look into this.

Thanks and Regards,
Jamal,
Software Specialist,
NCR Corporation

--_000_DM5PR15MB19135EE912E9C5A6575D0E20F0CA0DM5PR15MB1913namp_
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
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am getting the following error :<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Fetching projects:&nbsp; 60% (3/5)&nbsp; fatal: unab=
le to access 'https://git.yoctoproject.org/git/poky/': server certificate v=
erification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: non=
e<o:p></o:p></p>
<p class=3D"MsoNormal">fatal: unable to access 'https://git.yoctoproject.or=
g/git/meta-intel/': server certificate verification failed. CAfile: /etc/ss=
l/certs/ca-certificates.crt CRLfile: none<o:p></o:p></p>
<p class=3D"MsoNormal">error: Cannot fetch poky<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">I then tried to open the =
above link from website, I got a similar message: NET::ERR_CERT_DATE_INVALI=
D<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">Can you please look into =
this.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">Thanks and Regards,<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">Software Specialist,<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white">NCR Corporation<o:p></o:p=
></p>
</div>
</body>
</html>

--_000_DM5PR15MB19135EE912E9C5A6575D0E20F0CA0DM5PR15MB1913namp_--
