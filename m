Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.92.89.71])
 by mx.groups.io with SMTP id smtpd.web12.4832.1585253359625665485
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 13:09:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=XBvoVE7m;
 spf=pass (domain: outlook.com, ip: 40.92.89.71, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TK+YxdBhnkwlaI115nehZL7GRXcU7G31A3FrB+SrYF1q8hdEqyQvx8wslKH3TdNbXC9xXKe+E5lB/lC4psu0pSwoSifZdk/CATZnGpKqMlYTmn6weHHlSx6+50QaJYTCAAz5Syapx9gbtouimKLesGfFISWGIS7ZO2hj+Z4v+a5l0rDASjrPaIZIvDQ2SuVq+OlUzOMip7b6vyigPALFwINDuD3sJ+agH5C3ezvKu5Dkup/SkMMFgTIwCzVeLPZjavvlrFGW2UkEXLFPlv93dVlAPcuJjQNnvAr37KoJ+jw8cE3sm22JLBXcMMsmLKp+aRDlfkMfMEYBDajzQNCw7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nc7dd7xVoxtAQw5XHvGIJvl0luuq1KjpIQa6LK/nkiw=;
 b=Jghg47sjbYprnPA8AvHn5CuAIELXlXrnUa5MHxDZM0FBetm9ddjFMmF3lj85Virk/LnLnWN4En1eQhmDwKozRZ9to5mHBd6/QJB3rS2mUbA9wjWABHGxDnnFdlt5eCgGEysVsDvzR+y5NdhN68zRqI2HPJ57rX7x3IQEyFOnBungOS6fNnr/qrNh6L62ABkGS8IlCGcQp4k3rzbO9oH5OVcp/nWnm3mfcuemcS3w4HILvAH9N9qFmRXa+XuESCC8qOJYwNlwKwnRGcZB268AeXqEn8Kfl1riiIRFt2O3m86ya3sWRO5ONSebm8kCO0fhOH4AESSfwAP01nx+71k0dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nc7dd7xVoxtAQw5XHvGIJvl0luuq1KjpIQa6LK/nkiw=;
 b=XBvoVE7mLj0IkUVPR88JvOZwHQ88DiN5nNuekLmpUaNNufktuBEpUnOB1ZsOyYehPGGcJuVBqE7sxB4bSd3c61CGlb2u527JbhmJfEh0JAskAAWP+1tSwYMm/AHEHMlHztD38kBqqJL3cE3DEHvornbo23ZHvJx7oL/T8RcbII2F35zcWgZuQMJFq2DuUSI/15sxeFQTUVNSwHcJeGPw5BktuFyWb0tv+T2IoHen0uPzVduwLNlFVwk5KCwImrFf6RM11ZLWEbS2qPqHLhiwVwopxyBjZ9Th5IhWGT/O4bk9FSM5mQp+ay1cHmhPeA9nNlYgInHAv2A/nHYdsvbt1Q==
Received: from AM6EUR05FT038.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc11::45) by
 AM6EUR05HT191.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc11::113)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Thu, 26 Mar
 2020 20:09:17 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.233.240.55) by
 AM6EUR05FT038.mail.protection.outlook.com (10.233.241.187) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Thu, 26 Mar 2020 20:09:17 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:EBCBAF963112126DB0E753FB653ABF5542CBED51CBCBB845CDF1B3C1AE2DCFB2;UpperCasedChecksum:CD604303417A9F83372A9B97774A90D19E84DE664D3C2460672084242DFF213A;SizeAsReceived:9056;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Thu, 26 Mar 2020
 20:09:17 +0000
Subject: Re: [yocto] Best way to mask bbappends based on Poky version to have a layer support multiple versions of Poky?
To: Matt Campbell <Mcampbell@izotope.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <CAMDowVVL9L=ScNR49vG3fnHCTiYHsp2OHLi2xTZWE-gvetDWmw@mail.gmail.com>
 <alpine.LFD.2.21.2003260954290.12282@localhost.localdomain>
 <CAMDowVUVBc8Lm_TwRDBgYgQ1gf3tbNFjKnNvCBtLfJ3FRXXFQQ@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB428674CF3EB37F1577ADFBA0A8CF0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Thu, 26 Mar 2020 21:09:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <CAMDowVUVBc8Lm_TwRDBgYgQ1gf3tbNFjKnNvCBtLfJ3FRXXFQQ@mail.gmail.com>
X-ClientProxiedBy: AM6P193CA0142.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:85::47) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <46e3832d-9174-a8f0-fe75-703c7262dd23@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.86.172) by AM6P193CA0142.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:85::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.19 via Frontend Transport; Thu, 26 Mar 2020 20:09:16 +0000
X-Microsoft-Original-Message-ID: 
 <46e3832d-9174-a8f0-fe75-703c7262dd23@outlook.com>
