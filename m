Return-Path: <fabio.emiliani@artgroup-spa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7294E004D2; Thu,  9 Mar 2017 08:23:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.71 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7230 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Mar 2017 08:23:21 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0071.outbound.protection.outlook.com [104.47.2.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F32D1E0030B
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 08:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=artgroupspa.onmicrosoft.com; s=selector1-artgroupspa-com02b;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=7fh2ebQryfKC5fdA6SO+NE61YsFg7ASMH/lk7NKAh6w=;
	b=X4klRdrlaz8e/dPkAZGhV9O8fuwbK3X5LIyhVcnSQaM5OkdTzVA2y1jj1y1tmW7Y7sI7de6KqCCefs1xZNAMJLnNHWOY9FOuzTiqDpAXO3NoPc/KUsC+lqyBqlyNMoYQjIeNWxTpenlsgjsPUs1ZTDa09h4dqzTsEOzZkAw/YiY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=artgroup-spa.com;
Received: from [10.0.8.89] (85.47.31.186) by
	VI1P192MB0014.EURP192.PROD.OUTLOOK.COM (10.175.179.136) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Thu, 9 Mar 2017 10:49:00 +0000
To: <yocto@yoctoproject.org>
From: Fabio Emiliani <fabio.emiliani@artgroup-spa.com>
Message-ID: <1d40358c-868b-1352-4469-0661b3dfe67e@artgroup-spa.com>
Date: Thu, 9 Mar 2017 11:48:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
X-Originating-IP: [85.47.31.186]
X-ClientProxiedBy: VI1PR0901CA0104.eurprd09.prod.outlook.com (10.173.68.30) To
	VI1P192MB0014.EURP192.PROD.OUTLOOK.COM (10.175.179.136)
X-MS-Office365-Filtering-Correlation-Id: cc9c6d76-bfb0-4ced-954d-08d466d9e51b
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:VI1P192MB0014;
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0014;
	3:B9llWaNLkxJOecufOaQOsO5tFRMliInw0MaCfgjExDqu8Icr9oPgFlqaEjeVqKA1MEsgl+IfL9IAXsFRkFYd++8n9/Xmz1V6LmGAizxCWDFQOaylYj26R3xHN25yNvygRoYViWF/sWlrofpSVGAo2YgdEw9C29U9gPZi+9YLmNcm3exw75ZGtEmtheHLSV1o/nI4H/EtX0P3mHnbmPoqxK1FqHv/QoC5QPrARE3PLT4pN3t7oaZUCUDvYSdqsbl8F1B0oTXNTnmr7TwgG9vIew==;
	25:nlWYPp5IiBh4VG7d0MG/TC44c9Ih5LveepKKV6TLAx0W3FlOIB2JP0WpxXvxkF+d3UQkDf2PVub5CL+apWSKWXOR8q6yvVRb7KP0bfpdY+R9foWMBwlRhAeS8CKOC5C//enubYZ2zkjsQouePDU82IBa2CjA4HFJL6+qWC9ZDk6VrOIVqgqA/dbdWvkT3ClGV2EbkWm++bZsECLcS/PEWoZqbR5jnEphA0wKR6GReflfO1CL0L7ZY1TdJ9qLdBzzHDdBtXR6t4H0FzDRR6czx7b+oB7ajaWBxdbvcMviCNy16HI8vn7IVAuSTiELLKyhu4KkITxPZaF07RQ6L+NOeLrUJIBW7BUymO8n6X1FhqsTrb4KRd44Q1OQ10pulWgMrPAgqKEM85Cz2FkH+sp6WP/xUiVPYqjo4E6JMFhfjlcNwoIiqdJ1LYD0kakNWtYC58jqtzaoOdVDmkw2amAekHHINPw3Abg8onwoSNb97QxP+fMSaSNNdAg2QUR60Oy/
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0014;
	31:7o1UP+lFDdElVR/dZCmgHcF4/PXX94nrC2jeHUa49hfH/dnMhWoolTYvrgEe6r3kSUW4cTaaZv0SDvKCSelpRbX5cgJpa1z5mkndzJQ6yMyDZG5uqw80PttYpBHrcTyQsBlLd6tDcT8nmiMEgrL+GTsCvuZjIbdksMudYALvY799eAuNSjiWBGoANmK7U7UvwZ7b/V/oxgaG45TCxGgjBAXurASmCGl+L+11SVGExj1rrDRymDBAG9TBXrF+CfR5quaBDmLY89OjAsZooWa1z6AXxm/rnR4zqABMQhh6NVeJmZHcU2FTqrlJrTYkzJ/y
X-Microsoft-Antispam-PRVS: <VI1P192MB0014D2BFABF23BB49FAC6F4CAD210@VI1P192MB0014.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(102415395)(6040375)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123562025)(2016111802025)(20161123555025)(20161123564025)(20161123558025)(6059035)(20161123560025)(6043046)(6072148);
	SRVR:VI1P192MB0014; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0014; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0014;
	4:QznSOciRtmfPHUGNWwH7NIFMF31oBAmH4hAg9ppYzc2ESCWWCTRcrE28S7ond6VexbJ01SGAcXibV0crv9ZsnlxR35GSfubUQu8Yc9+TTsU3NqfYc9WeQpAGyAbIQZ86yv3ckDEkYnRe5oJ4HVkHTnt95S0jDnvb6DqRR1+cVF5Dlk/T+4QZF2YKE/PDythJEcqUFDAYEdK1/HIfdjek0tAwHAInTZQEgJygMHP7WAk5QPPNGUv1OuQZHXK/wpm+A8RxI5mXZdaM3710zf14cS7UsuaoxJmP8J3oRrle2BLwY3OOsJWcI90tQ77d1V1HRpkjoMVzEBglYy+BDQCTM79TJxk8zKMFKMK6jEGofPSfyhIwW5njnJsP++/RG+WW9TpUIjLggaXWx4J8XxnFtD5nQY6B2bAuyviRw94nhRfnmi7jWsBuRqrsPOrCEkBYF3sD8AXRKL8s3+wBfflJXdkp9GhNi07BNrh7BYMat9bfhMPcX1fLlqHIsWGVh5dUlaLGo1yspRVm1Zr3QOrFUFoybVqYfN9Gyoghy/KguSuSPUBUwyOgzXF2xZAsC/1Wovngjyir6An1Or0b46EdMtTxR7rVECYI/QOtSrI6RQVboofkbyBdeBTaYkEgFjeiS7YU0s/lAXrJPrj8nd6VjtAbezXmgHp55NKHSLAmNWJxaz2IIONn6y1V3FJ1TFwA
