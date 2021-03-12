Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.76])
 by mx.groups.io with SMTP id smtpd.web08.4490.1615526844922442082
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 21:27:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=DOaDJ2kP;
 spf=pass (domain: windriver.com, ip: 40.107.93.76, mailfrom: qi.chen@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANJ2MHzWZ+9mpj3jo5y3LBUgItGtUAaaZ7kTcVj9NGEnT6zspsgXLKxSaz+x/xI5q+5BeBYp2oOH6IzbjyIydoUZG7KOPrVfDvvoSwmRfTiYQksJcRN4nhQg5Y1D2OXO1kHCMMsc8F0quRJ6bODL+75VJ+X/4IjCKbgiNIA6hgTDe5v+umymlD3SOdg0oA554AqiCFV0xflCJ/59pV5QX5eE4S6Urr7BHVBRuvmZdK9fyRCn729+Xba4QEnNEEhNwLOsLAM+UcmCcmwuiFNvYChWJ9TVBv3lflxnudjNjBuboLxt9pnSWurzEohPGa4k9cUyTHOV+vPaelBi5KHiYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMrdUHvzAcIBQSMUqnuZ/CdRWMYlVnbEbkskpbWcQDQ=;
 b=Y8RAO/kI8zVYyFBw9WKiylkp1wX/axWAZtKbgqQ+WsBLRI0CPlrMsZyySFlVpeW6Li2e3bMgkppSRB3qcgnVHpGfWYVU9NVYeMFEx6LAAvhvjMU0LrFSq8sQb2uAKXwaBh7BTlpzRyfLUgk98/FZ4vMKkKn3GLW6wbSXhBWwZk36pAgnd7M7FB1DLYbSXHOqfk3E8KICB8DsCk6dg/ETfGPVx03/JYchVQwL0k3TkZZq7lSvzUIomNHYSG1YCuBDBNXsb5K9G13tlclol0sHf9F+xfZ2N7eM+BAM06OxQJ7o5X9ZMjs0fnx2uLlHrzMXwVCDMvGlXjreZvLAasYoFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMrdUHvzAcIBQSMUqnuZ/CdRWMYlVnbEbkskpbWcQDQ=;
 b=DOaDJ2kPRDiFLmwAX/5nSygS0M6W/SYldWngNsjMO8CVXF69La89pDJifVtQuWrWzRvht2AzwnsKKy9Iv62+dNeo31RpgpHv7hovBumr/fqqY60wHunxKO21OwEN22fOpJrk6dqylxF+EbttKHCOyzSv+keOitZtzZY6w9wOX0I=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB2534.namprd11.prod.outlook.com (2603:10b6:a02:c2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.28; Fri, 12 Mar
 2021 05:27:21 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::d9b:3f7c:136d:e60]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::d9b:3f7c:136d:e60%7]) with mapi id 15.20.3890.042; Fri, 12 Mar 2021
 05:27:21 +0000
Subject: Re: [yocto] Assign IP address at boot time
To: jchludzinski@vivaldi.net, Rudolf J Streif <rudolf.streif@ibeeto.com>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
 <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
 <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
 <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
 <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <dfab4b89-ad14-6bf2-1c11-84d3320dc2d2@windriver.com>