X-TMN: [Rn9X8bAXUIoNh9ONGH1dLSLstADrixra]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: fc721ec0-2cae-4eef-d91b-08d7d1c18fc4
X-MS-TrafficTypeDiagnostic: AM6EUR05HT191:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GuVRXCsfLSrLYSRw+xrvjoOSMX8aWmmY+8UruUbuobudksYkxggvvC9nzw6NyCHJSE6eHEVeYsLbtldUYQT6ilNI6wC9TJ0dRnFsuxHOEWv+3iXqpZ1QN6cpFjjBYndlSR8eM5gqziXfOlCNgXovAQlm2mlsKKVamcF4YApxZ6pAoqJqQzp5eurKsIkdiMK1I+RwgIdGSGjWlhycRB2c4g1ScMp09CSE7gL8VLBvOco=
X-MS-Exchange-AntiSpam-MessageData: 
	2GCfJ9tpateUXRMNcPDW+zO0yRz7c6l4tJ6GrdsVIry64xuwsJia7RLVEMcDc2gqSdfrgucHtBg3QLg+8bksleArb3yg67xDDLdHIzUB6TlOTK03nrkrgvhL0AcwR/r+9Uw3rQyTQ1MJHz3oCnoxSA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc721ec0-2cae-4eef-d91b-08d7d1c18fc4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2020 20:09:17.4496
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT191
Content-Type: multipart/alternative;
 boundary="------------365E3F6FE67A1090981D635E"
Content-Language: en-US

--------------365E3F6FE67A1090981D635E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'll get your point.
Maybe this could be a solution to your problem 
https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#var-BBVERSIONS.
Instead of having different bbappends have one and pick the right steps 
inside of the append.

If that is not working for you, you could also fake the behavior of 
BBFILES_DYNAMIC with putting the bbappend into separate subfolder, which 
than are
referenced by something like this

BBFILES += "${LAYERDIR}/dynamic-recipes/${BB_VERSION}/*.bbappend"

Regards
Konrad

