Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.50])
 by mx.groups.io with SMTP id smtpd.web11.9893.1615049274712215948
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Mar 2021 08:47:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=G5qhxVgF;
 spf=pass (domain: windriver.com, ip: 40.107.223.50, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0mX9K1JpDPxxxfzFN3b3DV7BrdLXwK2JSoDTpMqL4y5RLC/pvCSZfWUj60DEs8Jg7FtewMyWs0y5IIbw92UxK8/DxFPGShAVm1PV33yzgn41eRtZcdHusuvyWPnI8xNmt/BwmrUaHRZPtvRnR12jRJ+d4nJ/8+CTQGbnnscMS9tbvTqtt4u7NFnhuXBr2rw9jN9sSPayLoOZa15ZwGfTX5Jpdtui9XYkGW1LAQmKPQFnS37Nvr/wONuvsitrUDPMeZFmQ7sr9+VzRv3ROM4BMPA1+6u/DTvKvMk+Q3MdF7kgBSTkqlngmde77JMV1qrMC0zMQAvAs5O1l10x/mhWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+T1C2W53PaC6IsRKEgU3jOiZEOnTzpYVvx/VE6BReI=;
 b=P9eRpNIIO88595pRF7HL9BR+yrLPry3vIEKjqMa0Z+Xd35r1dKz2DgI/TztK9hMbk7WW5zpCpi03xau4VkDHatJ6Hz6LP2D105ibFd5mKFBptEdsiZA0dw0U6I/YcxyDw5Wnl1sCyZYl0FZr+IgyJSXvzjs1CMboNl1B5HIfeW/I69G62hZwVqgsEiFIqbZI8Srg86I50kZ/H0HY+v89DA73QkXzgCdNrj+7w8jp1olj3/55ZEHD9GpQauWfQjm0orp2hK0Al+TiTJj/iXj4or9EVQpiVQn4MwLDHayMvuxLAIlsoEKOSj06yZF1/Zazu43K5hdRqlQcOVrMAUvM9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+T1C2W53PaC6IsRKEgU3jOiZEOnTzpYVvx/VE6BReI=;
 b=G5qhxVgFr4nU6Z4Iy1N0dBkum29eWyUmy1LY5dd+/l4Z30dF96986ilcdfVoZD73rN1M0Ejjg8x6JpEmM+UVZDJpiT8cJ/oqbnO9oXEvM4anp3CmOwLRuryGKsu5QWiX6aTKVqZ617JHIFN3ikiAhwoQZ6o7Ivo6LSm8Rk1KBr8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3515.namprd11.prod.outlook.com (2603:10b6:5:6c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Sat, 6 Mar
 2021 16:47:52 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9%4]) with mapi id 15.20.3890.035; Sat, 6 Mar 2021
 16:47:52 +0000