Date: Fri, 12 Mar 2021 13:37:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR01CA0051.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::15) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
Return-Path: Qi.Chen@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK0PR01CA0051.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3912.17 via Frontend Transport; Fri, 12 Mar 2021 05:27:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed63aec9-dae0-449a-2e0a-08d8e51782a2
X-MS-TrafficTypeDiagnostic: BYAPR11MB2534:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB25349D706A42FE8BE293AC57ED6F9@BYAPR11MB2534.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1824;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g9HM2NAzXT977BVc+x80ZOnandyiSoKWU1oS01bm1xrOnFZLhhQAa3D6/B3HBRYHj870L27e0gAyHjRjx7j7zNUp3RVK1Vde06CQnOKvdCsK5Z7+a4rWHvSZGLRfljmK2zpn75FNara0n0R7ZAZVW4ABQuhn+CDqdfHvoo4DRDWxvO4AQNIwDcA/9qrLarM/LmI48OlrIxDBu/srMC2CU9tPzQngg3tPbhtUU9hNfM8y0u09EqvWHIhXjkbQieoSWLnqKck4vTzQJjDkTV+5RLYVGuS6ZYKTK0qzTBEqFk/ldVuZCQjVZEk1nhNOWXm0jloiI+svi/ZKm083oibu9Vo0EtVgK5HhU89nQCjHkg8ltFArN59D9oI0f2z/aBpBE4LJ4MDbHVFztNNXhwD4xM24XodiGER7ZcNPDSDbalRk69ClE0O5BDYUXsac69gr0zqp3jYrKgK1Baw8WPfGPbkiyAR22pIVOvm2OzThJi0LrU3WWnqnirzhRX7L6+vZXnbUXWeLeCXRP20rBR6/ZEkA/hCAVeO95hpzN/d6IzIMzFwKs4pxaTCcTIgd+GQfE/Jy913l3mZ5aw3itwgvLckAM92NHH+PjRbsK5n7zip0C9kkDrZ74eQ65H2Dl0BSgBTpgJr1Tc+DbaYjMFKdXbm87CJ5DVnkSxehM00decE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(136003)(376002)(366004)(396003)(31686004)(6706004)(6916009)(26005)(316002)(66476007)(6486002)(2906002)(53546011)(478600001)(33964004)(86362001)(6666004)(166002)(8676002)(5660300002)(2616005)(956004)(83380400001)(4326008)(52116002)(16526019)(31696002)(8936002)(16576012)(36756003)(966005)(66946007)(66556008)(186003)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?a0VJSWNiSVNwb0NzMDVDdFVBZ2Z6LzA1OGQvRnpPdjZLQVZSaFhPbnB6Y0NH?=
 =?utf-8?B?NVdwNGY4K2hCOFJNSEVvUllyV2QyL1ZiWkFlQnpIOFZsZTFJdFYyWDJNZEJ4?=
 =?utf-8?B?NVJrcE5IM01QZ0lIQm9PZGUrOW95bzlqWVdWL3R1Z0JwSVVkb2hKNGtqS3Jq?=
 =?utf-8?B?WVFYZ2VITVZrVUpiUVNWSDJuamZ6Ymk3VFVNdTY2WUNIVWJvcURNOEx1YW0w?=
 =?utf-8?B?NHpkT2tCYzZzWW9VY1oxanhtaXRRejh0b1VyRTBVRHlvbGZLVlVReHdRSkxI?=
 =?utf-8?B?M2VZR1lGT2RaM1Y0N0ZjWitrSlNtUTl5Zm5ZdjVWYml2WGhndGx2MEI2ejVW?=
 =?utf-8?B?Sm0wd2hiRjJTUm9weGUvY05YYVRabUVXdmhMTW5rZGNGMDFLUXNzZ0RONEFX?=
 =?utf-8?B?ME9aNnAyWkhyWXVrbXZ3ZHFNOFBIeXpnRmE5bjFUUWNhWnhJN3FMbURDQ0JK?=
 =?utf-8?B?MG1RTVFOK0ZSSENqZThwZ1k0eG0reGFIZURXSTFzdytPOXJkdzZNa0ZneFdX?=
 =?utf-8?B?MlZTcjRBa1FxRXRJQWdtTWNxL0hUWTJKZ0ZqelBhTlA3TjFJdEEvUnBGNXgz?=
 =?utf-8?B?bUVILytNL2ZsZW9MUU56YTJiZW5QRVNyckRFR05NYmxHNGZrTEJrREpCNnhJ?=
 =?utf-8?B?UExiNUhaQThTUDhIck8wS0hJZElTaEFhTDRCOG5LdzJLYjJzOGxIaysrdUsw?=
 =?utf-8?B?Wnk0bnFwVWsxNWxDRkhadHNrRm9HNGtXT2pHeXFFL2VuVVU0dmVXTWwreXYz?=
 =?utf-8?B?M2doSFkxUktCREppQ2xRR2t2WUxGanJMWFA1bm5oUUV3OUFrT1M4OFd0ZXVD?=
 =?utf-8?B?Vk1tMjhBajE3WTdGZ1JPdEtVSndMMXNNZDE1dUt5OVVFU0UvZ2RRL0ZZQlk4?=
 =?utf-8?B?OVRXRmZqM1RQNGliZndQVDdNcWxnQWI2R081bm1VemlHN0dwV2xHWExFdHMy?=
 =?utf-8?B?RXYzVVprM0FGd0VxOWQyMHpIT2s1dkJOWVBBRUptWHIzYUtPOFV1dFRPQTdk?=
 =?utf-8?B?RlZWQ1R0THBpYTZnbzZFMUx2YmFzV25zdTVDZmNZZGkwRDhZM1czczhPbzNP?=
 =?utf-8?B?T3p0T2daWmZCVXZVQ083bHdRL2tmOGh1Zm9JYk5VQWxsWmNTT3V5cHdHWjgw?=
 =?utf-8?B?blRHUUo3dkdSM0pzN1JQS21KZWhxRkwrblk1TGZQWlNLZE9DY0tRNmFudWhj?=
 =?utf-8?B?VnUxY2d1L0tKQXB6RlZLVmJaeGxtdkVZZnRzaG5jS2g3RkZ4Sk8yQXNhUFlC?=
 =?utf-8?B?WTFjNUJMUjdmSnJXL29OZ1FCWmRRWmtuUDk4R2pMdjVMRXVVbzlwZ2VPbFI3?=
 =?utf-8?B?MGdqakNXSXV4UXpCdk94RHdVdnozQkJpazBCd1NMeFZLUXMxamFKY3BQbEtU?=
 =?utf-8?B?b0drU2VhTlU2RktqU1BJbWtqWjlZZGVtMVM1TTRhYzVDNUU0ZUIzK2VaakdB?=
 =?utf-8?B?SUZmRTMvV2JwWFJyZlc5S29rZ04wNEsydUtzYnBFaUFxbitsQW5wWFdUZVMr?=
 =?utf-8?B?NEhqaDFVQkE0dDU4MnRGSTZRai9WYnJTTWQ3K0pCdEY5TU5XakVhR3c4bG96?=
 =?utf-8?B?UkN5c0QyTzBWcG1uSCtQaWpNcG5XZkJCS0tpYURBSnpGQ1JtbGFXRENLUW11?=
 =?utf-8?B?YXlkTERkeEhVZ1JteFRib2dhaG0vYmV4TkxNRGcrY1Y4L0V2c0tpOHR0RFFw?=
 =?utf-8?B?S0ltS1JjbjFjYmNWMDlTNkNYZWNSbTU4bTJGR1ZtTkc0dTFCdlN5M0NsY1Bz?=
 =?utf-8?Q?ccTUpvZ0TiElbAGuuLcbmwrN+wsywj0ROxnL3GU?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed63aec9-dae0-449a-2e0a-08d8e51782a2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2021 05:27:21.6377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hDj4KpP/sFWbs05kCj3aRPN0vkCk311XQhcIRaUp/i4E5CmxyvBvoVWPr0oedbQmGW3crjJSd8R3ryqyp84UVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2534
