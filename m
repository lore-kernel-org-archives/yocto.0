Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77D4DEE14D7
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 03:57:01 +0000 (UTC)
Received: from esa13.fujitsucc.c3s2.iphmx.com (esa13.fujitsucc.c3s2.iphmx.com [68.232.156.96])
 by mx.groups.io with SMTP id smtpd.web11.32502.1694145419687350450
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 20:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=UDdLxKbV;
 spf=pass (domain: fujitsu.com, ip: 68.232.156.96, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1694145420; x=1725681420;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=NGdXSBY6GG9PQnoczkw0JInW7rX1DhGKE7i8PC1SlgY=;
  b=UDdLxKbVoSJg3lhLZLT/xmMthSgxDTBp5teXHD6ZBMVqr43vt8EoudR9
   NSKl83alPgdz608CEAQnlQNN+xd2c4Jwl6XCF/3evo57zcL3nQ62mDWWl
   BGXWRdG8259txEEJ5ONh4UjCgTo+Rvso314VHpXtA5wz53dM61nxdtgap
   LwADHrv1abIcT/yB7UUu9DX8VDT7PVexhWuZkBGJgsdAL0TlDAOOQ3bI/
   2DLqeagsY1ZK6hI0ETxWp3CCDXyAcOlj+lvj5NumAqfV6SIkzLb4tkblM
   ziyKQWAhf7uCCc6JopBF+ckeVX16jDRDrHFdc74Qe2E/2QsvzixsGcV0+
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="94209534"
X-IronPort-AV: E=Sophos;i="6.02,236,1688396400"; 
   d="scan'208";a="94209534"
Received: from mail-os0jpn01lp2104.outbound.protection.outlook.com (HELO JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.104])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2023 12:56:57 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AaTiyeNtq2XB0D/OD0dUS4IRPJwl8473G72VXhVa980Fy5nq1F13mU0T6MwNfVijM3S91epVzGN+FXxQtR1fSJT/zl9FEcmvXy45k3Q2vp/iNNnXKWffupjOmJlza3gS9bABExIO04/ab+lOxHjujnUYZfp8X5/SSPBTRXIDerd3yv6BWFbkw5oK0Xi5WMUn3gASJ4xBfwqI/Y8Y68Z7oD4uSX7WPFiIgbZverK80/ieZ1eMlhlQMcmihVgekXntVzHyh02or1NAJJ43JokhYl5y8kqCH86AyjPl9pffYu1sZwQqWY0W9aPkIscwMUNO+VS5/R4Q6nZJix/jsHM6DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGdXSBY6GG9PQnoczkw0JInW7rX1DhGKE7i8PC1SlgY=;
 b=J7XyxOpVL0YfuzxxmclnojH+BzW2w816W+sFN5u849HWAXuIU5tabWdzDWdX/USw6dBZ8kTymbV6S7yU+5duZtAVnddtS+utY5vNatOq4RWFgKoLShFMNG48d6jpjgENphX3MMkjVAUMeqyPKjvF0e4zhnGtng0q1DAV0evZs/J7XEKUwljL8nV2m1UayP5u50AejWGqUggjEZ1p+Dy+4LFH9Y6PoT2jhLKod+ApXjQ8yXIEyhlCkdNJz9LDBugopegZNtDM3x7Bew/H3anUah4dF2vrMhl3DZZKhl0fJIEICwtRrZcwAeuuDZb8gJy4DbAcfuGUEenpdHIFBoLp7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by TYCPR01MB7869.jpnprd01.prod.outlook.com (2603:1096:400:182::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 03:56:53 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::200b:f52:be15:5e50]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::200b:f52:be15:5e50%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 03:56:53 +0000
From: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "akuster808
 <akuster808@gmail.com> (akuster808@gmail.com)" <akuster808@gmail.com>
Subject: RE: [yocto] [meta-security][PATCH] paxctl: Fix do_package QA Issue.
Thread-Topic: [yocto] [meta-security][PATCH] paxctl: Fix do_package QA Issue.
Thread-Index: AQHZ3HKAUTqFZ+41EkCZ3WJWlHc4xrAQV/fg
Date: Fri, 8 Sep 2023 03:56:53 +0000
Message-ID: 
 <OS0PR01MB617847E103B0ACA46410D491A0EDA@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <1780A1ABE69A09FA.27804@lists.yoctoproject.org>
