Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.81])
 by mx.groups.io with SMTP id smtpd.web12.16456.1602257140607190860
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 08:25:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OOItbvHn;
 spf=pass (domain: windriver.com, ip: 40.107.237.81, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mG+ATN8lDBLO0F0gGMIWRuyr1sT1/a5IawSBUuUHmNosr+m8WA4dtLH1Dob3814O6EeuVjxVONytF4L/JMcVAWO7L+UFllWCpz2UIjqL+syKlYRC4C5r8JnT93nPjfNkyGhjl/UypxjGVybNQ0saTL+h/IqpPcE9Z8QnGN6M/TKbu8HmZGFO4ZDchpZBPK+6XusVKFAkySbmSoujBVe6NhDmMeC1f8evIuo0R3XfHzPQr0a0EL2RIG42ISp1a3XR0jTAM6Sd21Z+v0fyZzuvkfHCpIse1sXfkirh6sG4R3WOQVI38PaCJAtZCv4WcyffVY2YtuLZ/og2PdvBES/qBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY3A/I/E572sGWaTycScDNr4+5BdqiiWpHHf2x/asN0=;
 b=OabH94d4gOhxV7NUbUmgtYwt/NGbOYcBBpSeaLMl02AZ8TFhE4qazdOidk++s2gUE3ltT3E9WkH0ae5G9iYoxV3ljnPHwqZ0TelERx6ILqImUVijoyINLJ0TYFZW9PPXBqr7RqwUgDgFYfEoBz5dE1jWzGHJPG9wrVjFfh6ZKIm8sFXFk8K6HghRji/WyvFV/r/vWJEua/eI9sTDxrprL5qYoHnnh2taXoQ3JfglRLuprCbyCAV7S3kouahNVHJV3vZ2dABoD/FeDoQ+paiyykI5UQBuDvIgDQ7C3gaNfgy83oZ0RSWS5ZzloH64gTnNNIIz50GObwCC2k/8FvZpXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY3A/I/E572sGWaTycScDNr4+5BdqiiWpHHf2x/asN0=;
 b=OOItbvHnI+8RDUu3QxDEFIDVgEk6RinAxQEA0U4cenKlUKjfqjypeYN6AZwtPo3ADrgN5ei4zoEOXeMNdzAioNgTV2VfpuPkBkMz0n7vIhnMcdWDzhJ6gLA3V+zGy5BZXqLCyZ8L1iHxLbgbW/mpBSpFeaTZfU14RXNGHVF0NuQ=
Authentication-Results: bluelightning.org; dkim=none (message not signed)
 header.d=none;bluelightning.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SN6PR11MB2752.namprd11.prod.outlook.com (2603:10b6:805:59::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Fri, 9 Oct
 2020 15:25:39 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3433.046; Fri, 9 Oct 2020
 15:25:38 +0000
Subject: Re: [yocto] Bug 10699 - Ensure consistency in repository URLs #yocto #python
To: akhilathota499@gmail.com, yocto@lists.yoctoproject.org,
 bluelightning@bluelightning.org
References: <P0Lg.1602187991583242378.u0pz@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <0fd65868-c4da-5783-3768-0156e2a0b12e@windriver.com>
Date: Fri, 9 Oct 2020 11:25:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <P0Lg.1602187991583242378.u0pz@lists.yoctoproject.org>
X-Originating-IP: [23.233.84.124]
X-ClientProxiedBy: YQXPR0101CA0059.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:14::36) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.29.12] (23.233.84.124) by YQXPR0101CA0059.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c00:14::36) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21 via Frontend Transport; Fri, 9 Oct 2020 15:25:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7fd16818-4e1c-469f-3f06-08d86c679308
X-MS-TrafficTypeDiagnostic: SN6PR11MB2752:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB27521267083ACAA102CB38F4F8080@SN6PR11MB2752.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	d2acwFJCbpTp7FDoKXslJwjS9Gmy247IJQ/vAUepe55ROTBg/MRJa78BJKCxgFov91BoxBfnT+yBzLr7YM+rBhpdi6hrgGfzGE2LDQraAF5a/12SkX6VHPo9VHR62kDBWpGh15hzR8pz59zOOgBW0WxbRWLakt0TitgXoMVbTZQHY23AiC/NnqnkbE9xNV3cvJBhkIQh9Phx8/UhWhZJ2gDajxTmW3MFwEa164MlPL+Ut05ff2DLjYxrhApAn0JSUhxbKKcZItXfkTV2JbdsXXqbOmDTJ/jn1YZYpyjc/PdsGiSGNj6Vh3jlr6pAL13wVSB31kBlbUOI2agw1mizJGJxYvIk8MgEaWUbO7+RhpqW0YwuYQizn625Odd/K61hAvWC9k1dCT8SMqTLcaBZCTH81ZEu4rJRUD6sWd107jr3/Lla6WcozPNp6lWwWbP0d7OzT7s08B0cT/HBoeVdsg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39850400004)(136003)(366004)(66946007)(83380400001)(36756003)(66556008)(16526019)(5660300002)(956004)(2616005)(53546011)(186003)(26005)(2906002)(31686004)(31696002)(16576012)(66476007)(966005)(316002)(6666004)(8676002)(478600001)(6486002)(52116002)(83080400001)(8936002)(86362001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	YXC+zBBpx1b+DNNeIrDw2q6wEf9PAtKm50u3cGdpVqBC6KwGUPDxID7wobyWFuGl/I1iu38ttyhxJJkgJVrh7zFrDN4E4OEFsFFeKa0Eb9oK+Z37ZVe8fxD20QqwHuYzu8taHxqRB7m6+XIEUVg98spr4u4vcDKe702EDuA+u4IyrzEC9aTOpgzUX8d0rRNmSjs42AyYNPBAgdSD5IH9MUwgiHLYrJ+kAG/ycqVu0FzadZkr4+jYuaqghxIRRt/F1r6lt+J1lSf3Dh9ERg0idNXDiyoEjI56xlbZE1mGL0jkwZJDOcPhS1KCweVZoqSNnQ+bNzvlmxZVtiZ6HsT5z31IzRvVyvJNAjjn5HorzITDjgALEVLwmpTAxjNijTvwyvi430m0iy800nlyWmsgQWtwlmuNyLvP0/gQ3Ji5g9M1xj8fUBDOdKKXMkYL1V9a9mVyfXCP/vpiXfe8lVBUZyUQRDTpRQOvRkejmWR+wOd6yc2nI+uNIq9MvvcRtviXl6mozqmrcLc5hHR2Rq8QHPvARJbiuQ11FpLbjyX/cUX4PE2Tzw+hwmZQlrju0GmEAJONvXFE4CkIQO4lHiO0Oj5NUJubHNe8j2blEhvoUrGq3bNXI9zNfBcYcYFRZM/ENn7raqLJPFXaUZJMWpMvqQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fd16818-4e1c-469f-3f06-08d86c679308
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2020 15:25:37.9256
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bYK8c565CZktKw9jlODW5m8B4PqYkcHWiAy7rWPfkv2LZ3ZHIiY/N0ufV7xEzgGyRmzpyn1PuDs5sv9S0AycIDvxm2oHkSnfyYCkWIPoJh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2752
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-10-08 4:13 p.m., akhilathota499@gmail.com wrote:
> Hi,
> I would like to work on #10699 -- Ensure consistency in repository URLs 
> bug. Kindly help me to move forward by providing more information on 
> this issue(like where I can find more URL's mentioned in the request) 


Hi Akhila,

This bug is about the data in the recipes in oe-core and all layers.

There is a layer tracking system called 'the layer index':
   https://layers.openembedded.org
where you can search by various keys such as recipe name, layer name, etc.

If you go to the bottom of that page, you can find:
    https://layers.openembedded.org/layerindex/about
and that page has a link to the source code:
    http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/

git clone git://git.yoctoproject.org/layerindex-web

I don't work on this code so if you have questions, hopefully Paul 
(bluelightning) or someone else will help out. My take is that:

    "we'll probably need to have a table (possibly in the database)
     that we can populate with mappings for known URLs."
so you'll need to find where the SRC_URI such as line 8 here:
 
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/patch/patch.inc?h=master#n8

is stored in the layerindex code and add each SRC_URI to a table or
some other data structure.

Then, when a new layer is added the layerindex would use this table
to ensure that there are no duplicates that differ only by
the transport, i.e. "https://" vs "git://", as mentioned in the bug:
    "The mapping would be done when the entry is submitted."

Also, there are no fixed rules here in Yocto land but you are free to
ask about things either on the list to a wide audience or in the
Bugzilla comments (once you have an account!).

 > and kindly assign it to me.

If you create an account in the bugzilla:
    https://bugzilla.yoctoproject.org/createaccount.cgi
you should be able to assign the defect to yourself.
Let us know if that doesn't work.

Thanks for looking into this bug.

../Randy


> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
