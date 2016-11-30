Return-Path: <pawel.suchy@delphi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9719CE00C43; Wed, 30 Nov 2016 07:42:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 537 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Nov 2016 07:42:00 PST
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD2FE00BBA
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 07:42:00 -0800 (PST)
Received: from 10492-US-DLP001.delphiauto.net (unknown [10.201.250.13]) by
	usflmia-meg1.delphi.com with smtp
	id 654d_0531_9eab1c30_3fb2_41e1_88bc_9e6889a9d17e;
	Wed, 30 Nov 2016 10:13:33 -0500
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP001.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	uAUFWxTS002090
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 10:32:59 -0500
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01lp0179.outbound.protection.outlook.com
	[216.32.180.179]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-SHA384)
	id 654d_051e_79566804_0ce7_4c97_b61f_8a30fad5dcb0;
	Wed, 30 Nov 2016 10:13:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=DelphiAuto.onmicrosoft.com; s=selector1-delphi-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=CcylW6fhT5YenswSq8xB1FEtY0+zd0rZmOMUlJMM72M=;
	b=KGn92qiKOVNIqDSHVWLAOYS58MbIGzIc+vMA4GPJL0TiWmE81ZOcWJ63U5C+JnIr0LSoKJRx4tWBE+lQKK0Ef46y+b3589S7ECWHbmKgWbtLHRNyE/MUyZW0uoxomCUlKd40jXBgLefjxpK4Ix3aoLQnFwa6WbA+uh129XCUAfg=
Received: from BN6PR03CA0016.namprd03.prod.outlook.com (10.168.230.154) by
	BN1PR03MB201.namprd03.prod.outlook.com (10.255.200.141) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.747.13; Wed, 30 Nov 2016 15:32:57 +0000
Received: from BY2FFO11FD001.protection.gbl (2a01:111:f400:7c0c::102) by
	BN6PR03CA0016.outlook.office365.com (2603:10b6:404:23::26) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.747.13 via
	Frontend Transport; Wed, 30 Nov 2016 15:32:57 +0000
Authentication-Results: spf=fail (sender IP is 206.191.247.212)
	smtp.mailfrom=delphi.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=quarantine
	header.from=delphi.com;
Received-SPF: Fail (protection.outlook.com: domain of delphi.com does not
	designate 206.191.247.212 as permitted sender)
	receiver=protection.outlook.com; client-ip=206.191.247.212;
	helo=017-smtp-out.delphi.com;
Received: from 017-smtp-out.delphi.com (206.191.247.212) by
	BY2FFO11FD001.mail.protection.outlook.com (10.1.14.123) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.734.4 via Frontend Transport; Wed, 30 Nov 2016 15:32:55 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:; UpperCasedChecksum:;
	SizeAsReceived:4569; Count:51
Received: from BLUPR6801MB0051.017d.mgd.msft.net (141.251.18.23) by
	BLUPR6801MB0050.017d.mgd.msft.net (141.251.18.22) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.734.8; Wed, 30 Nov 2016 15:32:53 +0000
Received: from BLUPR6801MB0051.017d.mgd.msft.net ([141.251.18.23]) by
	BLUPR6801MB0051.017d.mgd.msft.net ([141.251.18.23]) with mapi id
	15.01.0734.020; Wed, 30 Nov 2016 15:32:53 +0000