In-Reply-To: <1780A1ABE69A09FA.27804@lists.yoctoproject.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?shift_jis?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZl?=
 =?shift_jis?B?Y2UwNTBfQWN0aW9uSWQ9N2U5MDlmMjEtMjM4NC00ZThlLWEyZTktYzhk?=
 =?shift_jis?B?ZTgzNDQ5NmZiO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFi?=
 =?shift_jis?B?NGQtM2IwZjRmZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9h?=
 =?shift_jis?B?NzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxl?=
 =?shift_jis?B?ZD10cnVlO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQt?=
 =?shift_jis?B?M2IwZjRmZWNlMDUwX01ldGhvZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3?=
 =?shift_jis?B?Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9OYW1lPUZV?=
 =?shift_jis?B?SklUU1UtUkVTVFJJQ1RFRIHKwMs7TVNJUF9MYWJlbF9hNzI5NWNjMQ==?=
 =?shift_jis?B?LWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9TZXREYXRlPTIwMjMt?=
 =?shift_jis?B?MDktMDhUMDM6NTY6MjJaO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00?=
 =?shift_jis?B?MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIxZC04MWUx?=
 =?shift_jis?Q?-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS0PR01MB6178:EE_|TYCPR01MB7869:EE_
x-ms-office365-filtering-correlation-id: fc96f81e-49d7-4af0-ab57-08dbb01fa361
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 C8gcZ/hgVKDHunNc/pYMFFpXW9I2WSxxdA+jIr+2yh+RBMQIhi2KLJRzCGCN2XUCc7NJW0TLu+6QN0a7icOMFPbDLjz0b1DDt6lEOGTWERKL6WL6SwYdVfu+L6WXktLrAnrQNw71zeB9vz25uSePad1nwlKWWbYAApQ7LB7rvDhiZb2JyZq3Hzb/hyWcrSxScF2ml363J0KA2Cr/8IsDKeuYmm327zWoygnX1MnReiVrG4+W1ToTXDHGXCXBDbLB3Z6pLQV216LRQS6/3rY+tIG8XguDk62PKJr+ybKV3gC97MdwWBJVdkTjmhVAmBzwjJHKW1iw+2t0oPLOTvZ3he0GUXGy60HCd1/M+4DGqMb0BdeYz1DGke/clENEsu/ELudzPP98P9+5TT37igjFkUNRoEnAWXegWT7HMmMzZrnL86PGjb7ykyraospb5vUPk+ewhxdHZvayRnXx40BQl3QzCiMufwCVcIV3qv9R+BkGk6tn/74U2apXSTd7fvLVG/edW/i17dIFMlLfTaDmo/vGjr31KY3qv6mYcXGdW/R5bpVafCKwwNLGURsyxGaa9mQj/xIBAKXRO2LjSYdOECr1HBl14KAgxX5u4X3n+K9Nks6SY7m9TiTaTcH0Qi9E
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199024)(1800799009)(186009)(1590799021)(66476007)(5660300002)(52536014)(15650500001)(83380400001)(8936002)(8676002)(1580799018)(26005)(41300700001)(71200400001)(122000001)(9686003)(38070700005)(53546011)(38100700002)(55016003)(82960400001)(33656002)(86362001)(66446008)(85182001)(110136005)(76116006)(2906002)(64756008)(66556008)(66946007)(478600001)(6506007)(7696005)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?TXRWanZyNDRsWEIzZUMxQkx1VUtvamU4YUozazkybWxNT3FuZzNZUEh4?=
 =?shift_jis?B?K080YXBDNnBibm1mTWthaTg5R1NpUjcrdy9QRlE0bkx2aHo0V25JMVRU?=
 =?shift_jis?B?VHdFamZYeUJ6NFhGSm0zVCtreE56cnB5eFpSNktQUDFtVGFYVW1USEd2?=
 =?shift_jis?B?OXZGYWhxNlJsdWJBTjlnbWd5M1ZvMkdBTTRVSkYyQXNQQlpLSDducWZm?=
 =?shift_jis?B?VjZrMzVrRm5uVDVMa3VUSFhrV2h1emg4T2syNHJhVzlzbGcvZ1NLN0xB?=
 =?shift_jis?B?Z3VIWnRhOUFIY004K3MzYTFWcW9SUWMwNUpHWDVqU1EzWGtUbXJXSkVP?=
 =?shift_jis?B?L1FsMHBDS0JSd2UzQWd3KzVQeUZiSFBjazgwSlZodEFFRkxMT0dHWXp1?=
 =?shift_jis?B?dmVIaDN1Wm9HeG5XQ0htY0xPM3NOenkzRUphZXdlUW1JVjE2aWM3UjVl?=
 =?shift_jis?B?SDJ0cGFMMFZFTVl3dXNMR1JQbGtVelUyUWQyeEFlSHJLNXA4cnJMREpW?=
 =?shift_jis?B?eXA5Rm5vajBoWk9Wb3lqcU10YTJKVEhReHd6ejh3cEtJUVlmaDczSW9L?=
 =?shift_jis?B?MWpickFxeGZjWC9IanlTUjBlelZvY0F3S0dIWXRxRCtnS1VoQVBEUlQ4?=
 =?shift_jis?B?ZTg1Q1RXL2hyUGgzYjRZQVhBRjBtR09UampiTVIwMFhQaFR2NW9yOXlY?=
 =?shift_jis?B?SmtoVXdjVjYrdUFTU2QrcnRjenE3V0pJc0dtUWxFTDBBN0xTWk1UQW54?=
 =?shift_jis?B?dXU1cEo1bGEvNURKMWoyYndPeGEvRk1SLzB1OFcvUVdGYzBqMFJTcWNN?=
 =?shift_jis?B?QldVN1hVblJsb3VINVNoZDBiR25ybFMvSytZOWx2RXB2ckIvYnBES2o2?=
 =?shift_jis?B?ZjBVUGQrWGkvaGpRczkrdEw5anRIZWxFOEJ4ZFNrdm5xLzg5V1dPS1M1?=
 =?shift_jis?B?VGVEenRNV2F3NWlJa3NhYkdJVlVNTk43YzRHUGlyUmZkcU5aS0E4UDRO?=
 =?shift_jis?B?dVV3LzgxWWQ1UExVa3JhcTVhZzlETS9YTk9odXZNTzhHQkRISVJFbHN3?=
 =?shift_jis?B?dUtxWExZN3JLOWNaT2N4eVRPN1NMMHFTeks5RFZ6bnJjRVhtcWgvR1RY?=
 =?shift_jis?B?NGU4NjJhWjFudjk4SzltMi9jNGo1bGpwWG4ySzlsNHBPcWJmbnlXbjdV?=
 =?shift_jis?B?UTlWeUJMNWF6OTZZdFZEZnNpSWYrVjN3MldXYzcwSVdUaFZmeThCM2pk?=
 =?shift_jis?B?OTArVEtZM0plVnJibXZVVCtSOVl1MThCQmZzeEpZS3ljaFN4YVBTdVl0?=
 =?shift_jis?B?M3UvbnFDdzJQQUw3YVpydzdOdkFpUklLY0t6R2dRclp5TFBQUjZBQjNU?=
 =?shift_jis?B?NUF0aWJXWERCN1cyTG5mRWIwVm9kcFNmb254RkZybngwbktIRDZ6d3Vh?=
 =?shift_jis?B?WFBpMXRqMmZtWmJyMnNWZzJyZWJRS0xLVGRGTmRTVnV6V1RLSnhESXd3?=
 =?shift_jis?B?VnlxRjhKS291MjhNWnVUNldQVmJnbmQvcUp4TjRtdzhIZk5lVmQyc3ll?=
 =?shift_jis?B?d1cyajFQSGFON0JFRjVXZ1NwY3FiZWxCSVdaZkRXMVRTYTJzdEJZdmJR?=
 =?shift_jis?B?VFZ5YzdEN2ZDbk5kSDdCSDVNRkJ5dHp1VkJ5N2hvTlhQcThzREJrN244?=
 =?shift_jis?B?aVdCdDdrTFExUnVPZmQzUlJiNkp0ZitzN2hHTFhiRnFhZXo3c2IxRmUr?=
 =?shift_jis?B?aSthcjI1Y2hBRGFVUWU5UWxnNTFqUFFpblNHUHV0NXZNRHR3L2w0WGkx?=
 =?shift_jis?B?b0tidUdJa05paXhFM1RDSVRCbkhWQ05TRjQxYmJKWW5HTndxaVowRCtP?=
 =?shift_jis?B?blJhenBiYkFSVWhWdExZOGZIRDZub29ERUVJMkY1OFY2US9hSEM4aWJY?=
 =?shift_jis?B?L1kyV01SeXNtZEZjRW85bWk1bWYrNkdMNk00NTQ5dFFGb1c4VEl3bStH?=
 =?shift_jis?B?TWFSa1I1M0xjSG94bXIwdW5sandKZTBXV1ppZCtiaHRqcmxEMHVpREd6?=
 =?shift_jis?B?aXMzYks0Ykx1aEZ4Tkt4clhxTllDWUx5MXNCUkNjUm9tQmF2Smhvd0tI?=
 =?shift_jis?B?cjFVWEovL3JnMHFOQmp3Uk9YQ1BwS0ZkWEZ0Rk5TZTV0Y2JqM1BKRDgx?=
 =?shift_jis?B?djZFb3NXOUlrdnRXbllzWHh0SUFuT0g0L0xNUXNoa0ZFbmxZYjVlb0px?=
 =?shift_jis?B?RXp0ZUlTVFc3ci9BSFBOTm1rN2xBcTd6ek5RZFc3bzVnWmR1R0VxWXV6?=
 =?shift_jis?Q?+nW/?=
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	E0cVxzlGi6VR2e6S/u/qCst6VMWQZN2dxwbi7OdhsgRH5BBWi+Bt5twXbyfQ1W2t8aZ6rQY/O4s18Krk6Gjq43aqTs9ntBeqvYjLpsEVgDoP6YjcKu5vEhbLqIwGu2J+USqX9O+X5zPxLaB6xybCNMdBgiWExgDki444cDEYwqDAv/lFHcHSTqKHqRpy7FkCFiMd+mjdic25GqGLidtZiZReefs1Ggv7rcY8KGdZ8Hk9C5VaGUhSaU5yYLy5wyE/WHUsu1S4d88WijqwzxrNn7RW6JGFL4JSByvZoDG6Skcga2dBM2AeWyqIKcChwj/owBxV6oOuJ5NZ94NE7wViWPTgMK5GbxP4+k4wHJFKUvTYNjSOwdFR4peoBxum6KZmMP+OQz+oYSQIQuBuVJqcgWmYeeL4bRXuZQMgQ0vrbIGcWNGxrkH16xxbh5Ubyws3rcfE5GWHQQco/aVM3b2djIk8gVG7Y3nxO2ox/FPLcyL44cvpfS7EdtUIxWw2Ileq3dTc/sQaMLEk6RjAxlWyiBSOmNBYRTI38xzw8DSvWV7S7LlUJkvmAAb4DMSQjYZJ1K5IQ1JVMWVzdjHo1tzoAkOSgXDBti3A5xlteDgFNWv8XsPjDrf2WiK7FFWDmP5+qtDm/KvHcyZ/OGOocj18o86TTEJ12bd6S+cFEdl/uWSdKq7q1Phi3huXFXf5WnGX7s0fruQJR+/sMt1I3EySvBiHYasWQSFUdbcmXlndVxmZ5vmkDNyr9wIUSKPKQTqKpM7WbcsZgL9TBKW/0d2TFbFQNziLNwWbPy6TF7lbVkgt5A+2puCWrU2xHvFuaqUw
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc96f81e-49d7-4af0-ab57-08dbb01fa361
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 03:56:53.4037
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JqL4T4/UGBfvXHkPZR+sG0LK1yV75CImpGeADvUy4zn22Y188YSFOvMFs3oVE6hJxv0hjjIeNRnURHgr510KDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7869
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 03:57:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60940

cGluZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFs
ZiBPZg0KPiBsZWltYW9odWkNCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMSwgMjAyMyA5OjIw
IEFNDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBMZWksIE1hb2h1
aSA8bGVpbWFvaHVpQGZ1aml0c3UuY29tPg0KPiBTdWJqZWN0OiBbeW9jdG9dIFttZXRhLXNlY3Vy
aXR5XVtQQVRDSF0gcGF4Y3RsOiBGaXggZG9fcGFja2FnZSBRQSBJc3N1ZS4NCj4gDQo+IEZyb206
IExlaSBNYW9odWkgPGxlaW1hb2h1aUBmdWppdHN1LmNvbT4NCj4gDQo+IEFmdGVyIHVzcm1lcmdl
IGhhZCBiZWVuIGVuYWJsZWQsIHBheGN0bCBoYXMgdGhlIGZvd2xsb3dpbmcgZXJyb3I6DQo+IEVS
Uk9SOiBwYXhjdGwtMC45LXIwIGRvX3BhY2thZ2U6IFFBIElzc3VlOiBwYXhjdGw6IEZpbGVzL2Rp
cmVjdG9yaWVzIHdlcmUNCj4gaW5zdGFsbGVkIGJ1dCBub3Qgc2hpcHBlZCBpbiBhbnkgcGFja2Fn
ZToNCj4gICAvc2Jpbi9wYXhjdGwNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExlaSBNYW9odWkgPGxl
aW1hb2h1aUBmdWppdHN1LmNvbT4NCj4gLS0tDQo+ICAuLi5ja2FnZS1lcnJvci1pZi1ERVNURElS
LWlzLXNldC10by11c3IucGF0Y2ggfCAyNiArKysrKysrKysrKysrKysrKysrDQo+ICByZWNpcGVz
LXNlY3VyaXR5L3BheGN0bC9wYXhjdGxfMC45LmJiICAgICAgICAgfCAgNCArKy0NCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKSAgY3JlYXRlIG1vZGUg
MTAwNjQ0DQo+IHJlY2lwZXMtc2VjdXJpdHkvcGF4Y3RsL3BheGN0bC8wMDAxLVRvLWZpeC1wYWNr
YWdlLWVycm9yLWlmLURFU1RESVItaXMtc2V0LXRvLXVzDQo+IHIucGF0Y2gNCj4gDQo+IGRpZmYg
LS1naXQNCj4gYS9yZWNpcGVzLXNlY3VyaXR5L3BheGN0bC9wYXhjdGwvMDAwMS1Uby1maXgtcGFj
a2FnZS1lcnJvci1pZi1ERVNURElSLWlzLXNldC10by0NCj4gdXNyLnBhdGNoDQo+IGIvcmVjaXBl
cy1zZWN1cml0eS9wYXhjdGwvcGF4Y3RsLzAwMDEtVG8tZml4LXBhY2thZ2UtZXJyb3ItaWYtREVT
VERJUi1pcy1zZXQtdG8tDQo+IHVzci5wYXRjaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBp
bmRleCAwMDAwMDAwLi40NTFjYjdmDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvcmVjaXBlcy1z
ZWN1cml0eS9wYXhjdGwvcGF4Y3RsLzAwMDEtVG8tZml4LXBhY2thZ2UtZXJyb3ItaWYtREVTVERJ
DQo+ICsrKyBSLWlzLXNldC10by11c3IucGF0Y2gNCj4gQEAgLTAsMCArMSwyNiBAQA0KPiArRnJv
bSA4MjRjNWQ3Yjk2YWVlZjFiNGUxODJmNjU3YWMwMDJiZWQ2ZTE0Y2Q1IE1vbiBTZXAgMTcgMDA6
MDA6MDANCj4gMjAwMQ0KPiArRnJvbTogTGVpIE1hb2h1aSA8bGVpbWFvaHVpQGZ1aml0c3UuY29t
Pg0KPiArRGF0ZTogVGh1LCAzMSBBdWcgMjAyMyAwODoyMDo1NiArMDAwMA0KPiArU3ViamVjdDog
W1BBVENIXSBUbyBmaXggcGFja2FnZSBlcnJvciBpZiBERVNURElSIGlzIHNldCB0byAvdXNyLg0K
PiArDQo+ICtVcHN0cmVhbS1TdGF0dXM6IEluYXBwcm9wcmlhdGUNCj4gK1NpZ25lZC1vZmYtYnk6
IExlaSBNYW9odWkgPGxlaW1hb2h1aUBmdWppdHN1LmNvbT4NCj4gKy0tLQ0KPiArIE1ha2VmaWxl
IHwgMiArLQ0KPiArIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPiArDQo+ICtkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQ0KPiAraW5kZXggMGQ3
YmMwYy4uNDZmZDY2NCAxMDA2NDQNCj4gKy0tLSBhL01ha2VmaWxlDQo+ICsrKysgYi9NYWtlZmls
ZQ0KPiArQEAgLTE5LDcgKzE5LDcgQEAgJChQUk9HKS5vOiAkKFBST0cpLmMgJChQUk9HKS5oICQo
UFJPRyktZWxmLmMNCj4gKw0KPiArIGluc3RhbGw6ICQoUFJPRykNCj4gKyAjCSQoTUtESVIpICQo
REVTVERJUikvc2JpbiAkKERFU1RESVIpJChNQU5ESVIpDQo+ICstCSQoSU5TVEFMTCkgLUQgLS1v
d25lciAwIC0tZ3JvdXAgMCAtLW1vZGUgYT1yeCAkKFBST0cpDQo+ICQoREVTVERJUikvc2Jpbi8k
KFBST0cpDQo+ICsrCSQoSU5TVEFMTCkgLUQgLS1vd25lciAwIC0tZ3JvdXAgMCAtLW1vZGUgYT1y
eCAkKFBST0cpDQo+ICsrJChERVNURElSKS91c3Ivc2Jpbi8kKFBST0cpDQo+ICsJJChJTlNUQUxM
KSAtRCAtLW93bmVyIDAgLS1ncm91cCAwIC0tbW9kZSBhPXIgJChQUk9HKS4xDQo+ICskKERFU1RE
SVIpLyQoTUFORElSKS8kKFBST0cpLjENCj4gKw0KPiArIGNsZWFuOg0KPiArLS0NCj4gKzIuMzQu
MQ0KPiBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1zZWN1cml0eS9wYXhjdGwvcGF4Y3RsXzAuOS5iYg0K
PiBiL3JlY2lwZXMtc2VjdXJpdHkvcGF4Y3RsL3BheGN0bF8wLjkuYmINCj4gaW5kZXggNWM5YWZm
MS4uM2QyZjJhMyAxMDA2NDQNCj4gLS0tIGEvcmVjaXBlcy1zZWN1cml0eS9wYXhjdGwvcGF4Y3Rs
XzAuOS5iYg0KPiArKysgYi9yZWNpcGVzLXNlY3VyaXR5L3BheGN0bC9wYXhjdGxfMC45LmJiDQo+
IEBAIC04LDcgKzgsOSBAQCBMSUNfRklMRVNfQ0hLU1VNID0NCj4gImZpbGU6Ly9wYXhjdGwuYzti
ZWdpbmxpbmU9MTtlbmRsaW5lPTU7bWQ1PTBkZGQwNjVjNjEwMjBkZGE3OQ0KPiANCj4gZmlsZTov
L3BheGN0bC1lbGYuYztiZWdpbmxpbmU9MTtlbmRsaW5lPTU7bWQ1PTk5ZjQ1M2NlN2Y2ZDE2ODdl
ZTgwODk4MmUyOTI0DQo+IDgxMyBcDQo+ICAJCSAgICINCj4gDQo+IC1TUkNfVVJJID0gImh0dHA6
Ly9wYXguZ3JzZWN1cml0eS5uZXQvJHtCUH0udGFyLmd6Ig0KPiArU1JDX1VSSSA9ICJodHRwOi8v
cGF4Lmdyc2VjdXJpdHkubmV0LyR7QlB9LnRhci5neiBcDQo+ICsNCj4gK2ZpbGU6Ly8wMDAxLVRv
LWZpeC1wYWNrYWdlLWVycm9yLWlmLURFU1RESVItaXMtc2V0LXRvLXVzci5wYXRjaCBcICINCj4g
DQo+ICBTUkNfVVJJW21kNXN1bV0gPSAiOWJlYTU5YjE5ODdkYzRlMTZjMmQyMmQ3NDUzNzRlNjQi
DQo+ICBTUkNfVVJJW3NoYTI1NnN1bV0gPQ0KPiAiYTMzMGRkZDgxMjY4ODE2OTgwMmEzYmEyOWU1
ZTNiMTk5NTYzNzZiOGY2ZjczYjhkN2U5NTg2ZWIwNDQyM2MyZSINCj4gLS0NCj4gMi4yNS4xDQoN
Cg==

