Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26065EA4FD4
	for <webhook@archiver.kernel.org>; Mon, 23 Feb 2026 15:10:06 +0000 (UTC)
Received: from ewa-mbsout-02.mbs.boeing.net (ewa-mbsout-02.mbs.boeing.net [130.76.20.195])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.37052.1771859193399753879
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Feb 2026 07:06:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@boeing.com header.s=boeing-s1912 header.b=bS3DZhWh;
 dkim=pass header.i=@boeing.onmicrosoft.com header.s=selector1-boeing-onmicrosoft-com header.b=Llct5Bj/;
 spf=pass (domain: boeing.com, ip: 130.76.20.195, mailfrom: matthew.l.weber3@boeing.com)
Received: from localhost (localhost [127.0.0.1])
	by ewa-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id 61NF6Vkm062567;
	Mon, 23 Feb 2026 07:06:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
	s=boeing-s1912; t=1771859192;
	bh=gYfMAOtGb/dz8G9qGwb6e5Ns2C+YNtB3smSDX3GxwkA=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=bS3DZhWhRVBnPP/SMq0s/dvkfRK9p0rRU2+XhM7Is/KwuCxGpLawwi/+118pQLPaK
	 o3izOzqSLVGKiHHJIo+d/FhjVuWge4MmFpkQwoLiwblw7rynhKdAfO7uFopq2yDyw3
	 yw2o4js9ZHzGhdCwy8BXwEeHD0ZYDTQQ1hq7nKNPsNjShOUPwTZ9TWS5SoNulc8irn
	 HC6QumzrUX0Yi0LGXwO1bXR5Mi68RaFEzmlIKo1x8IH5t/OyaKXT8vec4X2pyLIaAE
	 s0zOwVKOrIhNGOFbiJD2aWorRIwr51zoVs+gGpaDqp8CnsY17LCz2YcgORDUXmkDiw
	 guXQcbT1Fb6lw==
