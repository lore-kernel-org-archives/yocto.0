Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.78])
 by mx.groups.io with SMTP id smtpd.web10.19302.1604525045066845696
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 13:24:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=LiHGqvyi;
 spf=pass (domain: windriver.com, ip: 40.107.236.78, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gk2K/vXnRrv1C7RmropwferVWv8Uu0IKP25F38Nu2neFvYJkDv0ZH6Abm+SRnM5C51Oql2HVI63qI4x8wWn/4UDiTimXsmS+eWvrvj7JgSe6DA0QdiufTt8fpbHjWsCtsj+duK15OCWfrQhHacBGM9WaJHILxv6dqo9xZYEGLnSafyrceNuV/31+EPWbScCig5RldOV5BTTDzv17hEuEyPdFZ9wBypeGZRxvolcIZ+qiF31F42Y6ko0EVFfmYtrEqnpKvDQXTOUzO51549VHsCkQux8Pc6NR51YmSUDFvyuAPYo28kCq2yQiX2XkfQtlov1X8DsdbMdmExFBQeX+kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kp/P6xXUv9XEkP+dM8jLRe/bGhovVBBdQ6gAK/nAk2c=;
 b=MxJU+8DG3cotOMysAOLS8arcvNWZcCrag2m1PyM8Rz6vVGotvRt+A5Bp50w7mf7u6NN21lTrKFHNYVHZUgnZNVh/esanvcYC+6NFKqgWeKnxMxtBH4Wkhi0SouaRwfsCZrzvuKwsVhlb/yYReEaW4W9P9lXdFFP/vWTJv5J54cY0RxBf1WTGK5NzUgrJHIvsyWBMpAClWXgT292b2JPJU2QrYCweojn5G3jdEfy+rerVH7Wi5htfkeF1/TieeTMltLiG93LDknwrixZElDp4tY+xM5ndJrnpVdAHnUdb7yJhC5qxhu8aCVQMgn3eBvAqExLB52WQhBh66N4UMGhQQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kp/P6xXUv9XEkP+dM8jLRe/bGhovVBBdQ6gAK/nAk2c=;
 b=LiHGqvyiqPi+SlRCYrsMn93hjAnA4OBAOvYKcVzgRXXv69hRN/ZJ3FXVuki3h/Ynq3WEegaM4pHPGMayQCIIIRyqoztkzNH27BRcsQJ+JB6L0xathwSG1949D5uiOVXheR/Hy8mibQehzmAdsIuCSpLnaymD+KUGWQfU1RaY0wY=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN6PR1101MB2195.namprd11.prod.outlook.com
 (2603:10b6:405:5a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.22; Wed, 4 Nov
 2020 21:24:03 +0000
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f%11]) with mapi id 15.20.3499.032; Wed, 4 Nov 2020
 21:24:03 +0000
