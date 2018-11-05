Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55284E00872; Mon,  5 Nov 2018 02:56:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A2BE00754
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 02:56:15 -0800 (PST)
Received: from pps.filterd (m0094032.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA5AtfRv013514; Mon, 5 Nov 2018 05:56:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : cc : subject
	: date : message-id : references : in-reply-to : content-type :
	content-transfer-encoding : mime-version; s=mail;
	bh=Qs3tAd5b42nsb3hLAEn+MRadTg+KFssSKlwL5Rmewpo=;
	b=dbkc4xVL1SOj1krQRWapiuSb3LzC1oMKwZO2PmcLkxXgew5XFQkgL6myOkZ9qDpWZcPT
	hzUeMUnoim+uuWCgqjoNFQXFFeH3Y7n9eil+Az7sthHS8BXyVXFSCvA/bejg0pp4t9fQ
	Po8iZwgX1yqDxQ/mJKX8c2impEmeDMjUVlzcWwUZ1xcBtJGg88X2JqkstmzzfcH26vfv
	mfB5xh0ir8dpYPVyupiFz+yj/B7YaTpDF/8OREwPpzc/4CCSqaFwz9zPsSPWNqrnlrHt
	f3XvPdaHS9WaTCmOExrhRWMgOz0QEjmwVbZMUdG2n3SVZzrj1ZzQ0MXQIqGpYEPiqhOF
	XQ== 
Received: from nam04-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam04lp0115.outbound.protection.outlook.com
	[216.32.180.115])
	by mx0b-00209e01.pphosted.com with ESMTP id 2njh4mh43e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 05 Nov 2018 05:56:12 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1915.namprd15.prod.outlook.com (10.174.247.143) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.26; Mon, 5 Nov 2018 10:56:10 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%5]) with mapi id 15.20.1294.032;
	Mon, 5 Nov 2018 10:56:10 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Server Certificate Verification Failed