From: "Suchy, Pawel" <pawel.suchy@delphi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: CommonAPI *.so bindings
Thread-Index: AdJLHuy12sJgYoupSBW7qEBniudmwQ==
Date: Wed, 30 Nov 2016 15:32:53 +0000
Message-ID: <4f6a6c3622f646e9a01a2cec53be8615@BLUPR6801MB0051.017d.mgd.msft.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.18.133]
X-MS-Office365-Filtering-Correlation-Id: f036338d-e235-4f05-c613-08d419362800
MIME-Version: 1.0
X-OrganizationHeadersPreserved: BLUPR6801MB0050.017d.mgd.msft.net
X-IncomingHeaderCount: 51
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:206.191.247.212; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(7916002)(2980300002)(1110001)(1109001)(339900001)(199003)(189002)(9686002)(8936002)(92566002)(189998001)(512954002)(107886002)(22756006)(97736004)(24736003)(5660300001)(2501003)(110136003)(81166006)(7696004)(6916009)(8676002)(81156014)(1730700003)(7906003)(69596002)(7736002)(356003)(7846002)(54356999)(50986999)(33646002)(5640700001)(626004)(790700001)(3846002)(105606002)(102836003)(6116002)(106466001)(108616004)(2351001)(39450400002)(39410400001)(450100001)(2900100001)(260700001)(2906002)(606004)(66066001)(85426001)(38730400001)(84326002)(86146001)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN1PR03MB201;
	H:017-smtp-out.delphi.com; FPR:; SPF:Fail; PTR:ErrorRetry; A:1;
	MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11FD001;
	1:sNPnuDgui1ZMTjTMR8Ox5HRHKu6TjAXoMBdWqBrlefALy5SYP/K/0eyPFQxN6gNNeLzanLjD49rUTtjRbecQgYrdfOHFQ5LgNqF4blc+dLbCcTpYayz+Nwo9O24hToU74pXD4D1T1VevZDg2z7iVgcyT93tu2p8ypOxVd9H6kg0MCm/RwqtpeYWSolOH28YIcbTDky8lD495xWOtNlVPmjwQXk7UtAmInA6VBcOiJT3a0oYYvj/70b0Hh7/AzVSXydOTe6uKKVCD+4oeH98/NybEEHM+QDbCCPFreI3XRq4GbxW7OphFpefJyQuYlf2MB8oFL27PQWG1JFJV4z4fejJ/k7OAQW2qWs0FDGr1ODOoRYfkQ2P+rvvt9y2UrM7BJIAcYup19iBqnRM1qWvFfix/V/nvSfsi2dk8xJx1iaUfDnCeZs6MzYamrG2i9//ocFsDlS/J35xFCyxl7gPGdnovz/ZBvf4WLhn2qnX4+9In7gmtFHIfN0ZRDDmyCcd7
X-CrossPremisesHeadersPromoted: BY2FFO11FD001.protection.gbl
X-CrossPremisesHeadersFiltered: BY2FFO11FD001.protection.gbl
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BN1PR03MB201;
X-Microsoft-Exchange-Diagnostics: 1; BN1PR03MB201;
	3:rq+dDJPRAncoVCC1hCEqe5BfmwAk+ZwDCnsa6MmFmRd+ULHuhKw1tfYXs05JHnMUwbiyD3ExrFAG+TzsoDgOKdBsenQcsITxLmXAhYyRwsH36GZ2JOKxQLoMfhDfvoYxnTUnER4DMmqmXu+4WXvrErLzRGer5v4y8dP/9ThPV6Ycw9N9y7wdn4SekUcfVlfTaUog0PDPrgjXF9zn6kQshIYBEcjolZGyEuG0kA+0TTvm839ZGUNV9ks9IkNlDzde4FiiVQLOH6EhavO+AeZ+8PN1syYt8XOtCq21uKIAl+oiau2/bljCMPmTUK5JvjdbKl5Pu5ZbxDwZCAjYRft5XzJ9f70jQG41eL/R4Tv4bD2wYUKhfX+DefNyYlNnflrF;
	25:F0n4RgSqSl2UOirxUOyKoqLXxvz1fndo4xmBayONRVnFKHCUPCxSSYZi1azZXFjId8XNU6Xb3M6akqCYiEwGAAAI0TmUrsaOhFZl/b+HSWnJ2D7BQ4l96aqw+3maI7yYoi+lwy+/XkXFyxN73txqen/YSWrI7yGSJGDb55nd6wrp0ZdofXjgpk/ETslWQtwiLv80SxI24zgfqatQDl66gDTIxIPBCd4/YxiiVTBjEW7Wa9OEZ6mrPcN8Pp5tK2BlWXbW6ejGLOKbdSpoYDz7nyuih7r1OaigRbQmqVTK4vlizBLpqa3LL/NOI789VcEr/YupQGARoTM7kHyLyQCvtXhwX5azcUsWsu6RYxECE+OYxMgXpi84ZOkvq7GWj+Tupst4WpESucKX374IMe0HTWf5aDkg8zZ+yhrkWR/L6IPc0PKHA8MCObS7Melj3UK9oTV4+7tmFh8OYhOUG062dQ==
