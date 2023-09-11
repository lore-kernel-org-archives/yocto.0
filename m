Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B0C6EE49A4
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 00:15:35 +0000 (UTC)
Received: from esa19.fujitsucc.c3s2.iphmx.com (esa19.fujitsucc.c3s2.iphmx.com [216.71.158.62])
 by mx.groups.io with SMTP id smtpd.web10.48085.1694391326952714463
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 17:15:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=SRtnrFwi;
 spf=pass (domain: fujitsu.com, ip: 216.71.158.62, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1694391328; x=1725927328;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=4anLy35x+N1atXY8gL3PkEq/dq2UqnusatAJKKK0FJI=;
  b=SRtnrFwiXVKA74n7R2InEXeF20pmbGYLtqZhtJYtAEcqdRoYcrHvPTHK
   RtlpZHzEfPthvS9HlP2QdxVsoyy94buJVV0HPvMVwUDe5+74pHe991LBH
   +/4ZSBUMWXx/QpkOpsQcqd/P93lsotU7BmHzxBQk+KjjzTWslANoigMkk
   IPAG9MO9zqF3KYwVoihMR1uwiS/crGhyrlwR5/lLXTzsGeVI+wgZxlhNS
   L/4lzv/gorF9hLvGKzIwcEE2XWXOqgSzKtWvhN1LVi8FaAsPc4d5WEnmF
   Zl0jsoxm/d3MyByjN9f/sP/uC5Y/rRCXEIoyszdz6t+KDa8jvuB2mabhA
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="94301564"
X-IronPort-AV: E=Sophos;i="6.02,243,1688396400"; 
   d="scan'208";a="94301564"
Received: from mail-tycjpn01lp2168.outbound.protection.outlook.com (HELO JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.168])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2023 09:15:25 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHa0aclnmE+FoFq0J3nGYPeDVggIPHRHDEdJCtyQMWpvpQXkGdM0fvjk06WDi7nX+wuivcRvyq1C0KWl4DmfYDqU15eRsubDA3BojqN0jX1hdmezc8662/xZuqLYppPfYDG1kMQ+J+LgRl2yVC5B0TCcnZd+cSZa25Nin8V6A0qncefVmcAvGgrlqPCqVaYR9KlDNIO72Ez0Kh1TpmiJ2ZLwu8R6GPFHF8ZqrSqPNAIFbCIpqJzP2AaV+HzSqHI3dF2Eyv4n2rf7J/c8tSVlrpptqJsUHgLn5DCI95/FTHRIo5PlkeC4Z+B8+kGP9HytDM991cnobNZiCNnTfYW+bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4anLy35x+N1atXY8gL3PkEq/dq2UqnusatAJKKK0FJI=;
 b=fq65MKzONP3zMroPQuQ/VPsjZHSbj0CnrShWoxKwJ6w6zpbkX/oe7QRyx9hsKi47x+Lsz3imD8UUtc2OZtExGXV6hRuRUpv9HABbikcifDsUtQVzZKtivhTsvHgX0rjr0kLKjD9a3mu1TBj05vYvqEx5Dx6Al9dpeJ+jX+/9uvoLjFm4R4SnQaI03JDRHdCw8+gBnFDcw8UnNGD3MuhaRqiOvAUKfOWtsBOZvX/aC4z3Aeid4o6J0sw3piKPPOOGy8rUBEoBga5CBfBdgRkq/582X2j2T5fHPUF4QVfWOug77LWphDnrU7SKM7ZimP5pBeUJOuuv9011hPnmrUd8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by TYVPR01MB11200.jpnprd01.prod.outlook.com (2603:1096:400:364::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 00:15:21 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::200b:f52:be15:5e50]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::200b:f52:be15:5e50%5]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 00:15:21 +0000
From: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "akuster808
 <akuster808@gmail.com> (akuster808@gmail.com)" <akuster808@gmail.com>
Subject: RE: [yocto] [meta-security][PATCH] ccs-tools: Fix do_package QA
 Issue.
