Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.2990.1631946076708252038
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 23:21:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=KgWfF3qS;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=48953b327d=changqing.li@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18I6HEoX002268;
	Sat, 18 Sep 2021 06:21:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=to : cc : from :
 subject : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=AMPtlEojzg0aaNLQtqN2NUB8zZMU2qhdDGrhPD1wQ88=;
 b=KgWfF3qS4Pln27f6h8l54MiwiD6nNaZFq0mUg4YEfe6876rW6lw7PHFtV/YTUDTE65KS
 bQqccFTzi09XsBgCWUGHOPEmAV4bvxXuaKb+vs5u+Vf8951HdX5SusMv0sd77LrHfNXG
 +r1uPIyqpJRyA1+nXa1/tfLzB6ExHeHTCcT8SIfGMGY/Ie2bOTcdwoL4IFF6pOqlelXS
 Waixj69NdxW5ztZ7tETa9F9eZup5DAoxp0tZzx3bq7bPVe09cndBazsk8wShBtl2sPC9
 h0ula8cB0oSClr7b0NzhI5lS3YF5GzwbUNfC0O0Ga8Ie74qpOyMJ81ZVZQ/8blyjY8Q9 pw== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b55b286ss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 18 Sep 2021 06:21:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=na081NhAie+EBQaRHR0J+Hlpee4k1vfSjEhoLTrzzG63v0segqSosOVFRAc1Jz3mfYceROAGOooY7x/3BlOSN5ZeXLws2OJPRplWwh4jgzRoXBv0S9lhbxNcostEA2PBzWHZkuelo9EKYKi5SONhTVLBtFkyUIM/JEd/AaxstMU2LA8vq+l8qlAw09Nk/NZYgqhFHbaqGjzQTNed2IE0RnCNhejNzsUoEcKFD1EirheaE3mUZc2Bj7q/1pbmL+oQ9XEuL/Yl65ltRXP2ZGexsSF04a/au10pDeCFzwQKnnMQ6ydOFzJjzFl7CCg7GLBM+2Yz+eBx6FeIeBFRTj7IBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=AMPtlEojzg0aaNLQtqN2NUB8zZMU2qhdDGrhPD1wQ88=;
 b=RdLFrig4+CqXHBWo0OrXZPI+dzydd6kpWjZYkAnLCHIiu0mbnAvXRC1duDEirkQjKfKOkBM2HhY9l6HUV4oeyKsvcycYCqvDmD92pNEPOV2q38U/66bn1ZzgEgEwFtyCTYQJRoKKyFEP90pe8WO/mMFr5EkTTiQt62pAGmxROGiEANjM07gcCLhpWiYGuDOtp/qa09GP9mtlZW8eh0ZxXsL0DU/xDjPwu02ZTWgaF3q3PBZqbrScdLfeGHd7UXSzcXVFAVWLBoFuJUoQnbilskvwhLklRQuPmI4TX46q59haFICGumSGVYk5OJdAIjr4R2tHOtuZCFuitDbKnzcuIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Sat, 18 Sep
 2021 06:21:11 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::a544:19b6:196b:f339]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::a544:19b6:196b:f339%5]) with mapi id 15.20.4523.018; Sat, 18 Sep 2021
 06:21:11 +0000
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
From: "Changqing Li" <changqing.li@windriver.com>
Subject: layer index update failed
Message-ID: <90c93098-3e73-10b9-2f3d-18017cf0c2a4@windriver.com>
Date: Sat, 18 Sep 2021 14:21:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
X-ClientProxiedBy: BYAPR06CA0022.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::35) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
Received: from [128.224.162.189] (60.247.85.82) by BYAPR06CA0022.namprd06.prod.outlook.com (2603:10b6:a03:d4::35) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Sat, 18 Sep 2021 06:21:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 100c4dc7-865a-4c60-5a5a-08d97a6c8265
X-MS-TrafficTypeDiagnostic: SA2PR11MB5052:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB50520BC1EE561B848F8C67D382DE9@SA2PR11MB5052.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/fTMJZJBSyXJHsvz4H3RwVw3wduKdMH5Ue/pJKSj6TVGQULWzIcH3ZLMVNlIgORsbHEWe4347veGkENCoXZYZLYAl3tyABzylS4o1rZfgxgxNv/EQwrw5t08UmxOm3yvfyu5TNLXeVgtd0qzNAiSBAJwYxz+HbN6bGgxL6YuRewhzaIuEQM7XWw8jGz8FzAtRoFmAu2tZ1QjUkbcvuOLhE9Y7+dxleRkuqFNvtJ65k61TtcnPMsg6EsoA2+1+UXtNB9S+OQHoKerJBTsUFs6DtWQEFyHCtKlwcQv7A7Y29e3Y8PjGBPxDNQ8l5yF5CKE+c0zhBePkRzN7leTwA3DrbzK5T4RqdAT/1CdEOI5w2jvYuHkNIog4hyVzibZIJhAON6ltQACgE1gKr2GSHBr3nmhjxERwiac+l1ozJOSQ0EQ/zq0rysV6xGpEEOxuzlheqj+rtj54YWsVYJN4bbydTOZfOn86DvJUPZenY+/fxn1/T1TDrlLgj+swvjEdpBQRw4G3iwGBhTEWnQTcY0Nj3ic6BqobTZQc+L8OsvjgesR6JBIYpNALC/unoBY8NFJBfbfudVllcr2FYssvNQZ2koNWWWygITqQmYHunFLO5J/qIuZY4ZEQV86iEMIrBY0S9+wanSP6OS7UKwQfpimw0SioprsMLmK5IyJNPnYjNQ8kipncLQ+skXr3xhC+xgh1chFdskkMg8hfJRnoKBtj57U5ZhIhoxZbJQnXTDMM1OhZODXUiOLpvRgsJETkwU8EWmZRcsotWnGe9bPh5ddYCHrRp+EWKw1j3UK4s9ipAONWAxeIZCVU2BUHq66Cx4NWGHMdv6tVRktGwUkHnwgjPg44KU2x8tEQ2fvvqIsdujahYSVn0hIocWfIeIdr7927oc0jkPEM1mrTZLcl1JLCg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2616005)(15650500001)(36756003)(6916009)(8676002)(956004)(4326008)(6706004)(8936002)(6486002)(26005)(2906002)(166002)(38350700002)(44832011)(186003)(31696002)(86362001)(38100700002)(52116002)(16576012)(316002)(66476007)(66946007)(66556008)(3480700007)(33964004)(31686004)(6666004)(83380400001)(508600001)(5660300002)(158833001)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b0RJM1NMSUduQXJmVnZHRkR0YVVYdllIY1JVdUVFUlhoMDBMVG51bDlTUHhF?=
 =?utf-8?B?ZnVMbndHWEswR0ZsRmlDUGVUSmdzb0lscWp2cnpNTTBCSlJLQTlWSk9obU94?=
 =?utf-8?B?SUJoTHBaeWN6TUVBd1hpc1dCSnZDSnlPMlB5cXoxZWQzaXhPQWUrVUtJbDBF?=
 =?utf-8?B?V2FoNFluQ2lneXdyWlNKUVdlYnIwWFNQMVFYNU9SdkN4c09IK00xSjI2MldS?=
 =?utf-8?B?OUF3Y0lZbmQ0bjBOMmZNeTJJa2p2WGVqYStYZ2lIKy9DSlprNFpncGVjM3Rk?=
 =?utf-8?B?Q1NaREk4SEdWZzU2MUxnVmJ1aWc4ZVZ0bXAvbzdKYTV3c2Vhek83UEJhcDJw?=
 =?utf-8?B?azhPQ3EwSHlJRVBwLytHZE9TbnVMcjdGNHJXejFOUjNDanh1WDE3U0czUEZX?=
 =?utf-8?B?emZxeTVDaS9Lb3NFVmo3Q1R1dnBDSUNBNWFnd0xtbTVYOVFidmhMWFNYN2Fq?=
 =?utf-8?B?N2pnaVkxckhrVit5b3ptUkltMWw2MjBKTGttSWQyaUhzcy9wS0NoRE9sSnEv?=
 =?utf-8?B?cVh6WXQ0ajhjVXUrRFFndDkwODkwOEsyKzVwRXVmb1d4eE5pcGV3VGtadklC?=
 =?utf-8?B?QjEzSjJYYmZWZHY3ZDZhWUcxMVRwS21uaVNPWFVTTFV4cytrUUZOazkyVjkv?=
 =?utf-8?B?bHhzQWYrRFl3OUhuRmp3WkJscm1SQi8welRHWGpoZk9Namdhd0RXV3cvRjda?=
 =?utf-8?B?ajhjcm5OTHB1djJkOE85MGtsUkNvODI5SjE0a1pKeCtJTzRZcytMR2h4Z0lS?=
 =?utf-8?B?ckZQcnhoeVRzNmhwTGEvNUx5a2ZLem1CUFRlbUJIanp4RVJSc3pkajNSMWU0?=
 =?utf-8?B?WXFSTk44L2pIdU9GSTl5ME5Sc2hyKzNFQ0wxSEk2TzNDc2ppMXIxVVZoQ3V0?=
 =?utf-8?B?WTFmaThhaDdsaVIraXU4RTlPTjhXbTVTSXBlcWhadEpiUkI1bDcxWkJiazEy?=
 =?utf-8?B?ZnlKZVdrbEpJRE4xa3JicWc5N296VlFvKzR4LzZaK0J6VklvUXNxQzJYZFRM?=
 =?utf-8?B?MXYwbjJac2NUR3gxdjJueStCZzVPLzhvOHFIN0QzUzJ0TUM2V2MvVDg4NTd3?=
 =?utf-8?B?Znp3dVJNUnRzTHVzdXQ1SyswUTNyZG4wd1M3QnhxRzU5d0k5OTQvMzlsZnBh?=
 =?utf-8?B?N1Z1TWRyeUhPVXMwejRnMENIOG1RS2JnaFFHMVdWMVArMys0a3RnNmdob1gx?=
 =?utf-8?B?elRYNGlYakIxZkg1UEVhV25LYWE4ZnpmT1pGZWtXSDd2M1VESjNGTWVLNDkr?=
 =?utf-8?B?RHQ3Uy9oNVVqaFNMVFZIMTAzM210eFM1cncrSFVnNmJxMm9HRHZpZ010VTA1?=
 =?utf-8?B?a0UrNXVoRkw1TXV6QmpEZnhFaitiWDZrOGtwYTBuVllDcVpkMm1UOHgzTG9D?=
 =?utf-8?B?cGZYNC9xdjlyZDVLSnplWXRYSzZ6RFJ1UGJBdmlmSGZnVHJLNDJGNjBma3Zw?=
 =?utf-8?B?Mk4wWmxnRGZueDNxM2dTdXFMaVBBYXYzQjhFbFhNZmNLR1I0S2orM0MwUXU3?=
 =?utf-8?B?MkJHbnRYa0JVUUJaWGlqRFNSNTIwMmp2N0oyZDhmUTlySkFtUGZRSFlocita?=
 =?utf-8?B?eUo4ZlZRT29tZFNxMWdpcFh6UGRNRE9OQWhucVJlT2YxM3JqcXVoeFhNSVlV?=
 =?utf-8?B?dU1nT1l5a0tJZ3hkV1ZCZTRIRzZHdDlyNnZwSmF5QklqZkFzenROZ3NHekpm?=
 =?utf-8?B?bEVXWjgwQ09WaVA5eHdDeEF2c0UvTUNwNFVhM0FLYXV3SCswTDMwdW0yUzRj?=
 =?utf-8?Q?0WYPrgPl3JOlQc2lA+Wgr8RUjRRJiNE44yyziBc?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 100c4dc7-865a-4c60-5a5a-08d97a6c8265
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2021 06:21:11.3881
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iV/vgliG2JUKz4fmRFf4cIxREtv2yki4a38efR2lRw5RuSXLfSdQY5l4Y9jeUTjniT4BsD/vsq2OjKPga02gtEixLsuhRWpjNqmiA0Lavjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
X-Proofpoint-ORIG-GUID: Boll8XGeGF_wAoee9Jsv_6n3OJeinLrs
X-Proofpoint-GUID: Boll8XGeGF_wAoee9Jsv_6n3OJeinLrs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-18_02,2021-09-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 mlxscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1011 impostorscore=0 priorityscore=1501
 mlxlogscore=723 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109180042
