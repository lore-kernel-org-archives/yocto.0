Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.56])
 by mx.groups.io with SMTP id smtpd.web12.10657.1612542437418648355
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 08:27:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=SrkNNjrc;
 spf=pass (domain: windriver.com, ip: 40.107.92.56, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jdDXZzEs79WE7n2BvHtH4c2rNubZoGTvIDtsDUFt4siTxq5zRk+aeH1d6LzXllIWXlnYu0+mYyCshn6F4AnFDCY/qxel3xMfpIl5lyl6iKjy0iGpe1mbNp5t/doh7LSLwqfl/h2BIGozmxNoFXiIcB72a8HdLlRWNIzf6FwX7vQXW5fOkBaXuIGxLMn8YgfqesMybsSiyNwuVqe+TUqtdXMeCzaNRSUvfNsF5+vdE3yBw8iLNH8tJeoHYPEi74QZpN9bD67JakNfdma7+nZsrOxuXA5OsYm8eZ+8wQr4HUOK6AVuK3rhrSrAGocqHxjqcQV6jbm6h6wHhv+EtLizOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQXs+pQwSpk964ZGWAO3Cr0tSJZVyddcSCs/wN27LDY=;
 b=NWuHnSiGRipVL68oJJeZJNUHsurxaTBlq5NX0FH9rtwz3xUYwBrgcd7QNM+1QTwjEbVBPuhjAR9pfEclBvq/8prAq2sm+uxiC42YiJqXrpxxmXci8ZAMQWnHH2XTTZ6+5DuIoHO+aB5/D8o1tT0lX2qk3ndo5C9FNFqrrv7wfEFOISiLDn9ZqYpjMS+q72WbtIDICOS6IFgxKxLi5rsQRZzDt1EPSxmVSnCFgTIemDetdb+RkIzsQI7JEkRYWSrBGQz2I2OBV+v5mFk17nuj2vWIMltW4pwbYoM8OXbMxUnusoc2y9eCbNn1o2ocxthLVyvvHPkJpmAYEOJ8zfxpMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQXs+pQwSpk964ZGWAO3Cr0tSJZVyddcSCs/wN27LDY=;
 b=SrkNNjrcBuicAEfoqQG+wjH04Y7n611w0pYHK1q+d8wo/lWH9Pc8TwB5yWaABgl8uUXl/XEzbAqH3yvJ2qaOqSNbkTHkkJBgF6XuddZNKtuJj6tKIfw6qOhYNzug1NoCuwYb+3hzhu8eTJDfj4FkaFJ5nYzv5otIt6VOz5MkyvA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB2815.namprd11.prod.outlook.com (2603:10b6:805:62::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Fri, 5 Feb
 2021 16:27:15 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3%7]) with mapi id 15.20.3805.027; Fri, 5 Feb 2021
 16:27:14 +0000
Subject: Re: [yocto] #yocto CORE_IMAGE_EXTRA_INSTALL Where can I find a list of valid package names?
To: Quentin Schulz <quentin.schulz@streamunlimited.com>,
 David Babich <ddbabich@bootseeds.com>
Cc: Josef Holzmayr <jester@theyoctojester.info>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <45bT.1612391155068335774.AQwA@lists.yoctoproject.org>
 <CAEt6NwoJjfE5Xvt0TtuDj8u9KOpuNpUV2Jf2y1ge1M+EJtwx-Q@mail.gmail.com>
 <CAK1D6_7ZDcFp2MrmQ1kAXd2nnuep9TbVFauuaO5-3aAkHkHN5w@mail.gmail.com>
 <20210204093611.jt44z5xsrdfja4dn@qschulz>
