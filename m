Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A370BE00D79; Thu, 14 Dec 2017 09:39:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0861AE00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 09:39:25 -0800 (PST)
Received: from [192.168.159.15] ([88.109.27.80]) by mrelayeu.kundenserver.de
	(mreue001 [212.227.15.163]) with ESMTPSA (Nemesis) id
	0MSmNI-1eZT5s2HoK-00RcAD for <yocto@yoctoproject.org>; Thu, 14 Dec 2017
	18:39:24 +0100
To: yocto@yoctoproject.org
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
	<CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
	<20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
	<CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
	<976da55e-da9f-6173-98b3-444b6deb5e34@prevas.dk>
	<CAPb0b+POo0Oz=GDRFDZDSEW=3iGxGGJfZ7DSFL4xcR05CM3y8g@mail.gmail.com>
	<CAPb0b+NLDCprreUT7-Pac10cid9OO+=aKY9WHVvQWBGTh+av5A@mail.gmail.com>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <eacdb79a-a299-c7e2-a5d2-5c02e92f496f@2net.co.uk>
Date: Thu, 14 Dec 2017 17:39:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+NLDCprreUT7-Pac10cid9OO+=aKY9WHVvQWBGTh+av5A@mail.gmail.com>
X-Provags-ID: V03:K0:0e3Wuo7nyE3V2bMWd4AhQLBhZuhCN92OYKyjCdJfNyXEhvmohh+
	JxN6011Iq8IMEEhxu4bcsPTv3LjSw/w9LpUNmNc/8fktT90xKAqFRrrH/A/P43QBEtUeTE5
	uBjD/VluEBuB50EZRNJ0TiMEHF4HDFUSeRyL8UM+85e+TskOyjMQkuMGYm9xFWdscZVmxlW
	4vWLqtyAFXkrxKAmZhbHA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:T2NMOzD1aj4=:08qHQmcUPdDvU0P1yT6vFE
	MYpFrFXRGeBgpDyICDKixmXD3mVczjMIDGGg1e3jRz1Il7N4HafUeeq7LU3JBoRSO+GAJ0Pg0
	l461q1nn7w1hEFItv81G++dAJEAbJRhxm2GQBSSPKoX7X23QnWMTOMh95UlzgWumdtixWfXXm
	2LeFhog+trjSxt+L7BKCcqg7TIgjUvFEu2J0oqInOgoBS8Z/14/c+nB5zuU0ELtlUHkwL+Q1K
	8LDpadET1NY5XoQT9i6hIh70khgoy3yKGsR3y57TfVKctOxPxWlW3b5zepTYYkEcP/8/YrEmd
	QRV7zabfa61nTsa8oYVJmiKGagrM7TIbwkXXWcfKkrhuVyfp/TwCC/FAO2sZBuNubvruBW5s2
	V51U28aSeALgkl2lNYYrLlB9QCFYVbto/I07uHaN7/TH0nPoPJJj+5sWDV6pai9DOd/GSLvsI
	AJdhYuCCf5Uniftdj7kPgQdy/RJl5+jvzKI2plD+WiWQoKJWbf9zJupDKVpf4DgxF+P0VJqI7
	2J90Bwpjfiy3bv3IXzcISK5BqnVSn6xBOXJ0Kz8EGdh40vRCtUwJgIT055nSowq8RtKN40Hrq
	W5/JIK2xcQxnWKAYSOLtYBIgXQPfzgLV9UcB5wADXvxqva6uWIVhcYHD1fzUgDTVg/vpO0TEV
	aT29zeWYxkbnv1wEzkyi7dOBxIzuzvpcmzm0Wlut+vG4Sty7Z5FUNEb/fhzuYeqyoK8F1dide
	AQOSXVZKnwiBGm5bvKjhKmj8UZORoftr4lSD7AkioW2YjF60k5oBZHv3+D8=
Subject: Re: recipe to clean up files from rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Dec 2017 17:39:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi Sherif,

Maybe this is a little late, but as been said already, the best solution
is to remove psplash from your image altogether. You can to this quite
simply by adding to your conf/local.conf

IMAGE_FEATURES_remove = "splash"




Rationale: the dependency on the psplash program is (usually) set in the
image recipe. For example, in
meta/recipes-core/images/core-image-base.bb, you see

IMAGE_FEATURES += "splash"