Thread-Index: AdR05dfpF76pDlcgQN2tlbh44QjBswACyQeAAAAhYXAAADwOAAAA6n/A
Date: Mon, 5 Nov 2018 10:56:10 +0000
Message-ID: <DM5PR15MB191341EFDD975659EB755714F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
References: <DM5PR15MB19135EE912E9C5A6575D0E20F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
	<CAJTo0LYbXyREwmvi7wNPSkw+_BpkYp=xTt3t__shDPJVs+s81Q@mail.gmail.com>
	<DM5PR15MB1913974E38C3467F9561DF75F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
	<CAJTo0LbdyT0K6Nfo6D9O5x2Nc_sRjy-WkNSDSU3exppru+C2iQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbdyT0K6Nfo6D9O5x2Nc_sRjy-WkNSDSU3exppru+C2iQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-05T10:56:08.8904804Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [32.66.192.217]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1915;
	6:fhb0ksr13y0InNiu9t43JaeY5jIGYxZTLnuxn2gxb2+I3rFF5QSOM8zmMbVa5e+0v9OHlXxChYxEluSCxQ2j5RWnbwGBUaSuDQOD1+443yYeXEnn4fgQC5ny3g+7auDqmNltCecCnYVAzXFRUgTF4/Et3fFz3zPDIHWqMRm+doKbWOBBIJoyuakp2pxFYFmMUTPw4WleBlOHYZ6JzN7D9yqPDj+axnH+5LZSthnEAbAggnnn0eSEwCRxcUSdX5R3nzVRSsNQ3tRcl/sqQtB7a18vLHR+LEUMoKDtPzp0S5gqmfZfaD3K8JOlUyQ6zhHhhDPRWjTpcwiqTdZtMfTo5ywWbvRxrikUsUf0/T/GwRmzdd8soq0WUrE/fTT7npbzZ/uau1PJ34r5aGYvOLwcVFB00FYyfFp4tio+50hKW6oraTJ4sjA0EeMcBNP5TqQpCgce8Kv3UFVD7tWICFKh5Q==;
	5:x3A8iXAkWLcRQDC4WUYLs+ktwBwcyCO4t0PphOkCuhVEjqWRM2gYCbBtP6HkeMsLe7T/UdENmRHevMLGr/9gcWTDZBC+fgbuRjRILBEipmXLbEhx0vuWDjtE+A/+bAa2l8a19+/7139QXarwJGH63pNSFNjFqR7q7fq7VBjNmi8=;
	7:XPalLFmJLEPS52Rkq1xuwL8sPJ0lJYFiHfG+IuKvfgRkQ5nIDK/9fz2weKsY+mNKt/A9Rlyg+n4Nq4jGCQ0vH0txIy3VPhPzJSfoRg6vZnWKM64ENZUPJFtaBHnQnHbQTYDXdtovksTWnAAVClSOsQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: aabea583-a000-4f69-1061-08d6430d4bef
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1915; 
x-ms-traffictypediagnostic: DM5PR15MB1915:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB19158691136627B260E6D821F0CA0@DM5PR15MB1915.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(228905959029699)(10436049006162)(110640500709094);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231382)(944501410)(4982022)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(148016)(149066)(150057)(6041310)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1915; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1915; 
x-forefront-prvs: 08476BC6EF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(136003)(39860400002)(366004)(199004)(189003)(13464003)(8936002)(68736007)(106356001)(486006)(8676002)(229853002)(81166006)(81156014)(71190400001)(71200400001)(99286004)(53936002)(105586002)(6246003)(6916009)(446003)(11346002)(66066001)(74316002)(97736004)(5660300001)(305945005)(66574009)(2900100001)(7736002)(476003)(3846002)(2906002)(4326008)(33656002)(186003)(25786009)(26005)(256004)(14444005)(5024004)(575784001)(86362001)(15650500001)(6116002)(19627235002)(6436002)(6306002)(55016002)(9686003)(102836004)(6506007)(53546011)(7696005)(316002)(478600001)(14454004)(76176011)(72206003)(93886005)(966005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1915;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: /TBKc8KVkAj5t/xlEU2EFxSUcCUQllRy/CYlRcHZBBD/a+InfCMGMR0oncJ0U3c0PltQgljDZ67a8Ts80pFPO0iJ4ICLF+ko2cuCrij+JKFbCg04guqSQTWX0zpG42vV7qbaX+ISIyfMAPneiLMrhPabveyPthDulsWEFVaHit7ZAmYElFOTJ6t59ARYvmXiWEBm2pVNsjKzjV79VOBvnVT9slQhyA8m2qhMM5etJuW4Y3alpu75XJ7D+/s7MLxQJhnO0UG8DMeh+kX1q60NIJ1EJrvXsQJQr30CR8dqh7t5KZJsUzf/non5Eo+B4kb+cxwFFG5+6R6Y21rOIHnQG1z6h9yDm/w/2cKLRdsm5Zs=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aabea583-a000-4f69-1061-08d6430d4bef
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2018 10:56:10.6317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1915
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-05_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=845 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811050102
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Server Certificate Verification Failed
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
X-List-Received-Date: Mon, 05 Nov 2018 10:56:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFJvc3MsIEkgZG9uJ3Qga25vdyB3aGF0IGhhcHBlbmVkLCBJIGFtIG5vdCBnZXR0aW5n
IHNzbCBlcnJvcnMgbm93Li4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEJ1
cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gDQpTZW50OiBNb25kYXks
IE5vdmVtYmVyIDUsIDIwMTggNDowMCBQTQ0KVG86IE1vaGFtbWFkLCBKYW1hbCBNIDxNb2hhbW1h
ZEphbWFsLk1vaGl1ZGRpbkBuY3IuY29tPg0KQ2M6IFlvY3RvLW1haWxpbmctbGlzdCA8eW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZz4NClN1YmplY3Q6IFJlOiBbeW9jdG9dIFNlcnZlciBDZXJ0aWZpY2F0
ZSBWZXJpZmljYXRpb24gRmFpbGVkDQoNCipFeHRlcm5hbCBNZXNzYWdlKiAtIFVzZSBjYXV0aW9u
IGJlZm9yZSBvcGVuaW5nIGxpbmtzIG9yIGF0dGFjaG1lbnRzDQoNCk9uIE1vbiwgNSBOb3YgMjAx
OCBhdCAxMDoyNCwgTW9oYW1tYWQsIEphbWFsIE0gPE1vaGFtbWFkSmFtYWwuTW9oaXVkZGluQG5j
ci5jb20+IHdyb3RlOg0KPiBJIGhhdmUgdGltZSBjb3JyZWN0IGFuZCBjYS1jZXJ0aWZpY2F0ZXMg
aW5zdGFsbGVkLiBUaGlzIGlzIHRoZSBtZXNzYWdlIA0KPiBJIGdldCB3aGVuIEkgYWNjZXNzIGl0
IG92ZXIgd2ViOiAgDQo+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/
dT1odHRwcy0zQV9fZ2l0LnlvY3RvcHJvamVjdC4NCj4gb3JnX2dpdF9tZXRhLTJEaW50ZWwmZD1E
d0lGYVEmYz1nSk4yamY4QXlQNVE2TnAweVdZMTl3JnI9NGhfXzJhOC03TjY1cQ0KPiBvRG5tdHN5
R2hfUVlxM2tQQ24tTG95MkwwTEhuQ3MmbT1QQTJBUTE5UXVmOU9ydkJJcnl4cjZyNExCY0QzUG1I
MzYxVFZIDQo+IHNQNEdkYyZzPTNmVUczODdHM2s1Z3NFczhFaXB2czNlRGlYaU15V0trcDBTYkVa
RkpKLW8mZT0NCj4NCj4gVGhpcyANCj4gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29t
L3YyL3VybD91PWh0dHAtM0FfX2dpdC55b2N0b3Byb2plY3Qubw0KPiByZyZkPUR3SUZhUSZjPWdK
TjJqZjhBeVA1UTZOcDB5V1kxOXcmcj00aF9fMmE4LTdONjVxb0RubXRzeUdoX1FZcTNrUENuDQo+
IC1Mb3kyTDBMSG5DcyZtPVBBMkFRMTlRdWY5T3J2QklyeXhyNnI0TEJjRDNQbUgzNjFUVkhzUDRH
ZGMmcz1lYzBqUm8zNlYNCj4gbkV4QUdxOHFtTjRtNzIwT2hTSjhmSEdSU1FwdG9zVGVMNCZlPSBw
YWdlIGNhbuKAmXQgYmUgZm91bmQgTm8gd2VicGFnZSANCj4gd2FzIGZvdW5kIGZvciB0aGUgd2Vi
IGFkZHJlc3M6IA0KPiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9
aHR0cHMtM0FfX2dpdC55b2N0b3Byb2plY3QuDQo+IG9yZ19naXRfbWV0YS0yRGludGVsJmQ9RHdJ
RmFRJmM9Z0pOMmpmOEF5UDVRNk5wMHlXWTE5dyZyPTRoX18yYTgtN042NXENCj4gb0RubXRzeUdo
X1FZcTNrUENuLUxveTJMMExIbkNzJm09UEEyQVExOVF1ZjlPcnZCSXJ5eHI2cjRMQmNEM1BtSDM2
MVRWSA0KPiBzUDRHZGMmcz0zZlVHMzg3RzNrNWdzRXM4RWlwdnMzZURpWGlNeVdLa3AwU2JFWkZK
Si1vJmU9DQo+IEhUVFAgRVJST1IgNDA0DQoNCiQgZ2l0IGNsb25lIGh0dHBzOi8vdXJsZGVmZW5z
ZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fZ2l0LnlvY3RvcHJvamVjdC5vcmdf
Z2l0X21ldGEtMkRpbnRlbCZkPUR3SUZhUSZjPWdKTjJqZjhBeVA1UTZOcDB5V1kxOXcmcj00aF9f
MmE4LTdONjVxb0RubXRzeUdoX1FZcTNrUENuLUxveTJMMExIbkNzJm09UEEyQVExOVF1ZjlPcnZC
SXJ5eHI2cjRMQmNEM1BtSDM2MVRWSHNQNEdkYyZzPTNmVUczODdHM2s1Z3NFczhFaXB2czNlRGlY
aU15V0trcDBTYkVaRkpKLW8mZT0NCkNsb25pbmcgaW50byAnbWV0YS1pbnRlbCcuLi4NCnJlbW90
ZTogQ291bnRpbmcgb2JqZWN0czogMTY0ODAsIGRvbmUuDQpyZW1vdGU6IENvbXByZXNzaW5nIG9i
amVjdHM6IDEwMCUgKDUyOTQvNTI5NCksIGRvbmUuDQpyZW1vdGU6IFRvdGFsIDE2NDgwIChkZWx0
YSA5NzgzKSwgcmV1c2VkIDE2MjA4IChkZWx0YSA5NTExKSBSZWNlaXZpbmcgb2JqZWN0czogMTAw
JSAoMTY0ODAvMTY0ODApLCA0LjYxIE1pQiB8IDM5Ny4wMCBLaUIvcywgZG9uZS4NClJlc29sdmlu
ZyBkZWx0YXM6IDEwMCUgKDk3ODMvOTc4MyksIGRvbmUuDQoNClRoYXQgVVJMIGRvZXNuJ3Qgc2hv
dyBhbnl0aGluZyB1c2VmdWwgaW4gYSBicm93c2VyIGFzIGl0J3MgYSBnaXQgcmVwb3NpdG9yeSwg
bm90IGEgd2ViIHBhZ2UuDQpodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJs
P3U9aHR0cHMtM0FfX2dpdC55b2N0b3Byb2plY3Qub3JnX2NnaXRfY2dpdC5jZ2lfbWV0YS0yRGlu
dGVsXyZkPUR3SUZhUSZjPWdKTjJqZjhBeVA1UTZOcDB5V1kxOXcmcj00aF9fMmE4LTdONjVxb0Ru
bXRzeUdoX1FZcTNrUENuLUxveTJMMExIbkNzJm09UEEyQVExOVF1ZjlPcnZCSXJ5eHI2cjRMQmNE
M1BtSDM2MVRWSHNQNEdkYyZzPWRvZU5VcGxqOGNYbnZBcTA3WXRIbXVNeWpRZXM5MXgyN1hsREFQ
TWZ6U2cmZT0gaXMgdGhlIGh1bWFuLXJlYWRhYmxlIGNnaXQgZnJvbnRlbmQuDQoNClJvc3MNCg==

