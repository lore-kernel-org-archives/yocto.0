Return-Path: <ohnatiuk@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A028EB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 12:53:42 +0000 (UTC)
Received: from rcdn-iport-1.cisco.com (rcdn-iport-1.cisco.com [173.37.86.72])
 by mx.groups.io with SMTP id smtpd.web10.31832.1688388821096327371
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 05:53:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=jt6R/3cK;
 spf=pass (domain: cisco.com, ip: 173.37.86.72, mailfrom: ohnatiuk@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=2013; q=dns/txt; s=iport;
  t=1688388821; x=1689598421;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=+WDHE83D3TVMkKjguQHXx1jAc5kCQTRZLs27rfbbbQY=;
  b=jt6R/3cKwzZbYFjWFu8zSSrOyzPUP8W7dhpIFFWwr4MKkiO0aNqwHXtU
   5jPxb/7nJLjmYFE0nQKmWtkegfJnsXaT8/lbHLiEgEJWJPgGbVbczw3ei
   OxSDI+Lx1DlDtWG9+UhHgXx2zMZxpeEBiBW3IVd7DN4nTb49xePXC1PFh
   U=;
X-IPAS-Result: =?us-ascii?q?A0BAAgAMxKJkmJBdJa1aHgEBCxIMQCWBHwuBYVJzAlkqE?=
 =?us-ascii?q?keIHQOFLYhcA4tWkh2BJQNWDwEBAQ0BAS4LCwQBAYFTgzMChgkCJTQJDgECA?=
 =?us-ascii?q?gIBAQEBAwIDAQEBAQEBAwEBBQEBAQIBBwQUAQEBAQEBAQEeGQUOECeFaA2GB?=
 =?us-ascii?q?AEBAQEDAREuAQE3AQ8CAQgOAwQBAS8hBwodCAIEDgUIEweCXAGCKAMxAwEQn?=
 =?us-ascii?q?hIBgUACiVcaNXiBNIEBggkBAQYEBbAWDYJJCYFCh16KECcbgg2BWIJoPoIgQ?=
 =?us-ascii?q?gKBYAKEEoIMIo4ghWAHMoxagSdvgR6BHnoCCQIRQSaBCAhegXE+Ag1UCwtjg?=
 =?us-ascii?q?RyCTgICEScTFFN4GwMHA4EFEC8HBC8dCQYJGBgXJQZRBy0kCRMVQQSDWAqBD?=
 =?us-ascii?q?T8VDhGCVys2PBtOgmsJFw44U4EwA0QdQAMLcD01FBsFBCIBSYFXMD6BAgoCI?=
 =?us-ascii?q?iSiDYMjgQITTGBFFYEdwzFwCieDYpkXgXmGJxepWJgikVORKoUYAgQCBAUCD?=
 =?us-ascii?q?gEBBoFjOoFbcBWDIglJGQ+OIBmDW495dTsCBwsBAQMJi0gBAQ?=
IronPort-PHdr: A9a23:Z4cieBHQO3p/zgjmRznKSZ1Gfu4Y04WdBeZdwoAsh7QLdbys4NG+e
 kfe/v5qylTOWNaT5/FFjr/Ourv7ESwb4JmHuWwfapEESRIfiMsXkgBhSM6IAEH2NrjrOgQxH
 d9JUxlu+HToeVNNFpPGbkbJ6ma38SZUHxz+MQRvIeGgHY7Uhti2yuOa8JzIaAIOjz24Mvt+K
 RysplDJv9INyct6f78swwHApGdJfekeyWJzcFSUmRu9rsvl9594+CMWsPUkn/M=
IronPort-Data: A9a23:vk1AXa1DUtV/2XqW2vbD5aNxkn2cJEfYwER7XKvMYLTBsI5bpzwOm
 GNJXT3VO62IMGqjc91ybY3j8E0Ov5bdydIyQQI+3Hw8FHgiRegpqji6wuYcGwvIc6UvmWo+t
 512huHodZxyFjmGzvuUGuCJQUNUjclkfZKiTradUsxNbVU8Enx51ko4w7dRbrNA2LBVPSvc4
 bsenOWHULOV82Yc3rU8sv/rRLtH5ZweiRtA1rAMTakjUGz2yxH5OKkiyZSZdBMUdGX78tmSH
 I4vxJnhlo/QEoxE5tmNyt4XeWVSKlLe0JTnZnd+A8CfbhZ+SiMa7YYqd/sCZ3VrjHa2pMFc1
 v8Utqy0cFJ8VkHMsLx1vxhwCSpyO+hN/6XKZCj5us2IxEqAeHzpqxlsJBhpZstDpaAmWicXq
 aBwxDMlNnhvg8qxwLSyVuhxhewoLdLgO8UUvXQIITTxXa93GcybE/qiCdlwhDUWis5DBe3nO
 s8ceRRjYiTNOiVSAwJCYH45tL742iagG9FCk3qEoqEr5EDXzRdty/78N9HJfcSQQsdYlVreo
 XjJl1kVGTkAP9CZjDGC6H/p1qnEnDjwX8QZE7jQGuNWbEO7+UwCSxwIW2mHprqGsV+TRfgGK
 HwQw397xUQtz3CDQt74Vhy+hXeLuB8ARtZde9HWDinQkMI4BC7EWAA5oi59hM8O75BpGGR7v
 rOdt5a4Wmw16ez9pWe1r+/M9VuP1T4pwXjujBLooCMf6NXl5Yo0lB+KHpBoEbW+iZv+HjSYL
 9G2QMoW2ex7YS0jjvXTEbX7b9SE/cmhoukdul+/Y45dxlklDLNJnqTxgbQh0d5OLZyCUn6Kt
 2Uels6V4YgmVM/dxHfXGrtWQuH0uJ5p1QEwZ3YyQPHNEBzzoxaekXx4u1mS2W8waJ9fIG+1C
 KMtkVoIusI70ISWgV9fOtLtVJtCIVnIHtX+XfecdctVfpV0b2e6ENJGOyatM5TWuBF0y8kXY
 M7DGe71VCpyIfo8llKeGbxCuYLHMwhjnws/s7ihkUT+uVdfDVbIIYo43KymNLBpt/7Z+VyJq
 r6y9aKikn1ibQE3WQGOmaY7JlERJn99Dpfzw/G7vMbaSua6MAnN08Ps/I4=
IronPort-HdrOrdr: A9a23:FLUavqMPAH6CJMBcT27155DYdb4zR+YMi2TDiHoRdfUFSKKlfp
 6V88jzjSWE9wr5OEtLpTiBUJPwJk80hqQFn7X5Wo3SEzUO2VHYYL2KiLGD/9SOIVyEygcw79
 YET0E6MqyNMbEYt7e13ODbKadb/DDvysnB7ouurAYOcegpUdAc0+4TMHf8LqQCfng/OXNPLu
 vk2iMonUvFRZ0QVKmGL0hAe9KGi8zAlZrgbxJDLQUg8hOygTSh76O/OwSE3z8FOgk/gYsKwC
 zgqUjU96+ju/a0xlv3zGnI9albn9Pn159qGNGMsM4IMT/h4zzYJ7iJGofy/gzdktvfrGrCo+
 O85CvI+P4DrU85S1vF5CcFHTOQiQrGpUWSkWNwykGT0PARDAhKe/apw7gpMycwLyEbzYtBOG
 Uh5RPDi3JaYCmw7xjV9pzGUQpnmVGzpmdnmekPj2ZHWY9bc7NJq5cDlXklW6voMRiKobzPKt
 MeRP309bJTaxeXfnrZtm5gzJilWWkyBA6PRgwHttaO2zZbkXhlxw9ArfZv00so5dY4Ud1J9u
 7EOqNnmPVHSdIXd7t0AKMETdGsAmLATBrQOCaZIEjhFqsAJ3XRwqSHqokd9aWvYtgF3ZEykJ
 POXBdRsnMzYVvnDYmU0JhC4nn2MROAtPTWu7ZjDrRCy8nBreDQQF++oXgV4r6dn8k=
X-Talos-CUID: =?us-ascii?q?9a23=3AcfBJ/WpTh8B1jgX8eJtN+PPmUf8FYz7c0nniH0j?=
 =?us-ascii?q?7Nl14ZaO/EFyg/Joxxg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3Azoe3HQ2pAYw7XCLqWk9LxuBRrTUju6aIBE4AiY4?=
 =?us-ascii?q?/5syBJQJ8NQeQ1Qyqe9py?=
X-IronPort-Anti-Spam-Filtered: true
Received: from rcdn-core-8.cisco.com ([173.37.93.144])
  by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 03 Jul 2023 12:53:40 +0000
Received: from rcdn-opgw-4.cisco.com (rcdn-opgw-4.cisco.com [72.163.7.165])
	by rcdn-core-8.cisco.com (8.15.2/8.15.2) with ESMTPS id 363Crdhf007021
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Mon, 3 Jul 2023 12:53:39 GMT
Authentication-Results: rcdn-opgw-4.cisco.com; dkim=pass (signature verified) header.i=@cisco.com; spf=Pass smtp.mailfrom=ohnatiuk@cisco.com; dmarc=pass (p=quarantine dis=none) d=cisco.com
X-IronPort-AV: E=Sophos;i="6.01,178,1684800000"; 
   d="scan'208";a="3737877"
Received: from mail-mw2nam10lp2107.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.107])
  by rcdn-opgw-4.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2023 12:53:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kP+Yppp2GV0MuOIRqYjmzkcCrngqPxh9a0bLlLSrnXqArXZ2rjZxKhEHXITBR+Vtl1TZeZlxZqyYIOrxWpSEtcMTdO6AyEGMrBNPERTXUSq8ZWKQRhk1NjuAWWN7EkubOU7jzaW0oEi1cX/Ss5QtBlWvJGUzzJrL08PLuNu1a6v8G0Z44vYbA7EfV8wHsvNioE6DkKMfgQrjEwuoIxCDbysonu/cst7BzglZfEXHkEfHDLUHq1tg7nqwFPHvY279iZGpHSDGbzLLicg6V/nICqZr/+Xonriv04ytHXwoU8i7eSAjI60wTATQIDfrx/aLuWMTwg/869ZYT6OsV+jzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+WDHE83D3TVMkKjguQHXx1jAc5kCQTRZLs27rfbbbQY=;
 b=Jn6UNYMOSsXLukMKZ6scmmTPOF0ESVarq1RrY+1O+Lmpt+FUFAr5IzLWJDv/WIA9TLidqXZURwl6tyYfQlPGlH65B4ajXRl4rRwKZMGSb8IMRw/U9L0bL92A6XWdeb33xpSsD3YY4wviuOXFRCu5EJ3SFJX+LGvhqyhaVtpD4n+dzfqZntNg+gwfJDJo+Bxv/K7vWwktbfMEOMSHAk5SvznNNLt5Lljiiiu2UYARDZq/jzFRpxX3QU670TK6IHV9KaIC5tbfnUKFgS+2svhSEJpbgus9b+rZjDGQhoxaA2kbnqkikClX2EvW1PaguSUT9scg8bsTiUcY+GiN/7U/ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+WDHE83D3TVMkKjguQHXx1jAc5kCQTRZLs27rfbbbQY=;
 b=G3LsuyViwgiyxpC42WEVlTu+aAUN2TWC2af/ypthgXRFvfS3ve/M/ACsXfHivb87/Ta8orIcanzLjLv4ID57bnJLD8PJ1QDkZwW+YHZQwYDPVagHLAeR1NqmK/LCV6U9FKWtRoK0i1b0Ufd5gWF0MIoYIBaCR+du/ZoNJhRMq38=
