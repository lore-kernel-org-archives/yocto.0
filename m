Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F32F0E00B51; Thu, 11 May 2017 04:04:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.72.38 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 54223 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 May 2017 04:04:00 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072038.outbound.protection.outlook.com [40.92.72.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62121E00AF8
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 04:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=YAnmagtTIrwr7UICyDqu42bHqSKX4XAxjvn22eDUU9I=;
	b=db4Bn0/msN9VXiaNy/f/YJF/HSkI85qQK3NOaOroiAUxKfRSc7avp7zgxrBWepNYMGjTb3JmGVDe4/7HkhdgSew/2X/6yc6cz6ZccZg3Yi6GdDZhkqqkDraiZk588CJBdmsBLaVDu4amS4u3o44+suCVXnsL15CRJCSdrgibXI+fcSOvYDsKdWZoNA5peQ2YrnkpfM+dTLikqLqd1naYt73IC1wXihQdFiSnSHWFKmipNUo1TOzk7CWf9ebmq/Z6RmlP2jmUdXXZAmq4J2kWjP4nWX+U5jnJprkqo7KHxTXFHTisco2Rg9CV4WHU9fUABGQgbfk31IyqdnG6umstzA==
Received: from DB5EUR03FT057.eop-EUR03.prod.protection.outlook.com
	(10.152.20.57) by DB5EUR03HT095.eop-EUR03.prod.protection.outlook.com
	(10.152.21.241) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1047.9;
	Wed, 10 May 2017 13:59:20 +0000
Received: from MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM (10.152.20.51) by
	DB5EUR03FT057.mail.protection.outlook.com (10.152.20.235) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.9 via Frontend Transport; Wed, 10 May 2017 13:59:20 +0000
Received: from MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM ([10.166.219.139]) by
	MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM ([10.166.219.139]) with mapi id
	15.01.1075.020; Wed, 10 May 2017 13:59:20 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: BB Equivalent for %config(noreplace)
Thread-Index: AQHSyZIk+XsHlcIjukqZcSQ+Z/RWhA==
Date: Wed, 10 May 2017 13:59:20 +0000
Message-ID: <MM1P123MB130599BFE3843E46B61FE899DAEC0@MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:28DF8FEAB24A39961B83DD4C3B1215E4D01B5B529618D4B5C9DBE94E741693BF;
	UpperCasedChecksum:23D4D416FB9954029BDD6B5EBD39440C9176AEC24B684F4A34543867C72B4E85;
	SizeAsReceived:8013; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [KKkWSPGjsT6WUsbGxZfZzNWM3Dd9ReCK]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT095;
	5:PvBxB02ELKxjVjJLA+h8f2/p42SOes6mF40oVrqGyiGj95vSkr6+pp2fmlsipyySVkunFMEwb5OYybAnWAo0394tClqEo5VpRJOve32nAPzibCtcxVT6rRhV1JqwiuRByY4Bxd4rNhUqegVnb3XNcg==;
	24:qZi/IiKqAdyg1LGpYbBKJKdGlIxOXu+0qmaQR/qAUW/UMnQ5ZKFZQHA/QPdTXDWLUvxTfRGrTUfc7w3IUtR8Y0w8QImDkwscYpS+nKYSSyk=;
	7:xVZL1pZ4QK8F61kV69Y+rZImaZQQq91LqYvWPimKP9P0h3k0E8FKtEXbDtyapCHkist1iqbCCUDrsdBOasMz6M14krHHn9gGFuW1lqIhAEh2zQs+Equnf346fYQq39ovfuGhM8q0FffouGNtjcnFUd/9FkAXRMVgdMaGwJ5c9Md28eiCrAzhbQiFWv5vB6g0YyjqUNihJWgGLKb1nrSE+u7AgQf8KcEf9T+h2+swksE/65h6IyYu7220DKsuymDsVN5wYEbSOVZA1yUvknyUBaWdC8LyIvHGTxsPPxMrPdvov10YVpeNvw3guITtGdKe;
	23:mXi13WHcIaTBx5WDhjagYc+Gd1VYW1Y8WF31XAAg20hysVhALlT3WAuJR86xMD/FkJn3BWzfF88SLqGGgjr0nVIJwEig9tcVr8XirR6tFnMZWqJyuWoq3jtDtt5KRPxXW8f/UqqPDnXTXTiUpfxFGg==
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR03HT095;
	H:MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 2eb65d13-25c9-43c8-5dd4-08d497acc166
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:DB5EUR03HT095; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DB5EUR03HT095; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT095; 
x-forefront-prvs: 03030B9493
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2017 13:59:20.0122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT095
X-OriginatorOrg: hotmail.com
Subject: BB Equivalent for %config(noreplace)
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
X-List-Received-Date: Thu, 11 May 2017 11:04:02 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When applying rpm updates generated by yocto, configuration files/directori=
es are overwritten with files from the rpm.

My spec file for generating equivalent native packages with rpmbuild specif=
ies these files with %config(noreplace) so that this overwriting does no oc=
cur.

Is it possible to get this information into the rpm files generated by yoct=
o?

Thanks,
Chris

