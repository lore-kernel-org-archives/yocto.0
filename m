Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.1308.1623179441568908660
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 12:10:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Gv0NuG+Z;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=17932f0905=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EB14238C1115
	for <yocto@yoctoproject.org>; Tue,  8 Jun 2021 19:10:40 +0000 (UTC)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 158J8xMU024049;
	Tue, 8 Jun 2021 12:10:36 -0700
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2048.outbound.protection.outlook.com [104.47.56.48])
	by mx0a-0064b401.pphosted.com with ESMTP id 391qkqgyv1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Jun 2021 12:10:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1ra68JkworE4YAhH0hz1eoXD0D/2Ovo3spqbWB6hjIKPo5S+tWoDeUxyv5eQhZebB87QAbDhRqTqUl0KzRbXfOaHu8BKIWAebB2/M76NWVOlKvvQg1E13Nb74EGp/4aMXH5llZ4vc10HlC3uG2SrGmOOwcYzY4LTUOMpTyqnsjZzNhnYijJeLZuP+NEuo+xURvG4GB3fPpm+xjvV7xEcdUEOaCJeLTFOBDoHivGyfrkoaU1cG/PeJMKPRP9FVDLkJ6enWB5lK2ITlTbZcpFw15rxjB+OAwVoN97A+ePfpmlJWnQ13pa23OrhScVqDzhTMEjTh+diFJI3To9AAvRQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNlu9YJ/5pd1H1DCw4rlsJRGQkfnZ6Y2pLXEvhFe6uI=;
 b=AhklsSPaZs/ilnp/dF0MxNfhvXhVHdvKj5kwMMoyi3CEWq9WjQQzDOfFVeyqdAGzuUM4fsIxdBy50koVOGEgHwJvwbBnKdpUQEV7t5tngWotwQ2m6nvyIrLOS3FqeD/ixQKaxDppcGjClBlxt6VCArY8+BCM1kApzpY6gNxAPsDMVZr1wt4rj2UPP0Mqh2NkbC+7g2+vcY1zSzdEt7WuQqCUz6ZIxLy9QOODao4fQciVzzpDgeJ4gPDn+3WdL9/BgC/aNSlYw+RZAh8I2yc9AOlh/fQ/Zx305Dv7aTMcMypZl1z16U/SfKqLqKGEKWq35gtMQO4X3OiE60NLADwulQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNlu9YJ/5pd1H1DCw4rlsJRGQkfnZ6Y2pLXEvhFe6uI=;
 b=Gv0NuG+ZfF0TMQiSvxUilJUirELMK+n0+D4MSUxcNU6RLLJIGWSMIk7YkWjg36iPtkNzY1n7JImo7nnlkoehpIeiGO8z5L/kBxzIllAEsZ8XgckBV+Io+RknGiW2Oc+6VCh7NsOLJWIcI5Q2lakFXLyXj7cJgPVJPpjSbi03LeU=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1675.namprd11.prod.outlook.com (2603:10b6:4:d::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4219.21; Tue, 8 Jun 2021 19:10:32 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 19:10:32 +0000
Subject: Re: [yocto] How to use debug symbols from recipe-dbg package?
To: Mauro Ziliani <mauro@faresoftware.it>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <B2B34E45-5936-4670-A189-8E686F499F87@getmailspring.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <0a2fc9de-0615-918a-4341-1404c1ee791e@windriver.com>
Date: Tue, 8 Jun 2021 15:10:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <B2B34E45-5936-4670-A189-8E686F499F87@getmailspring.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0173.namprd03.prod.outlook.com
 (2603:10b6:a03:338::28) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0173.namprd03.prod.outlook.com (2603:10b6:a03:338::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20 via Frontend Transport; Tue, 8 Jun 2021 19:10:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 739cc44d-9a6f-45fe-d972-08d92ab11679
X-MS-TrafficTypeDiagnostic: DM5PR11MB1675:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1675B8B9B5937D9F818908A8F8379@DM5PR11MB1675.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zR4ILFY9gQJTj+EoK0WqNpYKnJL9RYuUFB5VYOtqEjiCdq3LNDYC2TNA8tabyXsO1/sN2lBy+sNvsaXYlJ74WEBdKj0UsMtr9krZFETNDwiU1ySOYMrdj+DUIkwFEuYvcMJ1zkpqLMMIo1UsDy0RAphfPbgBSJn+840e3kHZ8HstgyTwMF/4J/f6IeCc6BIqxw3CmyGn/oukcGvZnfl5S77K900tI3b+wCovjgI9M1ookpROd5k9wElBWtA26331xNDAdAn0y0dYLknXK/ZiX/BoOhaWPifj6lI88ZVEYbi2Kk89mt9Jhi8aNBKLPVlAbSLV4gzDo7ppmExhouJAJJuzI8gZuiTAtRtTNhiMr3bKDa37iSuWu+ckkDvRlXNMuTrGo5nhmVpdi2XghHSZUbFnLkLw6ws40q5eWMuioBhtcbTgg5MLXtlz4jpDzFBWrs8id8G9JO4UO+A47Su19UjdpyqZWelNVWbr5PPdvlJ/+/HlEKLi+yyDQgcY8g/a9nSupEQQCPOPIM65qSHVku8bKNeb6oUGKN3WJZ3TJi8uIO9tmVJysWJQ+OrPmsOO79LZztf+nff6tQsaLSelMYLeHCG2w6LufNFoFfeIgQ3eMXsmNQb/ev7F7vjz48bapCGjbBbFOuJbxyK+oAwdrvCG9uon2s2xjXU7qPY2g4M5/6TWmducVAWKk3s1UWcxEXtenrdNBujry2hIAf6lMLuOIC4aiSZ+L9t7bnmitpIscOImDvS9WVjisI3nTiulq6KBZcqvkhYiy5jM93Tiu8ayqMJYRThVAKY0et7YYIlijnk8Yyz3vQtL1j7b7zN3GvvtpHU3sP5SEnhiZK9jA+0SiAoEy2gG9XPHX5Frc+fNKmDUajCpNCdzTAGUMCL7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(396003)(346002)(376002)(136003)(53546011)(2906002)(16576012)(316002)(8676002)(26005)(166002)(966005)(31696002)(38350700002)(52116002)(110136005)(31686004)(86362001)(5660300002)(478600001)(6666004)(66556008)(66476007)(66946007)(956004)(36756003)(33964004)(6486002)(2616005)(16526019)(38100700002)(83380400001)(186003)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cVEwSVMwdksyQWc1QXY0blUxRllrV0ZuMjFlSUdVOFBwamdLTjVpbTBxT2hr?=
 =?utf-8?B?cm5JQlhZVzJTdVd2cEhQelRnT29haHBndEFVRlhmWUQ0MW51MG55YnVCVVp6?=
 =?utf-8?B?bkJIeFhBVzB6alB1SHd1VHRMVzBKQlNZOGhEWlQ2R2JWMnlGQUVCRWsyazFP?=
 =?utf-8?B?dUtCL2psbkFRMWdMVE9mQi8zOWkwd1NEMTJEbngrNDhiWjhESEczb1I1N3Iv?=
 =?utf-8?B?ajhOOGttdHlxYzYzS2Z3cjNzTXNVdTBKMVVDSDRaeVJ0TjRwTG8zTk84Skxv?=
 =?utf-8?B?V3dsSGZveUgvZkFWcHc5UkM4UWtiWjlUTDBTTmlTUk9EUUFVeGJXa0hJVUVz?=
 =?utf-8?B?eXJxNVg2TnpqRlA5M1RBK3JLdS9hbHE4SFgxYjRsSnBwdEJOZ0JjTm9uQ2RD?=
 =?utf-8?B?UHBGUEdEazd3M0czcDJBSyt2U1cxZmRTN0xsT2V3M0V4cEZuU0c5SjNzM3I0?=
 =?utf-8?B?UktieDN5TGdzUDdjZnpGaDl1cWloMUdIK1V1eU1WRnZVRjdSc3ZOYTlTRW1z?=
 =?utf-8?B?MFVRblpJMTFjUDhGb3l6OHRvN25tWHlZaC9ybXlsYjhsZStycjBTOEIxQnVj?=
 =?utf-8?B?djRiOU5mVmlRbVdJaDJxdFRQQ3dnZm9HTXN1UVRFdm9TMjNyWnVuVnBHWmNN?=
 =?utf-8?B?MWlNSUFVODJmNy9UUkE2a1k3UE9JQU1uci9FZ2JvQ3FzYzh4VFFNZ2xPRnNn?=
 =?utf-8?B?ZE90TStzcVhlKzNQN2RKZEZRRWxxRk5kaGlkVERkTnl5ZVhWUzc1WERkN25J?=
 =?utf-8?B?S0ozTnN0ajFtWk1pei82UytiVXRvei8xdkdodXdIUXlyRnNnZk5jVWlXOS8y?=
 =?utf-8?B?NVJ1S3VKWG0yWldxbnpEbXlmWmxwbjRjVDJvajErdjZsTEZkOHBFWnVjL2hq?=
 =?utf-8?B?RlFGb3phU1dGTkRQc1RaVEJ3R3V3blhDUWlZd1lacktWT1F5dmw4anBFeW1W?=
 =?utf-8?B?TmRrQ0ErNGVBc2NRWHZSUzgxOWNYaXlMMDZTdEJhSjJ0dFJyOCt5N2FZeXVH?=
 =?utf-8?B?TXpmZnNXQjhnQjRoK0orcWo1RmpCZVdSNTg2cFlBdnhOY25oWGZTdlk1NTJR?=
 =?utf-8?B?Wks5aFBURm4vSUNGclgyb1dQekRJcC85S25wV3d1V0RYc2RRT3BHZE10M1Uw?=
 =?utf-8?B?S3kzc1QrVGNjQ2kxMndsZnNOZDRsYTc5SFFTaG9XTXh4VkhPa0JtQkIvLytS?=
 =?utf-8?B?SUc2L1J5SlRkVjRObnZySXFIdDcwRjI5Y1pHMy9xdCtiOUtUNFNDK3VEeGU5?=
 =?utf-8?B?QUUzOFQrN3haMWhoZG1kZ1pRa2JEVFZlbnlmd0ljbXZqRTNEWGdjWVhaZW5E?=
 =?utf-8?B?bWUvTjBTaC8yd1B6bmNEMjVHZWZZQ0JxZmlTdjl1NVVrUEt2dnc1cHdKY21Z?=
 =?utf-8?B?NURtc0lUWXFpWnNlUk1wWVFvYkxHdVZObXN2aU1HdHpsODd6a2NRdGVEZnMv?=
 =?utf-8?B?TjdQWjg2aUVUUHF4YnlBMlE1UDRhMzBNcmFJQ3RRZ1UyV1pyN3Q5T1M4M1Ew?=
 =?utf-8?B?eWlRZE9FTW9ET21xYlJFdjZDSHI1NnZLWGNIVW0wdERIOE96M3JXcFB0NnRj?=
 =?utf-8?B?NUtlaW51ZWNRNnNaMW9LWHBuL05BVndKS04vdzl5dDI2c2xZNjExdUxwSFRz?=
 =?utf-8?B?RHRJdEdMYjhyZHByOE9mcHJoOEdwQkw0aVVKZnRKQ3UrbllzbUNzeVJ5S2NS?=
 =?utf-8?B?aUJWV0w4VkhSbWRvekJyaHFjdU5YYlpDK1liZWFDS0FzRE9wU0dRUlRTNE53?=
 =?utf-8?Q?PzpWR/FGGYx7Ts0HBy54iRnOngSNlQ3LegMXQPY?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 739cc44d-9a6f-45fe-d972-08d92ab11679
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2021 19:10:32.6666
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aSL3rDuKW18H3L4oCEtnVZT0Vqfdz6XF9tZyubqLO/Fqsz0A/uyZaAX0p/S7JJMrOgok2UteLPzfHODUVjmILSCH3FU4bmAy3SYaV7VgG7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1675
X-Proofpoint-GUID: cbBA3rC1hszqoRwd4B5DNQigZ2VvUEP1
X-Proofpoint-ORIG-GUID: cbBA3rC1hszqoRwd4B5DNQigZ2VvUEP1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_14:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106080124
Content-Type: multipart/alternative;
 boundary="------------8562CE1CD22B8D00EDD44D0F"
Content-Language: en-CA

--------------8562CE1CD22B8D00EDD44D0F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-06-07 12:01 p.m., Mauro Ziliani wrote:
> Hi all.
> I have the recipe myapp.bb=20
> <https://urldefense.com/v3/__http://myapp.bb__;!!AjveYdw8EvQ!MCUgANMJMSS=
kVvGlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-slMP9a3Q$>,=20
> and I get from it the debian packages myapp_1.0-r0_armhf.deb=20
> <https://urldefense.com/v3/__http://myapp_1.0-r0_armhf.deb__;!!AjveYdw8E=
vQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-sJEyh82A$>=
=
=C2=A0and=20
> myapp-dbg_1.0-r0_armhf.deb
>
> How can I use the debug symbols in myapp-dbg_1.0-r0_armhf.deb=20
> <https://urldefense.com/v3/__http://myapp-dbg_1.0-r0_armhf.deb__;!!AjveY=
dw8EvQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-t3-XRC=
vA$>=C2=A0with=20
> gdb and the application in myapp_1.0-r0_armhf.deb=20
> <https://urldefense.com/v3/__http://myapp_1.0-r0_armhf.deb__;!!AjveYdw8E=
vQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-sJEyh82A$>=
=
=C2=A0package?

Hi Mauro,


I'm not sure that I understand. Why wouldn't you just install the dbg=20
deb along with gdb and debug on target?

You might also want to look at using debuginfod if you are on the
hardknott or master branch:

https://pretalx.com/yocto-project-summit-2021/talk/ADCYJ7/

https://www.youtube.com/watch?v=3DS3QLr113mx8


Did you follow the YP docs:

http://docs.yoctoproject.org/dev-manual/common-tasks.html#debugging-with-t=
he-gnu-project-debugger-gdb-remotely

?

../Randy


>
>
> Best regards,
> =C2=A0 MZ
>
> Sent from Mailspring=20
> <https://urldefense.com/v3/__https://getmailspring.com/__;!!AjveYdw8EvQ!=
MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-tpux6pZA$>,=
=20
> the best free email app for work
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------8562CE1CD22B8D00EDD44D0F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-06-07 12:01 p.m., Mauro Ziliani
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:B2B34E45-5936-4670-A189-8E686F49=
9F87@getmailspring.com">
      
      <div>Hi all.</div>
      <div>I have the recipe <a href=3D"https://urldefense.com/v3/__http:/=
/myapp.bb__;!!AjveYdw8EvQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR=
9cAuooQ_p9oo-slMP9a3Q$" moz-do-not-send=3D"true">myapp.bb</a>, and I get fr=
om it the
        debian packages <a href=3D"https://urldefense.com/v3/__http://myap=
p_1.0-r0_armhf.deb__;!!AjveYdw8EvQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G=
98R-Ls2dR9cAuooQ_p9oo-sJEyh82A$" title=3D"myapp_1.0-r0_armhf.deb" moz-do-no=
t-send=3D"true">myapp_1.0-r0_armhf.deb</a>&nbsp;and
        myapp-dbg_1.0-r0_armhf.deb</div>
      <br>
      <div>How can I use the debug symbols in <a href=3D"https://urldefens=
e.com/v3/__http://myapp-dbg_1.0-r0_armhf.deb__;!!AjveYdw8EvQ!MCUgANMJMSSkVv=
GlEMADV7AOmOe1l-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-t3-XRCvA$" title=3D"myapp-d=
bg_1.0-r0_armhf.deb" moz-do-not-send=3D"true">myapp-dbg_1.0-r0_armhf.deb</a=
>&nbsp;with
        gdb and the application in <a href=3D"https://urldefense.com/v3/__=
http://myapp_1.0-r0_armhf.deb__;!!AjveYdw8EvQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l=
-C0-uHQ2M0G98R-Ls2dR9cAuooQ_p9oo-sJEyh82A$" title=3D"myapp_1.0-r0_armhf.deb=
" moz-do-not-send=3D"true">myapp_1.0-r0_armhf.deb</a>&nbsp;package?</div>
    </blockquote>
    <p>Hi Mauro,</p>
    <p><br>
    </p>
    <p>I'm not sure that I understand. Why wouldn't you just install the
      dbg deb along with gdb and debug on target?</p>
    <p>You might also want to look at using debuginfod if you are on the
      <br>
      hardknott or master branch:<br>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://pretalx.com/yocto=
-project-summit-2021/talk/ADCYJ7/">https://pretalx.com/yocto-project-summit=
-2021/talk/ADCYJ7/</a></p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.youtube.com/=
watch?v=3DS3QLr113mx8">https://www.youtube.com/watch?v=3DS3QLr113mx8</a></p=
>
    <p><br>
    </p>
    <p>Did you follow the YP docs:<br>
    </p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"http://docs.yoctoproject=
.org/dev-manual/common-tasks.html#debugging-with-the-gnu-project-debugger-g=
db-remotely">http://docs.yoctoproject.org/dev-manual/common-tasks.html#debu=
gging-with-the-gnu-project-debugger-gdb-remotely</a><br>
    </p>
    <p>?<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:B2B34E45-5936-4670-A189-8E686F49=
9F87@getmailspring.com"><br>
      <br>
      <div>Best regards,</div>
      <div>&nbsp; MZ</div>
      <br>
      <div><signature id=3D"initial">
          <div>
            <div>Sent from <a href=3D"https://urldefense.com/v3/__https://=
getmailspring.com/__;!!AjveYdw8EvQ!MCUgANMJMSSkVvGlEMADV7AOmOe1l-C0-uHQ2M0G=
98R-Ls2dR9cAuooQ_p9oo-tpux6pZA$" moz-do-not-send=3D"true">Mailspring</a>, t=
he best free
              email app for work</div>
          </div>
        </signature></div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------8562CE1CD22B8D00EDD44D0F--