The image class (meta/classes/image.bbclass) matches the list of
features in IMAGE_FEATURES with package names in FEATURE_PACKAGES_*. So,
in meta/classes/image.bbclass, you find

SPLASH ?= "psplash"
FEATURE_PACKAGES_splash = "${SPLASH}"

This causes "psplash" to be added to the image if IMAGE_FEATURES
contains the string "splash".

By using IMAGE_FEATURES_remove, you remove the string "splash" from the
list of features and so psplash will not be included in your image.

HTH,
Chris Simmonds.


On 14/12/17 08:14, Sherif Omran wrote:
> hi Andre
> thank you for your mail. I tried to remove this package but i don't know
> where it is installed from, i can not find it and got lost.
> 
> On Thu, Dec 14, 2017 at 9:11 AM, Sherif Omran <sherifomran2000@gmail.com
> <mailto:sherifomran2000@gmail.com>> wrote:
> 
>     hi Martin,
> 
>     thank you for help .. well done .. it should now work..
> 
>     On Thu, Dec 14, 2017 at 8:17 AM, Martin Hundebøll
>     <Martin.Hundeboll@prevas.dk <mailto:Martin.Hundeboll@prevas.dk>> wrote:
> 
>         Hi Sherif,
> 
>         On 2017-12-14 08:06, Sherif Omran wrote:
> 
>             Here is my recipe, it runs suceeds but does not delete the files
> 
>             mypostprocesfunction() {
>             rm -r ${IMAGE_ROOTFS}/etc/init.d/psplash.sh
>             rm -r ${IMAGE_ROOTFS}/usr/bin/psplash*
>             }
> 
>             ROOTFS_POSTPROCESS_COMMAND += "mypostprocessfunction; "
> 
> 
>         Unless you did a copy-paste error, there's a typo in the
>         function name:
>         mypostprocesfunction
>         mypostprocessfunction
> 
>         // Martin
> 
> 
>             On Wed, Dec 13, 2017 at 2:03 PM, Mike Looijmans
>             <mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>             <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>> wrote:
> 
>                 ${D} won't work here, grep on ROOTFS_POSTPROCESS_COMMAND
>             for recipes
>                 that get it right.
> 
>                 And, much much much better would be to just not install
>             psplash into
>                 your image!
> 
>                 On 13-12-17 09:10, Sherif Omran wrote:
> 
>                     here is my recipe, the aim was to remove some files
>             from the
>                     init.d folder and tweek before creating the image
> 
>                     #
>                     # This file was derived from the 'Hello World!'
>             example recipe
>                     in the
>                     # Yocto Project Development Manual.
>                     #
> 
>                     SUMMARY = "This recipe removes any missing files
>             from the
>                     filesystem before finalinzing it"
>                     SECTION = "base"
>                     LICENSE = "MIT"
>                     LIC_FILES_CHKSUM =
>                    
>             "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> 
>                     #SRC_URI = "file://*"
> 
>                     S = "${WORKDIR}"
>                     BB_STRICT_CHECKSUM ="0"
>                     ALLOW_EMPTY_${PN}="1"
> 
> 
>                     #IMAGE_INSTALL = "packagegroup-core-boot
>                     packagegroup-base-extended ${CORE_IMAGE_EXTRA_INSTALL}"
>                     #IMAGE_INSTALL = "${CORE_IMAGE}"
> 
>                     #inherit core-image
> 
>                     my_postprocess_function() {
>                        rm -r ${D}${bindir}/init.d/psplash.sh
>                     }
> 
>                     ROOTFS_POSTPROCESS_COMMAND +=
>             "my_postprocess_function; "
> 
>                     On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans
>                     <mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>
>             <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>
>                     <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>
>                     <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>>> wrote:
> 
>                          Well, start by sharing yours first.
> 
>                          Be careful when naming your shell routine,
>             sometimes OE
>                     considers parts
>                          behind the underscore as overrides and then it
>             cannot find it.
> 
> 
>                          On 13-12-17 07:14, Sherif Omran wrote:
> 
>                              hi Mike,
>                              i could not get it to work, if you have a
>             recipe that
>                     works, please
>                              share it. ROOTFS_POSTPROCESS_COMMAND seems
>             to be buggy.
> 
>                              thank you
> 
> 
> 
>                              On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans
>                              <mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>
>                     <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>
>             <mailto:mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>                     <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>>
>                              <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>
>                     <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>
>             <mailto:mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>                     <mailto:mike.looijmans@topic.nl
>             <mailto:mike.looijmans@topic.nl>>>>> wrote:
> 
>                                   On 11-12-17 15:18, Sherif Omran wrote:
> 
>                                       i want to create a recipe to clean
>             some files
>                     from the rootfile
>                                       system, but i don't know how to
>             let this
>                     recipe run the last one
>                                       before building the rootfile system.
> 
> 
>                                   You can use ROOTFS_POSTPROCESS_COMMAND
>             in your
>                     image recipe to do
>                              some
>                                   last-minute filesystem cleanup.
> 
>                                   However, in most cases it's much better to
>                     determine what recipe
>                              puts the
>                                   files there and modify the recipe or
>             remove the
>                     package. It would
>                              help a
>                                   lot if you would reveal what files you
>             want to
>                     remove and why.
> 
> 
>                                   Kind regards,
> 
>                                   Mike Looijmans
>                                   System Expert
> 
>                                   TOPIC Products
>                                   Materiaalweg 4, NL-5681 RJ Best
>                                   Postbus 440, NL-5680 AK Best
>                                   Telefoon: +31 (0) 499 33 69 79
>             <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                     <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                              <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                              <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                                   E-mail:
>             mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                     <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>
>                              <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                     <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>>
>                                  
>             <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                     <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>
> 
>                              <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                     <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>>>
>                                   Website: www.topicproducts.com
>             <http://www.topicproducts.com>
>                     <http://www.topicproducts.com>
>             <http://www.topicproducts.com>
>                              <http://www.topicproducts.com>
> 
>                                   Please consider the environment before
>             printing
>                     this e-mail
> 
> 
> 
>                                   --
> 
> 
>                          Kind regards,
> 
>                          Mike Looijmans
>                          System Expert
> 
>                          TOPIC Products
>                          Materiaalweg 4, NL-5681 RJ Best
>                          Postbus 440, NL-5680 AK Best
>                          Telefoon: +31 (0) 499 33 69 79
>             <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                     <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                     <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                          E-mail: mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                     <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>
>                          <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                     <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>>
>                          Website: www.topicproducts.com
>             <http://www.topicproducts.com>
>                     <http://www.topicproducts.com>
>             <http://www.topicproducts.com>
> 
>                          Please consider the environment before printing
>             this e-mail
> 
> 
> 
> 
> 
>                 Kind regards,
> 
>                 Mike Looijmans
>                 System Expert
> 
>                 TOPIC Products
>                 Materiaalweg 4, NL-5681 RJ Best
>                 Postbus 440, NL-5680 AK Best
>                 Telefoon: +31 (0) 499 33 69 79
>             <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                 <tel:%2B31%20%280%29%20499%2033%2069%2079>
>                 E-mail: mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>
>                 <mailto:mike.looijmans@topicproducts.com
>             <mailto:mike.looijmans@topicproducts.com>>
>                 Website: www.topicproducts.com
>             <http://www.topicproducts.com> <http://www.topicproducts.com>
> 
>                 Please consider the environment before printing this e-mail
> 
> 
> 
>                 _______________________________________________
> 
> 
>                                   yocto mailing list
>                     yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>
>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>                     <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>
>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>>
>                              <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>
>                     <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>>
>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>                     <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>>>>
>                     https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>                     <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>>
>                             
>             <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>                     <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>>>
>                                  
>             <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>                     <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>>
>                             
>             <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>                     <https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>>>>
> 
> 
> 
> 
> 
> 
> 
> 
> 
>         -- 
>         MARTIN HUNDEBØLL, Prevas A/S
>         Software Developer
> 
>         Hedeager 3, DK-8200 Aarhus N
>         Phone +45 87438070 <tel:%2B45%2087438070>
>         Mobile +45 25562438 <tel:%2B45%2025562438>
>         Martin.Hundeboll@prevas.dk <mailto:Martin.Hundeboll@prevas.dk>
>         www.prevas.com <http://www.prevas.com>
> 
> 
> 
> 
> 


-- 
Chris Simmonds, Consultant, 2net Ltd
http://www.2net.co.uk
+44 (0)1962 869003

