Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.40])
 by mx.groups.io with SMTP id smtpd.web12.13941.1607720277193537943
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 12:57:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=p3CVSUcq;
 spf=pass (domain: windriver.com, ip: 40.107.94.40, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BTYaBURzkOpWZlAmQZAVP23UScIdDmPGcQNrGDDZ3sYJmSBhKKLP05AJfvAeOma/8NfvSolbW0VBEvyLmVqMrtjU2omyo8HwrwzRPggpa1vPlwGCihOyjgEZ3Fr2W3sLOA6N/GrdcdsWG0HXXZ9n9mfOn8cNSa2QSiEE9z/AbByEdy6V0JDcBPZ2QM35BxAM9tphDrL/yZ2UP9+6fcY567UUiRa9YZQ8zAwFDkGXtj/K5jr8AZ/qgMHilYeXOvLqH8eOZYlxvodLpwVTIrtrABkzrNjw6npsgZNkUrZWL3/3cWGABIRQzBxLIHRgEpJOb7b78h+QkUYQ/Zu+65GO6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFupVQosuPBHuS6HNBdwFPMTOq3m23mhD6HHWWtJdJM=;
 b=Iny9Ai5saQQ0TofRXtZvJnxcZFOr6LEQObPcUKLPq4rZwikKkbBhtg8BcSTcm+f+lIMR0NiZcwz/dQK5wW9XYiGsGCQP0hmb7cpkdCkmkUJkTfiQhDvhr4Qu70z754QTmphiugYL6IJqd7xgQwS7SCHZtoeEeVUgJBRVIWUfdc12POFFbSELblGDBLGCEp7mpJlqKikOJgUhqxqGpLlHSDlfNKgULDPLlnG0EfTjUst5XH7VRrWEAeikRIbH+JqRjFRVwmwrBtaig6v9lNo++rOH94imWOUf58O9jdljWTn1kp0VuSL35nmwUd4I+oSXG/6HLp2uRqfFb04cuP/B6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFupVQosuPBHuS6HNBdwFPMTOq3m23mhD6HHWWtJdJM=;
 b=p3CVSUcqzPYZ+aduiRLO/sEimNusYik/8ZFh6a+HWLJ2ZMO0vdIB74hD/TMMlUaq/0+0zYJ6D+mTx8YCqBTzgUupuT1h1J3VweP5ZDakE8QXmq0FsHC+rocr9ATZ+pepi0ASJ/ZTYvwGNpNFiU4ec7/4XuuJ2+1rxdFnrD6xw50=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2106.namprd11.prod.outlook.com (2603:10b6:4:54::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.14; Fri, 11 Dec
 2020 20:57:55 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3654.017; Fri, 11 Dec 2020
 20:57:55 +0000
Subject: Re: [yocto] #vmdk with #dunfell
To: chruetli@gmx.net, yocto@lists.yoctoproject.org
References: <v0SD.1607606297266017770.G9ej@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <b88fa201-55b7-e078-232b-0bae0c8d0617@windriver.com>
Date: Fri, 11 Dec 2020 15:57:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <v0SD.1607606297266017770.G9ej@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::6) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR05CA0031.namprd05.prod.outlook.com (2603:10b6:a03:33f::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.7 via Frontend Transport; Fri, 11 Dec 2020 20:57:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e388c789-adc7-4924-5988-08d89e176eb0
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2106:
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2106C3837E305B55822999DDF8CA0@DM5PR1101MB2106.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	j4M9TH2XB4aSDU0urTSYdO3wnFZNVLaCsFeEKCzOpAVAgNUMdlP8mZMLe+OpKKZxFZljWAStKFPCi6wzi/T4xv6wUgzkAKSyLRESA9eI0sttYB+aAvjD6BgCr/45PHaZOJhyduVAuxjCl5xt5m2VZAD3wmQDo779N0IDb6URhNEhUKrHF2+8GmNns3s+lP+/tYdLrNXzaUz2A7eYgQp4H+Y/ETSZ4mtZv80CzvZYre5TA0b+njDgTYzeaxbR5MNZNJ0XMejBpwVNbfuIe8eKPKl3Yw5i0s+XWJOjYyaAWMwySRjJf6jE3M3yRfaTR299rtykTdggxhjkHNc7GgHZygFGeJawjL32jOf6MkGFT5DyMIUqRJMJTRsZlTkLh5C2mFkUXnQVRDKWCNpnPUbw0Rel10jPjZVEzQwXBBC7bfF270apCO0tLYnEWbrB8lMYWFIsk8+SezzzdSAUMGGh1wZdYNNm5KfepD6EgYvjWSA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(366004)(136003)(346002)(376002)(66476007)(6666004)(83380400001)(53546011)(33964004)(31686004)(186003)(956004)(2906002)(52116002)(86362001)(5660300002)(6486002)(66556008)(2616005)(36756003)(66946007)(8676002)(26005)(31696002)(478600001)(166002)(316002)(4001150100001)(8936002)(16526019)(16576012)(966005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?ZU5BSVZqQ1FiVytWQW5jWlE5M2xmang5UDdETHpMSkEzTHNPN21KSUtrbi9u?=
 =?utf-8?B?NmV1alk5MkQzR3p4VjlOd3U2Z2NuRWttUS9nUG9aQXZDSWsvTWlyR2ZtTjVV?=
 =?utf-8?B?a3o1VFVaSXhwUVlRN2JGQjJOaW1KN1dIRWcxQXdlRU9FL2JZcUdYZVlyUk5v?=
 =?utf-8?B?R2JJZFk4aWFNbzlEcEM4ekliQkd5YmVBS25POENRNnhjaWw5ZDIvMTI0akU2?=
 =?utf-8?B?RWZZOSs0QjVNMTliT0szcjlIaGJYeXJ5MmZqNlc1UzZwMWZZSXNySUV6QkRu?=
 =?utf-8?B?L0krRDdOUFQ5VW8rWnA3bmc1eW5pazkzOTZ0bXJJSDNuVjU0ZXJVNlUzMVlG?=
 =?utf-8?B?TE1IZkVORE9rcUR4cHkwYUhITEwzNDN1aTU3alNuNW15VFlUWkk3UEE3SmlD?=
 =?utf-8?B?VURlRDZHSzZIRlIwMnFzOXBGVldqcS9wYUpSckw5Q2Z5UHIrc0t1Z21SQ0dq?=
 =?utf-8?B?Qm1HZFgycTJCQTUvVGRoaW4zUUloYmU0SU1vaitaU00za05WZ3o3NmlhWWE5?=
 =?utf-8?B?b1o5ak9QTEJVRFdLOEZjYXpVRXZscTR0L0V2RExNNGttRk5NWGY5QUo0aHlM?=
 =?utf-8?B?QVE3KzhNV1ZoR1pKOGQ3ODI3K2V3UytSd05Ldy9iWmZEbEYvSkFDUkxQbCtj?=
 =?utf-8?B?L2dRZC9IUUQvaHBhTkY5OHNPQUIvYTJBaUFORnc5TGNXa0Ezc2M3QWtJWUw2?=
 =?utf-8?B?blc1TUNHeW5JcTY3OEVPS0RIb0t3ZFZjemV1Zk5UV1N1UlZZUkdzSVVja3hP?=
 =?utf-8?B?Vkp6cVpJNEdXaFhJWjk3SnFITzJUQlNDbjBZaXpZZjZENzRFZnZsd1Y0M2o0?=
 =?utf-8?B?bmdHamtSVEE3Q3JpdDJWUVUyd1N1bnQ2QUhHTTdqS1pWdW1MME9QWkRGVitv?=
 =?utf-8?B?a09FOVpJd1E4Um1KOXFIQ2IzSmVta2VlSVMvb0Z1TGhjY1NsRWtIZ3djTVNy?=
 =?utf-8?B?SkVjVUNlemlGVkY2aS9Qelpod1M1clR2aWM4ZU1zQ3ZSK0Y5WHNiMWxkNzRI?=
 =?utf-8?B?bnRrVWIxbitHWE8wdS9CcTd3aURxbXZKSnF2TDFhTTRmeXBFRi9xdllQRlQx?=
 =?utf-8?B?VWhuY0VSUjR2WUFqcDdxRitwdzF0ZWtxWjgyTUNIUno3ZnNBV2RKTHlIcmU2?=
 =?utf-8?B?TVRTU1lyaWU1MWpKamtYcU9VTGpCb2ZveDNJdjRNemFQd2FvS3VvN3dmTFhP?=
 =?utf-8?B?djdsRVg3MDBHUUYvaHhXVkZ4Y0hsdmV6ZHcxYVYzclhJclY3ZzFWbk9lMUVh?=
 =?utf-8?B?ZFBkVUlUL3dGckNpbU5mQVhKdk1IOWptSEt4TTVWYU5WTzR5MXZoWWFSSEMw?=
 =?utf-8?Q?cq8CQmGF7HcBlF8LImAW974yq/aJ2joeVV?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 20:57:55.1062
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: e388c789-adc7-4924-5988-08d89e176eb0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rW/GDa1QsY7t8LEsuL7p+GbLayBDL8G6P4mOeDmWREVcinSedPbPmXx70IZNm5XX/+HW7N7Fh8UV3pxIGeQQGP6EIOQ/WXvZ0JqPPOjsTDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2106
Content-Type: multipart/alternative;
 boundary="------------DBB4C3A5EF0310D73479BF77"
Content-Language: en-CA

--------------DBB4C3A5EF0310D73479BF77
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-12-10 8:18 a.m., chruetli@gmx.net wrote:
> Hi,
>
> I switched from warrior to dunfell and want to build an image for 
> Oracles VirtualBox VM.
> On warrior there was 'automatically' a hddimg generated on dunfell 
> this is no longer the case. The IMAGE_FSTYPES has to by specified, I use:
> WKS_FILE = "virtualbox.wks"
> IMAGE_FSTYPES += "wic.vmdk"
>
> This requires me to write an wks file for which I use:
> part /boot --source bootimg-pcbios --ondisk sda --label boot --active 
> --align 1024
> part / --source rootfs --ondisk sda --fstype=ext4 --label platform 
> --align 1024
> bootloader --ptable gpt  --timeout=5  --append="rootfstype=ext4 
> video=vesafb vga=current console=tty0"
>
> With these settings I get an vmdk image but it fails to boot. I get a 
> "VFS Unable to mount root fs on unknown block(0,0)" dump.
>
> Any ideas?


Not off-hand.

Since no one is available right now to help,

can you report the bug in:

https://bugzilla.yoctoproject.org/

after creating an account:

https://bugzilla.yoctoproject.org/createaccount.cgi

Please give lots of detail about your build host,
and the repos and versions you are using.

Thanks,

../Randy


> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------DBB4C3A5EF0310D73479BF77
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-12-10 8:18 a.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:chruetli@gmx.net">chruetli@gmx.net</a> wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:v0SD.1607606297266017770.G9ej@lists.yoctoproject.org">
      
      Hi,<br>
      <br>
      I switched from warrior to dunfell and want to build an image for
      Oracles VirtualBox VM.<br>
      On warrior there was 'automatically' a hddimg generated on dunfell
      this is no longer the case. The IMAGE_FSTYPES has to by specified,
      I use:<br>
      WKS_FILE = &quot;virtualbox.wks&quot;<br>
      IMAGE_FSTYPES += &quot;wic.vmdk&quot;<br>
      <br>
      This requires me to write an wks file for which I use:<br>
      part /boot --source bootimg-pcbios --ondisk sda --label boot
      --active --align 1024<br>
      part / --source rootfs --ondisk sda --fstype=ext4 --label platform
      --align 1024<br>
      bootloader --ptable gpt&nbsp; --timeout=5&nbsp; --append=&quot;rootfstype=ext4
      video=vesafb vga=current console=tty0&quot;<br>
      <br>
      With these settings I get an vmdk image but it fails to boot. I
      get a &quot;VFS Unable to mount root fs on unknown block(0,0)&quot; dump.<br>
      <br>
      Any ideas?
      <br>
    </blockquote>
    <p><br>
    </p>
    <p>Not off-hand.</p>
    <p>Since no one is available right now to help,</p>
    <p>can you report the bug in:</p>
    <p><a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/">https://bugzilla.yoctoproject.org/</a></p>
    <p>after creating an account:</p>
    <p><a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/createaccount.cgi">https://bugzilla.yoctoproject.org/createaccount.cgi</a></p>
    <p>Please give lots of detail about your build host,<br>
      and the repos and versions you are using.<br>
    </p>
    <p>Thanks,</p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:v0SD.1607606297266017770.G9ej@lists.yoctoproject.org">
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------DBB4C3A5EF0310D73479BF77--
