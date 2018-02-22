Return-Path: <prvs=1591333edf=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00775E00DE1; Thu, 22 Feb 2018 10:21:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
X-Greylist: delayed 574 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Feb 2018 10:21:51 PST
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C1AE00D32
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 10:21:51 -0800 (PST)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w1MIC4NZ023920; Thu, 22 Feb 2018 12:12:15 -0600
Received: from nam02-cy1-obe.outbound.protection.outlook.com
	(mail-cys01nam02lp0054.outbound.protection.outlook.com
	[207.46.163.54])
	by mx0b-00010702.pphosted.com with ESMTP id 2g6k3635sn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 22 Feb 2018 12:12:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=sy9xMW8gRldVqpnaV6Z96XZAw5epCLkTWUb9HogUnr0=;
	b=UtXpts0fFosY0u8Q1gmSe9qZiWG5tUYahA/WGp8S01rmZ/oFVdotQzXh6n+qwdoffW/ZyMmHiys0kkpgUjCa6Ma16uF8hWsuVuWpkVFhVMBxlDui/GPvTZ/TREzE9uGK2HKDF3TuL70CXXQv7widiTySRQy/07/EpHckOBT2Y9g=
Received: from [10.2.65.57] (130.164.62.135) by
	CY1PR0401MB1321.namprd04.prod.outlook.com (10.161.213.13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.506.18; Thu, 22 Feb 2018 18:12:12 +0000
References: <7a70895b-bee2-9051-7aa8-d5f23bf13311@ni.com>
To: opkg-devel@googlegroups.com,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
X-Forwarded-Message-Id: <7a70895b-bee2-9051-7aa8-d5f23bf13311@ni.com>
Message-ID: <d0a74145-75cd-3f3f-3cbb-8f3c6603b4b3@ni.com>
Date: Thu, 22 Feb 2018 12:12:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <7a70895b-bee2-9051-7aa8-d5f23bf13311@ni.com>
X-Originating-IP: [130.164.62.135]
X-ClientProxiedBy: CY4PR04CA0029.namprd04.prod.outlook.com (10.172.133.15) To
	CY1PR0401MB1321.namprd04.prod.outlook.com (10.161.213.13)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba717134-9b11-4a1d-6816-08d57a1fcc31
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603307)(7153060)(7193020);
	SRVR:CY1PR0401MB1321; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	3:lcWOrEEk46IFKUmMWdLkEhCGwt/jcTqx3SFWlVx19z4Qku/b9L0zns5faKcj7pHUjG0UwwgV+rZVHowR7By/KyusBnWcucDrPImD1yXAXBBqR8RMeIMtrqs0yN156KboVuklvHfozsNfgAQGV6rpw3FBIaRY8eWQlLwfa0McyPXuo2vhFDTlwiDu4tiJd2Jn3RwBx+4qZxC8q1ZgTuV8nIcX6yitiGMJ7BA/qfiW9Df/4vnPvIBry2dJnEQOIVyX;
	25:CNWQ5KC9rRW67RkrIUit/imUpeEUpGB8+lBM83hFInrx6wDsN7MHiVpslaS3SOGkht4Vk4ybCg1eb2UhBusYI1rQofk2XJiZ+ER4pp+swxmdaIm51lMzJxuKI4Hw4EFenVFMREXZokig0nN3tfhiQv7t/CHADij55+zw3uwQALMO8SZoRm3XuNPmVMhQezz+KEW7VVcrXU/xOQzLKD5o439vkUk3ux+s23VJNZAHv8EVZrF3HROU2U2bQ10CAqa0z7cTIfnAstzyKGGNmfrV1S5lKaanWe+5ly4wM0Uv6J22jpL2JDB2gk6T4u3+Qz4HkFNF7U6fY5rXyz4dMLLTeA==;
	31:XkcdWPuopazsZ5D5FkWyJEgVQG5pZrTpbY3mmtU90TX8NW1e56gMmuh9hTSD6p+9aGKSycfKrOqxACy/Ww+WpwkcxRjZkWqZ8bCv7rA1eebr6XJHZyqZUtzxT7EnsSA1p7k/e2ogn/rJacIAKXlOZnX64h9rJY4tiVEr3yG8hkBYtMFP1mmHFF5oil5Xvix6CclKbwgZTyNjntfIM7B/yQP1DkIsjq6P4wvQurN5eTY=