Thread-Topic: [yocto] [meta-security][PATCH] ccs-tools: Fix do_package QA
 Issue.
Thread-Index: AQHZ3HKFU3DCv3V3CU6HwHOHUE8iBLAU0RLQ
Date: Mon, 11 Sep 2023 00:15:21 +0000
Message-ID: 
 <OS0PR01MB6178387C7E2E0FCC0EAEE3CAA0F2A@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <1780A1AE20044855.27804@lists.yoctoproject.org>
In-Reply-To: <1780A1AE20044855.27804@lists.yoctoproject.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?shift_jis?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZl?=
 =?shift_jis?B?Y2UwNTBfQWN0aW9uSWQ9ODIzM2E4NzItZDVkZC00N2U5LWI2YTQtYWI3?=
 =?shift_jis?B?MTY2OGUwMzBhO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFi?=
 =?shift_jis?B?NGQtM2IwZjRmZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9h?=
 =?shift_jis?B?NzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxl?=
 =?shift_jis?B?ZD10cnVlO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQt?=
 =?shift_jis?B?M2IwZjRmZWNlMDUwX01ldGhvZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3?=
 =?shift_jis?B?Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9OYW1lPUZV?=
 =?shift_jis?B?SklUU1UtUkVTVFJJQ1RFRIHKwMs7TVNJUF9MYWJlbF9hNzI5NWNjMQ==?=
 =?shift_jis?B?LWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9TZXREYXRlPTIwMjMt?=
 =?shift_jis?B?MDktMTFUMDA6MTQ6NTFaO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00?=
 =?shift_jis?B?MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIxZC04MWUx?=
 =?shift_jis?Q?-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS0PR01MB6178:EE_|TYVPR01MB11200:EE_
