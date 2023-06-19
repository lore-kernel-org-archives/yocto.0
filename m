Return-Path: <oobitots@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01E4BEB64DA
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 15:50:55 +0000 (UTC)
Received: from rcdn-iport-3.cisco.com (rcdn-iport-3.cisco.com [173.37.86.74])
 by mx.groups.io with SMTP id smtpd.web11.10949.1687189847126421271
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 08:50:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=mlYQhwaC;
 spf=pass (domain: cisco.com, ip: 173.37.86.74, mailfrom: oobitots@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=6692; q=dns/txt; s=iport;
  t=1687189847; x=1688399447;
  h=from:to:subject:date:message-id:mime-version;
  bh=svSWJGPbkjkp1roUaAxYjLGvFiOqiFFd0Mp2BRtRCFM=;
  b=mlYQhwaCSB5+/okrVfUXAJK5fNidUeu5Lgl962e2zSw3h+QiSBhtX3BB
   YPwYwSlhHWTLTQZOnAjWsbfJCjr5vmsi6a2sX4bJHV7735ObfVjNdWq5d
   FSKH7AWtMDa3m43Nk8fhIJk4TNA96Cd3TsSz6yA/Xstiqr9wPBtmKJ/i6
   I=;
X-IPAS-Result: =?us-ascii?q?A0DbAgAceJBkmIUNJK1agQklgSqBLDFSc1sqEkeIHQOFL?=
 =?us-ascii?q?Z94hk+BJQNWDwEBAQ0BAUQEAQGFBgKFfwIlNAkOAQICAgEBAQEDAgMBAQEBA?=
 =?us-ascii?q?QEDAQEFAQEBAgEHBBQBAQEBAQEBAR4ZBRAOJ4VoAQyGHS4BATgRARxkJwQTC?=
 =?us-ascii?q?BqCXIIWDToDAaIEAYFAAooleIE0gQGCCAEBBgQFnyYJgUKJOIN1hDMnG4INg?=
 =?us-ascii?q?ViGCAKBYh6DdIIMIo4shWUHgVmJYIEob4EegSJ6AgkCEWeBCAhfgXJAAg1VC?=
 =?us-ascii?q?wtjgRyCUgICEToUUngbAwcDgQUQLwcEMicGCRgvJQZRBy0kCRMVQQSDWAqBD?=
 =?us-ascii?q?D8VDhGCWis2PxtRgXsHNgNEHUADC3A9NRQfBQSCRHCBCAoCRZ9ggz4GgQ9Mg?=
 =?us-ascii?q?SUzf6EFgXufWIE3CieDYQWhMRepWJgZIKdvAgQCBAUCDgEBBoFjOi2BLnAVg?=
 =?us-ascii?q?yJSGQ+OOYNbj3l1OwIHCwEBAwmLSAEB?=
IronPort-PHdr: A9a23:kN1rtB2PJ2IVy0YtsmDPZ1BlVkEcU/3cNwoR7N8gk71RN//l9JX5N
 0uZ7vJo3xfFXoTevupNkPGe87vhVmoJ/YubvTgcfYZNWR4IhYRenwEpDMOfT0yuBPXrdCc9W
 s9FUQwt5Gm1ZHBcA922fFjOuju35D8WFA/4MF9yIe70BonOlOy81vu5/NvYZAAbzDa4aKl5e
 Q2/th6Z9tFDmJZrMK831hrPrzNEev8Dw2RuKBPbk0P359y7+9ho9CE4hg==
IronPort-Data: A9a23:QwC3/6LA+CV+skwSFE+R25UlxSXFcZb7ZxGr2PjKsXjdYENS0WFRm
 mcdXmjTaP6DMWujLd53Pt+wpE4H6sXdxocwHVEd+CA2RRqmiyZq6fd1j6vUF3nPRiEWZBs/t
 63yUvGZcIZsCCW0Si6FatANl1EkvU2zbuS6ULas1hxZH1c+E39/0EM7wYbVv6Yx6TSHK1LV0
 T/Ni5W31G+Ng1aY5UpNtspvADs21BjDkGtwUm4WPJinj3eC/5UhN6/zEInqR5fOria4KcbhL
 wrL5OnREmo0ZH7BAPv9+lrwWhVirrI/oWFih1IOM5VOjCSuqQRu9LQnbqQ7V31s1Tyz2OBBk
 vBNrKO/HFJB0q3kwIzxUjFRFyV4eKZB4rKCeCH5us2IxEqAeHzpqxlsJBhpZstDpKAuWicXr
 qdwxDMlNnhvg8qxx7i6Vu5wnewoLdLgO8UUvXQIITTxUqt9EM+SG/qiCdlw+Wo6m+EfD//lf
 5QmNj1SQQScXDxlNQJCYH45tL742iagG9FCk3qEoqEr5EDXzRdty/78N9HJfcSQQsdYlVreo
 XjJl1kVGTkTMNiZjDGC6H/p37aJliLgU4VUH7q9nhJ3vLGN7jA1GgFMC3yFm8Lng3T5a+IFD
 kwNxSV7+MDe63eXZtX6WhS5pluNsRgdR8dcHoUGBOell/K8D+GxWzVsc9JRVDA1nJRsFWF2i
 jdli/usVGIy4ezNIZ6I3urMxQ5eLxT5OoPricUsYgIf59DlrOnfZTqQE44/S8ZZYjAJcAwcL
 hiDqCw4wr4Ul8NOjvz99lHciDXqrZ/MJuLU2uk1djz5hu+aTNf6D2BN1bQ9xa0bRGp+ZgLR1
 EXoY+DEsIgz4WilzURhutklErCz/OqiOzbBm1NpFJRJ323zqyH6JNsIu2smeB8B3iM4ldnBP
 RG7VeR5usc7AZdWRfQfj3+ZUp5zlvGwSbwJqNiNN4sSCnSOSON31Hg+ORHPt4wcuEMtiqo4c
 YyKatqhCG1yNEiU5GTeegvp6pdynnpW7TqKHfjTlk33uZLAPyT9YelebzOzghURsfnsTPP9q
 YgPbqNnCnx3DYXDX8Ug2dVIfApTdCNkVc2eRg4+XrfrHzeK0VoJUpf56bggYIdi2a9Sk4/1E
 ruVAye0FHKXaaX7FDi3
IronPort-HdrOrdr: A9a23:lrzTdqzpvKK/4tE6R+o2KrPxquskLtp133Aq2lEZdPULSK2lfp
 GV8sjziyWatN9IYgBbpTnhAsO9qADnhONICOgqTPyftWzd2FdAQ7sSlbcKrweQfhEWldQtn5
 uIEZIOc+EYZGIS5a2XkWrIcerIq+P3l5xA8N2utkuFOjsaDZ2IgT0JbjpzFHcaeCB2Qb4CUL
 aM7MtOoDStPV4NaN6gO3UDV+/f4/XWiZPPe3c9dlIawTjLqQntxK/xEhCe0BtbeShI260e/W
 /MlBG8zrm/ssu81gTX2wbonttrcZrau5V+7f63+4gowwbX+0WVjUNaKv+/VQUO0aCSAZAR4Z
 zxSlkbToBOAjjqDx2ISFPWqnbdOXAVmjLfIZvyuwqknSQ/LwhKTPaoie9iA2Xkwltls9dm3K
 1R2WWF85JREBPbhSz4o8PFThdwiyOP0AwfeMMo/ghiuLElGchshJ1a+FkQHIYLHSr85oxiGO
 5yDNvE7PITdV+BdXjWsmRm3dTpBx0Ib1+7a1lHvtbQ3yldnXh/wUddzMsDnm0Y/JZ4T5Vf/e
 zLPqlhibkLRM4LaqB2AvsHXKKMeyXwaAOJNHjXLUXsFakBNX6Io5nr4K8t7OXvY5AMxItaou
 W1bLqZjx9BR6vDM7z84HQQyGG9fIyUZ0Wc9v1j
X-Talos-CUID: 9a23:/iEdamFqZNeq95Y3qmI70lwIQJ4CTEfmkn7qZH+IU0NpUYKaHAo=
X-Talos-MUID: 9a23:zqu1FQpal7D4XRnobHcezxQ/PtpJsranM1hTrsoBhuSUaRNRETjI2Q==
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-core-11.cisco.com ([173.36.13.133])
  by rcdn-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 19 Jun 2023 15:50:46 +0000
Received: from alln-opgw-3.cisco.com (alln-opgw-3.cisco.com [173.37.147.251])
	by alln-core-11.cisco.com (8.15.2/8.15.2) with ESMTPS id 35JFojIO024567
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 15:50:46 GMT
Authentication-Results: alln-opgw-3.cisco.com; dkim=pass (signature verified) header.i=@cisco.com; spf=Pass smtp.mailfrom=oobitots@cisco.com; dmarc=pass (p=quarantine dis=none) d=cisco.com
X-IronPort-AV: E=Sophos;i="6.00,255,1681171200"; 
   d="scan'208,217";a="3179144"
Received: from mail-dm6nam10lp2105.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.105])
  by alln-opgw-3.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2023 15:50:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cR0tIxXwQE+tTpq48CUbbmg0SzL3tFYXhW7XZx1elgG1VT2Wfr4Vs0Y8ssu1LPS/Gptb0g856VMXfm1e4M7ft2aNfnFUdClP2XsCOZC8q7qkGjPRvBygD3u7XnGp11zDwsaO7JId/7EezEuyPjP9wg4uj5sDpPLSSEg5yadH0ASsZ9VoBkt+CiC2qiqyajz3x+/teVo2S2Gv9qIn1yn71MySDFTFQLgTaCSaAZQoymB1Hzmmewi928RJlWy2NGFK5rAbhO/Vr4AXgcS5fln4rugb8EYN+WuCmh2MH7dd8S8pr20jxuieJS1KTxYlGUIIsYaeGLzAWjAdY0gh0sP/sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fxZuI4X2JJTkMwkFZ+1PJqeXydoTD7L8izki8ilNjQ=;
 b=Eu37hMOtw2yX35QpdcH36CkoVrCz0gtelKPXZb8Zs9PX8xc6qXdNeDk3KJek6Hg9QboJq2pgWkDJVB5lgbP1TlATcGMWQXqsUF0P/t/2AsifduD/hQgTRrQISVzSRlu5zPO4xXd+GMVOPTARxPTl/GKbFB4vuk6qHE8zt3/w9ReUTCa68WQzulx2f/iCTN59VsBBj+sPJuHNsM/GVePirAHZBkj7ZBWZ3DSttv4WFjLuVYwJ9e7cKIaJ9NWYT0oBrh/LfWM1jKNFIy6RiZBNlzAQU4AiENtKumMfdS8LE6AzpA1T5F/nX6wyMLY8MOLAYi1ksoPb2AvgZAEfKxHW8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9fxZuI4X2JJTkMwkFZ+1PJqeXydoTD7L8izki8ilNjQ=;
 b=mGy6ArCVComeo3Enr4Bm/l6opLww+jiE971fUkHFsE3TvULzEt53JEV3fo61UeGaYHleUJ+VDrRGGLG7hg6ujpcsVtZ+UqrVpkeeIOy2J8lDkRo+z3hiS4pTtvR2aPXSUhIdxgCCJ9Na8peTmCpau6AZae/lZVeWFsDBZba5qFo=