Received: from SA1PR11MB5828.namprd11.prod.outlook.com (2603:10b6:806:237::12)
 by SJ0PR11MB5939.namprd11.prod.outlook.com (2603:10b6:a03:42e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 12:53:37 +0000
Received: from SA1PR11MB5828.namprd11.prod.outlook.com
 ([fe80::b325:11b9:a027:f63e]) by SA1PR11MB5828.namprd11.prod.outlook.com
 ([fe80::b325:11b9:a027:f63e%6]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 12:53:37 +0000
From: "Oleksandr Hnatiuk -X (ohnatiuk - GLOBALLOGIC INC at Cisco)"
	<ohnatiuk@cisco.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] File magic/sdk relocation
Thread-Topic: [yocto] File magic/sdk relocation
Thread-Index: AQHZqRHDzu45CPLT8UekDIADPdm7Za+e26mAgAkq8xc=
Date: Mon, 3 Jul 2023 12:53:37 +0000
Message-ID: 
 <SA1PR11MB5828870BACD7E2A9FB1F34D4CB29A@SA1PR11MB5828.namprd11.prod.outlook.com>
References: 
 <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
 <25445.1687882175160054772@lists.yoctoproject.org>
 <CANNYZj9ceErJf27HmT9pKHcJh4Yoyy_iMVkkYK8-ucMwhJKZRQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9ceErJf27HmT9pKHcJh4Yoyy_iMVkkYK8-ucMwhJKZRQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB5828:EE_|SJ0PR11MB5939:EE_
x-ms-office365-filtering-correlation-id: d22e9f72-59a7-4ebe-9376-08db7bc484fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uMfqdoz93uiuvCIlef1N95l2uwcxaG9bQ7fKa5NcdsJqlXZMT/L0ARKljIffNiMFs5NFbGc/UEVZ6v5AxUMzBpgEiV73BQNiEQu7DEnnBu04bm27MRwmCPbrFnqrvLD7QW4I/3HTj06dR7A5gZZ0gDL3TdeTUoKx+iP3zd4hFEkvcKLb8lerC31u6S1Htl1F1zmuH6sDbYDTyNDmDuUEpihBG5QZo6drKOLO3N+6olbhWbG5xk5zH5mgUTbMwyvhsUGLEUvrl1W9YvgbDpYsr99qU4ZA6iuuHcS9nApp/S3DgnW7NhvcjBku5IEfjoM2M4orVReTk6iokiRuBoLAnV+DFPwPcBMV/n6HxZR8dL6bzBpFKdhJfRwdHhKTER4/5h8mnT2Ra1fDL5o/lv21qt07BBnAzlm3e/iIB54L6oQQNtdCb+VzofzC46e+GQPdE6PEBXcTuMheI4uOpNqv3BVTpwDiOk2W21eAKkFW7BBkuTLqYVhZ+L0Pk/OLxKWjLbnAxc+efk87cqZD8M8G2zWwGPmEbIFtTveRcByrzpyyGy/zS1SqlTh5b1RXi0uqlIOnMBpb2UfYuRzUvtrT32C5mJUCHlOYVWpcf0Tgxf5Y8lTZNDS3RnS1cxgb7yFP
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5828.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(451199021)(41300700001)(7696005)(38100700002)(122000001)(71200400001)(83380400001)(6506007)(26005)(186003)(53546011)(9686003)(55016003)(38070700005)(86362001)(478600001)(316002)(2906002)(66476007)(64756008)(66446008)(6916009)(4326008)(91956017)(33656002)(66556008)(66946007)(76116006)(8936002)(8676002)(52536014)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?SU0VRf5W0Sj5Bki4V9LInDHKlDVs9kAgUANr3hpJCPK3bJi/Uz6dGRRz?=
 =?Windows-1252?Q?h+vwTPoQHpNbKVjETWiiDhagH9EMsPF89JFS30A8NdwPu/UpzJ3ry+Qp?=
 =?Windows-1252?Q?G0KdSdy6EcvMbBH7PGysoaF0n0NSM0UeT6csq6ZHAitBrk1WPCbnEEVC?=
 =?Windows-1252?Q?c4P89csroH2laaGvwmxxcXi+VOzB7uPhE55QfiH/EifCZifsJVYuwzGL?=
 =?Windows-1252?Q?grY8vNNtZMPcaX5/E1d1a2o+mNvsZBw2JDnR+4EZ0wi06ChBhaYv8Jt7?=
 =?Windows-1252?Q?ZFaAmptSWQZDeqcPJvapQM4xIgEZUqEYMvffqlG4fRyL8wfbeUEAG7/X?=
 =?Windows-1252?Q?Odf3OBer/WPznWohhZfelOj2uGDOXhHvUX64Ud2uibUYF24V/Q0EdcIJ?=
 =?Windows-1252?Q?UJ3pbSZPmZObsN/hDAmyE7gM37IMiNYcfHXbfaqSMRYt0NLU0IHavUdX?=
 =?Windows-1252?Q?UR+tZxCt13QZsx2SfOKC6CThc8ZN8XPcbf4en5W/fSzjDOBdfnckhe3Y?=
 =?Windows-1252?Q?3lSq0/4Jb7YJdUOW/Bc9Cfb8S51HjkcGYBzkXQbcOdloB6Tkg4pOZ5Dq?=
 =?Windows-1252?Q?xy2yAJwKapt+fdfoU5ki2RpoNCQkQOHnw20w57eQNKlOgtAKBFNkYFlw?=
 =?Windows-1252?Q?OC1x8udszK++NcVMrhPZYTlX5b+mMyd7eW5MC1La33h1svhGRoE6uaja?=
 =?Windows-1252?Q?PnhpFN3DT+w9Kx9e1tY10+GjdsjPX8r5wjIUPYZxjqLibXEsxDx0dtgf?=
 =?Windows-1252?Q?RaJTipdKwYPfYgrKr/Gdr76B5ZeGxGTIvonD9AxRKgPE2eIBsCL9pMFd?=
 =?Windows-1252?Q?a1Rj2xNr6Uyi8dWhab17bhUSua+AhtNcCq/5S40aJjyr9gMvMKa+NRQ2?=
 =?Windows-1252?Q?yM4J+/MOtIPZf/qaetfdVs0XSFcy2KBwuM0JalXUO/72LHydUcDbXQT/?=
 =?Windows-1252?Q?J+5JpQtNbdXjTxI1Zya4OVHEey0yA6TuAwNdUjMLEDGwcXJUgeV7HXBe?=
 =?Windows-1252?Q?E9ZaxY4nCZYKZHFt+xo+8SThsR6wDXThp7Nlfbfq2YnbYxdBJUaT3iw8?=
 =?Windows-1252?Q?dbNWhbupr0KPdUHAGHN9nfoLohXRCmrYLBPXq9M34l78RqkTENiKZzGd?=
 =?Windows-1252?Q?GoZulFzYz0oQgmrOEiSnI/is2QqMfn3EX9Z8z381F9OFE9uCksOJB9Td?=
 =?Windows-1252?Q?pOK2laaFX7UW0DLdE8AbfdCvvD00/8DFkiPFDDjyuJ6mK6F60WBIS556?=
 =?Windows-1252?Q?4f4i9mKR8CBrh0jZxcRW2X2Q4jzJby/8OzMnd1h0yk1pu0WrlQ+BGqLb?=
 =?Windows-1252?Q?tIxDv2YyMjIk6eyofHhKOJoKKGp3cNLI/qPgYZvq1Bsih4gQsZdu3yrj?=
 =?Windows-1252?Q?QoOjc4x/1Fa6muuAjauejoKnveYrQyRPXmipd7ujCKf0GstiIYnktCrU?=
 =?Windows-1252?Q?Esiq1+ceZCb6gSg//LQRd5i55JdRdBCcbSBUPb14hL/1lymlTyb7ZVBL?=
 =?Windows-1252?Q?hq1NbYzRNv8Ucv6p8HuBa0HK0HtlcfZI6sLb4r39dczH8UquUw5LLV53?=
 =?Windows-1252?Q?m/w3U4QDFb49GAXE4M4DfM62QwSsTizu1wuAbp8f8ir75N1npD4alSRP?=
 =?Windows-1252?Q?1aMuq5hlCTCm8Av4oKbsYob/t6lkddBMVwQNJ6RiMMrEFbmmPX8u7hYX?=
 =?Windows-1252?Q?ymMVlqqGjtY=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d22e9f72-59a7-4ebe-9376-08db7bc484fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 12:53:37.7726
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BjE3QlF5WgsiwSBrC9dOeYdV/Gtv0/uHFLPKu4CnhD4orqwAqR5/dgflbwsu/uyXQUu0uvCVfisPhUlbo4/wGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5939
X-Outbound-SMTP-Client: 72.163.7.165, rcdn-opgw-4.cisco.com
X-Outbound-Node: rcdn-core-8.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 12:53:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60495

I think it hasn=92t been noticed because openembedded-core doesn't build `f=
ile` in buildtools-tarball.=0A=
=0A=
To reproduce the error, you need to do the following:=0A=
1. Download openembedded-core and bitbake, source init script=0A=
2. Add nativesdk-file to TOOLCHAIN_HOST_TASK, e.g. add the following line t=
o conf/local.conf:=0A=
TOOLCHAIN_HOST_TASK:append =3D " nativesdk-file"=0A=
3. Run `bitbake buildtools-tarball`=0A=
4. Install buildtools: `tmp-glibc/deploy/sdk/x86_64-buildtools-nativesdk-st=
andalone-nodistro.0.sh -y -d $buildtools_install_dir`=0A=
5. Same as (1) but in a different empty directory (first one built the buil=
dtools, this one will use them)=0A=
6. Source the script provided by buildtools, e.g.: `source $buildtools_inst=
all_dir/environment-setup-x86_64-oesdk-linux`=0A=
7. Run `bitbake quilt-native`=0A=
=0A=
You should get the following error:=0A=
=0A=
ERROR: quilt-native-0.67-r0 do_populate_sysroot: Fatal errors occurred in s=
ubprocesses:=0A=
Command '['file', '-b', '/path/to/openembedded-core/build/tmp-glibc/work/x8=
6_64-linux/quilt-native/0.67-r0/sysroot-destdir/path/to/openembedded-core/b=
uild/tmp-glibc/work/x86_64-linux/quilt-native/0.67-r0/recipe-sysroot-native=
/usr/bin/quilt']' returned non-zero exit status 1.=0A=
=0A=
The same error is repeated for each invocation of `file` in do_populate_sys=
root=0A=
=0A=
Regards,=0A=
Oleksandr=0A=
=0A=
=0A=
From: Alexander Kanavin <alex.kanavin@gmail.com>=0A=
Sent: Tuesday, June 27, 2023 7:46 PM=0A=
To: Oleksandr Hnatiuk -X (ohnatiuk - GLOBALLOGIC INC at Cisco) <ohnatiuk@ci=
sco.com>=0A=
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>=0A=
Subject: Re: [yocto] File magic/sdk relocation =0A=
=A0=0A=
Before we think of a solution, can you provide steps or a test case where t=
he issue can be seen? It=92s in one of the most important tasks, so I=92d l=
ike to know why it hasn=92t been a problem and what is the scenario where i=
t is.=0A=
=0A=
Alex=