X-MS-TrafficTypeDiagnostic: CY1PR0401MB1321:
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	20:w599LDaesjbaSQO/cscml2IHRPrTOTCvheMqrrKe41CQGR3syrRNLTnifz4pAqR4VpxTfLoOPFacyfSvQ3tyL7px2MtJfltJK/+IAs0Y7HDiS6Cn29SkeB2O5/Wxvrx8JJDl9pKN4lMS1WpyN+67cjvniaEvNc89wtOhZb8cyhEdq4YDB7Q9ONOe02ZqSyYsO/E/eJUZ/6HFY1LkN/9esegVfEpGfOUowtkgjBB1MfuREY4ow+Sv1HK5D65d1ZpSR/iHZ34HD+cPNx9B0G+dhA+I59isp4vft34gleAeYqQbkkm2dfndF9fcTRrc/F3vov2WnqSeRzTnLSGBuQZZYwatzv6A367AXHrPtNlfQEgT4qQswCFcZgSXSg4At7GfEvYrujKeM9fZnpwLPMGBltRnpoDvGrs50EbsScHXBsl7oJM6t078BPDIJ/G32b93H3W8+1EfM6QBQ1/CcMQs0/AkIF7/LshLWfqDGpywrYMg9n+WW73NrtWCKE9Kum2A9Aa053D42SQGT4Mg7JpyQNFY3NW7GNY9FSTZEbfET8XUfpg/78nxb4OAYlYdF+d5lWTBWpeUo0ERmg4qGrqIubyzsz8F+h59Z2pd1mf70Xg=;
	4:qUfQ+Pj5+tL71Y2jI1b1W8qWYDO/k71pcfAwp59C3adKvk4927V/MjkyOuIV9ItW2UCZHFLRBRhzSNpLEfOo6CmAugYOxARvmVaKIkRPvagkpuf+rjrcKxeFL7ll1R44iLEyCVvNDzzZkY2xdOrw+bu2TVtKqXZUqzqpjgqv5VX5B6jI5oS2pR95NqziTa8jZHgUOtQ4mhTqckpdfU/yaBNo4/SrKbkLsPHmaO43+6WDgRY3TuB9bUPSCBD4211RnvNQKDRzhpygwT1BO/THog==