Received: from PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5)
 by CY8PR11MB7291.namprd11.prod.outlook.com (2603:10b6:930:9b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 15:50:44 +0000
Received: from PH0PR11MB4902.namprd11.prod.outlook.com
 ([fe80::858d:2a31:10b8:fc33]) by PH0PR11MB4902.namprd11.prod.outlook.com
 ([fe80::858d:2a31:10b8:fc33%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 15:50:44 +0000
From: "Oleksiy Obitotskyi -X (oobitots - GLOBALLOGIC INC at Cisco)"
	<oobitots@cisco.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: File magic/sdk relocation
Thread-Topic: File magic/sdk relocation
Thread-Index: AQHZosQOzu45CPLT8UekDIADPdm7ZQ==
Date: Mon, 19 Jun 2023 15:50:44 +0000
Message-ID: 
 <PH0PR11MB49021AEB3FDB7ED00B7CE733D75FA@PH0PR11MB4902.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4902:EE_|CY8PR11MB7291:EE_
x-ms-office365-filtering-correlation-id: f838da7a-1ba7-495c-f4e9-08db70dcf128
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 t8j5MBTDEVnieujv3bDPXGiPfepJ8JlqN+ebiQdLFO1uwK7GO/39Fkz0LzViJuyQfbeTt/q9C96p7AGV0PujZT+Z/ksqQ/wymJSUMEuEVMo8wBAYDTb5lQbqA5IOaFQDMeWLMBZ/10pGG8FF1TRfpSmsEgyhg9ZGJeyV3Lbq1KPqdsdzzYZPQYOOiOCl9c4YVXy6gINO7HZE2EsDP37VN4wHbmYTA8pDzeD8znj0GqjKizsxa/dloy9Rx6Po2VHu3ejgqdLO+S2q0Sk3THByj3iJhkY/kNkevaooHebOH+SGyZKgIEUkugv2B+fxyAojD7aerBzxXr0iY/OlIqeixO0ewoJ56uvbkiMhvpFr3OnSPF4o0qdcEHCIUWw6s1mggpqnrws4aVqB2XT0lhjDoZ8R2EbkJvioPnConuHo+zrMIXcxrNuU1cgyZHtnKdh+h5OaZAGcoUOVhJtEPwsBViQ0xYXKC/BLi18tDsp6PCs017TNoBLtXdaaspJRI2fHBxktBV2bnTYilviet/WwTuXalA5Gh6cXP2HCHKY77UpPzv+zs/k6liuJ+2vqwKI34sLlHrqiBNPDGLl/gf0QaY1f6Mwy4ePsufRVRUyEswerUME9s5VKg3IVxF+OHpr3
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB4902.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(366004)(136003)(396003)(376002)(39860400002)(451199021)(186003)(38070700005)(9686003)(26005)(6506007)(3480700007)(55016003)(122000001)(38100700002)(33656002)(478600001)(52536014)(91956017)(41300700001)(66446008)(64756008)(66556008)(66476007)(6916009)(76116006)(66946007)(8676002)(316002)(8936002)(7696005)(86362001)(2906002)(71200400001)(19627405001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Oiu7SvMYbDC+oUkL5P6Pwr6ogP5os4G6ed5g217Eym632bjb9YdBMYe/Es?=
 =?iso-8859-1?Q?89t7kSDgDlrP2l6A/039TNHWMzQH7J5VLS7iDzGIc5kJVaWER4kHvUIM83?=
 =?iso-8859-1?Q?3BjaRODVCVCcy2POtX1IWZPnag7cIO8EyzU7Kkhx8X5stza22tVCreT1SD?=
 =?iso-8859-1?Q?PWb5C++EhASWxtj1IAjlhSIUrfVtco8f8rLdJEdKP4azz7wWAKHdceLc5B?=
 =?iso-8859-1?Q?eLeNd/RVVBeADVmQnHxY18yt0y5ftui4IKdXoZL5nwTG3msw0iRQaWfVVh?=
 =?iso-8859-1?Q?rdOhbcnQApyzLc0Fuh1qyRn4eYEIM6E9Zow8IrfPOiEwIwdfmTf/X57lSR?=
 =?iso-8859-1?Q?WNVLg9xdIfqift/tCIHxN5uIc2l1XuplbVm2JsM2QUzHJK/jBri13P05yK?=
 =?iso-8859-1?Q?JP2ioMvicfRPyoAyk/Tzywd+g/xBi97VVT5PmhmbogMBCVR8c3MLujjDWu?=
 =?iso-8859-1?Q?8JBzWWXZAbvUFZedrpI+k/DNZBd+38K8zdv22oU9ih3xpuTFW3sJBoSV1f?=
 =?iso-8859-1?Q?6QUllfI6wqczDzhqS7UVxIZHIpPVB7AsR/57ySnjzZQabDTpi0d0fkRv4i?=
 =?iso-8859-1?Q?85SEEzdp+L8oHMKW+aHUxcdYEitTSXGNYiJEF8IHHDi+sjSy0J4UL+Z/eI?=
 =?iso-8859-1?Q?8CDn0TDbUbiy3bJ9pRPYv88Gr+3jqLRIjhx4XLtEnHD1/SHE/PFVqSYuFW?=
 =?iso-8859-1?Q?6FYPzzgB/FdypVOcVr9iiuC1zwwnsSceNswvn/zkOkk4i9QNuswFlWRuHL?=
 =?iso-8859-1?Q?+s7+cPHE4R8RxSsxsQ2q3A3Lb5LgWesPGdID12SZwlJL7EW6fa2zOM/UsE?=
 =?iso-8859-1?Q?TSfkBPRbqbh3TNbhFCDqgwBGsLWjC0ZC/avjuMUeecNbts8LC7m0p9xeeU?=
 =?iso-8859-1?Q?N9RltqqYCZF0KtYyrVUX2mdoTNyUG8edXiXAo5QRcY9gwAxdPHoNZgVnjI?=
 =?iso-8859-1?Q?b2ch7ZZdzmMaOwTHKg/IUt2/p0jzFK9ywHSghWgevm6v5UtqX1F4y0380v?=
 =?iso-8859-1?Q?mQdhpkxBO+ggQb/l6LzAEpcOVcA3JDzwr4ndMHtAX8ltYg1bWqPh43TZvL?=
 =?iso-8859-1?Q?i19c+QlSxo0u69pnsuJVUnRjZHkenbOAMJs+oDLkkxSH9iC242CkueMM1G?=
 =?iso-8859-1?Q?AFQeziXZ9j7iZ1CvXv1zLnJ3A6A7q5HqkdFTmgI40ee/xjAv+UJ3ppU7Ud?=
 =?iso-8859-1?Q?D7fcwXFAeP0IXsgxHfpYmTL77Sck7IiBSpp6YymWxKrky7tYifImBqjRRP?=
 =?iso-8859-1?Q?ZT4l3uDLcCG1rtBtV/N0/zyPb157/d+R8JM2d74lXFFIuNVYoDFuCQXgF5?=
 =?iso-8859-1?Q?RC1FoLK6cEMBqb8OF3cP+dFfpWaRHOY1ul4BJmO7afz3Kdgvk3fhC0eJ/2?=
 =?iso-8859-1?Q?3MyhG7KN/zURg0KgCOYh+mvDJRxEERUCG38ukLf06qnVpHH2+jou00Ruxx?=
 =?iso-8859-1?Q?V3LeGw6FwHw8yeGb9l6XGTmean6TSBLtW0zhJVFKJdaFTPaf9cm5wwDt/H?=
 =?iso-8859-1?Q?4fYmLSW30c/4R15VYfV6vqYFRtOGPlf4pc8sIf5Z2mreq3fhFHjC1phLQW?=
 =?iso-8859-1?Q?XEeoSbbA37PCKNztVkMAr7OtEtoqkmbP4GFAzWEmyR39djbGfH5JJ7NYwz?=
 =?iso-8859-1?Q?Vhekh6xvaANxQ=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR11MB49021AEB3FDB7ED00B7CE733D75FAPH0PR11MB4902namp_"
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f838da7a-1ba7-495c-f4e9-08db70dcf128
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 15:50:44.3697
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bi+hTTFAxpZF3sSgbMWuohcLGj8emnWBeYoJB+xRN7VUdkJcn6biYnpqTsGH0feLPMlsNYVfXHPMphK64rawYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7291
X-Outbound-SMTP-Client: 173.37.147.251, alln-opgw-3.cisco.com
X-Outbound-Node: alln-core-11.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 15:50:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60348

--_000_PH0PR11MB49021AEB3FDB7ED00B7CE733D75FAPH0PR11MB4902namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm working on master oe core master branch and run into problem with file =
for nativesdk (buildtools tarball).
File started to use MAGIC variable initialized from .../environment-setup.d=
/file.sh, like

/usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk-linux/usr/share=
/misc/magic.mgc

This path relocation does not covered by relocate_sdk.sh script.

Commit that change behavior from wrapper that use relative path to environm=
ent variable with absolute path is:

commit 47db876d09d9a4394048579c21d0b394450ce681
Author: Chen Qi <Qi.Chen@windriver.com>
Date:   Tue Jan 17 12:06:30 2023 +0800

    file: export MAGIC in SDK

    Previously, a wrapper is used for file, which adds '--magic-file'
    option to it. But other components might use libmagic and in such
    case, if there's no MAGIC environent variable set correctly, things
    do not work. For example, rpmbuild makes use of libmagic and it
    requries MAGIC to be set correctly.

    Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
    Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


I would like to ask if anybody else has such an issue. Any propositions oth=
er than reverting commit?

Regards,
Oleksiy

--_000_PH0PR11MB49021AEB3FDB7ED00B7CE733D75FAPH0PR11MB4902namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm working on master oe core master branch and run into problem with file =
for nativesdk (buildtools tarball).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted2">
File started to use MAGIC variable initialized from .../environment-setup.d=
/file.sh, like</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted2">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted2 Conten=
tPasted3">
/usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk-linux/usr/share=
/misc/magic.mgc<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted2">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted2">
This path relocation does not covered by relocate_sdk.sh script.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted2">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Commit that change behavior from wrapper that use relative path to environm=
ent variable with absolute path is:<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
commit 47db876d09d9a4394048579c21d0b394450ce681
<div class=3D"ContentPasted0">Author: Chen Qi &lt;Qi.Chen@windriver.com&gt;=
</div>
<div class=3D"ContentPasted0">Date: &nbsp; Tue Jan 17 12:06:30 2023 +0800</=
div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; file: export MAGIC in SDK</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; </div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; Previously, a wrapper is used f=
or file, which adds '--magic-file'</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; option to it. But other compone=
nts might use libmagic and in such</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; case, if there's no MAGIC envir=
onent variable set correctly, things</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; do not work. For example, rpmbu=
ild makes use of libmagic and it</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; requries MAGIC to be set correc=
tly.</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; </div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; Signed-off-by: Chen Qi &lt;Qi.C=
hen@windriver.com&gt;</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; Signed-off-by: Luca Ceresoli &l=
t;luca.ceresoli@bootlin.com&gt;</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; Signed-off-by: Richard Purdie &=
lt;richard.purdie@linuxfoundation.org&gt;</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I would like to ask if anybody else has such an issue. Any propositions oth=
er than reverting commit?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Oleksiy<br>
</div>
</body>
</html>

--_000_PH0PR11MB49021AEB3FDB7ED00B7CE733D75FAPH0PR11MB4902namp_--