Subject: Re: [yocto] Memory tracker in c++
To: Mauro Ziliani <mauro@faresoftware.it>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <F6AFEDD2-BAA7-4D1E-949F-AB0DF8FA7DE8@getmailspring.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <d4db0a0d-2e46-a7cd-c289-f8a7ba4a1bb2@windriver.com>
Date: Sat, 6 Mar 2021 11:47:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <F6AFEDD2-BAA7-4D1E-949F-AB0DF8FA7DE8@getmailspring.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR13CA0032.namprd13.prod.outlook.com
 (2603:10b6:a03:180::45) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR13CA0032.namprd13.prod.outlook.com (2603:10b6:a03:180::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.16 via Frontend Transport; Sat, 6 Mar 2021 16:47:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0645ae0-d61b-4676-65b2-08d8e0bf9537
X-MS-TrafficTypeDiagnostic: DM6PR11MB3515:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3515F6CF2015A51ED0071218F8959@DM6PR11MB3515.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3S6cXQhAjznhiZyHmoEXc4Z1ytoW9x2ZHmQjvO4jY0+W2GTLzsbBvm7CLLkvCoA1OQ3jrgW3wU7ybmwseVWLmv5zf1ONCuxDCJWyeDLp8yisFrnMpcB1/kMe1z76a7R6U4QquWmVqEMYIuwx3f2hwKQXNIMrJ936vCesC4rxiy6pyehrrqzP/yokVzm4vUtpQWpERYY53wAehov5CPwuYSVcRpUXGsrjdkBOFJexT7jSZcqpPbKJJlfYT7nsbukkZT17Jq3yPz+49qTN39Yoy6UqtMyLr9hEvguHc7+7w416MSdgAbyISaZLCpiDRwrnYtOuFIUYcMQHSUyZylExi1aK0t+5OQrPm9x9ZVm8Fsv0TWs4Qz+KRwAwmFjtZe0zy0trYJl2dUNiuIIlYDJxk8/+x6C2/QEZnFZ75j/VarJNUZRUwTEVuAgfV43ZYZb7jCsxC5lvS0pGVKm9RoqPzta0SxGxNRVuk20g13iczdQiqe8phqfqSQRF9DqVIuFMRDRgKE+q08hCBX5scdi2HlA/bh6nUzQDfvWFj1v+juc056F4amss7nOAtj8nXnGmKpPK3TDDR+o1vdUug1BgrMhsrKTEfZPIv7Ku2+3NSN05ZzjZ4grEF91QIz0E4RQZHJffnpiBh3kHJ3gpOYPrNwZhaTH/Z1KY/1x0lP83uapDx0/BnZ5/hwqKc1YNnkXd
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39840400004)(136003)(396003)(366004)(376002)(5660300002)(6666004)(16576012)(110136005)(36756003)(316002)(8676002)(2906002)(31686004)(966005)(16526019)(478600001)(8936002)(956004)(66946007)(86362001)(52116002)(2616005)(6486002)(26005)(186003)(66476007)(66556008)(53546011)(31696002)(33964004)(166002)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?cmF1bGw0MWJseTBHbHhJRzVEVmdUTFYyNlNwUTU2VldDY3lod1JuVkxaOEND?=
 =?utf-8?B?aEpFOHNVT0R3QVZOZ3VhNWVhS2ZpQWlUdkpoWE5FZUN0RXdZYlh1RUNERi9h?=
 =?utf-8?B?L2cvWTg4NnVwbGtjUjVxdllnRnphejlwQ1c1M3J6bnlZZjEyQ1lJd1g5L2cr?=
 =?utf-8?B?alFMbW5lUUQ1YzJVQVdlY1EvNFowbytodHhoY3g0U1hlNXZCYSsrOXFQVjlB?=
 =?utf-8?B?M3JFQ29tNktaUjdIT3NnclBCTUZsaFNvaHJGYXVTM0xMSVM2VndML2F5bHR5?=
 =?utf-8?B?a3NtQk1UbitoRFNrRFpaeXBqU1RPcEdDR0lENC9kYmZ3SVdPRmVaRHlnSGdY?=
 =?utf-8?B?QUJsVzYwMHA4dlhxWlV1UHlUaXZTVm9WYmllNTRZekhSSitxNWN3UFc2VWhs?=
 =?utf-8?B?QmhHN1hzZUtLL2gxY3JOMCtPOTRBWGdCOTJNUnBHT0M3aUtSQ0tGMzFOOEhM?=
 =?utf-8?B?VVZMcWk5KzdTa1htclVLWVI2RUhkTXFwZ0tIdGR6VHdVQkk2MWRtZ2Z0Z1RO?=
 =?utf-8?B?N1daYkk0OGNoWDE2NHF0bUZrcWpjYjBRSFArQTZVdmVHQ09JNlNCRnAxOGV2?=
 =?utf-8?B?Q2xYcUNZSm1OL3B4WlBmOEtDaVQ0eGlQK1NMQm54UUJoRVBhZWhnRE03YWJo?=
 =?utf-8?B?SEFRNHlpK1BXblZ6K3lwVUhYMFZKR1NtanYwZE9sRG1KMmg0KzRpUlJ4MFVB?=
 =?utf-8?B?Z2hlQUFlWGJ6STRNRnI1bEJsVnNvckIwZXpDdzI2K05sVTBSQ1VxRzljL2ZG?=
 =?utf-8?B?bUhYWS9UdWdXbEhxZUdRbFBtcWlIUkVYMTNHaUtrU2xsWDBHWjhUQVFLS2I4?=
 =?utf-8?B?NlRTSmRzNzhYUGQzUjh2NSsrK3FjSEVMb0ZCNVcxZjEwSmJXVm55cUFOcndj?=
 =?utf-8?B?NDVwV0o1STBuVmdYbE1JelVXa3pWamRIb1M5M2lpendPR1k1QVlrRU5pd3dy?=
 =?utf-8?B?MEw5WWRJOFJIZ1hhYjNaRU96YmN3aWtxR2xRaUMxRDVUbkgzZUNKRmZseFpj?=
 =?utf-8?B?T1lHMktubmo2T2dGOWc0NjBxNnZEbnd6Rlcxb3VrY3VYR0ZHOEI0UWxuUVFl?=
 =?utf-8?B?Uk9UdlBaeVFUQ1M5Z0ZhaDU5QjErN1gzT3o4c2pKbzl3cXdIdFRBTCtWbml5?=
 =?utf-8?B?dWh1NWJ4NThYNEhSZzJUM0VrZzFITkZOY0N2UXVvdHEzNDdoNVpseCtaTXJU?=
 =?utf-8?B?V1RLcXB3a1pVUWVuaUNlMk16RUhvTlNTWGFPMXh1ZS9HMzZkZ0pTbXRhb0cw?=
 =?utf-8?B?aVRZVFduMVBOZ3JaR2QrWEdTU0dUc2NvK09xc2V0S3B2aWtLY3cvYTdnRUkw?=
 =?utf-8?B?OWdxbHlVdWJORjFKekkyaWZ0VE9ZN0hkeUFZSVVXdU5KbUNiczVtdnozckZK?=
 =?utf-8?B?THNTZzNIVjZ2ZnkyTUVQZitTai9RUndUWCtYbGVvSFRMZHBtZk40MUtOaFVo?=
 =?utf-8?B?SDg2Qll6QmRmTmpQUHYwTGE2RE4wQkpTRjl5VGkyam5TWEJvNFVtM0VOd1dI?=
 =?utf-8?B?SmwvQkpzMGRKSzl2WkFKRDJTZm51bk1BUEgyV2FOVElMbXpiWUZXL2xsZzM1?=
 =?utf-8?B?YUpiR0RNazBvcXVzcVZwRHZpblcwNzZkY1pjWVA1ZWZ4U3crV0RST2h0K0I3?=
 =?utf-8?B?NTliWGoySmlDM1oxL0VaZnduUUt3L2J5aVlJb0p5bnpXclZnb29WWC9FeldG?=
 =?utf-8?B?TFRQZXJoazU1VFF5VW5lU2FxNDkvMVFFTHB5M0Yxd2dISjZWazZKN2k2WElN?=
 =?utf-8?Q?QOeGc9R9YT2deZdz1IU/c35L3kHZeyyqNNCv3Xt?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0645ae0-d61b-4676-65b2-08d8e0bf9537
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2021 16:47:52.1525
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Olvq/bzxIbhPgHgXjuaY37UDmvHqNnMBBln9F+KfS54aXYk3n8PLUVFM3uuSrm9W5qaz49+bPPp0fd/X6DHNArH5HQd9Q2X0imhdjuyriRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3515
Content-Type: multipart/alternative;
 boundary="------------39F5A0214CCE904835569A12"