X-Microsoft-Antispam-PRVS: <CY1PR0401MB1321AC3ACA89534F58E19DF086CD0@CY1PR0401MB1321.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001082)(6040501)(2401047)(8121501046)(5005006)(3231101)(944501161)(93006095)(93001095)(3002001)(10201501046)(6041288)(20161123562045)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1321; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0401MB1321; 
X-Forefront-PRVS: 059185FE08
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(39860400002)(376002)(366004)(346002)(39380400002)(396003)(199004)(189003)(53754006)(67846002)(7736002)(53936002)(25786009)(2486003)(52146003)(66066001)(65956001)(65806001)(305945005)(31696002)(5660300001)(230700001)(3846002)(6116002)(2906002)(36756003)(65826007)(86362001)(76176011)(52116002)(478600001)(316002)(6666003)(2950100002)(58126008)(6916009)(23676004)(16576012)(50466002)(68736007)(64126003)(97736004)(106356001)(47776003)(26005)(77096007)(16526019)(2501003)(186003)(6486002)(59450400001)(90366009)(386003)(8676002)(81166006)(8936002)(81156014)(105586002)(31686004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0401MB1321; H:[10.2.65.57];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjA0MDFNQjEzMjE7MjM6dXY3RWx3b2tEczZ3TFpVTjV3cXRwWGNC?=
	=?utf-8?B?ekdjZGZoRWp4cE9IdEFlUVdlcTF3YnRMOVhvUXVmRklzRW9hTjFzdHpMQlM1?=
	=?utf-8?B?ZUlZZ3BLelpoRVg3cVUrVUhFVGhFQVhvblNZSUNwZEhnRUxibmxIL3ZWckVD?=
	=?utf-8?B?Z2FOYkdxOTBDVmJRb0xSMFprSnJ1Uk9SRytWWEFPRzNqU0hPNm5xZVdUd01U?=
	=?utf-8?B?VmtFQkFDS0lKN1ZXTk9oWFd2elFJVTEya2RSOTFqSzFjN200bGppMURjV0JM?=
	=?utf-8?B?K1VSOVRydXdXcVIvYy9maEVFK2VIUlJGbk5oWHIvQ1p3aVJQVnY3aXUzMklF?=
	=?utf-8?B?b01sZUlKSWkyZUNvSGtRcFBlb0dJenp6bW9YVjVHYmpDTHdqbWJyclU4OW9w?=
	=?utf-8?B?eEwwNklIb0thcURaSDJ6ZzRyTWNzM1YvZi9rYS81ODRkV0NBTGx1dWpnVEdZ?=
	=?utf-8?B?Y21JYzMvTHlKOEFoWmdVWTMyZEFJM2ZIV2RybVdYTVZWZkJFemczaDVyTGN0?=
	=?utf-8?B?S29SVmxZWGlGWUdpcndEa1o2a3ZwcGVnN2c2b1FqTlNpYUlrcW96bDhiQjd1?=
	=?utf-8?B?T0R6UVF6b01Xd09MRENVTnNNOUNESUhuWFZSYjlnZlB3a2hYWDZtZjhFRzRG?=
	=?utf-8?B?cmY5aFA5MlBGUUhtNjBqWlRsYUNWYk02Z3piTG9SWEFGa0JlZitFaEliTEpG?=
	=?utf-8?B?Zk9ieFBrNU1qY0owZ3NjWjM0MXdNcUFzU1c3M2orTGNEdGFSUFdUL1hVc21o?=
	=?utf-8?B?Znh5elkvV3ZkK3Z6UzAvSWQwN1pwaUsrOHAyZFZnOEVoZHlKWEVTMlhwRm9T?=
	=?utf-8?B?Y1owVVZqR3Z0aWVlaEdyYmNyQjhlUVF2WVpQazRVekI4dk1ld2RCNXdPeTJ2?=
	=?utf-8?B?V2d6aGc0YkttTG9udzNyelNnd3RSWERjWVQ1RElkYThaOE9GNHdNblBVeVBP?=
	=?utf-8?B?K2lWUHJaSkd0TUt4Z0xSdlVGdmxNZWhGTHVqZ29kR1k0bk9maVhiWGtkNTc0?=
	=?utf-8?B?ZDJQNERqNnZuU3dSZHV2U1MxSjVRQkN1SSswQi9wZVN5c2RYa2FhSG5JWFd5?=
	=?utf-8?B?T3htVFhsU3FZR0dIS2crZEJaaGFMM1M3bjZMT29UU1lrbkxsRkw3bHNuUFp5?=
	=?utf-8?B?c0xwS1p3ZzNIVFV6eU1ZZjZjWTNReUM0ZStWVldMR1Bub2RMOGQ3dVBQVWNw?=
	=?utf-8?B?dDd5NTBhb3RFYjVrL0hRQnJSOVNhcVdLVllLVDFRWE8wQ1FycS94V0hJRG05?=
	=?utf-8?B?d1RiaE1aazFQVSsxV1gzUU04amRvdFBoWm1rR0c3L3ZlcjlVMi9jZTQ5Z1Nl?=
	=?utf-8?B?MTAyU3g1d25xKzR3NGN3YmIzejBpV0VaRnJydVZJamU4RGtBcFoxN1pyYkVt?=
	=?utf-8?B?a1ozRjJZcjl0UHhUTG5NTldua0FyQTVpcW15Y2tjL2FrZ2JESzBYd05XUWlk?=
	=?utf-8?B?bjhVM2hxT0JkaG9JbzUrak8vVDN0VERSWnBHVEk3Q3pQRys2UzZDVDRKQUcy?=
	=?utf-8?B?SWQxTHBMRTNpYk5nVWM0eXlvby9WNjJ3ZHF0SHgvbjZXZTZWcitXOEc3WTVL?=
	=?utf-8?B?MkdsYlg0d0RIdWJyc0RqdkFNNGVFV1JWVmhwdHhnSmJNUStXL1h0czNVZEJu?=
	=?utf-8?B?UjVGVW9yNHVxVUpyckJXV05ncUxXR0x2R2ZQbUpLSmdOZkdRZGFpQmFHaWxl?=
	=?utf-8?B?NHIrVVlydjZCMCtCeDNCU1Jwa0xoSzI5TDJ1VVc5aTZxb2dmaDBGWm1GT25S?=
	=?utf-8?B?L3NZOXVocjNEMGRlQWpEaGhWWVg3ZGtGWEFoY1pXQzM2ejJRM2VCcU5PUjNX?=
	=?utf-8?B?dlJiRmdUS0lJSTYrZFdCREpNeThUdWtHcjdGbnVRb0tuc045QT09?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	6:wMuAEBYTNGvBsSq9BJjGUwXvOznS8qi7KS+6NpKfdpyAcVg/z/4weAqXb8GKerkCZ1FwS2vppxslXsSqbamEXfOxIss99pGmQMvqIXP3whyluChwIS4BuROESllibmCLJqRLuGmH/vthL0gwCncPVtywFhw7hNE/h+L5q/YUkr8T6/DrJTo08Wb4EThbaLexre4ctJmzSfm4EGai+wv9cx1qn2Q9HCD9dWT8XHhKUdhm3eORv+Q8Rz9nsT3VYwL90os77CLqxd02ax4P4jb5efD4deBrVL/QCOlYFN8DEZhpsEPbf1UogwDcXDeViX+M2xugenYE15+VutaaX2iZyXybvLUjX11JPCBrainomkk=;
	5:g+06eHF+TJ4ky8prss9ihDFnX5uR7z9QXaF+q8q3GPFgJYcU/1KbZtgLOYQ5HbSvmX4ghsIYEQHoxL1q89UdfCGSiQLmCxMaIScUvmj8XARNS19WgOtj0a04Tepu2kyrkufA4w4WCA+TRXu4APG1M0jugTAAW7mNmjzYpT72cpk=;
	24:/uGpjCvmZyM61kfDpHnItl6iF1jcLdAoiOORJnUK8S0ccuRGY4OO7RopbaMtieqBpXD4CxJLogNH5KLsbguw/F0++BDBLAyKg5ZULW4hW9k=;
	7:JxltUw0e+1YJGTIg02j7xki4DlSUqvfRkMZzE2VKyIW42FiH7VYQC8JMzHuWuSmgpdjiq8aKLyrka174I3S7nhw46HL0fkxJh8H6abvmFAyWtG00eWK/XQye8JJm4gIrLmQecSB58aWN0uQAHwVX6O2hYwbS7+tzQ9j0o9JCY3ius8mW610CMnQi4U/JRzzefUUncPH6z/my/HwHb7JGaf4US/MzjMeoUoYEFYVir7h/81Dhg1RU1av5h4pZXG3M
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2018 18:12:12.9439 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba717134-9b11-4a1d-6816-08d57a1fcc31
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1321
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-02-22_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1802220228
Subject: opkg-utils 0.3.6
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
X-List-Received-Date: Thu, 22 Feb 2018 18:21:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all,

I am please to announce the 0.3.6 release of opkg-utils. In this 
release, we had 10 commits, contributed by 7 developers:

Jeffrey Pautler		3
Alejandro del Castillo 	3
Zhu Mumu		1
Adam Trhon 		1
Jackie Huang		1
Juro Bystricky		1

Jeffrey, Zhu, Adam, Jackie, Juro, thanks for your contributions!

Changes included on this release:

- opkg-build: make Section, Priority and Source fields optional
- opkg.py: add compatibility with ipks which outer is tar
- opkg-build{package}: fix error message
- opkg.py: remove brittle formatting of description field
- opkg-make-index: add option to include all fields on index file
- update-alternatives: fix the sed pattern in remove_alt
- update-alternatives: add support for link renames (issue 8344)
- opkg-build: improve package reproducibility (issue 11242)

looking forward to the 0.4.0 release cycle!

-- 
Cheers,

Alejandro

