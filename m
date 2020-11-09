Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.77])
 by mx.groups.io with SMTP id smtpd.web08.14765.1604941885130382899
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 09:11:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=fOniC8gA;
 spf=pass (domain: windriver.com, ip: 40.107.244.77, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IxAmPiD1fO4eSbL1pnhJrnm1iH4VEITM0HKXPJinl2hyraRDik2NLHwHDda4wd4DQVXCd4+mwUANqFxsYT5CNUH/6cJ6GjchEomZHOBzQANApj0vxvQMibeCH2tKeGMhYOBQ5ldIgRaazQHm5AUibZw2E65yDsOKHlg9JocWBzWvvUEhxsZM4rI/3ZmpFmsMDJ8Q9GQZcxu+XFu0UKajhseRgH9Rd/7QDwHAQOZ/4cXUsbsn6Tv5XB58ddg7xIeFxLND/Uh6o7lWOLXfcBG9dMP8Hj2qeJGdjVUxGCCrfKYPBmGjkm18fmlW7ogXS13ii0VSskpHLexY/BsUepqHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gcvDzbUcDyuxglO4Vxw5TBgQNptj6mDcShhQ8lgrbyg=;
 b=e7GmYWq22e/TBoSPjN8/NwW+dl7j1TLp1XKsBIHvBIDnbFh2aQBOlkKI58P5XTOybYL0REULIFIuwIvUgyHJsEvOjuwFO8PjiObZdwL55DcqOeXBsZTX5CgrF1JYAK9xRgH2JCa21bBhxbzattRRzDqtNBc/11prwaJVorRBpJW05anI+qMLvij5k276c0x8hvd02lmBAh0/v492gS1WGPBSEs+h2RKZRR3lhLoZL+HFVCZaSe56PVWUbeZ4dL5F5LnGdv6RBGWJhhQ3jQy49qLmTo5XU9ibbX6yS7hyYG9+TLUMwyviBaUKRZIPZlsuFnKe7VddAFQUg+65NNyqkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gcvDzbUcDyuxglO4Vxw5TBgQNptj6mDcShhQ8lgrbyg=;
 b=fOniC8gAJy+sIqU1+/ScEgF2LhlIR7Vp32uhg3muJzToYVL5C+bLNT1CAyDZZ+HnWr/VVAjpvOF22e96pYAo9fgxCX/1AY7p5/cUgQexo9/Bu2ndWiifJl1xFMOg627A0Gbkl89kdz1s1WeQ9HaSPeMuEax0L7rvW40Uq6Mo7oE=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=windriver.com;
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN8PR11MB3570.namprd11.prod.outlook.com
 (2603:10b6:408:90::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Mon, 9 Nov
 2020 17:11:23 +0000
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f%11]) with mapi id 15.20.3541.025; Mon, 9 Nov 2020
 17:11:22 +0000
Subject: Re: [yocto] [PATCH 1/1] openssl: Add c_rehash to misc package and add perl runtime dependency
To: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org,
 "Jolley, Stephen K" <stephen.k.jolley@intel.com>
References: <163F9594C568AA0B.19204@lists.yoctoproject.org>
 <CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <a260435f-a4be-f6e6-a211-403e40ffd141@windriver.com>