Content-Language: en-CA

--------------39F5A0214CCE904835569A12
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2021-03-05 3:03 p.m., Mauro Ziliani wrote:
> Hi all
> I'm looking for a memory track to investigate how many memory my 
> application needs.
> The application di made with Qt/Qml 5.6 over a Krogoth on Imx6dl board.
>
> Do you have some suggestion?
>
> I'd initialize the library in the main()
> Then I run some function to get  the memory consumption

glibc has mallinfo:

https://stackoverflow.com/questions/8335402/how-to-find-how-much-memory-is-actually-used-up-by-a-malloc-call

>
> I try valgrind but it is too heavy for the poor imx


Yep, it's a beast!

There are lighter memory debuggers such as the AddresssSanitizer:

https://stackoverflow.com/questions/47251533/memory-address-sanitizer-vs-valgrind

which links to a small wiki: Address Sanitizer Comparison Of Memory Tools

https://github.com/google/sanitizers/wiki/AddressSanitizerComparisonOfMemoryTools


Let us know if either of those approaches work for you.

Good luck,

../Randy


>
> Thanks all
>
> MZ
>
> Sent from Mailspring <https://getmailspring.com/>, the best free email 
> app for work
>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------39F5A0214CCE904835569A12
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-03-05 3:03 p.m., Mauro Ziliani
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:F6AFEDD2-BAA7-4D1E-949F-AB0DF8FA7DE8@getmailspring.com">
      
      <div>Hi all</div>
      <div>I'm looking for a memory track to investigate how many memory
        my application needs.</div>
      <div>The application di made with Qt/Qml 5.6 over a Krogoth on
        Imx6dl board.</div>
      <br>
      <div>Do you have some suggestion?</div>
      <br>
      <div>I'd initialize the library in the main()</div>
      <div>Then I run some function to get&nbsp; the memory consumption</div>
    </blockquote>
    <p>glibc has mallinfo:<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/8335402/how-to-find-how-much-memory-is-actually-used-up-by-a-malloc-call">https://stackoverflow.com/questions/8335402/how-to-find-how-much-memory-is-actually-used-up-by-a-malloc-call</a><br>
    </p>
    <blockquote type="cite" cite="mid:F6AFEDD2-BAA7-4D1E-949F-AB0DF8FA7DE8@getmailspring.com"><br>
      <div>I try valgrind but it is too heavy for the poor imx</div>
    </blockquote>
    <p><br>
    </p>
    <p>Yep, it's a beast!</p>
    <p>There are lighter memory debuggers such as the AddresssSanitizer:</p>
    <p><a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/47251533/memory-address-sanitizer-vs-valgrind">https://stackoverflow.com/questions/47251533/memory-address-sanitizer-vs-valgrind</a></p>
    <p>which links to a small wiki: Address Sanitizer Comparison Of
      Memory Tools<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/google/sanitizers/wiki/AddressSanitizerComparisonOfMemoryTools">https://github.com/google/sanitizers/wiki/AddressSanitizerComparisonOfMemoryTools</a></p>
    <p><br>
    </p>
    <p>Let us know if either of those approaches work for you.<br>
    </p>
    <p>Good luck,<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:F6AFEDD2-BAA7-4D1E-949F-AB0DF8FA7DE8@getmailspring.com"><br>
      <div>Thanks all</div>
      <br>
      <div>MZ</div>
      <br>
      <div><signature id="initial">
          <div>
            <div>Sent from <a href="https://getmailspring.com/" moz-do-not-send="true">Mailspring</a>, the best free
              email app for work</div>
          </div>
        </signature></div>
      <br>
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

--------------39F5A0214CCE904835569A12--