Subject: Re: [yocto] Reproducible builds and RPM packages
To: Anders Montonen <Anders.Montonen@iki.fi>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <11326493-aab5-655d-9ade-d485e0c1c710@windriver.com>
Date: Wed, 4 Nov 2020 16:23:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:a03:331::24) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0079.namprd03.prod.outlook.com (2603:10b6:a03:331::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.19 via Frontend Transport; Wed, 4 Nov 2020 21:24:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0eac37ca-5d4c-4b4d-9324-08d88107f3cb
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2195:
X-Microsoft-Antispam-PRVS: 
	<BN6PR1101MB21958D48D12B56D3D04D9647F8EF0@BN6PR1101MB2195.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VjFK7M+LvDM1PZ7oX3nb4R7ROF57oJPk2D9r/G/w2QBgv2zHx6/j2ePXrd1+NTr7BKCPe7ygX/gYPvA2cmKULZgVBuYTWmD8Nbd/GrxoZb3NTn6vkLn/gWw2kyJEBxMTBnI2QlstX9X1FoCVK/6aFwHbE062QMsmA76W9n9KntTXfeYu438KLL5ym5REywmIY6Os6xgf+Zc8ozBxUjPf/+E/siQYPRmUlU8Pn0Sp0msBEQep0xrSjHRn+KFkxzBatDS8byUpi5GyuTCYHb3shDy2Wa0L21Ch9FBorC5IqXsBORuKOVv9F6ZxnlmMQHQT1ZGkS7LiQY5CypxV895cKn6/2q2mQCMa4NzmyccBB36GirYOa+LLH4aD1MAsH0Hc07V59TDVWMRP3xVsUtTXl9YCOeE0YZ1SDWBVxL32lovolnoyV9MsD9qEhnwKYfUbC51ULHBwplk/+s5ht5EXGQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(376002)(346002)(36756003)(966005)(5660300002)(33964004)(16576012)(110136005)(31686004)(66946007)(8936002)(166002)(52116002)(6486002)(186003)(2906002)(6666004)(16526019)(86362001)(26005)(66556008)(316002)(66476007)(478600001)(15188445003)(53546011)(31696002)(8676002)(2616005)(956004)(83380400001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	0pQ724W9+JlekpIk96zMo4rR5HNbcMAZ7ik75+Z1cYqefdywchjEeUGzhSXdsA/uO1BenhkelwF+t3PF6alLJrts8Tx4z3mbRLTLBnDg2IfjTJYXE8dxVBiR6z3Lzn73XntAMu/PkryDNfAHZKNoT6IC4r9AfvfvNy0h7xqyjt0FASH6y+udjzTjR9XfF2Lh7uQQG6iZrMPqBg4uiTRgXuyZlycNrBQh2HtRHnqEAU/UxBFg7TaE64weY97NLoe/cYdtJrFfBLwBEEdDI1R7qrXQ8e6sfw/tBVIepqIqgO3V13g88NmouU6wQZYHwmcJZcy8jZhiePL7vKPhbVOCIhSEdAhJ2buFGWgyVXNw2cheDMW+WJmEgDGHh9AsD4ZmFc/U5N/iymR9rRR1C+YaWjzaIhlv9RkuWxWo4CE1keBETJw8jo+uaXxUvhKLRwzvAK4OqN2ZCUHT7GJNLNLkCIcvtk+4ERaB2ZPbS4ekN9Y5zrv/oDvzj+yQ1nB3xytsxOIzPa69iK06vJSTl/6q3Bj+YA30il5Vu1WPXPMgiHxG9ywJ91EtkB9n2co3jcfC7phOcGMHgZvj/uGQqrIPW+DuszPw/ysvHvcsycP6yY0eFYDg/k3rB77SlaDsOCj75a0ZgT5NjMvpy0jhLNVGbw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eac37ca-5d4c-4b4d-9324-08d88107f3cb
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 21:24:02.9763
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EXsGCte1KETfH182z90Zu0JPgiv9ExvUUerIpmNuk6Xh7G+GelhfBWboeNJt/rwT6OmTo5tRV6ztnPPKcXZDdbI6qYj2DDxmFXGzpIR4szQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2195
Content-Type: multipart/alternative;
 boundary="------------2F14B33832755FE367CA7CE3"
Content-Language: en-CA

--------------2F14B33832755FE367CA7CE3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-11-03 6:16 a.m., Anders Montonen wrote:
> Hi,
>
> When going from Zeus to Dunfell, I noticed that all files on the 
> rootfs had timestamps long in the past, which I assume is from 
> reproducible builds now being on by default. While that is a good 
> thing, running “rpm -V” on any installed package now reports that the 
> mtime differs. Is this the intentional behavior?

Hi Anders,

I haven't played with that for a while but I'm pretty sure the answer is 
yes, it's intentional.

You can read about reproducible builds here:
    https://wiki.yoctoproject.org/wiki/Reproducible_Builds
and compare to the source if needed:
https://git.openembedded.org/openembedded-core/tree/meta/classes/reproducible_build.bbclass?id=189630ca6cdf7ceb6cf9b8f9d86c58997f505efc&h=dunfell

I don't see it in the documentation yet:
http://docs.yoctoproject.org/search.html?q=reproducible&check_keywords=yes&area=default

but I didn't do more than skim those search results.

If you also can't find it in the docs, would you be able to make a first 
draft of that and contribute to the project?

If so please read and ask for guidance on: docs@lists.yoctoproject.org

Thanks,

../Randy

>
> Regards,
> Anders Montonen
>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------2F14B33832755FE367CA7CE3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-11-03 6:16 a.m., Anders
      Montonen wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi">
      
      <div class="BodyFragment"><font size="2"><span style="font-size:11pt;">
            <div class="PlainText">Hi,<br>
              <br>
              When going from Zeus to Dunfell, I noticed that all files
              on the rootfs had timestamps long in the past, which I
              assume is from reproducible builds now being on by
              default. While that is a good thing, running “rpm -V” on
              any installed package now reports that the mtime differs.
              Is this the intentional behavior?<br>
            </div>
          </span></font></div>
    </blockquote>
    <p>Hi Anders,<br>
    </p>
    <p><font size="2">I haven't played with that for a while but I'm
        pretty sure the answer is yes, it's intentional.</font></p>
    <p><font size="2">You can read about </font><font size="2">reproducible
        builds here:</font><br>
      &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Reproducible_Builds">https://wiki.yoctoproject.org/wiki/Reproducible_Builds</a><br>
      and compare to the source if needed:<br>
      &nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/tree/meta/classes/reproducible_build.bbclass?id=189630ca6cdf7ceb6cf9b8f9d86c58997f505efc&amp;h=dunfell">https://git.openembedded.org/openembedded-core/tree/meta/classes/reproducible_build.bbclass?id=189630ca6cdf7ceb6cf9b8f9d86c58997f505efc&amp;h=dunfell</a></p>
    <p>I don't see it in the documentation yet:<br>
      &nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="http://docs.yoctoproject.org/search.html?q=reproducible&amp;check_keywords=yes&amp;area=default">http://docs.yoctoproject.org/search.html?q=reproducible&amp;check_keywords=yes&amp;area=default</a></p>
    <p>but I didn't do more than skim those search results.<br>
    </p>
    <p>If you also can't find it in the docs, would you be able to make
      a first draft of that and contribute to the project?</p>
    <p>If so please read and ask for guidance on:
      <a class="moz-txt-link-abbreviated" href="mailto:docs@lists.yoctoproject.org">docs@lists.yoctoproject.org</a></p>
    <p>Thanks,</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi">
      <div class="BodyFragment"><font size="2"><span style="font-size:11pt;">
            <div class="PlainText">
              <br>
              Regards,<br>
              Anders Montonen</div>
          </span></font></div>
      <div class="BodyFragment"><font size="2"><span style="font-size:11pt;">
            <div class="PlainText"><br>
              <br>
              <br>
            </div>
          </span></font></div>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------2F14B33832755FE367CA7CE3--
