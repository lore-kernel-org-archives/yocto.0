Received: from NAM02-CY1-obe.outbound.protection.outlook.com (NAM02-CY1-obe.outbound.protection.outlook.com [40.107.76.85])
 by mx.groups.io with SMTP id smtpd.web10.2670.1602099424444754718
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2020 12:37:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Vnme/Dg9;
 spf=pass (domain: windriver.com, ip: 40.107.76.85, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U+2YnAHld8W1qIW4zUt2VUTYsj9BKdEGDkSXgROL+M6fpcXdD6CdPCDlcxhYH681FhlyMxkOdgbwa46ANBYELMHO4WJdO/Ffb7cz7ZAiY0GACR2wBz1ErXE/btdQh6mYOkhiEwLRBoYukzdQFVXA0Mlc/sA23TYBgYRqQvhhrAEiVYsPbVk0i7pEOpbf92heIOhpNHqMjt9rUQDOMl2SW6SCNnCjxr+FA+1XjuNZJv1138F1h7ClMWYA/dNUmysQtWdVatnxJhSf1bjDWJuIVxYvXaSLJaPjC41tPt2wrVPXomuXzKBDIUu7cE4uwhjW/b5++pc8HcCrMEjsipedPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgUD9F4m9ayRUYT7NEYRwYxX9Q3ZnK46m77In72UAII=;
 b=Cw7hCLn7iHvXheTyjf6teDMzezjDN2ovkT+RqQsL5K6PLqbaZiq2CNAAUqeuQw4cJnDD24RIa/amZtKP1IESO1RXoag1rjUz/QXEUmA6+3S18hYU/vRG+kz2S3ffChYbwsV95ONalo8+ev2fLDeDhIdOj1KIQ133z7TqouIJXYv1AWaiRFRb6tlCn3R5ooQ+Z4zbyLah1Cg+DGC4BzXciv7b9uFNn4mGpsb1Z1usDhIy18n2RAW/mvy5GoJ6x2NbmRZ2bqe77IhO9r2+jXhMDy58190Z5tj77S7gDAMDPcdEirAy98Mqp5w8lyNfFcM6M8bfJGblnOoy8tfDTUUKPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgUD9F4m9ayRUYT7NEYRwYxX9Q3ZnK46m77In72UAII=;
 b=Vnme/Dg9M1vqlAS0DSCLqQTim/Rsupbbf6Ql8foVAZ+rssxsPNvLF5naJWV5VWL8T0CRXENuQdBTJEgWb7widmYZtlxP/e/IlBcVMh1LQKI35Mdw6MPkZ9IeySeZVMNBaEnNtcIRCYFNYY0AB828kNGkupia4AQNh/L0pcNrQqM=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SN6PR11MB3439.namprd11.prod.outlook.com (2603:10b6:805:da::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Wed, 7 Oct
 2020 19:37:02 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3433.046; Wed, 7 Oct 2020
 19:37:02 +0000
Subject: Re: [yocto] Introduction #yocto #python #linux
To: idadelm@gmail.com
Cc: yocto@lists.yoctoproject.org
References: <9Lrh.1602088730896348466.Aw6g@lists.yoctoproject.org>
 <CAMKF1sp4kkYGx71M2Qkk8PbL7MsTEj=tbA2B1Jvh52f+NcUOuQ@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <a08dd022-eb9b-33e1-cb35-4d66c9de655e@windriver.com>
Date: Wed, 7 Oct 2020 15:36:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAMKF1sp4kkYGx71M2Qkk8PbL7MsTEj=tbA2B1Jvh52f+NcUOuQ@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR11CA0048.namprd11.prod.outlook.com
 (2603:10b6:a03:80::25) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR11CA0048.namprd11.prod.outlook.com (2603:10b6:a03:80::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21 via Frontend Transport; Wed, 7 Oct 2020 19:37:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b4b1eaf7-ab23-4263-3109-08d86af85d04
X-MS-TrafficTypeDiagnostic: SN6PR11MB3439:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB34398B1CD91FF13AE1CE7F09F80A0@SN6PR11MB3439.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xT9Rjs9Lng7HkO0NUB6iGu6L2n2t9yS0VNPzSlw9ke7s4zWMonucT3s7a/hIZiBZhWjoonXkbC088DXQ6QPOO3a0YSR46XDMtqWbMMvAsMpEWgsg+SFG2DRjY3F6ifurpQQGMc8y7naKTMKH8/cK4kNHL7ge4nxjZm8/D51wI6YkagIDhGGV27/r+Mp3N2NFcMGCPyQG1SrQai70Tq606paZsRaaHNfF+cstkY5iuJyzXXaVQ86FgdUuxcA955dTTRcAFCS/u3aArBejnZz31wjpUVEmwS7ZYWMTfJxWam/0DWS9xZHn2XrTE7wQKe2cuWIdX7alqP99Dyveu0BqsKRfnDM/h/V2XBcyqcokx6rRfaNH0SIPEnI0oJjNGRm5w7m0QVcwZO8DxacSE7JAlp/5FhbnIu+E8jEJbz4WUICFtrM2Ddmut9RoJo3JukmMkqn7dIjDBxQmZDzajFLFFw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(346002)(39850400004)(396003)(366004)(16576012)(316002)(33964004)(53546011)(6916009)(5660300002)(86362001)(2906002)(166002)(31696002)(6666004)(83380400001)(478600001)(16526019)(4326008)(31686004)(52116002)(36756003)(966005)(66476007)(66556008)(6486002)(26005)(8936002)(956004)(66946007)(2616005)(186003)(8676002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	d0VSIO9kSMF2ioJCAYGxBuNY2xOn3StZFp88EHRNEwCkUuIIILdB+Hn6Xz+G+SNx9C4xT+aKEIWyTG/SRj1NPAD4MlUAtroQYVt2QZgvjY8cJEMq04yZU2tqRu8MOE7tTYVmEhY+GNOhCxC94MdKrfKyQwzjJ77aXnXEEPTsziCc1tE78R3KOFoPkWJtlQ0NvcT9AxqKGKhmR3F17Mkrunp15y/NF0psGizuW/U+af76ZSmUbJI/71n/NVTMBdK4HdDCcoARFYOeSjE+AYtK5z+jXz5LQ7O6Xu5I2D6DyEk8x9xYxqSdovpEfT2oSjsMT4oDsi3OesMeXJ5JWG3rcy22mCyaTUXnv8USA5ONf4TZtxJ6ddFLel6jxifxvPUVbe7LKrLfZW5CipBjuPqmY0ge6NwjdPoh4SAHoBSvNU18xZn0hUrx8KpxXPWWOcTaktMd3TClkNej8H9tJHw/V5GXlY5tvbgocX1NGmJgGsZYKfMPPXa+rIbXsV6k8lcPP4mMNW/NlJ/f3u72yD3G2Fagp/DTiZYcqoxk+xGJMrwt/3m5YtHgFG4FDuHqNAgAkbUdjL2o+V5q65HZWpdsQHjZ/dLUHDYFhTqWP9uE6RNAO7bdUVvLWa+pxl5/tWKkfhtz1divZzIuEIx5sI+EbQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b1eaf7-ab23-4263-3109-08d86af85d04
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2020 19:37:02.0023
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lZxmRdlvvFZki0xEN2bxywzEPz/EgBynb53a3dn+3w1jmyWUfZ5DbiZTLvtyTOugxRrv66k4Vv41TkU5hP3xG1Fp9XA/Fxbz8tdmrm9VW8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3439
Content-Type: multipart/alternative;
 boundary="------------1AE931DEC93AB491AFD6A022"
Content-Language: en-CA

--------------1AE931DEC93AB491AFD6A022
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-10-07 12:57 p.m., Khem Raj wrote:
> Welcome Ida, Hope you find the project interesting, Feel free to reach
> out to this community if you need help or have any questions

Hi Ida,

We have a "tasty menu of bugs" ;-) for people who
are new to Yocto:

    https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bug

Let me know if any of those appeal to you or just register in
the YP Bugzilla and assign the bug to yourself.

I will also forward you the weekly email that has a bit more info that
you may need.

Welcome to Yocto,

../Randy

>
> On Wed, Oct 7, 2020 at 9:41 AM <idadelm@gmail.com> wrote:
>> Hello, I'm Ida Delphine and I'm new to the Yocto Project. Excited to contribute to the Yocto project and hopefully become an outreachy intern.
>>
>>
>>
>> 
>>

-- 
# Randy MacLeod
# Wind River Linux


--------------1AE931DEC93AB491AFD6A022
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-10-07 12:57 p.m., Khem Raj
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAMKF1sp4kkYGx71M2Qkk8PbL7MsTEj=tbA2B1Jvh52f+NcUOuQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">Welcome Ida, Hope you find the project interesting, Feel free to reach
out to this community if you need help or have any questions</pre>
    </blockquote>
    <p>Hi Ida,</p>
    <p>We have a &quot;tasty menu of bugs&quot; ;-) for people who<br>
      are new to Yocto:</p>
    <p>&nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bug">https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bug</a></p>
    <p>Let me know if any of those appeal to you or just register in<br>
      the YP Bugzilla and assign the bug to yourself.</p>
    <p>I will also forward you the weekly email that has a bit more info
      that<br>
      you may need.</p>
    <p>Welcome to Yocto,<br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:CAMKF1sp4kkYGx71M2Qkk8PbL7MsTEj=tbA2B1Jvh52f+NcUOuQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

On Wed, Oct 7, 2020 at 9:41 AM <a class="moz-txt-link-rfc2396E" href="mailto:idadelm@gmail.com">&lt;idadelm@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hello, I'm Ida Delphine and I'm new to the Yocto Project. Excited to contribute to the Yocto project and hopefully become an outreachy intern.


</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">


</pre>
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------1AE931DEC93AB491AFD6A022--
