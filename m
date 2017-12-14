Return-Path: <prvs=514cdf3a9=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F3CEE00D72; Wed, 13 Dec 2017 23:18:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail02.prevas.se (mail02.prevas.se [62.95.78.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FBB3E00D70
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 23:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=8089; q=dns/txt;
	s=ironport2; t=1513235886; x=1544771886;
	h=subject:to:cc:references:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=5xeUWwKT9dHOlZUaKU0NYgUCDzcQpl6aOrobd94HeXw=;
	b=wapLqLODjvSdFi7naLf+r70F/pWR5gDuVO52gz8ULAlSXUplJm5RJMEM
	+oHwQGMVz7/G7dHofI5dk0xiDRqkhNTPEHZ5iEaFOs3iSkQEckT0k9cCZ
	4P4vbDnVLHg7N6APq2liUH4cwrFQbzhhabmtEErAaR4LDht6yOIK51Ipt c=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2F+AADwJDJa/+iTuFUNUBkBAQEBAQEBA?=
	=?us-ascii?q?QEBAQEHAQEBAQGEJIEbhAKaQ2KZIwcKGAuBC1ODOgKFVxQBAQEBAQEBAQEDg3t?=
	=?us-ascii?q?4AQEBAQEBAQEBIioCCAUiOwEBAQECAQEBIQ8BBREiAwsOAgkCDQsCAiMDAgIbD?=
	=?us-ascii?q?AEeEQYBDAYCAQGKHhiLBZx+boInIYgzghEBAQEBAQEBAwEBAQEBAQEBIAWBCoJ?=
	=?us-ascii?q?RhXMLgWmBDoMvgW6DFYJDIAWSFZEPh3yHG4YSghZjhS+EA4c/jROFZAGDcoE7N?=
	=?us-ascii?q?oFxMoEMgikJgkoBG4Fod4ofAQEB?=
X-IPAS-Result: =?us-ascii?q?A2F+AADwJDJa/+iTuFUNUBkBAQEBAQEBAQEBAQEHAQEBAQG?=
	=?us-ascii?q?EJIEbhAKaQ2KZIwcKGAuBC1ODOgKFVxQBAQEBAQEBAQEDg3t4AQEBAQEBAQEBI?=
	=?us-ascii?q?ioCCAUiOwEBAQECAQEBIQ8BBREiAwsOAgkCDQsCAiMDAgIbDAEeEQYBDAYCAQG?=
	=?us-ascii?q?KHhiLBZx+boInIYgzghEBAQEBAQEBAwEBAQEBAQEBIAWBCoJRhXMLgWmBDoMvg?=
	=?us-ascii?q?W6DFYJDIAWSFZEPh3yHG4YSghZjhS+EA4c/jROFZAGDcoE7NoFxMoEMgikJgko?=
	=?us-ascii?q?BG4Fod4ofAQEB?=
X-IronPort-AV: E=Sophos;i="5.45,399,1508796000"; 
   d="scan'208";a="2807572"
Received: from unknown (HELO [10.0.0.10]) ([85.184.147.232])
	by mail02.prevas.se with ESMTP/TLS/DHE-RSA-AES128-SHA;
	14 Dec 2017 08:17:34 +0100
To: Sherif Omran <sherifomran2000@gmail.com>,
	Mike Looijmans <mike.looijmans@topic.nl>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
	<CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
	<20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
	<CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <Martin.Hundeboll@prevas.dk>
Message-ID: <976da55e-da9f-6173-98b3-444b6deb5e34@prevas.dk>
Date: Thu, 14 Dec 2017 08:17:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Thu, 14 Dec 2017 07:18:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-IE
Content-Transfer-Encoding: 8bit

Hi Sherif,

On 2017-12-14 08:06, Sherif Omran wrote:
> Here is my recipe, it runs suceeds but does not delete the files
> 
> mypostprocesfunction() {
> rm -r ${IMAGE_ROOTFS}/etc/init.d/psplash.sh
> rm -r ${IMAGE_ROOTFS}/usr/bin/psplash*
> }
> 
> ROOTFS_POSTPROCESS_COMMAND += "mypostprocessfunction; "

Unless you did a copy-paste error, there's a typo in the function name:
mypostprocesfunction
mypostprocessfunction

// Martin

> 
> On Wed, Dec 13, 2017 at 2:03 PM, Mike Looijmans <mike.looijmans@topic.nl 
> <mailto:mike.looijmans@topic.nl>> wrote:
> 
>     ${D} won't work here, grep on ROOTFS_POSTPROCESS_COMMAND for recipes
>     that get it right.
> 
>     And, much much much better would be to just not install psplash into
>     your image!
> 
>     On 13-12-17 09:10, Sherif Omran wrote:
> 
>         here is my recipe, the aim was to remove some files from the
>         init.d folder and tweek before creating the image
> 
>         #
>         # This file was derived from the 'Hello World!' example recipe
>         in the
>         # Yocto Project Development Manual.
>         #
> 
>         SUMMARY = "This recipe removes any missing files from the
>         filesystem before finalinzing it"
>         SECTION = "base"
>         LICENSE = "MIT"
>         LIC_FILES_CHKSUM =
>         "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> 
>         #SRC_URI = "file://*"
> 
>         S = "${WORKDIR}"
>         BB_STRICT_CHECKSUM ="0"
>         ALLOW_EMPTY_${PN}="1"
> 
> 
>         #IMAGE_INSTALL = "packagegroup-core-boot
>         packagegroup-base-extended ${CORE_IMAGE_EXTRA_INSTALL}"
>         #IMAGE_INSTALL = "${CORE_IMAGE}"
> 
>         #inherit core-image
> 
>         my_postprocess_function() {
>            rm -r ${D}${bindir}/init.d/psplash.sh
>         }
> 
>         ROOTFS_POSTPROCESS_COMMAND += "my_postprocess_function; "
> 
>         On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans
>         <mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>         <mailto:mike.looijmans@topic.nl
>         <mailto:mike.looijmans@topic.nl>>> wrote:
> 
>              Well, start by sharing yours first.
> 
>              Be careful when naming your shell routine, sometimes OE
>         considers parts
>              behind the underscore as overrides and then it cannot find it.
> 
> 
>              On 13-12-17 07:14, Sherif Omran wrote:
> 
>                  hi Mike,
>                  i could not get it to work, if you have a recipe that
>         works, please
>                  share it. ROOTFS_POSTPROCESS_COMMAND seems to be buggy.
> 
>                  thank you
> 
> 
> 
>                  On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans
>                  <mike.looijmans@topic.nl
>         <mailto:mike.looijmans@topic.nl> <mailto:mike.looijmans@topic.nl
>         <mailto:mike.looijmans@topic.nl>>
>                  <mailto:mike.looijmans@topic.nl
>         <mailto:mike.looijmans@topic.nl> <mailto:mike.looijmans@topic.nl
>         <mailto:mike.looijmans@topic.nl>>>> wrote:
> 
>                       On 11-12-17 15:18, Sherif Omran wrote:
> 
>                           i want to create a recipe to clean some files
>         from the rootfile
>                           system, but i don't know how to let this
>         recipe run the last one
>                           before building the rootfile system.
> 
> 
>                       You can use ROOTFS_POSTPROCESS_COMMAND in your
>         image recipe to do
>                  some
>                       last-minute filesystem cleanup.
> 
>                       However, in most cases it's much better to
>         determine what recipe
>                  puts the
>                       files there and modify the recipe or remove the
>         package. It would
>                  help a
>                       lot if you would reveal what files you want to
>         remove and why.
> 
> 
>                       Kind regards,
> 
>                       Mike Looijmans
>                       System Expert
> 
>                       TOPIC Products
>                       Materiaalweg 4, NL-5681 RJ Best
>                       Postbus 440, NL-5680 AK Best
>                       Telefoon: +31 (0) 499 33 69 79
>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                  <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                  <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                       E-mail: mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>
>                  <mailto:mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>>
>                       <mailto:mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>
> 
>                  <mailto:mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>>>
>                       Website: www.topicproducts.com
>         <http://www.topicproducts.com> <http://www.topicproducts.com>
>                  <http://www.topicproducts.com>
> 
>                       Please consider the environment before printing
>         this e-mail
> 
> 
> 
>                       --
> 
> 
>              Kind regards,
> 
>              Mike Looijmans
>              System Expert
> 
>              TOPIC Products
>              Materiaalweg 4, NL-5681 RJ Best
>              Postbus 440, NL-5680 AK Best
>              Telefoon: +31 (0) 499 33 69 79
>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>              E-mail: mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>
>              <mailto:mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>>
>              Website: www.topicproducts.com
>         <http://www.topicproducts.com> <http://www.topicproducts.com>
> 
>              Please consider the environment before printing this e-mail
> 
> 
> 
> 
> 
>     Kind regards,
> 
>     Mike Looijmans
>     System Expert
> 
>     TOPIC Products
>     Materiaalweg 4, NL-5681 RJ Best
>     Postbus 440, NL-5680 AK Best
>     Telefoon: +31 (0) 499 33 69 79
>     <tel:%2B31%20%280%29%20499%2033%2069%2079>
>     E-mail: mike.looijmans@topicproducts.com
>     <mailto:mike.looijmans@topicproducts.com>
>     Website: www.topicproducts.com <http://www.topicproducts.com>
> 
>     Please consider the environment before printing this e-mail
> 
> 
> 
>     _______________________________________________
> 
> 
>                       yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>                  <mailto:yocto@yoctoproject.org
>         <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org
>         <mailto:yocto@yoctoproject.org>>>
>         https://lists.yoctoproject.org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
>                  <https://lists.yoctoproject.org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>>
>                       <https://lists.yoctoproject.org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
>                  <https://lists.yoctoproject.org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>>>
> 
> 
> 
> 
> 
> 
> 
> 

-- 
MARTIN HUNDEBØLL, Prevas A/S
Software Developer

Hedeager 3, DK-8200 Aarhus N
Phone +45 87438070
Mobile +45 25562438
Martin.Hundeboll@prevas.dk
www.prevas.com

