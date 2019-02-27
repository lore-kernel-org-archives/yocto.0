Return-Path: <Edmund.Nadolski@microsoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC210E009EB; Wed, 27 Feb 2019 18:33:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.77.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 12802 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Feb 2019 18:33:21 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr770137.outbound.protection.outlook.com [40.107.77.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6A9E009EB
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 18:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=JOtGdS12Q52fOJfWySwSmBWC1BjV8gSClOff98WmcVo=;
	b=JLfzDYvgy5Yj+5nkIOtNwR++nPJikxjbyNVJcWtUiqGDUcje7NhaI+ytJPM8m/CROlTVrVrHMvSmgEOc0pDRQ5/ulj6lbyDptha+3dUj/AGapHaUUZNl5WMsOnJqjv6R375tsoLksWGnzyRM8ZVv69nAZsQbEFO5SBZiB49myA4=
Received: from MWHPR21MB0766.namprd21.prod.outlook.com (10.173.51.20) by
	MWHPR21MB0287.namprd21.prod.outlook.com (10.173.53.17) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1686.4; Wed, 27 Feb 2019 22:59:58 +0000
Received: from MWHPR21MB0766.namprd21.prod.outlook.com
	([fe80::8925:2cdb:9b72:cd95]) by
	MWHPR21MB0766.namprd21.prod.outlook.com
	([fe80::8925:2cdb:9b72:cd95%13]) with mapi id 15.20.1686.007;
	Wed, 27 Feb 2019 22:59:58 +0000
From: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SRC_URI when there is a local mirror but no remote repo
Thread-Index: AdTO77EJ7mvIhJVfQI6JwZhq3mbTHA==
Date: Wed, 27 Feb 2019 22:59:58 +0000
Message-ID: <MWHPR21MB07666F341A64E2B2553E5927E5740@MWHPR21MB0766.namprd21.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=ednadols@microsoft.com;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-02-27T22:59:56.8028965Z;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=fc5bed99-6b9a-48d9-af85-188a98d90330;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
x-originating-ip: [2001:4898:80e8:7:a18e:aa4a:89a6:6afe]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c71c3f0-d3de-4ab1-4e49-08d69d074bc1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(4618075)(2017052603328)(7193020);
	SRVR:MWHPR21MB0287; 
x-ms-traffictypediagnostic: MWHPR21MB0287:
x-ms-exchange-purlcount: 1
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; MWHPR21MB0287;
	23:Q+eVsUxGRPkjjMF/kYG0PNy9eVa+/2QbxZuKLpMgu?=
	=?us-ascii?Q?pvXc/Nb6NxdVdIQuDuFCTPdD+Wh62qKD1Ontxx4dmyj1eAFqeK89Lktc+tPj?=
	=?us-ascii?Q?eTQHb98zS9RTQ3orsm+NCBfasln//2O6lIdf6CD9vtMOOVYi8oFQXyeL2COr?=
	=?us-ascii?Q?veO/rxUnwxiLIupznb484qJ5JcL+QiAbKL7HDGlfOYEGJ13DwaY8tgB/PgCC?=
	=?us-ascii?Q?CwiXFzABqb6v75TGev66afhYTJ8zrH+1UnCG/CMb7gxJELWBa+pubgdlNRCh?=
	=?us-ascii?Q?KF+Dn7RihLFfnvMhcXo5EcahoNb4QAS56FdLs69Bu6PKXbV67vMLNn1uw4We?=
	=?us-ascii?Q?+PZNzQ86v2oU6REy1Scivtwux6oFFI8kEUxM4J8rM1VNQ7KmnNQN/q1uZ/Lt?=
	=?us-ascii?Q?TnDUlwtAnjw0o2e89ALWt+9D6VwctiaALnirQqz0KWgJFOj+Bhc1TuZhJXsz?=
	=?us-ascii?Q?5UjDpjjNGn2N1zxOZyUCoY02uNW3HKUe2OJZlJodoQsTchDbtsOz28DoR/Xu?=
	=?us-ascii?Q?3XwAp+s8IuPQwN3FO81i/bg0QPCdGZXIWCHbEeTSw9ycZ/KV1rWHNLtWnNHJ?=
	=?us-ascii?Q?ocFL7hzMcbW2hJy1YUeRxVar4XtHuhjcyV0h+MdjmWR03zjHrKbkQDZfH/5Z?=
	=?us-ascii?Q?KXKdEYimoKZ1C1H26IdR8GCdeBPnirjrz50EyyJ5HGCXfQ3HIsW8z/cmx8AE?=
	=?us-ascii?Q?LVm5/cJHnxQXg6cxPf2gljKb7SIS5T1mr2iGOcwaUID2hfyRjuQ27THtkjfg?=
	=?us-ascii?Q?L+E0t2CZfWznWbdyPPEvrfEFmSeCeu3hg7psSYToz9nYT4Zgj5UR7I+tbY66?=
	=?us-ascii?Q?jXolJjcx+40Nr3B1TrmZ5Ctv+M4xxWzNkzFcG/6FScVtIQBtksx7nWfTV4jX?=
	=?us-ascii?Q?lC6uahUVT6MmFSPGNZLs0A59N6iNCNnr99xjOowtwJfFupvmlzxY5aR2WuI9?=
	=?us-ascii?Q?eEDbycdCZdDsJ6hZ/ADh7Lzjem0OfrBpOIffSGeQA13eJdturF0ZuNm58Fqo?=
	=?us-ascii?Q?bOYwC8Ygl7HNgYjRnhfcJKXUjVvZiPQ4H81qS8t/B746D6Mn2Aav8LUmPFvM?=
	=?us-ascii?Q?sGv8ax4cxhxjdbQhvROAnKO2toFDg1Uwipl5RLpuB8d0HCeDZcSh+a7AXX5z?=
	=?us-ascii?Q?QKTkGwpkYss4v9WulndsgLxS1Koz3eYmpUxUHti4FemwFiTtGYneysV663kO?=
	=?us-ascii?Q?CrfJ7kf4SAsYqARr71CTykMzJlHgltOOwRirOIWQ64h2B4SUswwnHj1D6WCt?=
	=?us-ascii?Q?BxYSbJN4+bfWAQCiy8/pfda9AyBhkibqSa+qIuFm8qM9p6PkPhALfk9TmWAh?=
	=?us-ascii?Q?DpIAbbYnQmrngnxeXlGyih1uVg6glbYuqyDIWhMq5/j?=
x-microsoft-antispam-prvs: <MWHPR21MB028734C14083FB46FD6F4987E5740@MWHPR21MB0287.namprd21.prod.outlook.com>
x-forefront-prvs: 0961DF5286
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(366004)(396003)(346002)(376002)(136003)(199004)(189003)(476003)(8676002)(6346003)(1730700003)(97736004)(71190400001)(46003)(5640700003)(71200400001)(81166006)(81156014)(14454004)(966005)(486006)(6436002)(55016002)(9686003)(72206003)(6116002)(6306002)(86362001)(86612001)(102836004)(256004)(22452003)(478600001)(53936002)(8936002)(2906002)(68736007)(74316002)(7736002)(10290500003)(52536013)(316002)(305945005)(25786009)(10090500001)(6916009)(105586002)(106356001)(186003)(6506007)(99286004)(33656002)(2351001)(2501003)(5660300002)(8990500004)(7696005)(4744005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR21MB0287;
	H:MWHPR21MB0766.namprd21.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edmund.Nadolski@microsoft.com; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rzgUcx0afkcVgBUTy2zBGYeOZfyg29lkUkyzLSGHxnYK/25du0aoGPLrV8S2xChK10i2pHqkBNpobbPnwt4H3xLEdDL4kA5HiHeyglLUOLt2y1IpCS2l6GxoK3QShI6Sk1FJYSS9yVgQJBkkYCC5fBDkKHaN3c7/AvzRhSUYXN9An3IobRLSheN98pMlP380AFFuzCtRe7k1YQJ8l4rWjoWHlbZtdn1uTfDi4nONEY9t+DesERk+Xvbi4VN+c58uZSNUBRRnLoOGaCr26swQCA9dJcMDWIBA1q/J834QS+THutCqTUCWe32UNSVROL83Fyc1NkUsOGKYaop5Ba5GeladdmFb0CadI1ZCCo1iaAZVDo0DN/jVFh4vxDcCjjN0D0lVUhvr9E2ZDNMCyCQACdAUkQ8LepblCG51yvMkPNc=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c71c3f0-d3de-4ab1-4e49-08d69d074bc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2019 22:59:58.0482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0287
Subject: SRC_URI when there is a local mirror but no remote repo
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
X-List-Received-Date: Thu, 28 Feb 2019 02:33:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Does Yocto/Bitbake support a way to set SRC_URI in a recipe when there is n=
o corresponding upstream remote (git://, https://, etc.) for a *.tar.gz fil=
e?   IOW, I've configured for own_mirrors and set BB_NO_NETWORK=3D1, and my=
 *.tar.gz file only lives in the local_mirror directory.

It looks to me like file:// thinks that the file always lives under ${S}. =
=20

TIA,
Ed

...
# functional workaround
SRC_URI =3D "http://some.example.com/example-1.0.0.src.tar.gz"
...

do_unpack () {
        # Unpack straight from the local mirror since there is no remote
        tar xzf ${TOPDIR}/../local_mirror/example-1.0.0.src.tar.gz -C ${S}

do_install () {
        install -d ${D}/${MY_DIR}
        install -m 0744 ${S}/example/example.sh ${D}/${MY_DIR}


