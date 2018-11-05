Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51630E00872; Mon,  5 Nov 2018 02:24:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85A5E00754
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 02:24:26 -0800 (PST)
Received: from pps.filterd (m0115756.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA5AOPXt026008; Mon, 5 Nov 2018 05:24:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : cc : subject
	: date : message-id : references : in-reply-to : content-type :
	content-transfer-encoding : mime-version; s=mail;
	bh=JmjNwN5es4bzfGo8TJMgFjnOGj9PjyVV8k2F9VgTw40=;
	b=Cz5gFXUFXtdGJRgbD9UBbOPfhmciFAE1hcy6f0Gq2Pi5qyFaQ2A3WSijL4IfYqbt1Wwc
	oLQ6Ux8ggBqp8HHjsvWI/F7Dt5lZph4aAKgZ4HTTW8gJ4Fr5OEXDEKiEaAG2QaXLyI2f
	x6IX2PjOCUzmxVJwJQGxGn3UQwN61ViTDnvPEmGAuqfGTdEM+aTyaZHEkpNoAYJchV9l
	67Vx4YUW0Q0xr2iSaw/87wOsXfkGyaD8mwKLPRDv97xxoGWo4OMi10IzI8sOEiI2JbJo
	D8nPiYJe/wszWofsXU6xH84p8UWxiG33+hIXSU2zufK7caaZ0a7R0mYE06SrOM4gIxbx
	ow== 
Received: from nam04-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam04lp0116.outbound.protection.outlook.com
	[216.32.180.116])
	by mx0b-00209e01.pphosted.com with ESMTP id 2njjb5rk91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 05 Nov 2018 05:24:25 -0500
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1418.namprd15.prod.outlook.com (10.173.225.12) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.31; Mon, 5 Nov 2018 10:24:20 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%5]) with mapi id 15.20.1294.032;
	Mon, 5 Nov 2018 10:24:20 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Server Certificate Verification Failed
Thread-Index: AdR05dfpF76pDlcgQN2tlbh44QjBswACyQeAAAAhYXA=
Date: Mon, 5 Nov 2018 10:24:19 +0000
Message-ID: <DM5PR15MB1913974E38C3467F9561DF75F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
References: <DM5PR15MB19135EE912E9C5A6575D0E20F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
	<CAJTo0LYbXyREwmvi7wNPSkw+_BpkYp=xTt3t__shDPJVs+s81Q@mail.gmail.com>
In-Reply-To: <CAJTo0LYbXyREwmvi7wNPSkw+_BpkYp=xTt3t__shDPJVs+s81Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=mm185399@ncr.com; 
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2018-11-05T10:24:17.1925667Z;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual;
	Sensitivity=Confidential
x-originating-ip: [32.66.192.217]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1418;
	6:stVo/pZxrDLyont575JzRfMeCb04PKGRRIbiYBYJy2ng1BkwKA6OsD6hiVrCuQo2q/w9ydfP42XiwFUlbwmOvFI2QYI397dCs0x3FH5kr5mgtbokLcH2gdfiu8IQCpVUKEQDeT0sVzg77XNZzTEd2xCtziSgnWyv5dC5mqOxxSzjuNICxYIlA31Vfks+h5Mle7Z4JQK6YiOhahnV8trvrWpk7GWhTy+Gf2uqXMugq/WbSq6OS+LFVGZULYeF/3uCQnRhU4UaVy3f6CbzZdN2ndeXIeqq+gJuGRr68GFZKZV5XcSOkfvMmCyG2pN54hCEcMR+QfE6LPT9IGft7IaO/vUjArXCZDyVW8ijdWKwupDvgaUYGHPMVMqGj/tZ9aOZR4ImTeufISqvp3Ep2dwPIbqa0SBQKCLnMjMEpzaIJMWF3Cj9w1b1zmvy7olYd78KIUR/vFuqZa6hHcpaTmNN9g==;
	5:djP+UOYbPxcJ9rDuYHz2lyxYeDD+IXpG29MAdpZdF2kSsDvcqC1/upEdtBsrnJtLumqt7xAdy+HW7TrW1GY0tqwdnYd0Md6ebqmk4bJZXXVGR4hxjQAn93vckJ4+NCGTMsArgKa8iywm96y2MSiO44ZJ9V2SRX8lRWOMWyASd8Q=;
	7:6T9qh3C4mdf8PErW4sCTdTY9vLDuE/j+d4q3QaUwcGNVR0w7Aqs8BPazTHNvyHVd12egPWN07al71SAkrhIUW3jnEpe0OhRgQQNEvADgKCendkiol1zku0xE2sgQWYuA0AEomHtgbMpjoydwMK9a6w==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 71523ab0-3bab-4cf8-3df2-08d64308d92e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1418; 