X-Microsoft-Exchange-Diagnostics: 1; BN1PR03MB201;
	31:4DAGyIWucCGlOw7Dq+fkPf62NwqX13WxZfYOHH6wz3cPYFHEQoBD5mylcnj+w0d3rHJtRcUkdaUvYqTHRpDHnRugRbUUk/avSEhPCdjix7l6C0oC+wC40yI9XCB5kg2p5KDKHakXc86rP6C5jZKRwUkSKFwYQvusb22enwUnxZ6WNJverU0aKRMc3Q/SVavSD3hB1TlzW7Wi4+XLoLcSpviOz+DfAOyNUaKu9T8HvqqB8xAzuK49q/N6JXUV2Ri8GUGRqp+Yh/Z/tOfd1RXtig==;
	20:w+fD+r6kC7BmSLJEW/HFG20O3y0eZmlViDKdWO/z8PEe1gWsVe/R+pD/oyI4b6xsc4jUMKoagVeDFpzpe9qRnSuDyBAqilypkuoj1hUPfS9iJRzJMhfkVeY7E65EE/VQZrZ61jKYsG60IAdnsmfr3G229hux9d2Ct8v/rgOMIsfrVf0cg9T/RDBR6ZWSfui/x5SSYXdQXLBwn3jtyRWvHeEnMBoCTRxyhrn4pl0O76ljp30ifNLVscDwZe6poA188v8uObYlg8PxgINKKG774MX17jhvoGQwIXZ1AAba8/sWu0BdVEg4ls7merXZhK4OSGDks0toGykYuD4BBeSJZ3kURYgRrCVcSAas/UGbYhPwNhjAH5aaJsNNU2UPqCjagPB+hDqcHwAeIL2FTFJm6zsznyoDK614Qr1TeDFEwzlop7oVOhUECMjocTdXCSEmQJDgr9yDjCU6RJ+rMPw/w+RhmUaRB2znKagPT3ixikU+klaTfX0R3liw5gcleLd/
X-Microsoft-Antispam-PRVS: <BN1PR03MB201E69F1EC536C0C3A0DB809C8C0@BN1PR03MB201.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(13016025)(5005006)(13018025)(10201501046)(3002001)(6055026)(6041248)(20161123564025)(20161123555025)(20161123558021)(20161123560025)(20161123562025)(6047074)(6072148);
	SRVR:BN1PR03MB201; BCL:0; PCL:0; RULEID:; SRVR:BN1PR03MB201; 
X-Microsoft-Exchange-Diagnostics: 1; BN1PR03MB201;
	4:IXNfMRkOqQCrXvuBNwChoHKF2paO3PzbiDOMmlpZGdTr6R3NPx1vJlG0hSN2uvgC1p4tseJedf7ThJf9d30/Z6HXpSUzhhdMd9dlEnYOp2kWBGpfSDW7ks0ZnI4+LrBmoLnDUVnmoxQjGDjO5ndSbiXaiXWlTAr4XeFFgNCYct0RtxaKcj5JSHzUkYxai6yLtqoj3p7XZZhJUlUVp0BOfu0l975wRIsQRjJi2XcrIu0TrmVvYSAtLXUvyrC8bdKyoxwPHJz4HwiyZuoeo76l66vBPyGuT4Pc6dKOcVmhc8bjpbEfgCU+DIQkdFfrCT3hFqAfTyIhgCAX5e0Ta/4bWRkS1la2P8jLlpCnzRuHAW/mR7jbuelh/twSS/MC6u83e3irDgG4S+ymaYWKzgMw8M/IpLQ6iapduX0s8wtTM0/v6a2UEqsgSSwip6V3GPnQKY51LKLVBA/l6iD9BDtSqjnswTvOJcYucH9kQ/W1u6/EaUCiP2v3iPpDA/G+bsWaM2NKWzvxBSvEK1BjbIr0qh3oeFIaT7jlaxHogQPgadu8ikIpgExg71XoIVt2AOyXSrLSCHV++vINlLYVEERPt9Veu9w3Dy4ToPSeNRW2sS7l1y7+CCSW4VTEwRvPKpWYq/fDsix+HDDl8lYOSNjXLwFcDiMuxgs66laLEMxh+aWGs/d3xdGuMB4GwvJXCP+mpQrjLcnFLblHJY4zLEdHf2DnpieXaysT/V+I0s7Qti8=
