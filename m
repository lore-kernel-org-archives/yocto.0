Received: from APC01-SG2-obe.outbound.protection.outlook.com (APC01-SG2-obe.outbound.protection.outlook.com [40.107.131.111])
 by mx.groups.io with SMTP id smtpd.web10.30765.1585499334757969939
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 09:28:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=MR9DD9h1;
 spf=pass (domain: hcl.com, ip: 40.107.131.111, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUS6EinDwL6UrLIY9rsRAAUX1DSIXMBu7TnO4H1HLaA=;
 b=MR9DD9h1UIwPOieo2/8VEy4hL2diN35/Hn+CyJeWs9I2Ao7WJud3ypPqphBcRT917W15HDFiDhtZswgXjkvQmnZ0VrRE0Dq+KBJHtKxtNe0Uns9quBYs9UxUZxfJFdtZm+QA5nNoVuoRm19nzeB3i6mHQYvp2PyGaxBAL9nHvlk=
Received: from HK2P15301CA0003.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::13)
 by HK0PR04MB3123.apcprd04.prod.outlook.com (2603:1096:203:3f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Sun, 29 Mar
 2020 16:28:52 +0000
Received: from HK2APC01FT009.eop-APC01.prod.protection.outlook.com
 (2603:1096:202:1:cafe::68) by HK2P15301CA0003.outlook.office365.com
 (2603:1096:202:1::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.2 via Frontend
 Transport; Sun, 29 Mar 2020 16:28:51 +0000
Authentication-Results: spf=pass (sender IP is 192.8.195.57)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.57; helo=APC01-PU1-obe.outbound.protection.outlook.com;
Received: from APC01-PU1-obe.outbound.protection.outlook.com (192.8.195.57) by
 HK2APC01FT009.mail.protection.outlook.com (10.152.248.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sun, 29 Mar 2020 16:28:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQO6GxMNocBc+JOxbEwpRWqdBCxMcExkVn5M9VE4LyStIAhinGEXsoKQSPb8R54eMFnnpT+kAimvqfEXmBvHI7QdbxCLTuzdE1KInRjVZ2KV9Hz3QwstedMb+ecPLQIg7MwyINnDzpmdjOeLnZoNL8EzKGp7aeAYPrYzzykJDM93ve0Di4zJBwcyJPX9J9B6rcWaxTWW6orMX4fGQgQWh58Q12arVEMT/wNCqK2eJhglhXa9V+PePjAg+tFicMtrxKb9Fb1LnAFeI9qfmHxj5149nYhaRrWLk1tr7wcpdU0tCIWk6scT0XEQjQqh21dhnvF/0xhgpHjfxfnzJ7h4gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUS6EinDwL6UrLIY9rsRAAUX1DSIXMBu7TnO4H1HLaA=;
 b=fjOipEx5i6lRkL+0jxOqFOEp1MZPyPs7vsaCi9y7CH4yy9P7Hhvwee/86d8KyQiQ6ltGtspFqpshDVkMDf/uodC0ig1EibNBisPOuIRU5KnBhhBLsnNKWJ4G0uQee4O9nQPHjbmMGmT9sX/Xc/QS/mu5eevACk7lEkzfZQ3eWyfiQRBzcfsQKJv1h1TE6wU/cCkqo3fVifXjShvP6v4gSJosHhRF4dU6FOSzG8dTXy/8EgPDbe1c7eIMn4lqMsaLu3e2Xx701T4kyRVlw60hNlw82UfcqwDkCzCd6LNIwzBT51a8hSFaraOy3hBCKecJfl+TCkCmVOfa5fomp1Ix8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUS6EinDwL6UrLIY9rsRAAUX1DSIXMBu7TnO4H1HLaA=;
 b=MR9DD9h1UIwPOieo2/8VEy4hL2diN35/Hn+CyJeWs9I2Ao7WJud3ypPqphBcRT917W15HDFiDhtZswgXjkvQmnZ0VrRE0Dq+KBJHtKxtNe0Uns9quBYs9UxUZxfJFdtZm+QA5nNoVuoRm19nzeB3i6mHQYvp2PyGaxBAL9nHvlk=
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com (20.177.25.76) by
 HK0PR04MB2484.apcprd04.prod.outlook.com (52.133.147.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Sun, 29 Mar 2020 16:28:44 +0000
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44]) by HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44%5]) with mapi id 15.20.2856.019; Sun, 29 Mar 2020
 16:28:44 +0000