Content-Type: multipart/alternative;
 boundary="------------491646F8A683B937D67B4003"

--------------491646F8A683B937D67B4003
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Try adding the following line to the match section of the 
80-wired.network file.
KernelCommandLine=!ip

Regards,
Chen Qi

On 03/12/2021 02:12 AM, jchludzinski via lists.yoctoproject.org wrote:
> Can this be done using boot parameters?
>
> Something like(?):
>
> LABEL Arria10 SOCDK SDMMC
>     KERNEL ../zImage
>     FDT ../socfpga_arria10_phead.dtb
>     APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk 
> console=ttyS0,115200n8 *ip=192.168.0.101:255.255.255.0:eth0*
>
>
> 
>


--------------491646F8A683B937D67B4003
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Try adding the following line to the
      match section of the 80-wired.network file.<br>
      KernelCommandLine=!ip<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 03/12/2021 02:12 AM, jchludzinski via lists.yoctoproject.org
      wrote:<br>
    </div>
    <blockquote cite="mid:dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net" type="cite">
      
      <div class="pre" style="margin: 0; padding: 0; font-family:
        monospace">Can this be done using boot parameters?<br>
        <br>
        Something like(?):<br>
        <br>
        LABEL Arria10 SOCDK SDMMC<br>
        &nbsp;&nbsp;&nbsp;&nbsp;KERNEL ../zImage<br>
        &nbsp;&nbsp;&nbsp;&nbsp;FDT ../socfpga_arria10_phead.dtb<br>
        &nbsp;&nbsp;&nbsp;&nbsp;APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk
        console=ttyS0,115200n8 <span style="text-decoration:
          underline;"><strong>ip=192.168.0.101:255.255.255.0:eth0</strong></span></div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------491646F8A683B937D67B4003--