Date: Mon, 9 Nov 2020 12:11:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR07CA0050.namprd07.prod.outlook.com
 (2603:10b6:a03:60::27) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0050.namprd07.prod.outlook.com (2603:10b6:a03:60::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21 via Frontend Transport; Mon, 9 Nov 2020 17:11:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5b16bf3-96b0-48d8-d925-08d884d27bb0
X-MS-TrafficTypeDiagnostic: BN8PR11MB3570:
X-Microsoft-Antispam-PRVS: 
	<BN8PR11MB357053E8D8E40CBE519DFD23F8EA0@BN8PR11MB3570.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P/3qa/nePtZME1EwvAeClBju9KAGUr9O9aBQR66Vdf47WRHbYbmgff5EFoJszF3gZZG+G7cQf9lamq1NboppYwxeK76kk5KZ33IGUQ/I/d1HSgPj40GqXPEHG6JAyqVaMohc3T4qe3h1qFZde9CAmXbYqnnFNv8HKnvqHRmGyTCILgKxxAtyXNsUrAg4rohnOMYkCfMLpTOL+85xqzcxHap+JOlj0D7g+5/iQQGzrsPtsmwrWZxL756dQml64qsnVWoPg7Cd3yWRoysOS6z0FRHVvnRS85DB1H/8NJKcWElqfjNF/gECbWzZXXmmIrKVulbG+61VWnAVVv8z9XR/Tc15wI4D7F2smuv/5ZLMwCNCV8U3r4fACpBFeu+FUclzqFuMLEYT7zGyvH600MsyBFpTn+kZ0TcruvkpTF5rZ2foBQsfwfBgm7+Un8NzDULSgLibKNp84Ao49nSN4pZ30A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(366004)(346002)(136003)(376002)(31686004)(4001150100001)(478600001)(6666004)(8936002)(966005)(2906002)(83380400001)(33964004)(36756003)(52116002)(2616005)(956004)(53546011)(166002)(16576012)(66556008)(66476007)(316002)(110136005)(31696002)(6486002)(16526019)(186003)(8676002)(26005)(86362001)(66946007)(5660300002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	bfU1QNxGqa5FjSb8Y0eB3TsNE/XbLVt/QshxRtnOGqL19eJw2qegM8lN97FO5L+ugiRGVIVlmR01TMPtg5z8man3jFWAv+CEXTKuoWTvBf5Cu4eWf300L1MprEXSjoUZaN1t+BX+rBAdC8pkgSg29zqc+F6nKli4Y4+o6rm4C8oPOxyWucGRpdxrSzQP7YFxudfDbalTSrt9O2CVTjdIg8m2pf7sjloSxWJ/QCNx1tmp6VpC8RE3YWIRTYPdlHipeJWbRNysXKPsYOFp8pu9eLUiNPrfQeiMwnOcPMxKx2Z13bcGLqjnelM7+GIJlBIykZPgxFDahvRWUNg4Rrrf9VGpu96E5uPBdsLoH7DISqbg+fXe+x06yijp3ZnOX5082cMnes1Vx2g6SkNhumrGoE2IMGdGCOedj4DlKelWxBKndJBzoTZTKyC4KxFsgBa+vln/PObs9PKzd+V6ZUPDsj+OxDlGUBzT2vB5V/rc/Qqj+PjlG8ustFHgoP6+4Pr83srNEr5Vrqvzu5BbultQem+2DckQYBuL0HxH80QTD6cvEBDnxpDgnhUiKgTjb4d9IZfkU1NB5w6f37oyoADEuQQpOuSlp1XeQSg+XtiUBg/3ZIacy++qWrTJjmM+PKsq30Xkj5VUnrWVlA+72Xnsmw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5b16bf3-96b0-48d8-d925-08d884d27bb0
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2020 17:11:22.8178
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ihIi0oG5fEfbaKYrAMCmXMQluIDjoVKZtzhyWi3rUkMnXYXorRb2S0zRSquaswIr4LVNSUyAEtoqLPk8EAKH7Jx1kbkVV0X6aPR8z/8bm7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3570
Content-Type: multipart/alternative;
 boundary="------------7A4A9A4E4A1A42C5652654B9"
Content-Language: en-CA

--------------7A4A9A4E4A1A42C5652654B9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-10-19 11:29 p.m., Federico Pellegrin wrote:
>
> Sorry, new to the process, adding the pull URL here:
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=fedepell/bug14083
>
> Cheers,
> F.

Hi Federico,

Sorry for the delay. We've been getting the 3.2 release out the door
and participating in conferences.

Please rebase to openssl_1.1.1h and send it to the oe-core list:
    openembedded-core@lists.openembedded.org

See: https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded


We really should have a link to that site on a "Developers" page on 
https://www.yoctoproject.org

Stephen Jolly, can you get that to happen and if not, who can?

../Randy

>
> Il giorno mar 20 ott 2020 alle ore 05:27 Federico Pellegrin 
> <fede@evolware.org <mailto:fede@evolware.org>> ha scritto:
>
>
>     c_rehash implemented in perl is back (in history was moved to
>     shell for
>     some time), so handle it inside the -misc package so just that one
>     will
>     carry the heavy runtime dependency on perl and not the whole openssl
>     package. Note: in misc there were already before a few perl files
>     (tsget.pl <http://tsget.pl> and CA.pl) so the added perl
>     dependency will fix those too.
>
>     [YOCTO #14083]
>
>     Signed-off-by: Federico Pellegrin <fede@evolware.org
>     <mailto:fede@evolware.org>>
>     ---
>      meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb> | 3 ++-
>      1 file changed, 2 insertions(+), 1 deletion(-)
>
>     diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     index 815955837b..66d8851426 100644
>     --- a/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     +++ b/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb
>     <http://openssl_1.1.1g.bb>
>     @@ -195,13 +195,14 @@ FILES_openssl-conf =
>     "${sysconfdir}/ssl/openssl.cnf \
>                            ${libdir}/ssl-1.1/openssl.cnf* \
>                            "
>      FILES_${PN}-engines = "${libdir}/engines-1.1"
>     -FILES_${PN}-misc = "${libdir}/ssl-1.1/misc"
>     +FILES_${PN}-misc = "${libdir}/ssl-1.1/misc ${bindir}/c_rehash"
>      FILES_${PN} =+ "${libdir}/ssl-1.1/*"
>      FILES_${PN}_append_class-nativesdk = "
>     ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>
>      CONFFILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf"
>
>      RRECOMMENDS_libcrypto += "openssl-conf"
>     +RDEPENDS_${PN}-misc = "perl"
>      RDEPENDS_${PN}-ptest += "openssl-bin perl perl-modules bash"
>
>      RDEPENDS_${PN}-bin += "openssl-conf"
>     -- 
>     2.26.2
>
>
>
>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------7A4A9A4E4A1A42C5652654B9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-10-19 11:29 p.m., Federico
      Pellegrin wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com">
      
      <div dir="ltr">
        <div><br>
        </div>
        <div>Sorry, new to the process, adding the pull URL here: <br>
        </div>
        <div><br>
        </div>
        <div><a href="https://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=fedepell/bug14083" moz-do-not-send="true">https://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=fedepell/bug14083</a></div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>F.<br>
        </div>
      </div>
    </blockquote>
    <p>Hi Federico,</p>
    <p>Sorry for the delay. We've been getting the 3.2 release out the
      door<br>
      and participating in conferences.</p>
    <p>Please rebase to openssl_1.1.1h and send it to the oe-core list:<br>
      &nbsp;&nbsp; <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a><br>
    </p>
    <p>See:&nbsp;
      <a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a></p>
    <p><br>
    </p>
    <p>We really should have a link to that site on a &quot;Developers&quot; page
      on <a class="moz-txt-link-freetext" href="https://www.yoctoproject.org">https://www.yoctoproject.org</a></p>
    <p>Stephen Jolly, can you get that to happen and if not, who can?</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:CAM6O0Zhgb6sFcZ379aSAWnhvq+sJfKy78SuX253mfTX1MHUCVA@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Il giorno mar 20 ott 2020 alle
          ore 05:27 Federico Pellegrin &lt;<a href="mailto:fede@evolware.org" moz-do-not-send="true">fede@evolware.org</a>&gt;
          ha scritto:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div><br>
            </div>
            <div>c_rehash implemented in perl is back (in history was
              moved to shell for</div>
            some time), so handle it inside the -misc package so just
            that one will<br>
            carry the heavy runtime dependency on perl and not the whole
            openssl<br>
            package. Note: in misc there were already before a few perl
            files<br>
            (<a href="http://tsget.pl" target="_blank" moz-do-not-send="true">tsget.pl</a> and CA.pl) so the
            added perl dependency will fix those too.<br>
            <br>
            [YOCTO #14083]<br>
            <br>
            Signed-off-by: Federico Pellegrin &lt;<a href="mailto:fede@evolware.org" target="_blank" moz-do-not-send="true">fede@evolware.org</a>&gt;<br>
            ---<br>
            &nbsp;meta/recipes-connectivity/openssl/<a href="http://openssl_1.1.1g.bb" target="_blank" moz-do-not-send="true">openssl_1.1.1g.bb</a> | 3 ++-<br>
            &nbsp;1 file changed, 2 insertions(+), 1 deletion(-)<br>
            <br>
            diff --git a/meta/recipes-connectivity/openssl/<a href="http://openssl_1.1.1g.bb" target="_blank" moz-do-not-send="true">openssl_1.1.1g.bb</a>
            b/meta/recipes-connectivity/openssl/<a href="http://openssl_1.1.1g.bb" target="_blank" moz-do-not-send="true">openssl_1.1.1g.bb</a><br>
            index 815955837b..66d8851426 100644<br>
            --- a/meta/recipes-connectivity/openssl/<a href="http://openssl_1.1.1g.bb" target="_blank" moz-do-not-send="true">openssl_1.1.1g.bb</a><br>
            +++ b/meta/recipes-connectivity/openssl/<a href="http://openssl_1.1.1g.bb" target="_blank" moz-do-not-send="true">openssl_1.1.1g.bb</a><br>
            @@ -195,13 +195,14 @@ FILES_openssl-conf =
            &quot;${sysconfdir}/ssl/openssl.cnf \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${libdir}/ssl-1.1/openssl.cnf* \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;<br>
            &nbsp;FILES_${PN}-engines = &quot;${libdir}/engines-1.1&quot;<br>
            -FILES_${PN}-misc = &quot;${libdir}/ssl-1.1/misc&quot;<br>
            +FILES_${PN}-misc = &quot;${libdir}/ssl-1.1/misc
            ${bindir}/c_rehash&quot;<br>
            &nbsp;FILES_${PN} =+ &quot;${libdir}/ssl-1.1/*&quot;<br>
            &nbsp;FILES_${PN}_append_class-nativesdk = &quot;
            ${SDKPATHNATIVE}/environment-setup.d/openssl.sh&quot;<br>
            &nbsp;<br>
            &nbsp;CONFFILES_openssl-conf = &quot;${sysconfdir}/ssl/openssl.cnf&quot;<br>
            &nbsp;<br>
            &nbsp;RRECOMMENDS_libcrypto += &quot;openssl-conf&quot;<br>
            +RDEPENDS_${PN}-misc = &quot;perl&quot;<br>
            &nbsp;RDEPENDS_${PN}-ptest += &quot;openssl-bin perl perl-modules
            bash&quot;<br>
            &nbsp;<br>
            &nbsp;RDEPENDS_${PN}-bin += &quot;openssl-conf&quot;<br>
            -- <br>
            2.26.2</div>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
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

--------------7A4A9A4E4A1A42C5652654B9--