X-Forefront-PRVS: 0241D5F98C
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(39410400002)(39840400002)(39450400003)(51874003)(38564003)(110136004)(512874002)(189998001)(5660300001)(83506001)(6916009)(7736002)(33646002)(5890100001)(586005)(6666003)(65806001)(3846002)(2351001)(65826007)(4001350100001)(6116002)(84326002)(38610400001)(31686004)(86362001)(66066001)(31696002)(966004)(65956001)(81166006)(861006)(54556002)(50986999)(54896002)(6306002)(36756003)(236005)(733005)(64126003)(606005)(53936002)(2906002)(15187005004)(7906003)(54356999)(42186005)(77096006)(8676002)(6486002)(7099028)(15398625002)(110146012)(110126006)(19627235001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1P192MB0014; H:[10.0.8.89];
	FPR:; SPF:None; MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1P192MB0014;
	23:8SIn38sfSKGI7kwtlVZDbpXebzNmZDREMlIbVYq+U?=
	=?us-ascii?Q?BFCRjAYSke6MQfsLqTQc46LFyWUc9h9I/1DoE/koKYELOscUrlmai3vp74C2?=
	=?us-ascii?Q?SUH+D9mjNFwTKhALj6DzTCp6B3pckaHJzaGgQrSfxlrkGwOulskzBQ3vpa7C?=
	=?us-ascii?Q?Od8JJ18HypQjCgy7/UaEQ+/JNy0VBXa/T4DomrIwbbchFkwvpVvEsqc4BsUI?=
	=?us-ascii?Q?+WIoPXPUqWrCU2v/Mv8ogNzK2o3hRnAX0Xo7OpiQ35A0BbqGEDwjcjv17C+K?=
	=?us-ascii?Q?t/Ou7D2cjC8yZa/W2TMe4bi5pH8fSAbtti9xkm+8eqLuDaVVR9LjpEC+1nkv?=
	=?us-ascii?Q?TiUA/JPlDAMWouZ9wi9KajL5yDp6ztw1nfzKaB7me9gkDxbNPQnmAM/K4o0P?=
	=?us-ascii?Q?bGmYAQKzZ5Dk2PbtwgIJuyjceod24TZ1Jk7terxSj2Kf75Scl86oi/bOLqK9?=
	=?us-ascii?Q?DTJRIWfl3rZtKVjEtNlD18sztTQCreiQKwmLPHen4nAwrwPPaIS+Cs3jX6WJ?=
	=?us-ascii?Q?fcbZgnBzhQ1TmTS8YYL1qj8YyZtrgP5zYbkMWG6hX/izl5dAn8i1lExHfGem?=
	=?us-ascii?Q?GsHLbKkkBM92pLfoCjxcTFT0DGIxeXb8m8uz47EAW6QG963M3I7bmak9hvEg?=
	=?us-ascii?Q?Ph5Prj0dsMcCfeNHDVinPL1JKXvdUEncOF6lXJNAHi85b6IFiywJWoPg2vlv?=
	=?us-ascii?Q?VKkiJ/GAPcch+4NvoVvVLmhOoMjwCGNPio9gQK319xU2PH2wakCKy1PbF3Yr?=
	=?us-ascii?Q?nwXH6dTxwKFokuo+EaaPreSBYqxHfzeQWHYX3snrk+dDmeEdEF/aYYb6E/dj?=
	=?us-ascii?Q?bZlO9jtSNpWXMNl1jE6ymn8ISbtlPTnb3Bs7MLcJfphZYsGd1ZX9fJAe5h60?=
	=?us-ascii?Q?+TwcMGxRlhLcW4dr4rOO+aeXPLx/lsKJkUpnPf4RgMF1sF6kSPbT76LD0WGL?=
	=?us-ascii?Q?BYMVTVl2Hr0K9aSAGeceNnsS+1bD8mM6l1rxocQFMFQ9AnBbJZaSXa2HjHfR?=
	=?us-ascii?Q?4RNnBe3o/ei0FbueYWc8bxj1IOiBOJEd7F7TrnWQuPltGGovEHRQFwXznK+o?=
	=?us-ascii?Q?887uu1RMtZI0hww3BI1jtoj6yw422yOofSsU7hRgV72HjinknL+gVkrSyoZe?=
	=?us-ascii?Q?4s/c698YPBSCSmcGfuTQFr/ogbeZUEP5+oV1IdCgkjqjiL3wJZkZZGK2JZ4q?=
	=?us-ascii?Q?H/211EITVRLCsFbEEu8iUYO5/EfHJsglVf6spmTjXhUzmKAJc8S169n0BP7v?=
	=?us-ascii?Q?KHJhwQ8XFirdqlAmSVnMGCGp1zu+wsr/6X/bdNsCabqNaETPn1kUJlPRy+m9?=
	=?us-ascii?Q?HSdTfDvZ7nOmJ9/SfmZZT8eadduGivogielxVPxGJBKqHMXZoXLn03ofhwmL?=
	=?us-ascii?Q?G3Pcw=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0014;
	6:1k00Uld8dzsw9vS3tonj8JYVegRarZxzSusnhgM5+clUEjbW3lNS86tsPToRqDsWbjs/8Gbqgtldll1Ds3xDf0W7MNVB+Cw5HwgwgTDK1v6mj5ieYyRIB4kwt6xJvAVqXHpVvksXTfycJiny1MtTKErgEYJjWVAaBpy0aoASw3FnCjc7Kmx4CsEcQI6ir0eMzu7DR1d7W2HpKKH/4eCrj3KvTR8gN0bf5XPts7be/XMQs+qd3HgF4DFcmC6xCMdOpTacxbzlrBbQqtnFd0kJP+lgpY8+bd+Qpo92o8S4+BkKzCgT+UhB0F7ReirKx8yfrSHhIAE6W8PgbvZCMFcwituAHMnR5YusCZyZLgHvbbm+hDMXrq/fOECnQAgpo11Ob9ODd5JW75gIEK8jY+Ktlg==;
	5:V5BzC+nBB3/mS01LeZLryqTOccfCnxDL1ra9QZzDa+Oy5Zx6CBDTLKM7dRWEOskCCMrCXPpsEbU6oHtbjjo4dAkkil2AaLWpYWGGpGfs425MHgShVSsepN9J/h6SB4twJDQ1Q+6MjP+SdgFsSk/rHg==;
	24:L04Bm6Ik04LzmMnhMDX6B7UkH/w21x/jdwwo78k46/U7s5UHuuFxYwnAnRjuDACSsQ/5FdTfDgG2sPpj1OiSVowae8Hz7mNqGEKEkGy4l3k=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0014;
	7:4mZzd+gqzzjE/SQD3VibNfcsx+x6NpuVP21VOyKtcZUQefou5ngm1gmEV3n0T1ya4u92W1AwAlmAxCWrY0ZdbnP2WPAsHwmUmigDV6wPjeqGxIMHpHFE5l3tciJ4OPHdaGKvQrTkMsV8NC6aZ66NMIqjz7IkHwgJWprv67pV0pb6oIdzquSRx+Y10Tbbg/7vfXv+fXbUdDADCBWj3cWK6IlPQ71eYDtp72aBMNYgRTeU+LNwU6vNGO5qdnxahIzBXU1M0DS19sHAgUnQDRfmbYimxkPKzq8E4iwzSqDWVzOQuyk/eK8moBlN9LC3Z5wnQ4ZKN6QDowqFoJE/9COH2g==
X-OriginatorOrg: artgroup-spa.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2017 10:49:00.1226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0014
Subject: [imx6qsabresd][morty] Locales not generated
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Mar 2017 16:23:25 -0000
X-Groupsio-MsgNum: 34941
Content-Type: multipart/alternative;
	boundary="------------475B6E29AA7FEE21D654865C"

--------------475B6E29AA7FEE21D654865C
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Dear all,

I'm trying to configure locale support in Yocto. My taget machine is: 
imx6qsabresd (i.MX 6Quad Processor), yocto version is: morty.

I've created a base image with the command: bitbake core-image-base, 
then I've booted the image in my sabre board. Everything works fine 
except locales.

Reading in the docs I've found:

> You can set |GLIBC_GENERATE_LOCALES| in your |local.conf| file. By 
> default, all locales are generated. 
Link: 
http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-GLIBC_GENERATE_LOCALES

In my build I've found only a locale, path: /usr/share/locale/en_GB, no 
other locales are generated. Executing the "locale" command I've got:

> root@imx6qsabresd:/usr/share/locale# locale
> LANG=
> LC_CTYPE="POSIX"
> LC_NUMERIC="POSIX"
> LC_TIME="POSIX"
> LC_COLLATE="POSIX"
> LC_MONETARY="POSIX"
> LC_MESSAGES="POSIX"
> LC_PAPER="POSIX"
> LC_NAME="POSIX"
> LC_ADDRESS="POSIX"
> LC_TELEPHONE="POSIX"
> LC_MEASUREMENT="POSIX"
> LC_IDENTIFICATION="POSIX"
> LC_ALL=
Default locale is POSIX, not en_GB.

I've tried several options in my local.conf:

  * ENABLE_BINARY_LOCALE_GENERATION = "1" to enable the generation of
    locales at build time
  * IMAGE_INSTALL_append = " glibc-utils localedef" to add to the build
    locale and localdef
  * IMAGE_LINGUAS = "en-gb en-us zh-cn" to specify the add of additional
    packages

None of this options had effects.

Looking in the features list of the next yocto release I've found this bug:

> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9070
is it possible that curreny release has problems respect to locale 
generation?

_/Why locales are not generated? What do I have to configure to generate 
them?/_

Thanks in advance for your time

Regards,

Fabio Emiliani

-- 

*Fabio Emiliani*

*/Software Engineer/*

/Ph. +39 075 8298 530 /

/fabio.emiliani@artgroup-spa.com/ <mailto:fabio.emiliani@artgroup-spa.com>

DISCLAIMER
This email and any attachment may contain confidential information. If 
you are not the intended recipient you are not authorised to copy or 
disclose all or any part of it without the prior written consent of ART SpA.

/ART SpA – Step Forward With US - //www.artgroup-spa.com/logo_ART_firma-1//

/Ph. +39 075 8298 501 – Fax +39 075 8298 525 /

P*Please consider our environment  before printing this e-mail***


--------------475B6E29AA7FEE21D654865C
Content-Type: multipart/related;
	boundary="------------965D545D2ED975B07FD90AFC"

--------------965D545D2ED975B07FD90AFC
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Dear all,</p>
    <p>I'm trying to configure locale support in Yocto. My taget machine
      is: imx6qsabresd (i.MX 6Quad Processor), yocto version is: morty.</p>
    <p>I've created a base image with the command: bitbake
      core-image-base, then I've booted the image in my sabre board.
      Everything works fine except locales.</p>
    <p>Reading in the docs I've found:</p>
    <p>
      <blockquote type="cite">You can set <code class="filename">GLIBC_GENERATE_LOCALES</code>
        in your <code class="filename">local.conf</code> file. By
        default, all locales are generated. </blockquote>
      Link: <a
href="http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-GLIBC_GENERATE_LOCALES">http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-GLIBC_GENERATE_LOCALES</a><br>
    </p>
    <p>In my build I've found only a locale, path:
      /usr/share/locale/en_GB, no other locales are generated. Executing
      the "locale" command I've got:</p>
    <p>
      <blockquote type="cite">root@imx6qsabresd:/usr/share/locale#
        locale<br>
        LANG=<br>
        LC_CTYPE="POSIX"<br>
        LC_NUMERIC="POSIX"<br>
        LC_TIME="POSIX"<br>
        LC_COLLATE="POSIX"<br>
        LC_MONETARY="POSIX"<br>
        LC_MESSAGES="POSIX"<br>
        LC_PAPER="POSIX"<br>
        LC_NAME="POSIX"<br>
        LC_ADDRESS="POSIX"<br>
        LC_TELEPHONE="POSIX"<br>
        LC_MEASUREMENT="POSIX"<br>
        LC_IDENTIFICATION="POSIX"<br>
        LC_ALL=</blockquote>
      Default locale is POSIX, not en_GB.</p>
    <p>I've tried several options in my local.conf:</p>
    <ul>
      <li>ENABLE_BINARY_LOCALE_GENERATION = "1" to enable the generation
        of locales at build time</li>
      <li>IMAGE_INSTALL_append = " glibc-utils localedef" to add to the
        build locale and localdef</li>
      <li>IMAGE_LINGUAS = "en-gb en-us zh-cn" to specify the add of
        additional packages</li>
    </ul>
    <p>None of this options had effects.</p>
    <p>Looking in the features list of the next yocto release I've found
      this bug:</p>
    <p>
      <blockquote type="cite"><a
          href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=9070">https://bugzilla.yoctoproject.org/show_bug.cgi?id=9070</a></blockquote>
      is it possible that curreny release has problems respect to locale
      generation?<br>
    </p>
    <p><u><i>Why locales are not generated? What do I have to configure
          to generate them?</i></u><br>
    </p>
    <p>Thanks in advance for your time</p>
    <p>Regards,</p>
    <p>Fabio Emiliani<br>
    </p>
    <div class="moz-signature">-- <br>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Webdings;
	panose-1:5 3 1 2 1 5 9 6 7 3;}
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
@font-face
	{font-family:"Century Schoolbook";
	panose-1:2 4 6 4 5 5 5 2 3 4;}
@font-face
	{font-family:"Gill Sans MT";
	panose-1:2 11 5 2 2 1 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.StileMessaggioDiPostaElettronica17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1027" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><b><span
              style="font-size:12.0pt;color:#002060;mso-fareast-language:IT"
              lang="EN-US">Fabio Emiliani<o:p></o:p></span></b></p>
        <p class="MsoNormal"><b><i><span style="mso-fareast-language:IT"
                lang="EN-US">Software Engineer<o:p></o:p></span></i></b></p>
        <p class="MsoNormal"><i><span style="font-family:&quot;Gill Sans
              MT&quot;,sans-serif;mso-fareast-language:IT" lang="EN-US">
              Ph. +39 075 8298 530  </span></i></p>
        <p class="MsoNormal"><span style="mso-fareast-language:IT"><a
              href="mailto:fabio.emiliani@artgroup-spa.com"><i><span
                  style="font-family:&quot;Gill Sans
                  MT&quot;,sans-serif;color:#0563C1" lang="EN-US">fabio.emiliani@artgroup-spa.com</span></i></a></span><span
            style="mso-fareast-language:IT" lang="EN-US"><o:p></o:p></span></p>
        <div style="mso-element:para-border-div;border-top:solid
          windowtext 1.0pt;border-left:none;border-bottom:solid
          windowtext 1.0pt;border-right:none;padding:1.0pt 0cm 1.0pt
          0cm">
          <p class="MsoNormal" style="border:none;padding:0cm"><span
style="font-size:7.5pt;font-family:&quot;Verdana&quot;,sans-serif;color:#1F497D;mso-fareast-language:IT"
              lang="EN-US">DISCLAIMER<br>
              This email and any attachment may contain confidential
              information. If you are not the intended recipient you are
              not authorised to copy or disclose all or any part of it
              without the prior written consent of ART SpA.</span><span
style="font-size:12.0pt;color:black;mso-fareast-language:IT"
              lang="EN-US"><o:p></o:p></span></p>
        </div>
        <p class="MsoNormal"><span style="mso-fareast-language:IT"
            lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><i><span style="font-family:&quot;Gill Sans
              MT&quot;,sans-serif;mso-fareast-language:IT" lang="EN-US">ART
              SpA – Step Forward With US - </span></i><span
            style="mso-fareast-language:IT"><a
              href="www.artgroup-spa.com"><i><span
                  style="font-family:&quot;Gill Sans
                  MT&quot;,sans-serif;color:#0563C1" lang="EN-US">www.artgroup-spa.com</span></i></a></span><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">
<v:stroke joinstyle="miter" />
<v:formulas>
<v:f eqn="if lineDrawn pixelLineWidth 0" />
<v:f eqn="sum @0 1 0" />
<v:f eqn="sum 0 0 @1" />
<v:f eqn="prod @2 1 2" />
<v:f eqn="prod @3 21600 pixelWidth" />
<v:f eqn="prod @3 21600 pixelHeight" />
<v:f eqn="sum @0 0 1" />
<v:f eqn="prod @6 1 2" />
<v:f eqn="prod @7 21600 pixelWidth" />
<v:f eqn="sum @8 21600 0" />
<v:f eqn="prod @7 21600 pixelHeight" />
<v:f eqn="sum @10 21600 0" />
</v:formulas>
<v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect" />
<o:lock v:ext="edit" aspectratio="t" />
</v:shapetype><v:shape id="Immagine_x0020_1" o:spid="_x0000_s1026" type="#_x0000_t75" alt="logo_ART_firma-1" style='position:absolute;margin-left:0;margin-top:0;width:108.7pt;height:26.5pt;z-index:-251657216;visibility:visible;mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;mso-position-horizontal-relative:text;mso-position-vertical:absolute;mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;mso-width-relative:page;mso-height-relative:page'>
<v:imagedata src="http://www.artgroup-spa.com/wp-content/uploads/2016/07/logo_ART_firma-1.jpg" o:title="logo_ART_firma-1" />
<w:wrap type="tight"/>
</v:shape><![endif]--><!--[if !vml]--><img
            style="width:1.5104in;height:.3645in"
            src="cid:part5.45BC4325.4366F686@artgroup-spa.com"
            alt="logo_ART_firma-1" v:shapes="Immagine_x0020_1"
            height="35" hspace="12" align="left" width="145"><!--[endif]--><i><span
              style="font-family:&quot;Gill Sans
              MT&quot;,sans-serif;mso-fareast-language:IT" lang="EN-US"><o:p></o:p></span></i></p>
        <div
          style="mso-element:para-border-div;border:none;border-bottom:solid
          windowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
          <p class="MsoNormal" style="border:none;padding:0cm"><i><span
                style="font-size:10.0pt;font-family:&quot;Gill Sans
                MT&quot;,sans-serif;mso-fareast-language:IT"
                lang="EN-US">Ph. +39 075 8298 501 – Fax +39 075 8298 525
                <o:p></o:p></span></i></p>
        </div>
        <p class="MsoNormal"><span
style="font-size:21.0pt;font-family:Webdings;color:green;mso-fareast-language:IT">P</span><b><span
              style="font-size:7.5pt;font-family:&quot;Century
              Gothic&quot;,sans-serif;color:green;mso-fareast-language:IT"
              lang="EN-US"> Please consider our environment  before
              printing this e-mail</span></b><b><span
              style="font-family:&quot;Century
              Schoolbook&quot;,serif;color:green;mso-fareast-language:IT"
              lang="EN-US"><o:p></o:p></span></b></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
      </div>
    </div>
  </body>
</html>

--------------965D545D2ED975B07FD90AFC
Content-Type: image/jpeg; name="logo_ART_firma-1.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part5.45BC4325.4366F686@artgroup-spa.com>
Content-Disposition: inline; filename="logo_ART_firma-1.jpg"

/9j/4AAQSkZJRgABAQEBLAEsAAD/4QgoRXhpZgAATU0AKgAAAAgABwESAAMAAAABAAEAAAEaAAUA
AAABAAAAYgEbAAUAAAABAAAAagEoAAMAAAABAAIAAAExAAIAAAAMAAAAcgEyAAIAAAAUAAAAfodp
AAQAAAABAAAAkgAAANQAAAEsAAAAAQAAASwAAAABR0lNUCAyLjguMTQAMjAxNjowNzoyMCAxNDox
MDoyNwAABZAAAAcAAAAEMDIyMaAAAAcAAAAEMDEwMKABAAMAAAAB//8AAKACAAQAAAABAAABxKAD
AAQAAAABAAAAbgAAAAAABgEDAAMAAAABAAYAAAEaAAUAAAABAAABIgEbAAUAAAABAAABKgEoAAMA
AAABAAIAAAIBAAQAAAABAAABMgICAAQAAAABAAAG7gAAAAAAAABIAAAAAQAAAEgAAAAB/9j/4AAQ
SkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4n
ICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAAaAG4DASIAAhEBAxEB
/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQID
AAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RF
RkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKz
tLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEB
AQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdh
cRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldY
WVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPE
xcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD23W9XTR7Azld8
jHbGnqf8K5zS7bU/Exa6vb2WK0DYCRHbuPsPT3OaXxbaalqOoxx29pM8EKYDKvBY9f6VpW/g7TFt
4xMkjS7RvIkIBPegDE8SaJp+j2cbwyTtPK+FDuCMDqen0/OrPhsf2Z4fvdWl+8wIjz7dPzJ/Ss7W
fD1xHqTx6dYXBt1AAbBbce5/p+FW9QGp3Wi2+mQaRcwxxY3E87sf/X5oAzvD2lR6zfTG7kZYkXcz
BsEsTx1/Gr2v6FpGmWDSQXUhuMgLGzht3rwBWho/hG1k02OTUIpRcMSSu4rtGeBWTc+H7vT9b3Q2
D3dorhlGMhl9D70AN8M6CmrmaS6EqwIAFZDjLflUPiTTrPSr2O2tHlZtm6TewOM9B0rq01q+iQJH
4euURRgKpAA/SufXSdS1bxGLi7spYoZJdzbhwqjtn6DFAGpp3g+0l06CW6kuFmdAzBXAAz26VraZ
4estKuTPA0zOV2/vGBwPyrW6DAooA8V+Lum3ureONIsrJC0s9qETnAyXbqe1c/8A8Kk8Zf8APvB/
4Er/AI17H4l8Q3ekXsMNukJDR7yZFJOckeo9K5e+8TanfMCZzCAMbYCVB+vNd8MwqU4RhFLQ5JYO
E5OUnucIPhJ4xIyLeAj/AK+V/wAa5zXfDWseHL5bPUISJmjEgEbbxgkjqPoa9Zsde1GwkRo7l3RO
BHIxKflmtMeN9TzzFan/AIAf8a0hmlRP3kmiJYCDXutnZSzwmS4G2YvEyKQspAO7GMc0iS27zRxf
vwXi80EytgL+f+c1RvwI7HUXT5XOCWXg5EjYNW7hVU/KAMWTgYHQfLXmHcNF5a+VaORcj7SQqgyt
kHIGDz7/AKVJLLDFCZWE4XzfKH75uTnGevTNViiCO3AVQFnbAA6fv1qrfSOttf7XYbLyPbg/d+6e
PTmgDXXyWvGt8TggE7vObBxtz3/2hUc80Fvepbv5w3QvNv8AObGFxkDnk802358QXeedsS49s4z/
ACH5Cql6zN4z02FiTEbO4YoT8pOUGcfQkfjVRV2TJ2Q7T9Utb+C2kWO6jaeYw7WmbKnyzIM8/wB0
frR/alsy3nlw3TNa4LDziN37x04+b1jJ/EVyFpNLF4V8LyRyOjvrqozKxBZd0i4J9NvH04rYsDmT
xZnnbeBVz2XaGwPbLMfqxPeuiVKKu/63sZKo3/Xlc2b/AFK2sIZ2Mdy7xSpEEWZvnZgCADn3/Slt
9Ysn1eGwj8/zZrdLiMu5KsjbvU9Rt5/3hWP4vJTw94gdTh1khKsOoPycirxijTxnbbUVdlqirgYw
MScD24FQoR5b+v5IrmfNb+upynxC8c6l4T8XaZFCwfT2gEs8ARcv8zAgMRkcAVS/4Xnp/wD0Arj/
AL/L/hWP8bQD4osMgf8AHkP/AENq8y2r6D8q9bD4SjUoxlJa2PPrYipCpJRZ7L/wvPT/APoBXH/f
5f8ACud174xaxd3yyaL/AKDbCMBopI0kJbJyckemPyrzzavoPyo2r6D8q6IYHDxd1Exliqsla5//
2f/hB55odHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdpbj0n77u/JyBp
ZD0nVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkJz8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0nYWRvYmU6
bnM6bWV0YS8nPgo8cmRmOlJERiB4bWxuczpyZGY9J2h0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIv
MjItcmRmLXN5bnRheC1ucyMnPgoKIDxyZGY6RGVzY3JpcHRpb24geG1sbnM6ZGM9J2h0dHA6Ly9w
dXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvJz4KICA8ZGM6Zm9ybWF0PmltYWdlL2pwZWc8L2RjOmZv
cm1hdD4KICA8ZGM6dGl0bGU+CiAgIDxyZGY6QWx0PgogICAgPHJkZjpsaSB4bWw6bGFuZz0neC1k
ZWZhdWx0Jz54LWRlZmF1bHQ8L3JkZjpsaT4KICAgPC9yZGY6QWx0PgogIDwvZGM6dGl0bGU+CiA8
L3JkZjpEZXNjcmlwdGlvbj4KCiA8cmRmOkRlc2NyaXB0aW9uIHhtbG5zOnhtcD0naHR0cDovL25z
LmFkb2JlLmNvbS94YXAvMS4wLyc+CiAgPHhtcDpDcmVhdG9yVG9vbD5BZG9iZSBQaG90b3Nob3Ag
Q1MyIE1hY2ludG9zaDwveG1wOkNyZWF0b3JUb29sPgogIDx4bXA6Q3JlYXRlRGF0ZT4yMDA5LTEy
LTExVDE4OjQzOjU1KzAxOjAwPC94bXA6Q3JlYXRlRGF0ZT4KICA8eG1wOk1vZGlmeURhdGU+MjAx
Ni0wNy0wN1QxMDozMDo0OSswMjowMDwveG1wOk1vZGlmeURhdGU+CiAgPHhtcDpNZXRhZGF0YURh
dGU+MjAxNi0wNy0wN1QxMDozMDo0OSswMjowMDwveG1wOk1ldGFkYXRhRGF0ZT4KIDwvcmRmOkRl
c2NyaXB0aW9uPgoKIDxyZGY6RGVzY3JpcHRpb24geG1sbnM6eG1wTU09J2h0dHA6Ly9ucy5hZG9i
ZS5jb20veGFwLzEuMC9tbS8nPgogIDx4bXBNTTpJbnN0YW5jZUlEPnhtcC5paWQ6YTEzYjYxNGEt
ZGRkNy0zZTQ3LTk3NWItY2UzMzViMGUxNTU1PC94bXBNTTpJbnN0YW5jZUlEPgogIDx4bXBNTTpP
cmlnaW5hbERvY3VtZW50SUQ+dXVpZDo2NzQ4RjczM0U4MTcxMURFOUI3RDg4MUU5MTE0QTFCNDwv
eG1wTU06T3JpZ2luYWxEb2N1bWVudElEPgogIDx4bXBNTTpEb2N1bWVudElEIHJkZjpyZXNvdXJj
ZT0ndXVpZDo2NzQ4RjczM0U4MTcxMURFOUI3RDg4MUU5MTE0QTFCNCcgLz4KICA8eG1wTU06SW5z
dGFuY2VJRD54bXAuaWlkOmExM2I2MTRhLWRkZDctM2U0Ny05NzViLWNlMzM1YjBlMTU1NTwveG1w
TU06SW5zdGFuY2VJRD4KICA8eG1wTU06T3JpZ2luYWxEb2N1bWVudElEPnV1aWQ6Njc0OEY3MzNF
ODE3MTFERTlCN0Q4ODFFOTExNEExQjQ8L3htcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD4KICA8eG1w
TU06RGVyaXZlZEZyb20gcmRmOnBhcnNlVHlwZT0nUmVzb3VyY2UnPgogIDwveG1wTU06RGVyaXZl
ZEZyb20+CiAgPHhtcE1NOkhpc3Rvcnk+CiAgIDxyZGY6U2VxPgogICA8L3JkZjpTZXE+CiAgPC94
bXBNTTpIaXN0b3J5PgogPC9yZGY6RGVzY3JpcHRpb24+CgogPHJkZjpEZXNjcmlwdGlvbiB4bWxu
czpwZGY9J2h0dHA6Ly9ucy5hZG9iZS5jb20vcGRmLzEuMy8nPgogIDxwZGY6UHJvZHVjZXI+QWRv
YmUgUERGIGxpYnJhcnkgNy43NzwvcGRmOlByb2R1Y2VyPgogPC9yZGY6RGVzY3JpcHRpb24+Cgog
PHJkZjpEZXNjcmlwdGlvbiB4bWxuczpwaG90b3Nob3A9J2h0dHA6Ly9ucy5hZG9iZS5jb20vcGhv
dG9zaG9wLzEuMC8nPgogIDxwaG90b3Nob3A6TGVnYWN5SVBUQ0RpZ2VzdD5BMzY0MkRFRjVCRUQx
NUM4NUNGQjI5RTczNUE4RjY2MDwvcGhvdG9zaG9wOkxlZ2FjeUlQVENEaWdlc3Q+CiAgPHBob3Rv
c2hvcDpDb2xvck1vZGU+NDwvcGhvdG9zaG9wOkNvbG9yTW9kZT4KIDwvcmRmOkRlc2NyaXB0aW9u
PgoKIDxyZGY6RGVzY3JpcHRpb24geG1sbnM6eG1wUmlnaHRzPSdodHRwOi8vbnMuYWRvYmUuY29t
L3hhcC8xLjAvcmlnaHRzLyc+CiAgPHhtcFJpZ2h0czpNYXJrZWQ+RmFsc2U8L3htcFJpZ2h0czpN
YXJrZWQ+CiA8L3JkZjpEZXNjcmlwdGlvbj4KCjwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cjw/eHBh
Y2tldCBlbmQ9J3InPz4K/9sAQwADAgIDAgIDAwMDBAMDBAUIBQUEBAUKBwcGCAwKDAwLCgsLDQ4S
EA0OEQ4LCxAWEBETFBUVFQwPFxgWFBgSFBUU/9sAQwEDBAQFBAUJBQUJFA0LDRQUFBQUFBQUFBQU
FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU/8AAEQgAbgHEAwERAAIRAQMR
Af/EAB4AAQACAgIDAQAAAAAAAAAAAAAHCAUGAQQCAwkK/8QAWxAAAQIFAQIHCQoKCAMFCQAAAQID
AAQFBhEHEiEIGDFBVpTSExQXIlFhcYGTFRkyVFWRkpXR0wkWIzhTV3KCtNRSYnR2obGyszZCwTM1
N3XDJCUoKTlDY4Oi/8QAHAEBAAIDAQEBAAAAAAAAAAAAAAUGAwQHAQII/8QAQBEBAAEDAQIICwcD
BAMBAAAAAAECAwQRBZESFiExUVJT0QYUFUFhcYGhscHSEyI0NXKSsjNigjI2wvAkJfHh/9oADAMB
AAIRAxEAPwD6pwCAQCAQEe3frfadnqdZen+/5xvcqVkQHFA+QqyEg+UE580BEdxcKqsTStii0qWp
7XO5MqLzh84xgD1hUBHtY1evKuOFUzcU6gf0JVfcE/M3s59cBrs3XalPqKpmoTUwo87r6lf5mA6v
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
4ptBdWlJKUAgbRxuGTAVIquhOodaqk7UJqlNrmZp5b7ihNsgFSiSceNyb4Dq8XW/fkdvrbPagPAc
Hi/t/wD7kT1xjtwHnxdb9+SG+ts9qAcXW/fkhvrbPagHF1v35Ib62z2oBxdb9+SG+ts9qAcXW/fk
hvrbPagLPaa2qbNsmk0laUpfZZCnwnf+VUdpe/n8YkZ8gEBtMAgEBpmrFjC/rMnaagJ79Rh+UUrm
dSDgZ5sglOebazAVr4ut+/JDfW2e1AOLrfvyQ31tntQDi6378kN9bZ7UA4ut+/JDfW2e1AOLrfvy
Q31tntQDi6378kN9bZ7UA4ut+/JDfW2e1AOLrfvyQ31tntQDi6378kN9bZ7UBtOl2glx0q+KZP16
RRLSEmszBImG1lS0jKBhJJ+Fg+gGAs9AIBAIBAIBAIBAICOOEN/4RV70y/8AENQFNoBAIBAIBAIB
AIBAIBAIBAfQ8nEBzAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAIBAI
BAa5fVotX3a09Q35hcq1NFvLrYBUnZcSvkPnTiAinil0rpBO+xRAOKXSukE77FEA4pdK6QTvsUQD
il0rpBO+xRAOKXSukE77FEA4pdK6QTvsUQDil0rpBO+xRAOKXSukE77FEA4pdK6QTvsUQDil0rpB
O+xRAOKXSukE77FEA4pdK6QTvsUQDil0rpBO+xRAOKXSukE77FEBNlVk1VCmzUqiYdlFvtLbTMMH
DjRUkjaSeZQzkecQGkeCae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgHgmnu
ntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgH
gmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1p
PZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e
3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeC
ae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9mAeCae6e3P1pPZgHgmnuntz9aT2YB4Jp7p7c/Wk9
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

--------------965D545D2ED975B07FD90AFC--

--------------475B6E29AA7FEE21D654865C--