From: "Yi Fan Yu" <yifan.yu@windriver.com>
Message-ID: <41e5181e-21c5-b2a0-8c52-841c3d9afbe6@windriver.com>
Date: Fri, 5 Feb 2021 11:27:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20210204093611.jt44z5xsrdfja4dn@qschulz>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: MN2PR10CA0009.namprd10.prod.outlook.com
 (2603:10b6:208:120::22) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by MN2PR10CA0009.namprd10.prod.outlook.com (2603:10b6:208:120::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17 via Frontend Transport; Fri, 5 Feb 2021 16:27:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 31b628f5-1b31-47e8-5aab-08d8c9f2e5be
X-MS-TrafficTypeDiagnostic: SN6PR11MB2815:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB2815EFE9E3EF6AD3300E2FF080B29@SN6PR11MB2815.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xWUsippkFG4T/gLz3wsPPaO2UBFRJd4vNK2or47eUPpAmYsf6V9XlQVr0Cez7T9Y4t+bb2dTEu5v0HU9v7cGaHEfqgMGQ8dyyIh9Ot20gqlDE44ZV+E4TzOOKmQ35QOY+CPJzD6mW6PZfGMqbBScPTOuDsVdOdnaotdeMAsbJLZW0GEjeL62KDL/xWP7ciJKUmh6GFS8fOISstgZYH8igXDL9b52+nxKyrbROtli/fZmxQVaR0tqfTXqxZ/owiokXZtitp+1F5Ccl9DoUjAcJHcKfVcCKq33EGsU7NAjBmSytAlUG4l5dEVZelxAbp/7XBYWqMBIabUyLPnWzMny38rQWhmCN3kO3zOlXUL+VxSJlo/oLwJRYcChbI146poL+GrHwMo4qusDnQHGxNp1ErX4di0y4unFQcI1I8Clg7Uy4HjGmJI9qycQl0hPmN0m+V5K1zT8ZjaqP2KPVeywwxTSY4DTwDNrg2NORQi/xcei3RJZnsW+03ME81bGPCpom9CiLiHRHFge942bOKnkwA3jk9xpuR5lfiPeVUJsqv5fl0rBkOBi6vOoAE6MTverwpZof+ZLqgv11BPW518EZjduYA8Xi6HxqANmsBaZ0jf4mmhqXy6whT448MM8yHmNDCZ2Ih5dmHwBNMUvP9XXrYrVx7DwPbidtld/sW/+fekfC8d5qTwa8UcfB02zSSycJeMzl04fBeWsWe56dIIGIg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(366004)(39840400004)(136003)(346002)(166002)(4326008)(16576012)(36756003)(31696002)(83380400001)(52116002)(86362001)(8676002)(316002)(16526019)(66476007)(2906002)(6486002)(2616005)(53546011)(966005)(956004)(26005)(33964004)(5660300002)(186003)(54906003)(110136005)(31686004)(66556008)(8936002)(478600001)(66946007)(21314003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?bjRiQ0hPY0xmMG5UWjFKbWtLUmw3NmFrVzRXaE04M29VamFydkFQbXBqUCtx?=
 =?utf-8?B?bnJVb2s0b0dlZnN5Y1JseUY0bGpiUk5abGM0Mk82K0NHTzBaMDhOK283YStE?=
 =?utf-8?B?UUlNQ0pBN25SYy9HZlZmYlVvdEhnSnBJQysyK3RobThGMGVhUnBhWWVQRzJr?=
 =?utf-8?B?dW9qVmtES09CWXBnWlhPYytsRGxqeDVaSlpBN1NqeHJ1ckZic2xaMW14bXlV?=
 =?utf-8?B?ZmRneVBDTTVOM0dzRnM5cUowaTgzWEwydXN5aCtobXo2R2pHOHpaRmVXNGtm?=
 =?utf-8?B?UGhmcUZGcDRKd2N2QXhHUS9xWG4vYUt6N1J3Z3VBTmxNNDFGeDVFQ0RweVY0?=
 =?utf-8?B?b09CeWZZaENxT3lNT3F0SDlOaFJQV0JKd1pJdFFjTlB4aGpsRjZGZmJheGZi?=
 =?utf-8?B?SEtpcmRUcjNqaytwS2RzemtocDFNSEc3eDQwWWZudVNsR24yWGtNV2N0Wlph?=
 =?utf-8?B?ZklhcUpFV0FteEhjN0cvZUZMQis0U2JYK3dKNHRSU0NaclNlOCtkK2xvcGk0?=
 =?utf-8?B?dE04ejlLbW9hZVFxSlZzR2t2K3VHOG55OTB6Y2lHeTlVbjVBSFoybE52azJQ?=
 =?utf-8?B?L0t3dzZFT3dmT2JEZHlVVTYzTFVCdmdsbUN3N2NHR2F2ZEtWcE9PRGVGb3hs?=
 =?utf-8?B?QzA5N0xLUGxLbXJWdFh1UFlCRWdPWi9vaGtTcitpVVl3aEg4UXEyYkZzK0or?=
 =?utf-8?B?TDZIODlyU1JiMW90NWtFNzJ5VDlFQ3dhYlFHYlc2dkFTNGRxc0pLeVI1SUVI?=
 =?utf-8?B?YklLSWUxR2ExRi96MlZKbjhtY1Y0MC9EcTYwYUV1eSs2WnU0VmZ6QXBxRlJM?=
 =?utf-8?B?NVVJVWxPYUFnNWJ3V2x2MjhQRWsxNlpINGJ1cENtN3BoZUlWY3FSTkhNYXdX?=
 =?utf-8?B?NTFuZjBON1lQZzNaYmN1Q0ZXeDc3dUd3aGNuME85WFM3UVF6UEMrejhNY2lL?=
 =?utf-8?B?TDVka2N1Y0R1U1FHNEc3YzFwZVpvaWJCQnI4dldGaTAxTTFscWd0aU5oUm5H?=
 =?utf-8?B?TFVkRDRLc1BJemFTKzdJYW15SmRaNzkybDJNMHVmdlVJZnVKc3puQTRaNFR1?=
 =?utf-8?B?Q0dHSTBDUEhFRThTQThsaG9qY1RBcDd1amFZZTFWd25ONmZnMXU2QXBPNWFI?=
 =?utf-8?B?bFpNZnFxajJZZlZ4emliblZ6aTBtZ2JXcXNwWENYbE9rbnFLWW5LZkVEb0Z5?=
 =?utf-8?B?ekNvUDRxTFgzdlZoQ3JTY285NUEvVlZOVmpHTlpGRVhseE1WZVhGaWxKeklm?=
 =?utf-8?B?NnVZeEtVRGJEMmlnRTdNaVFMQklpUHQrcGJ3N0lVK0Q0V1BaWE16czJla2xT?=
 =?utf-8?B?TTA5U25mNXBia3pqenkraFJuU28xUnl4aExERzYwTE93K2FEWEk2OVVjb3pU?=
 =?utf-8?B?WlZQcEpvQUNhd3l2YVlTTFlUZ0NJVFZTVC9BN1hHUFVhL1ZtRTlyditrWHJK?=
 =?utf-8?B?WFBCUEdkMmJvUFFGMlB5cmpuVlRMcStNQkdmNXNxbm1RcUVnejZkZkZkTnNE?=
 =?utf-8?B?M2JydjZVTHAwMXZhQzlIWldjYjQ5cHBwRnR3RFZLU2sxRy9yZWQwVTQ5UU1p?=
 =?utf-8?B?KzlBTW05NTRVQTQyK1JkYzVKek9kQ0lxRzEzeW0zQWpjb29wd1MrV1k3OEpa?=
 =?utf-8?B?SVZ1QWgwTkVIRGxsLzF6dUZ6N09SOVBMYzhpcWI3clc3MHVTdjBSelYwUytX?=
 =?utf-8?B?d1BaZyszMk95ME5ub0dsVjJGa3hWMTNHajg0S1RZaFNNeXEvd2VOVTZFbm5X?=
 =?utf-8?Q?SbPQJW57JIi5eEUF8EsWxS8yUDDXnQV5ZSf5mV0?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b628f5-1b31-47e8-5aab-08d8c9f2e5be
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2021 16:27:14.8692
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hAqQ03Gv2p5FG53zjol7tby+ZhMoBAfBJBpdtx5kfXd2BfDwVADdEXgHXGj0tfymLlV2gxs3DpU7j19V7Had4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2815
Content-Type: multipart/alternative;
 boundary="------------451F5A06A98C1EBBFD794453"
Content-Language: en-US

--------------451F5A06A98C1EBBFD794453
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

new here, pointing out of the obvious? website

https://layers.openembedded.org/


On 2/4/21 4:36 AM, Quentin Schulz wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> Hi David,
>
> On Thu, Feb 04, 2021 at 01:24:35AM -0700, David Babich wrote:
>> Thanks for that reply.  I actually deleted my message from the forum post
>> because I thought maybe I hadn't dug through things enough and perhaps I
>> was wasting people's time.  But I think you provided some validation to my
>> question.  I'm more used to the typical ncurses method of configuration of
>> the old days with a kernel config a rootfs config etc.   I will try your
>> suggested command.  But I'm wondering are the names typical of what I might
>> expect if I were to do something like "sudo apt-get install <whatever>"
> Not always. E.g. debian packages are renamed if they only have a library
> in it to be the name of said library. This does not happen for rpm and
> opkg. Note: this is a vague memory, I don't use de packages in Yocto so
> to be taken with a grain of salt.
>
>> (which is somewhat of an experience thing) or do I just simply need to dig
>> around on web searches to find out what the actual name is.  I've found
> Not web searches. Basically, one would need to identify the recipe
> building the software in the package you want to find.
>  From there, you can read the list of packages in PACKAGES (sometimes,
> like for gstreamer plugins for example, it is dynamically set so you
> won't be able to find them by just reading the recipe (though you can
> more or less guess them)).
>
> To know what's inside one of the packages without baking the recipe, one
> would need to have a look at the FILES_${PN}<-xxx> variables.
>
> It's therefore mostly knowledge and trial and errors as Josef said.
>
> The difficulty for the Yocto project to compile a list of packages and
> which recipe build them is that packages can depend on configuration
> files (machines, distros, ...). Sometimes they do appear, sometimes not.
> Sometimes a package for a distro contains more than a package for
> another distro while having the same name.
>
> Which is also a reason why ncurses/menuconfig would be hard for Yocto
> Project, because content of packages are not guaranteed to be identical
> between machines and distros, so it'd be hard to give descriptions of
> options to select.
>
> Hope this helps,
> Quentin
>
> 
>

--------------451F5A06A98C1EBBFD794453
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><font size="+1">new here, pointing out of the obvious? website</font></p>
    <p><font size="+1"><a class="moz-txt-link-freetext" href="https://layers.openembedded.org/">https://layers.openembedded.org/</a></font></p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/4/21 4:36 AM, Quentin Schulz
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20210204093611.jt44z5xsrdfja4dn@qschulz">
      <pre class="moz-quote-pre" wrap="">[Please note: This e-mail is from an EXTERNAL e-mail address]

Hi David,

On Thu, Feb 04, 2021 at 01:24:35AM -0700, David Babich wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Thanks for that reply.  I actually deleted my message from the forum post
because I thought maybe I hadn't dug through things enough and perhaps I
was wasting people's time.  But I think you provided some validation to my
question.  I'm more used to the typical ncurses method of configuration of
the old days with a kernel config a rootfs config etc.   I will try your
suggested command.  But I'm wondering are the names typical of what I might
expect if I were to do something like &quot;sudo apt-get install &lt;whatever&gt;&quot;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Not always. E.g. debian packages are renamed if they only have a library
in it to be the name of said library. This does not happen for rpm and
opkg. Note: this is a vague memory, I don't use de packages in Yocto so
to be taken with a grain of salt.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">(which is somewhat of an experience thing) or do I just simply need to dig
around on web searches to find out what the actual name is.  I've found
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Not web searches. Basically, one would need to identify the recipe
building the software in the package you want to find.
From there, you can read the list of packages in PACKAGES (sometimes,
like for gstreamer plugins for example, it is dynamically set so you
won't be able to find them by just reading the recipe (though you can
more or less guess them)).

To know what's inside one of the packages without baking the recipe, one
would need to have a look at the FILES_${PN}&lt;-xxx&gt; variables.

It's therefore mostly knowledge and trial and errors as Josef said.

The difficulty for the Yocto project to compile a list of packages and
which recipe build them is that packages can depend on configuration
files (machines, distros, ...). Sometimes they do appear, sometimes not.
Sometimes a package for a distro contains more than a package for
another distro while having the same name.

Which is also a reason why ncurses/menuconfig would be hard for Yocto
Project, because content of packages are not guaranteed to be identical
between machines and distros, so it'd be hard to give descriptions of
options to select.

Hope this helps,
Quentin
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------451F5A06A98C1EBBFD794453--