x-ms-office365-filtering-correlation-id: c75091ba-3ba2-4034-1095-08dbb25c2fdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TaS+xf4cSwwmB1HAz1ByMFQMz3Ua4tZnPmxO/F571Pk6Vhv+LumDxW9gbloEip9NyVrnvgKmm0iKoiwVivl+Cmkp6luO2sEoiJbAXULZK6NBYx2w07dpIYqK1vvVB5TScj1KCwoUecWMHHlm7zE5H0aw6G9O4YOSjBtbjEqCFurk+mu4EAB5YwhvsO2z/Ypxa+ZRV6Tn1074AGiH4ldaPj07DNhjxgHrs1iWcKVGO5Rt+ERJzl4crUMIm8ddO7vwYeqBApkOD3zgESK7VkmlCTAxitb78BsfQHf68mDmuyVTPsEqWhxuSkLVxz/0gcM+7swydjXto/d+d4Zs/Kn862TMd6/cc2rFRPcSUYaPEDwSfI/Y+87ww3O3FKomG8VyAGDX8IWBus+WpeOJ4YDplLeMTw6KpSV8lZr5qkTL2mStDSvI5SjbifOMmEooEciNbvaAx/ceTMBj3tKunpE4jdBSMlDVZOvM9b/q+VvGao5dTpjj1Vb4OZGE1m1PA8ShVEptijA+uAbdigiWveBt7HROGywsKViB0yAXJRBPKGCq2YcoTyC0B151J4PYjdXEXLCSlSiXUaqYG8Pt8wVcdAHXRBjaIs8w4CC0OYSxEdRwBq76UFDjbvmS+iEL9gfqIRMAuvqAKRm39b1Z5JmiZw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(396003)(39860400002)(136003)(346002)(1590799021)(451199024)(186009)(1800799009)(53546011)(71200400001)(7696005)(6506007)(122000001)(1580799018)(85182001)(82960400001)(86362001)(33656002)(38100700002)(38070700005)(55016003)(15650500001)(9686003)(83380400001)(478600001)(2906002)(41300700001)(52536014)(5660300002)(316002)(110136005)(76116006)(8676002)(8936002)(26005)(66446008)(64756008)(66476007)(66946007)(66556008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?VzBtbUVTcm1xOXJJODJOYSsxTU8vYzBEN0h3UEJ2Unc1RnN3L1BFdXo0?=
 =?shift_jis?B?K0Y1N2s0NEZtOEVVUVZkb2lrQTRxUTBCZSsxOWhrVmdEK2JZZUZUanpo?=
 =?shift_jis?B?bXZkb3FWcXd6bmQ4Ung4d3hCeFZJbHpCRThJV2E4NHFONWpHV0Z6Qzht?=
 =?shift_jis?B?Z1lJZyswdjBSR2c3NzRsUzI2b1U4c0h2dWVzZVg5QmEramIzQktPdFNP?=
 =?shift_jis?B?dXMxRXhVelJkR0hIRkZHM1k3aWVQLytlcGJuOEpDUnhXYXljQWFxNUdR?=
 =?shift_jis?B?clpBWlJlY3JzSzROUWZYcEFCMEhtQ3RJTzUxa012MUhuLzdWcHQ5d0R1?=
 =?shift_jis?B?YlYzd3JRaktKUkwzaWg1ZytZbm44ZmowcjYxZERzSTFqdTBqR3ZrU2VP?=
 =?shift_jis?B?Qm9wbXFRQW1KYkhNZi9wSUg4MkFlVFU1bkJVMjRIbDBJNjNuRHBVVnBY?=
 =?shift_jis?B?aFMxdUtmRndMZjRPU3kreWU5S1BPY0JLbGRFRStoOXdOdGhPTFN1MG9W?=
 =?shift_jis?B?ejNhUWNYN3pJYnl1cHVLMDlVVlMzUU1Yei85RjlHYnp4U1g3M3h4Rmdx?=
 =?shift_jis?B?d2hpeDRtS2J2c1NIUlVTcjd3VFNwem5EanR1M1JZWG0zTmEraXNxSE83?=
 =?shift_jis?B?ck1VMThta2wxdzY4ZE1tejQvTXFaVDh3eHdYVWl1Q3hJaU44YUZ4RzY3?=
 =?shift_jis?B?WmRaUVg1bFM1QmhBc3JnYWtMSzZKMGRJRmZ1bCsxdzM2a1NHSy9Oa0s1?=
 =?shift_jis?B?Tk9XYUJwMmRBcUtSNVpqNFArNE95QXBSMDVEN0hmSGJQZUJ5OXJXdGVr?=
 =?shift_jis?B?U0RwSzhYak5KOVdtZ3VxZWdvVWRzTDc4RWwvU3VlMyswTVR1WlgrZ0Y4?=
 =?shift_jis?B?NHBQS0Q4Uko3OGdDMWswWm05d1djT015QmllM0Zna2tNREljRG5lRGNW?=
 =?shift_jis?B?UG1QZHhaRjhQOEJST1ZSNzBzbGkxMnVScTFWcTN0LzVXeDdyb1REYnRi?=
 =?shift_jis?B?UXNZZEkwZTZCMnVSc2dOb2l4aGhpMVM5Q2FWQ0w1RDRvamRWMzNyYnk4?=
 =?shift_jis?B?ak9RdmNrUnZlMjNwK0QzbWtPSzROc2pDNVdXSzBBWG9qK0xSSkJLamRX?=
 =?shift_jis?B?UWkyeGFvNlA3eVc5aGwrZHZzVEl3WXJvUXJjamRHRWw2citmbnk3ZnlK?=
 =?shift_jis?B?V3NsTS9wTk51cFRCbTRSVk14OVlpUWpsekpHbkRVbDh2Sm50WnFUeWQw?=
 =?shift_jis?B?OTBNaVpkTFhUeiswNm9PK1dhcFlJVSszL0RLZkQ0VEJPQ1lsa1A4UUUr?=
 =?shift_jis?B?d2NuakRMZEorcy9ONi9OMm5hb3oweGQxRWFDaEw4cmtERnh5R0sxMVFY?=
 =?shift_jis?B?OFlWUW9xa2JQUUk4VGIzYjR6VWt6WEZBOTFpN0o1Qm91eUFXc0drQmxx?=
 =?shift_jis?B?dTVJS21LZW5ySU43TTdxUHNzdEovTldvNWpxNE1YNUJDYjhCMFJVMFZp?=
 =?shift_jis?B?SXJGOXJ5OXB1dGQ0YVFGYzdMbFhqU1VQYVpzbHM1dGJrSG1GVi92QXZl?=
 =?shift_jis?B?dE9MbHZFajFqcXdJMlByK29TQWFVRmVPeUk3RUNIU01GKzRrbW5QYXNk?=
 =?shift_jis?B?WHJCb3RSR0Q0clVDZ1l1ZWlud2ZIZDA3dHZKcUNvYlN6SnhFY2NMT242?=
 =?shift_jis?B?bnRXb2dVQmxINS9VeUNjVXI3TFplU0lqRjc0SUoySEV5R01GRy80cU9N?=
 =?shift_jis?B?UmxneG1Gc2JzYkpmamhUelFOci9jMXFKSTI3azlCamVSbi9ubE9kT2s1?=
 =?shift_jis?B?MmUzVUFlT1Q5bHVLOXQxQ2I4TWZYVDBBVVZVbUlaeWhNUUJXcUZoVHdy?=
 =?shift_jis?B?ZnVuVE0zcy9KUFIzbVNKRTl2TTQ1RFpiTzRUMEhlWWZIa3o3UTd2V3Q5?=
 =?shift_jis?B?RTcxeTdJMENEbENzZnBCYkREbDFlTStRNGtUazJVNnJwT3BmQWVZaDdl?=
 =?shift_jis?B?Y0RlMTk0dUFuWW0xV1ZwMXA0d0RZNlVPQVBqNWVyNTh4akpqWUVtWFpO?=
 =?shift_jis?B?cDhNRk5tK3o0cEkvZnQvVmZITzRaNnNuTGM2V2pWOEQ2MG5BeVpZQ2Jy?=
 =?shift_jis?B?L1VmbUpUZ25LNmozcC9GbFM3REkxcGx3ODZjTEtXR2hKbDVZMXhFMzkv?=
 =?shift_jis?B?SGFhV0hIOVhaT1B5R0VJd2p5ZUZLL1EzeEZrTHFIWWFwN0g1Y24zM0hQ?=
 =?shift_jis?B?eUJCVXRKdUtCbXZnZWdqdnU3ajB2UEZYVnRPckhxcG9pczk0azl2UjhZ?=
 =?shift_jis?Q?oBMU?=
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	dPrNeg+TcOK40YvXFdu2o5I8DiIbN4jNR4HpvKdWhUYoeg59figwRa7mCHqqW8Ui6dkvbMAdqjrXgFojqJXald6nxAartpxpgdQN65f5G6B60089nJ3OkBvFItJWDTIcCr0+luQDjo/X8x+Cx6PqMTDXstNX/SHENdiGv0Vhe60Uh56QVnS2xtj3SAdk5efYCuiykKZiRDkRDO2CdvPX/rO0oN1tqZ5v9vhll0QE1uhXx5JmmvrhwnOeeJ/Rxrmz2/C8G2OWB2e/98bDlfrUUrj4eHYdL3aeFhqvi0jYChiRt+bxDGXwu/VjRRB4quIGFnoOearLmycQ+ygDITlS+Kck7VsdU2NNfdcWCXwIDm7hvltJjlAu5FFdAy6sB/Ul0A5jzEN0OAlVruFozTVKRUnNqFxAS4u4qntfv9PTe0pF7I9PbnUlqkAbEZvnpkjFm01hbcWktZ1eAn6ut2uwsvBxGv+46BmVz3eAdV6oyjCLCU+dIxO+lp4ovHo6CxoKnoiPsEB9gAnSHT3MbpBuAGBjrMkYSHCpIepy0uUQeZEKvp5M3MhkvjhM9lKAYOubp72vlDwSBRwjuKjA8wZJUaLSQpKeSY911QoRJJRk6JxDWaUC/+RgtC8YF3yC0IhBdRh3F9W4KklYq5+/d0CtCEILRmI7okemBaLaG2Mm6kgDs649N/1XtYssGEkB48WdOrKvpvyYZUKCgxxyxXxFF9RUISqKstvj7NvZ5R4VL5OKENTmscrv0PVNiYc3w8JBOvjx9/5bSkhmteKJ0vSJ277GvxWbqXKJ700nRgy/cpaX8Qm2jHSURRqnigJANo5z
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c75091ba-3ba2-4034-1095-08dbb25c2fdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 00:15:21.2724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zn++uJDjbGx4uQXsvpBzKv+Hg9lCm1NlKHWz/5dQd0Ly1F1ligbqF5nAJMIfcJ7DuKmYPzk9V+XwudXSrdQkeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYVPR01MB11200
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 00:15:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60960

cGluZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFs
ZiBPZg0KPiBsZWltYW9odWkNCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMSwgMjAyMyA5OjIw
IEFNDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBMZWksIE1hb2h1
aSA8bGVpbWFvaHVpQGZ1aml0c3UuY29tPg0KPiBTdWJqZWN0OiBbeW9jdG9dIFttZXRhLXNlY3Vy
aXR5XVtQQVRDSF0gY2NzLXRvb2xzOiBGaXggZG9fcGFja2FnZSBRQSBJc3N1ZS4NCj4gDQo+IEZy
b206IExlaSBNYW9odWkgPGxlaW1hb2h1aUBmdWppdHN1LmNvbT4NCj4gDQo+IEFmdGVyIHVzcm1l
cmdlIGhhZCBiZWVuIGVuYWJsZWQsIHBheGN0bCBoYXMgdGhlIGZvd2xsb3dpbmcgZXJyb3I6DQo+
IEVSUk9SOiBjY3MtdG9vbHMtMS44LjktcjAgZG9fcGFja2FnZTogUUEgSXNzdWU6IGNjcy10b29s
czogRmlsZXMvZGlyZWN0b3JpZXMNCj4gd2VyZSBpbnN0YWxsZWQgYnV0IG5vdCBzaGlwcGVkIGlu
IGFueSBwYWNrYWdlOg0KPiAgIC9zYmluL2Njcy1pbml0DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBM
ZWkgTWFvaHVpIDxsZWltYW9odWlAZnVqaXRzdS5jb20+DQo+IC0tLQ0KPiAgcmVjaXBlcy1tYWMv
Y2NzLXRvb2xzL2Njcy10b29sc18xLjguOS5iYiB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3JlY2lwZXMt
bWFjL2Njcy10b29scy9jY3MtdG9vbHNfMS44LjkuYmINCj4gYi9yZWNpcGVzLW1hYy9jY3MtdG9v
bHMvY2NzLXRvb2xzXzEuOC45LmJiDQo+IGluZGV4IGZmODAwY2UuLjgxODVlNTEgMTAwNjQ0DQo+
IC0tLSBhL3JlY2lwZXMtbWFjL2Njcy10b29scy9jY3MtdG9vbHNfMS44LjkuYmINCj4gKysrIGIv
cmVjaXBlcy1tYWMvY2NzLXRvb2xzL2Njcy10b29sc18xLjguOS5iYg0KPiBAQCAtMjMsNyArMjMs
NyBAQCBkb19tYWtlKCl7DQo+ICB9DQo+IA0KPiAgZG9faW5zdGFsbCgpew0KPiAtICAgIG9lX3J1
bm1ha2UgSU5TVEFMTERJUj0ke0R9ICBVU1JMSUJESVI9JHtsaWJkaXJ9IGluc3RhbGwNCj4gKyAg
ICBvZV9ydW5tYWtlIElOU1RBTExESVI9JHtEfSAgVVNSTElCRElSPSR7bGliZGlyfSBTQklORElS
PSR7c2JpbmRpcn0NCj4gaW5zdGFsbA0KPiAgfQ0KPiANCj4gIFBBQ0tBR0U9IiR7UE59ICR7UE59
LWRiZyAke1BOfS1kb2MiDQo+IC0tDQo+IDIuMzQuMQ0KDQo=