On 26.03.20 20:56, Matt Campbell wrote:
> I didn't know about BB_DANGLINGAPPENDS_WARNONLY. That would mask the 
> problem, but doesn't feel like a great solution. Either way I do 
> appreciate you sharing that.
>
> Further implementation and discussion with our team brought up another 
> possible solution. We could wildcard all bbappends (_%.bbappend) and 
> use some anonymous python inside our bbappend files that will error 
> out if the package version isn't in a supported list. We could also 
> easily roll this up into a bbclass to prevent the need to duplicate 
> this everywhere.
>
> python () {
>     package_version = d.getVar("PV")
>     if  package_version is not in ['3.14", "3.15"]:
>         bb.error("This bbappend file isn't compatible with the version 
> {}. You will need to add support to this bbappend for that 
> version.".format(package_version))
> }
>
> This still seems more like we are fighting bitbake rather than working 
> with it. Does anyone have any thoughts or suggestions on this?
>
> Other upstreams seem to maintain different branches for different Poky 
> releases. That is a road we would rather avoid if possible. Our goal 
> is to be able to have an extra CI build against the version of Poky 
> under development so we can continuously fix the upgrade issues as 
> they come up rather than as a landslide when we upgrade. Making a 
> separate branch for this would mean we would need to merge all active 
> development into each branch to get the benefits of a poky next canary 
> build plan. That said, I'd love to hear about a solution that lets us 
> have our cake and eat it too.
>
> ~Matt
>
> On Thu, Mar 26, 2020 at 9:55 AM Robert P. J. Day 
> <rpjday@crashcourse.ca <mailto:rpjday@crashcourse.ca>> wrote:
>
>     On Thu, 26 Mar 2020, Matt Campbell wrote:
>
>     > HI All,
>
>     > We have a layer where we want to concurrently support two releases
>     > of Poky. There is an issue when we have bbappnds against recipes
>     > that have different versions in the two poky releases. for instance,
>     > imagine recipe foo that is version 1.0 in Zeus and 1.2 in Dunfell.
>     > If we had a bbappend in our layer `foo_1.0.bbappend` and tried to
>     > use our layer with Dunfell, bitbake will error out saying that
>     > `foo_1.0.bbappend` has no base recipe.
>
>       not sure if this really solves the underlying issue, but you can
>     always turn those errors into warnings with:
>
>       BB_DANGLINGAPPENDS_WARNONLY = "1"
>
>     in your local.conf, although i'm still skeptical as to whether that's
>     really the problem you're trying to solve.
>
>     rday
>
>
>
> -- 
> Matthew Campbell
> Senior Embedded Systems Engineer
> mcampbell@izotope.com <mailto:mcampbell@izotope.com>
>
> iZotope, Inc.
> www.izotope.com <http://www.izotope.com>
>
> 

--------------365E3F6FE67A1090981D635E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>I'll get your point.<br>
      Maybe this could be a solution to your problem
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#var-BBVERSIONS">https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#var-BBVERSIONS</a>.<br>
      Instead of having different bbappends have one and pick the right
      steps inside of the append.</p>
    <p>If that is not working for you, you could also fake the behavior
      of BBFILES_DYNAMIC with putting the bbappend into separate
      subfolder, which than are<br>
      referenced by something like this<br>
      <br>
      BBFILES &#43;= &quot;${LAYERDIR}/dynamic-recipes/${BB_VERSION}/*.bbappend&quot;</p>
    <p>Regards<br>
      Konrad<br>
    </p>
    <div class="moz-cite-prefix">On 26.03.20 20:56, Matt Campbell wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAMDowVUVBc8Lm_TwRDBgYgQ1gf3tbNFjKnNvCBtLfJ3FRXXFQQ@mail.gmail.com">
      
      <div dir="ltr">I didn't know about&nbsp;
        BB_DANGLINGAPPENDS_WARNONLY. That would mask the problem, but
        doesn't feel like a great solution. Either way I do
        appreciate&nbsp;you sharing that.
        <div><br>
        </div>
        <div>Further implementation&nbsp;and discussion with our team brought
          up another possible solution. We could wildcard all bbappends
          (_%.bbappend) and use some anonymous&nbsp;python inside our
          bbappend files that will error out if the package version
          isn't in a supported list. We could also easily&nbsp;roll this up
          into a bbclass to prevent the need to duplicate this
          everywhere.</div>
        <div><br>
        </div>
        <div>python () {<br>
          &nbsp; &nbsp; package_version = d.getVar(&quot;PV&quot;) </div>
        <div>&nbsp; &nbsp; if&nbsp; package_version is not in ['3.14&quot;, &quot;3.15&quot;]:</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; bb.error(&quot;This bbappend file isn't compatible with
          the version {}. You will need to add support to this bbappend
          for that version.&quot;.format(package_version))<br>
          }<br>
        </div>
        <div><br>
        </div>
        <div>This still seems more like we are fighting bitbake rather
          than working with it. Does anyone have any thoughts or
          suggestions on this?</div>
        <div><br>
        </div>
        <div>Other upstreams seem to maintain&nbsp;different branches for
          different Poky releases. That is a road we would rather avoid
          if possible. Our goal is to be able to have an extra CI build
          against the version of Poky under development so we can
          continuously&nbsp;fix the upgrade issues as they come up rather
          than as a landslide when we upgrade. Making a separate branch
          for this would mean we would need to merge all active
          development into each branch to get the benefits of a poky
          next canary build plan. That said, I'd love to hear about a
          solution that lets us have our cake and eat it too.</div>
        <div><br>
        </div>
        <div>~Matt</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Mar 26, 2020 at 9:55
          AM Robert P. J. Day &lt;<a href="mailto:rpjday@crashcourse.ca" moz-do-not-send="true">rpjday@crashcourse.ca</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          Thu, 26 Mar 2020, Matt Campbell wrote:<br>
          <br>
          &gt; HI All,<br>
          <br>
          &gt; We have a layer where we want to concurrently support two
          releases<br>
          &gt; of Poky. There is an issue when we have bbappnds against
          recipes<br>
          &gt; that have different versions in the two poky releases.
          for instance,<br>
          &gt; imagine recipe foo that is version 1.0 in Zeus and 1.2 in
          Dunfell.<br>
          &gt; If we had a bbappend in our layer `foo_1.0.bbappend` and
          tried to<br>
          &gt; use our layer with Dunfell, bitbake will error out saying
          that<br>
          &gt; `foo_1.0.bbappend` has no base recipe.<br>
          <br>
          &nbsp; not sure if this really solves the underlying issue, but you
          can<br>
          always turn those errors into warnings with:<br>
          <br>
          &nbsp; BB_DANGLINGAPPENDS_WARNONLY = &quot;1&quot;<br>
          <br>
          in your local.conf, although i'm still skeptical as to whether
          that's<br>
          really the problem you're trying to solve.<br>
          <br>
          rday<br>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr">Matthew Campbell
          <div>Senior Embedded Systems Engineer</div>
          <div><a href="mailto:mcampbell@izotope.com" target="_blank" moz-do-not-send="true">mcampbell@izotope.com</a></div>
          <div><br>
          </div>
          <div>iZotope, Inc.</div>
          <div><a href="http://www.izotope.com" target="_blank" moz-do-not-send="true">www.izotope.com</a></div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------365E3F6FE67A1090981D635E--