X-Forefront-PRVS: 0142F22657
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BN1PR03MB201;
	23:nmIpNW6NLW+yOXAFwI8vIGSGDL97y5r054SyE1eMN9?=
	=?us-ascii?Q?QSZvH2gC0JpK9dX0j9WGe+G1pU8jMbpo8UdLa9UQLw7ESg6f7vnZMjxO2Lxv?=
	=?us-ascii?Q?PvIEXJMfuShy6sDjIqiS1x01/efPVOsVK/4bxVBptWhU0lEjstS6doz/bvOw?=
	=?us-ascii?Q?WvNGspSniR3V4HH01WhkGdymiDKwQvC6i4fQmQraL2xhcKveoLniaapouvuP?=
	=?us-ascii?Q?2RkkqS6F5kfUgYKuCzQKQYiYXkIBV8omUBkvAVKL2eBpdtQqBavSV3kDAP+q?=
	=?us-ascii?Q?YQK2JQLAyBbqD9TvzmCEhmmdZf6RKvm8iIYSckHJD3V1mQFHIIgz0tA1SUbx?=
	=?us-ascii?Q?lInvFR7RbXP7l86TC3piJ75XgaOeQkAKLTPm3QDZz79eXF4ZPjQeOXotVpZY?=
	=?us-ascii?Q?5QLY5yYU4AlvQkZL4FXohN86NhnWymtAXiVnzWt3MfGW5m8OS6hZnJShyH9e?=
	=?us-ascii?Q?yLjF6jKMWaLBvSv+Q9bD88xPdflL0rDngMx/rKkVnHF41dwz1c1U1UCGKm86?=
	=?us-ascii?Q?fdcr7hz2p4vKzHpxSrsrC/RySzlXoP6NG8qATcAkOXZ+tbQzFecFsoZDFjHt?=
	=?us-ascii?Q?wgJ298Dx56FWgLVDGBN6eTs42FNfA3+0ZNaJfD0huqu/0fTv68EVICojBUEj?=
	=?us-ascii?Q?uIdfiNE1mvyFNsrG+DF0A+llHWsxiZWK2YFteEyDUuRAVpXM5Lo6ORusYlKY?=
	=?us-ascii?Q?XsVStPA+h5uHO/TG7U+Z4VxoHp7o6BEcZpzgGaLi9Ue6ywTMXFcW6M40UR3T?=
	=?us-ascii?Q?vIUtwh+vGT1XrBgXcmUjLupla5YUz958BltApw6SnEuOGddhcddkREHdu1ow?=
	=?us-ascii?Q?Sytkr1ndgG+EE7CYE3DIg9fUMnICaQ3mrimm3aOMnD1gYXzZu8riu6xMs4R4?=
	=?us-ascii?Q?MLNLDFejIoQqCCxSksfu8+CTYSdKe1zn/IhPxVmCQxp43D5KiDFE4bBsTihR?=
	=?us-ascii?Q?iGIQELs3ey6Q/VdULnOQMzwnyslvCwhTJBzEcvjqTmxyY9mNYRcq5t3HCfDd?=
	=?us-ascii?Q?v9EYp6QxgNNvRQnDXht5l0sclhFjS0my/RaGNyX7I/+5YpiAwWrVWr/NSKNc?=
	=?us-ascii?Q?YSCwCEtJh5CI/NzCuwIPlGgcn1xazyreVUxPSc5RVqGHRsy40gcfNf4QHQMi?=
	=?us-ascii?Q?BWon66kEEk5jO5io0/h+ZHjJFTrhwRvEySyVEiBu5iBvQBBdoJfJwyazcBFu?=
	=?us-ascii?Q?7TZ8DbfXHrXaUvIRFVhSbJUlzBp9SkR8ivuGSeFqh7H5ytFHyIhTxlT/gYVJ?=
	=?us-ascii?Q?rYOzRVFnIbAxy/VR4fur8kdQHeUXZxrptZHXmWHMLKox4ehWw/pl74DFHiKj?=
	=?us-ascii?Q?bDkGEKqG4QvoOZxHBibUM=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN1PR03MB201;
	6:QPTSUZr4O2kv4uON0366+rYfkR/9czsRpnOAheCBKIoVjoTUuREMmlkzL6qXXZujC8E+zopGj+MeAa/1MrUij1v0p3tT8VnoYtEiA5HUk6NFHjojzq7MejUaXSvFwjL+a/RBgBqIiG9aQgD7UH05jK7GZTt8wN9wy7WF8hL9HenTjMHKf50IDL+1YdzeiaRiA2Vlojngsa04dCr1ZhNuY93UrYR25Z6k56YC6CyZWUHSUELIMOieUqtv/qiuPXbaZcSsxF8Gvri4Ms8UXJ5PFmSRczxGhtCkp9PCmIGEujznI30eQVXuN5znghzsQfqnPnRCBbonY7fBEb3TlIUuptDUixV97aIpIHdMd/GNZM9ty/REFouIVLAAAhniq5RHRLCvvyMdd0+/Bi3XwdHo/WaBIEGi0EvgoG4pch6rZO0/0jVwGaTpvgJzL6BIpoIKeoPBxYjTWdlXcLg2Gk+a+JV1KTpYENAHyoV7k6ccad/AVw08KMb50IAKBsgm4kJZ;
	5:SIThkBi0eYNiVmKpQMYrgHTpby90qLhpMKNJltMm2aAzV50mDc5u4eKC+WVkzFprarjMBG8Vvg1Hr6kfpbyWebM2TBFTg3mXHmpL0x5y3yxwrpx6h/hi4D8K+VwNioiM8bjh4+VA/xeb9VgfFGl68A==;
	24:nYSf5cpDeWxNrZcPYgyC6tOZrsNK6KncHfd6q0H63RlJK2JLHovIGIHwSXYVQdUoJHqAxsFl72MbJedEa3Tdq8zRmiTcYTs69jYpkGQICeg=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BN1PR03MB201;
	7:O0QlHCCJHrvWXn57XirFQrrEbYkactVEvCmLpOxfCdYMXBen+lgbiOnxNwYYxCADoF4fxRsSOqV9bOF7iVuYmiMpr/Dg7MvU+vS6cZlTwC94mYkH5rG4hrU/5pdtiyvGsGwj1fBaoNDaqtW3UbLDx3nKw3HDHkWxG3m3itTcoGdhngFNUfmu6+8QxK3qPVgklxK0tPmktPVclJ0RkLlZhj+AE+U2VbUC9KHP9GmjU8sf36hqtDwF2+PYOxdy66yNeQJA7GE5//1uLevWhyhcOhhs+fQaPlkU1QIYRfaJt5CC7kkTz8NE6VpgUt0hlnEurQwV/AwZdiQMXKIw+Y6nEVSNNLt5ub9IesXflj5ly+ZeAjk/JT1RnZyphutK2roSz+QxpqHtdmZjQkTYyxnAUXXhn7bbxf95cD/LalSI+F2RyCWH/hZ4K9sGEzuwBCoeEhteDEMzbBLH50wLLutQww==