From: "Ajam Ali" <ajama@hcl.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Image size reduction
Thread-Topic: Image size reduction 
Thread-Index: AQHWBeZcNGow7JB2ME2ZHxK+8kxKvw==
Date: Sun, 29 Mar 2020 16:28:43 +0000
Message-ID: 
 <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.48.73]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: e6016038-5ea8-4942-4092-08d7d3fe43b3
x-ms-traffictypediagnostic: HK0PR04MB2484:|HK0PR04MB3123:
X-Microsoft-Antispam-PRVS: 
	<HK0PR04MB312324728DC9DDDBCD54B847B4CA0@HK0PR04MB3123.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:6790;
x-forefront-prvs: 035748864E
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2914.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(2906002)(55016002)(45080400002)(478600001)(9686003)(4743002)(81166006)(6506007)(81156014)(86362001)(8676002)(316002)(3480700007)(7696005)(8936002)(52536014)(26005)(7116003)(186003)(71200400001)(6916009)(91956017)(76116006)(66946007)(5660300002)(33656002)(66476007)(66446008)(64756008)(66556008);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 6YkM0KV1vm2C2dng78q3wdYOXxkGP7W5AxYD0KdW9a3cKtDPWqPLzEPoCYV4OK6dVUZouZhoXORQFMKTFiE6TKGQnoQ7LWi7RwapFX7iacl03uXzXxtipwJS+mBDdgVbCrkQ/TpE9Yj3qF2ZRviqJBhQIaASzZruDAY7Ha26N8PTxzh38BwRVTMYOhVNu7EgUIoaxKEVCYUnMXgNi3ssC+TJQ7GMijNhmSl+VQWQt0GRVwF3upU4prqJwiDIVVAL7gakirFb9ZyembkFIX0BDl4gROMniy/JZk0PgJ2MwiB+iE5WFyGqVMTF8maABu0U2gk3ODGfByShNIu5l8/WZMKtvXiNIoD+Q/f4dW6wlC9pUMQmivsFu3uPfY8lgBSHbcuSMVHQvkDeV9nnRlSesWXqtIb8vx7LtzPdlKgZgYxhiXUTz8fUSW+oO9Wx4/iJWdNOu2AEFdK6A8R0xhlHB57f9f9i+UDkkUc74CqHtt2eRQUgY1B1Esvkb2+Tdugd4hqWrOUVs92pyURbYkr4mA==
x-ms-exchange-antispam-messagedata: 
 lGB2qWHeTdfd0D0h5yYwtOjOShsLKWMJsAiKEblmIZOoar56dKlQhE5UovV6nHc89OKgDQreIo4j4u6W93tT0L3caCC3MogayOj2YFMi/PBK+CPJeXP8r4p8QyugQkzDl1qwqpPZmrmZjJh706uOgw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2484
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HK2APC01FT009.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.57;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-PU1-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(136003)(376002)(39860400002)(346002)(396003)(46966005)(8676002)(47076004)(9686003)(8936002)(81166006)(55016002)(81156014)(33656002)(336012)(2906002)(4743002)(356004)(70206006)(70586007)(45080400002)(316002)(478600001)(36906005)(82740400003)(5660300002)(3480700007)(7696005)(26005)(186003)(6506007)(7116003)(52536014)(6916009)(86362001);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	70062836-d9d1-42ae-14fb-08d7d3fe3ff4
X-Forefront-PRVS: 035748864E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1lTRTiEqFWYtnlj2UDIBgcDbBTN7qixZUDF/tGYIIjdiKTR6jSZjJQN4zWQyvUZ20l9uwzCLYXm+4D5/xgBZfe0CSUGhVwpYiII+KazQUN/LulMJC6XBjwzpn/QRxwFfbL9cv+dB5K69Azrq45ILSgidq/hSrWFaOJJQSztfxalgx5bvOlaasyne0+zMCYvPGORFw8aejDq3X5yCZgd2KlZjy0SNHCrqsbYFsCczr+Sn7UqiEOHsn647mzUvr+DjFsupoXKvAOwGuIKry/wKMo+58DHVmi9V1GiRJXZs0o2ofJwWN3o0eU9+KQU6VfnV4zVrc9iZ4366qdgwu77l/vPno0hOS6HBFXTnVmGfELjUyRg6Kqn/2deiP1a6DsR4xVmOccRz16LYaZbusK9/KuuItNlcuAUueB8hvChwl2rEFwAOLCV09VGzRNvPv9Bl2y9JhoJVFSWbvzzURGnmc4Y5ooJjNuNnpYfn5WVuGjyCYA85VNzOexvq90PExbxtPGxAtHqLqoYI7dP1dl9mxnmMO0qfN/x8S28Pt1mo/hZ/nWzLKo7U/L4roRQAat1He0aoQAUqhURdGfQJEg1leAdCXHgcll3TTtSUkk16vqo=
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2020 16:28:49.6743
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e6016038-5ea8-4942-4092-08d7d3fe43b3
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.57];Helo=[APC01-PU1-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB3123
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR04MB2914D21E1391217F6E47708DB4CA0HK0PR04MB2914apcp_"

--_000_HK0PR04MB2914D21E1391217F6E47708DB4CA0HK0PR04MB2914apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Actually my current image size is 3.9GB because of heavy size packages requ=
ired by my project and without project required packages my image size in Y=
octo is 800MB.

I want to reduce the image size as maximum as possible.
Please suggest the best possible way so that I could reduce the maximum pos=
sible size(desirable below 1.5 GB).


Thanks in advance,
Ajam Ali


Sent from Outlook Mobile<https://aka.ms/blhgte>
::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents (with or without referred errors) sha=
ll therefore not attach any liability on the originator or HCL or its affil=
iates. Views or opinions, if any, presented in this email are solely those =
of the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, distribution and / or publication of this message witho=
ut the prior written consent of authorized representative of HCL is strictl=
y prohibited. If you have received this email in error please delete it and=
 notify the sender immediately. Before opening any email and/or attachments=
, please check them for viruses and other defects.
________________________________

--_000_HK0PR04MB2914D21E1391217F6E47708DB4CA0HK0PR04MB2914apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
Hi All,&nbsp;</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
<br>
</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
Actually my current image size is 3.9GB because of heavy size packages requ=
ired by my project and without project required packages my image size in Y=
octo is 800MB.</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
<br>
</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
I want to reduce the image size as maximum as possible.</div>
<div style=3D"color: black; font-size: 12pt; text-align: left; font-family:=
 Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heigh=
t: 20.4px;" dir=3D"auto">
Please suggest the best possible way so that I could reduce the maximum pos=
sible size(desirable below 1.5 GB).&nbsp;</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
<br>
</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
<br>
</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
Thanks in advance,</div>
<div style=3D"color: black; font-size: 12pt; text-align: start; font-family=
: Calibri, Arial, Helvetica, sans-serif; background-color: white; line-heig=
ht: 20.4px">
Ajam Ali</div>
<br>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Sent from <a href=3D"https://aka.ms/blhgte">Outlook Mobile</a></div>
<font face=3D"Arial" color=3D"Gray" size=3D"1">::DISCLAIMER::<br>
<hr>
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or
 incomplete, or may contain viruses in transmission. The e mail and its con=
tents (with or without referred errors) shall therefore not attach any liab=
ility on the originator or HCL or its affiliates. Views or opinions, if any=
, presented in this email are solely
 those of the author and may not necessarily reflect the views or opinions =
of HCL or its affiliates. Any form of reproduction, dissemination, copying,=
 disclosure, modification, distribution and / or publication of this messag=
e without the prior written consent
 of authorized representative of HCL is strictly prohibited. If you have re=
ceived this email in error please delete it and notify the sender immediate=
ly. Before opening any email and/or attachments, please check them for viru=
ses and other defects.<br>
<hr>
</font>
</body>
</html>

--_000_HK0PR04MB2914D21E1391217F6E47708DB4CA0HK0PR04MB2914apcp_--