Content-Type: multipart/alternative;
 boundary="------------12106EF764DDCAB867BABD33"
Content-Language: en-US

--------------12106EF764DDCAB867BABD33
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 18I6HEoX002268

Hi, Richard

Layer Index "https://layers.openembedded.org/" not works since below=20
update failure.=C2=A0 I don't know who is the maintainer,

Could you help to handle this to proper person? Thanks.

Besides, I am trying to add a funtion that when there are errors, send a=20
mail to maintainer, so we can know this failure sooner.

ERROR: Traceback (most recent call last):
   File "update_layer.py", line 380, in main
     (tinfoil, tempdir) =3D recipeparse.init_parser(settings, branch, bit=
bakepath, nocheckout=3Doptions.nocheckout, logger=3Dlogger)
   File "/opt/layerindex/layerindex/recipeparse.py", line 83, in init_par=
ser
     tinfoil =3D utils.setup_tinfoil(bitbakepath, enable_tracking, loglev=
el=3Dlogger.getEffectiveLevel())
   File "/opt/layerindex/layerindex/utils.py", line 193, in setup_tinfoil
     import bb.tinfoil
   File "/opt/workdir/git___git_openembedded_org_bitbake/lib/bb/__init__.=
py", line 16, in <module>
     raise RuntimeError("Sorry, python 3.6.0 or later is required for thi=
s version of bitbake")
RuntimeError: Sorry, python 3.6.0 or later is required for this version o=
f bitbake


//Changqing


--------------12106EF764DDCAB867BABD33
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi, Richard</p>
    <p>Layer Index <a class="moz-txt-link-rfc2396E" href="https://layers.openembedded.org/">&quot;https://layers.openembedded.org/&quot;</a> not works since
      below update failure.&nbsp; I don't know who is the maintainer, <br>
    </p>
    <p>Could you help to handle this to proper person? Thanks.</p>
    <p>Besides, I am trying to add a funtion that when there are errors,
      send a mail to maintainer, so we can know this failure sooner.<br>
    </p>
    <pre>ERROR: Traceback (most recent call last):
  File &quot;update_layer.py&quot;, line 380, in main
    (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
  File &quot;/opt/layerindex/layerindex/recipeparse.py&quot;, line 83, in init_parser
    tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking, loglevel=logger.getEffectiveLevel())
  File &quot;/opt/layerindex/layerindex/utils.py&quot;, line 193, in setup_tinfoil
    import bb.tinfoil
  File &quot;/opt/workdir/git___git_openembedded_org_bitbake/lib/bb/__init__.py&quot;, line 16, in &lt;module&gt;
    raise RuntimeError(&quot;Sorry, python 3.6.0 or later is required for this version of bitbake&quot;)
RuntimeError: Sorry, python 3.6.0 or later is required for this version of bitbake


//Changqing
</pre>
  </body>
</html>

--------------12106EF764DDCAB867BABD33--