X-OriginatorOrg: delphi.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2016 15:32:55.4746 (UTC)
X-MS-Exchange-CrossTenant-Id: 1d57d21b-62d9-4e6a-b97f-39c9a7dcea11
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1d57d21b-62d9-4e6a-b97f-39c9a7dcea11;
	Ip=[206.191.247.212]; Helo=[017-smtp-out.delphi.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN1PR03MB201
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
X-Mailman-Approved-At: Wed, 30 Nov 2016 07:53:19 -0800
Subject: CommonAPI *.so bindings
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
X-List-Received-Date: Wed, 30 Nov 2016 15:42:10 -0000
Content-Language: pl-PL
Content-Type: multipart/alternative;
	boundary="_000_4f6a6c3622f646e9a01a2cec53be8615BLUPR6801MB0051017dmgdm_"

--_000_4f6a6c3622f646e9a01a2cec53be8615BLUPR6801MB0051017dmgdm_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Yocto in none dev image does not allow to have symbolic links to versioned =
shared libraries.
That is causing a problem with binding CommonAPI dynamic libraries via comm=
onapi.ini.
The commonapi.ini file contains sections where dependencies to proxy object=
s could be defined:
[proxy] local:commonapi.examples.Test:commonapi.examples.Test=3DlibTest-DBu=
s.so

But it cannot take link to versioned library because of that code:
http://docs.projects.genivi.org/ipc.common-api-runtime/3.1.5/Runtime_8cpp_s=
ource.html#l00283

 Runtime::loadLibrary<http://docs.projects.genivi.org/ipc.common-api-runtim=
e/3.1.5/classCommonAPI_1_1Runtime.html#a3e51dbc5c5b72e879442c4ff579799ed>(c=
onst std::string &_library) {
321  std::string itsLibrary(_library);
322
323  // TODO: decide whether this really is a good idea...
324  #ifdef WIN32
325  if (itsLibrary.rfind(".dll") !=3D itsLibrary.length() - 4) {
326  itsLibrary +=3D ".dll";
327  }
328  #else
329  if (itsLibrary.rfind(".so") !=3D itsLibrary.length() - 3) {
330  itsLibrary +=3D ".so";
331  }
332  #endif

Questions:
1. How to solve best this?
2. Is it a good Yocto practice to not allow to have symbolic links in none-=
dev images?
3. Is there a way to have symbolic links to libs in /usr/lib directory in n=
one-dev images?

References:
https://lists.linux-foundation.org/pipermail/genivi-ipc/2015-August/000525.=
html
Kind Regards,
Pawel

***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby notified that any dissemination, distr=
ibution or copying of this communication is strictly prohibited. If you hav=
e received this communication in error, please notify us immediately by rep=
lying to the message and deleting it from your computer. Thank you. *******=
***************************************************************************=
******

--_000_4f6a6c3622f646e9a01a2cec53be8615BLUPR6801MB0051017dmgdm_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.Stylwiadomocie-mail17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.keyword
	{mso-style-name:keyword;}
span.lineno
	{mso-style-name:lineno;}
span.comment
	{mso-style-name:comment;}
span.preprocessor
	{mso-style-name:preprocessor;}
span.keywordflow
	{mso-style-name:keywordflow;}
span.stringliteral
	{mso-style-name:stringliteral;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"PL" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yocto in none dev image does no=
t allow to have symbolic links to versioned shared libraries.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">That is causing a problem with =
binding CommonAPI dynamic libraries via commonapi.ini.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The commonapi.ini file contains=
 sections where dependencies to proxy objects could be defined:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[proxy] local:commonapi.exam=
ples.Test:commonapi.examples.Test=3DlibTest-DBus<span style=3D"color:red">.=
so</span><o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But it cannot take link to vers=
ioned library because of that code:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://docs.projects=
.genivi.org/ipc.common-api-runtime/3.1.5/Runtime_8cpp_source.html#l00283">h=
ttp://docs.projects.genivi.org/ipc.common-api-runtime/3.1.5/Runtime_8cpp_so=
urce.html#l00283</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;<a href=3D"http://docs=
.projects.genivi.org/ipc.common-api-runtime/3.1.5/classCommonAPI_1_1Runtime=
.html#a3e51dbc5c5b72e879442c4ff579799ed">Runtime::loadLibrary</a>(<span cla=
ss=3D"keyword">const</span> std::string &amp;_library)
 {<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00321"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">321</span></i></span><i><span lang=3D"EN-US">&nbsp; std::=
string itsLibrary(_library);<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00322"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">322</span></i></span><i><span lang=3D"EN-US">&nbsp;<o:p><=
/o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00323"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">323</span></i></span><i><span lang=3D"EN-US">&nbsp;
<span class=3D"comment"><span style=3D"background:yellow;mso-highlight:yell=
ow">// TODO: decide whether this really is a good idea...</span></span><o:p=
></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00324"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">324</span></i></span><i><span lang=3D"EN-US">&nbsp;<span =
class=3D"preprocessor"> #ifdef WIN32</span><o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00325"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">325</span></i></span><i><span lang=3D"EN-US">&nbsp;
<span class=3D"keywordflow">if</span> (itsLibrary.rfind(<span class=3D"stri=
ngliteral">&quot;.dll&quot;</span>) !=3D itsLibrary.length() - 4) {<o:p></o=
:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00326"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">326</span></i></span><i><span lang=3D"EN-US">&nbsp; itsLi=
brary &#43;=3D
<span class=3D"stringliteral">&quot;.dll&quot;</span>;<o:p></o:p></span></i=
></p>
<p class=3D"MsoNormal"><a name=3D"l00327"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">327</span></i></span><i><span lang=3D"EN-US">&nbsp; }<o:p=
></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00328"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US" style=3D"background:yellow;mso-highlight:yellow">328</spa=
n></i></span><i><span lang=3D"EN-US" style=3D"background:yellow;mso-highlig=
ht:yellow">&nbsp;<span class=3D"preprocessor"> #else</span><o:p></o:p></spa=
n></i></p>
<p class=3D"MsoNormal"><a name=3D"l00329"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US" style=3D"background:yellow;mso-highlight:yellow">329</spa=
n></i></span><i><span lang=3D"EN-US" style=3D"background:yellow;mso-highlig=
ht:yellow">&nbsp;
<span class=3D"keywordflow">if</span> (itsLibrary.rfind(<span class=3D"stri=
ngliteral">&quot;.so&quot;</span>) !=3D itsLibrary.length() - 3) {<o:p></o:=
p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00330"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US" style=3D"background:yellow;mso-highlight:yellow">330</spa=
n></i></span><i><span lang=3D"EN-US" style=3D"background:yellow;mso-highlig=
ht:yellow">&nbsp; itsLibrary &#43;=3D
<span class=3D"stringliteral">&quot;.so&quot;</span>;</span></i><i><span la=
ng=3D"EN-US"><o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00331"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">331</span></i></span><i><span lang=3D"EN-US">&nbsp; }<o:p=
></o:p></span></i></p>
<p class=3D"MsoNormal"><a name=3D"l00332"></a><span class=3D"lineno"><i><sp=
an lang=3D"EN-US">332</span></i></span><i><span lang=3D"EN-US">&nbsp;<span =
class=3D"preprocessor"> #endif</span><o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Questions:<br>
1. How to solve best this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. Is it a good Yocto practice =
to not allow to have symbolic links in none-dev images?<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3. Is there a way to have symbo=
lic links to libs in
<i>/usr/lib </i>directory in none-dev images?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">References:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a href=3D"https://lis=
ts.linux-foundation.org/pipermail/genivi-ipc/2015-August/000525.html"><span=
 lang=3D"EN-US">https://lists.linux-foundation.org/pipermail/genivi-ipc/201=
5-August/000525.html</span></a></span><span lang=3D"EN-US" style=3D"color:#=
1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Pawel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby
 notified that any dissemination, distribution or copying of this communica=
tion is strictly prohibited. If you have received this communication in err=
or, please notify us immediately by replying to the message and deleting it=
 from your computer. Thank you.
 **************************************************************************=
**************
</body>
</html>

--_000_4f6a6c3622f646e9a01a2cec53be8615BLUPR6801MB0051017dmgdm_--