Received: from XCH16-05-05.nos.boeing.com (xch16-05-05.nos.boeing.com [137.137.111.26])
	by ewa-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/8.15.2/UPSTREAM_MBSOUT) with ESMTPS id 61NF6IaZ062381
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 23 Feb 2026 07:06:18 -0800
Received: from XCH16-06-06.nos.boeing.com (137.137.111.33) by
 XCH16-05-05.nos.boeing.com (137.137.111.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.61; Mon, 23 Feb 2026 07:06:17 -0800
Received: from XCH19-EDGE-Q02.nos.boeing.com (130.76.23.14) by
 XCH16-06-06.nos.boeing.com (137.137.111.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.61 via Frontend Transport; Mon, 23 Feb 2026 07:06:17 -0800
Received: from USG02-CY1-obe.outbound.protection.office365.us (23.103.199.177)
 by boeing.com (130.76.23.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.39; Mon, 23 Feb
 2026 07:06:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=F42kNEdTncCcLOX9lf4Xq+mrAQdQK+AVg54/bJZ6C+I4nfPRMP6yFLNFdmicrCrzDCb5gkcjHeWCE+is9fjZaiulop/kKdZ4D8ja5lGodKxvZmPrHySBjqniQBZl3WZ7nvmaQZV3REs8GZKfeiTMCp6np86r8ZcXCgNy/q3yKR8+Rf2OYlRsfJAo3OSZ+Kc6GO2GrwCv8saXDRDdCJTxqZ8KScZkHJyee9wi7omqYOKkqmMkxjWNG7Op0RlWxVy9Wl7feEPGUvvqfh1k26M6lmTS/wIDsdE1ZYd93iIhYSCI2ss0ccJHFUBEB0YWR4xBU+oD4NePwXJ3VzP0m8cqAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYfMAOtGb/dz8G9qGwb6e5Ns2C+YNtB3smSDX3GxwkA=;
 b=pt41m2DA6XPhgM+vuiZxLFQBGvOqYHBNL3VeeSD2MS6pCG9MVuRQ4FD8wsvb/ZZHi7O9rTKo2vpGxIaELU41w499lvwWdSVvqolMUfNGB7FathH7pVrfUG7Tcf/lELNpt96dwZqBS0jMB88NmzLpWH6prMwtDbzqTdNrV4+sE1KAvNhd18AZDTUOM3XFsU5J16z9CXesQLdi61YxNHPdmTBy2yg1Kn5nyfCWqtYkvADPuZCwrnvGyx944RK03ssxUT9f428MAEjM7x7lPHE+PTTOrEDXZPERxRUhIBvajp1EH/lWVlHNVfTIz+MgJbCDfkOsT3xgHP6EO8qnJ7KCHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=boeing.com; dmarc=pass action=none header.from=boeing.com;
 dkim=pass header.d=boeing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=boeing.onmicrosoft.com; s=selector1-boeing-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYfMAOtGb/dz8G9qGwb6e5Ns2C+YNtB3smSDX3GxwkA=;
 b=Llct5Bj/1LI9JHFaUsxsd4/r6zpQnQsOqFwRflEpQENSFnH8Bqk8j2FrSbV9vNmHplfWOQSYbppnzuNZlrp/GyUThEhh1wO2/A9WclsNRcO6fxe6MJGP00QVcw14by2SzZUpT6WAns0CgAVF7xKBjBCIROAJdqvKfxWkd5zGmu8=
Received: from BN0P110MB2067.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:19c::7)
 by BN0P110MB1993.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 15:06:04 +0000
Received: from BN0P110MB2067.NAMP110.PROD.OUTLOOK.COM
 ([fe80::34e0:4442:7be9:6519]) by BN0P110MB2067.NAMP110.PROD.OUTLOOK.COM
 ([fe80::34e0:4442:7be9:6519%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 15:06:04 +0000
From: "Weber (US), Matthew L" <matthew.l.weber3@boeing.com>
To: Paul Barker <paul@pbarker.dev>, Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "openembedded-architecture@lists.openembedded.org"
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] RFQ: Yocto Project Reference Containers
Thread-Topic: [Openembedded-architecture] RFQ: Yocto Project Reference
 Containers
Thread-Index: AQHcpMraKrNLV0EtgU2ySAcSKEm5c7WQX8lQ
Date: Mon, 23 Feb 2026 15:06:04 +0000
Message-ID: <BN0P110MB20672B646387310764FA5DBBF377A@BN0P110MB2067.NAMP110.PROD.OUTLOOK.COM>
References: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
	 <CANNYZj9ZpAVVKKu_QvhHq=W-DVnzZ067jHW64zS2rRBCwm+vjw@mail.gmail.com>
 <210d531fe4cd2eaead6ce5b6dce0aa9e498d0e5e.camel@pbarker.dev>
In-Reply-To: <210d531fe4cd2eaead6ce5b6dce0aa9e498d0e5e.camel@pbarker.dev>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=boeing.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB2067:EE_|BN0P110MB1993:EE_
x-ms-office365-filtering-correlation-id: c19e1612-1c40-47a1-32e0-08de72ed10dc
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TGQva3Y1UmxrQkdSVldmR2Q1b05RMGFCQ2I0VHN0NCtXMEVHb0RkRVk1VFRI?=
 =?utf-8?B?cTRKVFdabEdGSzBRblFzTi81K3VXR3pNMnVoWDQ5U2x3OWpaZTAweDE0aWZG?=
 =?utf-8?B?QVF3dW53QVlSNDV3a2ROUjV1WmlmM1YvT3JraUZZa2pENjJPOU9MR0hPVVpn?=
 =?utf-8?B?d3h2djBSRTI1OHFxcUNIT2dzQTZ6OXhsdUFHSDNpSUZOWGlJUEtTNldRK3Fy?=
 =?utf-8?B?RVY2a3BoVS9adGhseURrUllYSTE2YWlML2s3MXdFemdPN3l6THJZREE3WFNZ?=
 =?utf-8?B?ZEd2VWFma0pNQ2NPczVQV0R0eHdSODRxc2ZJZG9CT2J6UHhXcnJxRU5YR1Rz?=
 =?utf-8?B?dVZjeFZFdVFYd1ZiSC9nTHNCd1ZrV3hlTnZndnBSYzhjMkQ4c203TmdIdkYy?=
 =?utf-8?B?RFVrUGt3WUpJbE55a082OXNpRFFHT3p3MGR4MGxSaWZmZ1QxYzlDOTQ5V21S?=
 =?utf-8?B?VmFwMXV4WHR3Wk5nR0NHb01wMDJqdlhZSUFVRTRxakRDZUI1Ujk5ZkdPSU5T?=
 =?utf-8?B?VEFvM1RSVVJrbnVXSEd0YTY1dFQ5TVREQjY1YmhTRm1GdFZhbGdoQlAwYzdK?=
 =?utf-8?B?UGdta1I0ZDI5VndzQzFoY25yQnZONGRwMENEajIwamJJT1ZsZDY3TS8yR29h?=
 =?utf-8?B?NTNaRzRZaVZDczh3RXM1YzZkVkF2R0xRZ2dmVldiM1JiTERUeFc1TSs1cU42?=
 =?utf-8?B?SHZMUk1FQkc2L3RjejJyS2swMTVGUmQ4Zk9vMHZOOUdZZXFuNTU3T2UzclZG?=
 =?utf-8?B?bmVVUGtXUWFtYnJvd1I1Q1NlK2tyU2xqZG40RGNkV2FEaTZ1bGFxYStWd1dq?=
 =?utf-8?B?WjQyUlFDWGVBQXN1UFlpMk5nMEJrL29PMDdGWE9Nd3FMNzh3WjdnNHJPK0x0?=
 =?utf-8?B?bmNDK0szYTFUOFZ2YkR4Y29PdWFlOFZrcVRZb2dRcWhpaDg5ZFFKdG9MdG5w?=
 =?utf-8?B?bDRwR0NFcE5FRktJUUZ6QVFURTRLY1RNcEZ1aFhTTDlSK1FNL0NoM25KRlha?=
 =?utf-8?B?cm5sNFZpL3VlQ0R3TmZUZEVKcVlDdERJbDh0di9RQ1pXdFFKTVJRaTBLUjI2?=
 =?utf-8?B?aWpOWXA5cmFGS2M3anV5K0kyemZrMW4vWHMrSXJ4YmdWOE05bGdpRXZILytR?=
 =?utf-8?B?NVdaakdkSG1JYzVLTjF3RXZVSitIS3BnM2RyTHhqQUtmVGlGUnRYbFFRK2sw?=
 =?utf-8?B?WFQwdGxwUnYrTTVxOCtibXpSNHZ1R2k4clQ5UDI1bUd6a2VXSVR0UUxXeVFZ?=
 =?utf-8?B?TVR0YXU5TDY3b2QzNk14RnlhOWV0QUw4TU1vUWZlQmhCVzMwa1BIYS9VcG11?=
 =?utf-8?B?cGpnanhRbXFEbElOSkZRVENHb2xJcFAzTk13REZ1NzBlTzZNYVRpbkJYeE5N?=
 =?utf-8?B?TW5MbEpTSVg1bUppYjhkNUhtYk5sZUwzVENyZmR3RHBpRVRWMVJjVklFVFRJ?=
 =?utf-8?B?elhUcXQ1QmVRbGVEQ2hnN2duL0tBMzhmMFFRUjkyMlVFRzd6TDAxaGI1ZXEy?=
 =?utf-8?B?SnNsVDJIejZuQ2hacVRGQnZtT2JRWjZucTM5RElPZ3l3b2VCZWNEWG1DYkVu?=
 =?utf-8?B?aTBIaW1KQUhpNG9VVDg4c2c3aDBIcC9kSUZnTWhMQWJibVNVT2JsWUEwNEpl?=
 =?utf-8?B?OW1EL0o3cFlZWXVlK3RHZUhTWFQ2ZDZqMmRxa1dpaTl1UHpwbFE5NUhTajlG?=
 =?utf-8?B?TkgyclUxMW9peWRxT1hmZnhYT0RCTXZTaUZCZ2hoaG9PY3pwR1dxc3ltei8v?=
 =?utf-8?B?OG5oaEZHekNVNlhlb1I4K3gyR3FwanhOTEZ0QmRxeXVod3ViLzgyTjRaK0R1?=
 =?utf-8?B?Qmx3c3FHZTZzTWV0TXBmNTNHTFBzdXp5bmdTZ3lxWkNNd3dMdlZLcjA4a01k?=
 =?utf-8?B?QkprbzJuS2EyRFdsMGZmMkZZd1g3d2JJbVZTTTNEdW91TEdBbVUyODNPdVJO?=
 =?utf-8?B?S3dJam1CWnB5YWRrSXE1Ny9GMTM4cG9Fb3lkVzRBZGljalREbGxabEViZFFI?=
 =?utf-8?B?RDRJZTBQWXFSQmJoUzRKajI2alVERnpjTmw3azZaTkk0S3hkN1h4bHV6cFVr?=
 =?utf-8?B?U0R2RVo1cmVxbVVHZ0YrakIwTU10VFFFRjc3cnk2Q2ZGelYyV2crMlFkbnZ3?=
 =?utf-8?B?THAwR0JNMkNNMDVJMEZNNFI2SzFDT0JNODV5ZDF5WHczMEJCRkpCYUlvRm5G?=
 =?utf-8?Q?OCd7A/oayoXliUU/JTPmHfM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB2067.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVlkNkhwWTJzTnFqdDZhZ1VoUDJxY3ZiWkRqaEswcEJnblpBVFZVY1orL1Jo?=
 =?utf-8?B?REN2TUFnRURZYkFXblZjaHB3REp6TEFXczk3aTdNaUVVQ3FGZHFtZFh2ZG5U?=
 =?utf-8?B?ZURsT3N3MkplVGoydldsb21EcjdIck11WDd3ZjZHYnpDTG01Y3p5eU1mVWQ4?=
 =?utf-8?B?VmlUUG9nOFhMQ1NodG9SVEkvUzYvamd6Wkh1Rmk2WFNjN1hGRzMraTJqc2kw?=
 =?utf-8?B?cWJRbmFaeUY3WTZZckIxOXhWb3VkOWgvbFhiSURSVE5KOHcvK1Q1T0hMR004?=
 =?utf-8?B?RlRuZFZiMkoxM2lLY3BrUGxWNmxUaFkzTDVUbFU1RU5Fd1U2UTVLaUJ3dW45?=
 =?utf-8?B?eUhCZGNoMm11TUx1TDhwenFENCtoYis2aXpYOHFQUytGbGs4eHYyUm1uL3U4?=
 =?utf-8?B?MU1RWEVMUjZOTXFHTXpUUDg0dFpNdFBzdWdMOXpkSWxXdjJFRVRQNURGVzF3?=
 =?utf-8?B?SE9mV05SSURTazNteGFobjF4N2JYZDRoYWM2TFlCY0FMeWpNUytjU2k1VlZu?=
 =?utf-8?B?bENpQkVWalhYVE9pc083ZUFVZzI5R0RlMXd5d2Q2T21ybDZVd1U3bldzM1BI?=
 =?utf-8?B?WmhybDgvN2s5a1Y3UjJKSVJCb0UzbTQ5VW8waUhvYTF1OExjS1RRN283SEZ0?=
 =?utf-8?B?OVhTWDd3QlZPUmRMYml1bHFrVlRuTXIxQm1pSkNRQnNYekNheXFqMjlmZnZ5?=
 =?utf-8?B?czhwUHRzOE1CckpIbHY0OXNnZnNrdU1XOEgxWnVnaXhneUVQSHBWcVM3R3Ja?=
 =?utf-8?B?cnc3WEV4Z0ZlZG85VHgrS0F0SXRNSUNuRlJ0bTFnR1JBckh3S0pnS3JoWVpU?=
 =?utf-8?B?YW9pYXNldGJ2Rms1QWtGaDRpQy90V01BeWNTY1hZZnA5TDk5dEk2UXhUMkRm?=
 =?utf-8?B?OUplNTI4enpOY3Z5eFFJZm9KaktualFBMHNtQm0vR2orMmF3ZWQ2VEFjMEJP?=
 =?utf-8?B?SGtMQkZ0dDBWUHpuWEtwS0ZQN0VrcjkvYnlIb1A3VW5QM0Z5K1krWWpTZDFi?=
 =?utf-8?B?ZU5rOWo0aFlyMjduOUxmalZpdlBkSldnZzJvWnBZbzd3c1VIdWkrSkdtYllJ?=
 =?utf-8?B?MW5NR1JaNDhocDlmOGI1Ynk1Z0dIRUlCMFNYdGpKY25aYkRBdUhtUmtuT1la?=
 =?utf-8?B?aldOdi9wRllmbEN0SERCRjd4Q1JZWDZjTTBzL1NhVWpaYUJON0RzNXY5ckFt?=
 =?utf-8?B?bm5RZHdsZ3BxRmF4a1RtdFJqNmJ0eHBlNGdUTk1PbGlLNVNtOWxpRWJaMmRn?=
 =?utf-8?B?Z3phRnVxTlY1ZVJybzVVQVJER3FtSUVNbEIrbUFQMElhODJiZjB5dkdPWUlD?=
 =?utf-8?B?WWh6bllDK0xHUEtIWXF1NXRrSWpxT29Sdy9WZHlobk9ibWVRZWp2SjhqZnVh?=
 =?utf-8?B?MmJjR293Wk42a094clhmYlJPU2puWW12eU5jdyt0Y3AybW51Wk52L21SRmUv?=
 =?utf-8?B?ZmpCdnpBRUUrcVkrcTk3ZzRUaWtUSS9nWFdnd2czTFJOWDVqT05kcGtMRzFH?=
 =?utf-8?B?YkUvMzVjMXBYSVhnNHpjTHg0enVNaU5TbTB5R3lHcFBhdWRRS1VWQ3RYQVFu?=
 =?utf-8?B?MHNsRGt1Z2pYbktBR011SDhmQ01rUGZxUnhVMmxHZ2RNRXV2ZjNQam5Qa2wx?=
 =?utf-8?B?dHJwcXJoUHFTcTd6VmNwSWNHL2dmc0VEdUthZzNOQmlmbHV6QkkrRnYrRkhX?=
 =?utf-8?B?Si80S2FxcXRjNlk3ekF1SEZlZ3IrVjMyOGJZeXAwNHhiUGUxS2x1LzFIUHhx?=
 =?utf-8?B?WVg2OXllbDZlaWpxZHBqUEkvU09nRU9kbUZwU1JSSHpLaWhmQXlIaGdqZm1Q?=
 =?utf-8?B?ZUV5bUVaRFdyZldlUWxaSTJZUDNwYWk0NmxrRzdQTUEyOUFRYWV0Njc3L25U?=
 =?utf-8?B?bFdmWlI0Sk9xaWhGeWhaUitXNE0wQmxSVGZ5dUQ0ODhVL3NFWmRNZVpxeExS?=
 =?utf-8?B?REJDeGNPV2paYytWcGcxNGdPV3JJMEwyNnZCZWhvOVlsV1V2YXBQUzVhZFlv?=
 =?utf-8?B?Mm5QK3hYdHRxNjBhQThpV1AycWdBVXNxbW9oSU1Obmg3R3B6K1NvajJ1bVRP?=
 =?utf-8?Q?anme+Y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB2067.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c19e1612-1c40-47a1-32e0-08de72ed10dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 15:06:04.8807
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcf48bba-4d6f-4dee-a0d2-7df59cc36629
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1993
X-OriginatorOrg: boeing.com
X-TM-AS-GCONF: 00
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 15:10:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66274

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IG9wZW5lbWJlZGRlZC1hcmNo
aXRlY3R1cmVAbGlzdHMub3BlbmVtYmVkZGVkLm9yZyA8b3BlbmVtYmVkZGVkLWFyY2hpdGVjdHVy
ZUBsaXN0cy5vcGVuZW1iZWRkZWQub3JnPiBPbiBCZWhhbGYgT2YgUGF1bCBCYXJrZXINCj4gU2Vu
dDogTW9uZGF5LCBGZWJydWFyeSAyMywgMjAyNiA3OjQ2IEFNDQo+IFRvOiBBbGV4YW5kZXIgS2Fu
YXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4NCj4gQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmc7IG9wZW5lbWJlZGRlZC1hcmNoaXRlY3R1cmVAbGlzdHMub3BlbmVtYmVkZGVkLm9y
Zw0KPiBTdWJqZWN0OiBSZTogW09wZW5lbWJlZGRlZC1hcmNoaXRlY3R1cmVdIFJGUTogWW9jdG8g
UHJvamVjdCBSZWZlcmVuY2UgQ29udGFpbmVycw0KPiANCj4gT24gTW9uLCAyMDI2LTAyLTIzIGF0
IDEzOjM5ICswMTAwLCBBbGV4YW5kZXIgS2FuYXZpbiB3cm90ZToNCj4gPiBPbiBNb24sIDIzIEZl
YiAyMDI2IGF0IDEzOjEwLCBQYXVsIEJhcmtlciB2aWEgbGlzdHMub3BlbmVtYmVkZGVkLm9yZyAN
Cj4gPiA8cGF1bD1wYmFya2VyLmRldkBsaXN0cy5vcGVuZW1iZWRkZWQub3JnPiB3cm90ZToNCj4g
PiA+IE5ldyByZWNpcGVzIG11c3QgYmUgZGVmaW5lZCBmb3IgYW4gaW5pdGlhbCBzZXQgb2YgcmVm
ZXJlbmNlIGNvbnRhaW5lciBpbWFnZXMsIHVzaW5nIHRoZSBgaW1hZ2Utb2NpYCBiYmNsYXNzIGlu
IG1ldGEtdmlydHVhbGl6YXRpb24uID4gVGhlIGluaXRpYWwgc2V0IHNob3VsZCBmb2N1cyBvbiBz
b2Z0d2FyZSB3aGljaCBpcyBjb21tb25seSBkZXBsb3llZCB2aWEgY29udGFpbmVycywgc3VjaCBh
czoNCj4gPiA+IA0KPiA+ID4gQSBtaW5pbWFsIGltYWdlIChiYXNlZCBvbiBjb3JlLWltYWdlLW1p
bmltYWwpIEEgUHl0aG9uIDMgYmFzZSBpbWFnZSANCj4gPiA+IEEgc2FtcGxlIHdlYiBhcHBsaWNh
dGlvbiB3cml0dGVuIGluIFB5dGhvbiBBIFBvc3RncmVTUUwgZGF0YWJhc2UgDQo+ID4gPiBzZXJ2
ZXIgQSBtdWx0aS1zZXJ2aWNlIGNvbnRhaW5lciB1c2luZyBzeXN0ZW1kIHRvIG1hbmFnZSBzZXJ2
aWNlcw0KPiA+ID4gDQo+ID4gPiBUaGUgYWJvdmUgbGlzdCBpcyBub3QgaW50ZW5kZWQgdG8gYmUg
cHJlc2NyaXB0aXZlIC0gd2UgYXBwcmVjaWF0ZSBpbnB1dCBvbiBhcHByb3ByaWF0ZSByZWZlcmVu
Y2UgY29udGFpbmVyIGltYWdlcy4gVGhlIGZpbmFsIGxpc3Qgb2YgPiBhcHByb3hpbWF0ZWx5IDMt
NSByZWZlcmVuY2UgY29udGFpbmVyIGltYWdlcyB3aWxsIGJlIGFncmVlZCB3aXRoIHRoZSBZb2N0
byBQcm9qZWN0IFRTQy4NCj4gPiANCj4gPiBBbiBpbWFnZSBjb250YWluaW5nIGJpdGJha2Utc2V0
dXAgYW5kIGV2ZXJ5dGhpbmcgZWxzZSAoZS5nLg0KPiA+IGJ1aWxkdG9vbHMtZXh0ZW5kZWQpIG5l
ZWRlZCB0byBzZXQgdXAgYW5kIHJ1biB5b2N0byBidWlsZHM/DQo+IA0KPiBJIHRoaW5rIHRoYXQg
d291bGQgYmUgYSBsb2dpY2FsIG5leHQgc3RlcCBpbiB0aGUgZnV0dXJlLiBXaXRoIHRoZSByZWZl
cmVuY2UgY29udGFpbmVycyBpbiB0aGlzIFJGUSB0aG91Z2gsIHdlIHdhbnQgdG8gZm9jdXMgb24g
ImNsb3VkIiA+IHVzZSBjYXNlcyB0byBzaG93IHRoYXQgd2UgY2FuIGRvIG1vcmUgdGhhbiBqdXN0
IGVtYmVkZGVkLiBUaGUgZ29hbCBpcyB0byByZWFjaCBhIHdpZGVyIGF1ZGllbmNlIGFuZCBnZW5l
cmF0ZSBuZXcgaW50ZXJlc3QuDQoNCklmIGNvbnNpZGVyaW5nICJjbG91ZCIgY2FzZXMsIHdvdWxk
IHRoZSByZWZlcmVuY2UgY29udGFpbmVycyBoYXZlOg0KDQoxKSBTaWduaW5nIChzaWdzdG9yZSkg
YW5kIGEgcHJvdG90eXBlIG9mIHRoZSB3b3JrZmxvdyB0byBidWlsZCBvbiArIGF0dGVzdD8NCjIp
IEFueSBwcm90b3R5cGUgb2YgcmVjdXJpbmcgcmVnaXN0cnkgc2NhbnMgKyByZXBvcnRpbmc/DQoz
KSBBbnkgb2YgdGhlIG1ldGEtc2VjdXJpdHkgYnVpbGRpbmcgYmxvY2tzIGZvciBzZWN1cml0eSBo
YXJkZW5pbmc/ICAoZS5nLiwgU2VjdXJpdHkgVGVjaG5pY2FsIEltcGxlbWVudGF0aW9uIEd1aWRl
KFNUSUcpLCBidWlsZC9ydW50aW1lIGZsYWdzKQ0KDQoxMDAlIGdvb2Qgd2l0aCB0aGVzZSBxdWVz
dGlvbnMgZ2V0dGluZyBhZGRlZCB0byBhIChmdXR1cmUpIGxpc3QuDQoNCkJlc3QgcmVnYXJkcywN
CuKAlA0KTWF0dGhldyBMLiBXZWJlcg0KVGhlIEJvZWluZyBDb21wYW55IC8gQXNzb2NpYXRlIFRl
Y2huaWNhbCBGZWxsb3cNCkVMSVNBIEFlcm9zcGFjZSBXRyBDaGFpcg0KDQoNCg0KDQo=