x-ms-traffictypediagnostic: DM5PR15MB1418:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB1418C0260B5F5A1C32EA7715F0CA0@DM5PR15MB1418.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(228905959029699)(5213294742642)(10436049006162)(110640500709094);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231382)(944501410)(4982022)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1418; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1418; 
x-forefront-prvs: 08476BC6EF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39860400002)(366004)(136003)(396003)(13464003)(189003)(199004)(6916009)(106356001)(66066001)(7736002)(33656002)(74316002)(305945005)(2900100001)(15650500001)(99286004)(76176011)(7696005)(102836004)(53546011)(6506007)(26005)(186003)(2906002)(476003)(55016002)(446003)(6436002)(53936002)(6306002)(9686003)(25786009)(486006)(6246003)(229853002)(105586002)(4326008)(11346002)(71190400001)(71200400001)(97736004)(478600001)(8676002)(14454004)(316002)(14444005)(256004)(68736007)(5660300001)(81156014)(81166006)(86362001)(575784001)(966005)(3846002)(72206003)(6116002)(8936002)(5024004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1418;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: N52B2CunPTiDZSCo3sTj/OF5I+99FO4E42VUEJulwa/RdRsRCQSqoijNjuayi9nFS33Ec5bBsKrBQihQ2M+ncKYXr8/hV5+qdlixYickG3KgbMHVSC96VoC66TlPRAjiowrq5xUJZYJWPEYeLnzLo/BqM5kMP3N74vHHxHoqQLcCZjYB7RU7rT+nqrtisagDq6xuf93eeBtSZA/yDXruEFUhil4Pai6O0m4vY2v3qeblzmgJvEB/p3+bkegSD3ZPPi+UUsYdUVK/MSnpefNqIyebkILq8MTO2B/1PfDzJfM5tfjHeI6camr1t6j/D/nYkq6YPtbF4uJAAtNNbr1DFantG31xXL5Y4sgPJRpnll4=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71523ab0-3bab-4cf8-3df2-08d64308d92e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2018 10:24:20.0428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1418
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-05_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811050097
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
X-List-Received-Date: Mon, 05 Nov 2018 10:24:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHRpbWUgY29ycmVjdCBhbmQgY2EtY2VydGlmaWNhdGVzIGluc3RhbGxlZC4gVGhpcyBp
cyB0aGUgbWVzc2FnZSBJIGdldCB3aGVuIEkgYWNjZXNzIGl0IG92ZXIgd2ViOiAgaHR0cHM6Ly9n
aXQueW9jdG9wcm9qZWN0Lm9yZy9naXQvbWV0YS1pbnRlbA0KDQpUaGlzIGdpdC55b2N0b3Byb2pl
Y3Qub3JnIHBhZ2UgY2Fu4oCZdCBiZSBmb3VuZCBObyB3ZWJwYWdlIHdhcyBmb3VuZCBmb3IgdGhl
IHdlYiBhZGRyZXNzOiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL2dpdC9tZXRhLWludGVs
DQpIVFRQIEVSUk9SIDQwNA0KDQpDYW4geW91IHBsZWFzZSBjaGVjayBhdCB5b3VyIGVuZCB3aGV0
aGVyIHlvdSBhcmUgYWJsZSB0byBhY2Nlc3MgdGhlIHdlYnNpdGUNCg0KVGhhbmtzIGFuZCBSZWdh
cmRzLA0KSmFtYWwNCg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0
b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dIA0KU2VudDogTW9uZGF5LCBO
b3ZlbWJlciA1LCAyMDE4IDM6NDkgUE0NClRvOiBNb2hhbW1hZCwgSmFtYWwgTSA8TW9oYW1tYWRK
YW1hbC5Nb2hpdWRkaW5AbmNyLmNvbT4NCkNjOiBZb2N0by1tYWlsaW5nLWxpc3QgPHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmc+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBTZXJ2ZXIgQ2VydGlmaWNhdGUg
VmVyaWZpY2F0aW9uIEZhaWxlZA0KDQoqRXh0ZXJuYWwgTWVzc2FnZSogLSBVc2UgY2F1dGlvbiBi
ZWZvcmUgb3BlbmluZyBsaW5rcyBvciBhdHRhY2htZW50cw0KDQpPbiBNb24sIDUgTm92IDIwMTgg
YXQgMDk6MDIsIE1vaGFtbWFkLCBKYW1hbCBNIDxNb2hhbW1hZEphbWFsLk1vaGl1ZGRpbkBuY3Iu
Y29tPiB3cm90ZToNCj4gRmV0Y2hpbmcgcHJvamVjdHM6ICA2MCUgKDMvNSkgIGZhdGFsOiB1bmFi
bGUgdG8gYWNjZXNzIA0KPiAnaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3Vy
bD91PWh0dHBzLTNBX19naXQueW9jdG9wcm9qZWN0DQo+IC5vcmdfZ2l0X3Bva3lfJmQ9RHdJQmFR
JmM9Z0pOMmpmOEF5UDVRNk5wMHlXWTE5dyZyPTRoX18yYTgtN042NXFvRG5tdHMNCj4geUdoX1FZ
cTNrUENuLUxveTJMMExIbkNzJm09MlhFOXptMjNHX1Zva0REQ1U4cHhOSUtnUmtEdDdPSDBDWWFw
RHVKMTZfbw0KPiAmcz0tNnF6dnJWaEpOU0ZoTjV6VTlMWkhmb1llU1dfaWc2bUZHbFVIVFV2YzJn
JmU9Jzogc2VydmVyIGNlcnRpZmljYXRlIA0KPiB2ZXJpZmljYXRpb24gZmFpbGVkLiBDQWZpbGU6
IC9ldGMvc3NsL2NlcnRzL2NhLWNlcnRpZmljYXRlcy5jcnQgDQo+IENSTGZpbGU6IG5vbmUNCj4N
Cj4gZmF0YWw6IHVuYWJsZSB0byBhY2Nlc3MgDQo+ICdodHRwczovL3VybGRlZmVuc2UucHJvb2Zw
b2ludC5jb20vdjIvdXJsP3U9aHR0cHMtM0FfX2dpdC55b2N0b3Byb2plY3QNCj4gLm9yZ19naXRf
bWV0YS0yRGludGVsXyZkPUR3SUJhUSZjPWdKTjJqZjhBeVA1UTZOcDB5V1kxOXcmcj00aF9fMmE4
LTdONg0KPiA1cW9Ebm10c3lHaF9RWXEza1BDbi1Mb3kyTDBMSG5DcyZtPTJYRTl6bTIzR19Wb2tE
RENVOHB4TklLZ1JrRHQ3T0gwQ1lhDQo+IHBEdUoxNl9vJnM9U3UtUVAxUV92LURQUUJGVmV4V05m
OGZfTXI4d05FNU1kZy1PTHdfbEwwVSZlPSc6IHNlcnZlciANCj4gY2VydGlmaWNhdGUgdmVyaWZp
Y2F0aW9uIGZhaWxlZC4gQ0FmaWxlOiANCj4gL2V0Yy9zc2wvY2VydHMvY2EtY2VydGlmaWNhdGVz
LmNydCBDUkxmaWxlOiBub25lDQo+DQo+IGVycm9yOiBDYW5ub3QgZmV0Y2ggcG9reQ0KPg0KPg0K
Pg0KPiBJIHRoZW4gdHJpZWQgdG8gb3BlbiB0aGUgYWJvdmUgbGluayBmcm9tIHdlYnNpdGUsIEkg
Z290IGEgc2ltaWxhciANCj4gbWVzc2FnZTogTkVUOjpFUlJfQ0VSVF9EQVRFX0lOVkFMSUQNCg0K
VGhlc2UgYXJlIGFsbCBwcm9ibGVtcyB3aXRoIHlvdXIgbWFjaGluZTogeW91IGRvbid0IGhhdmUg
dGhlIENBIGNlcnRpZmljYXRlcyBpbnN0YWxsZWQsIGFuZCB0aGUgbGF0dGVyIHN1Z2dlc3RzIHRo
YXQgeW91ciBsb2NhbCBjbG9jayBpcyB3cm9uZy4NCg0KUm9zcw0K

