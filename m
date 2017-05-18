Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5129DE00AE6; Thu, 18 May 2017 08:44:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
X-Greylist: delayed 1717 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 May 2017 08:44:54 PDT
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1430E00852
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 08:44:54 -0700 (PDT)
Received: from mailin02.ims-firmen.de ([192.168.1.142])
	by mailout02.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1dBN9z-0000Jt-lD
	for yocto@yoctoproject.org; Thu, 18 May 2017 17:16:15 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin02.ims-firmen.de with esmtpsa
	(TLSv1.2:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1dBN9z-0003DM-4p
	for yocto@yoctoproject.org; Thu, 18 May 2017 17:16:15 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id E895D513FEF
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 17:16:14 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <973975c4-73b9-d312-b7cc-493678a53805@iseg-hv.de>
Date: Thu, 18 May 2017 17:14:40 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: Error: when reparsing
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
X-List-Received-Date: Thu, 18 May 2017 15:44:56 -0000
Content-Type: multipart/alternative;
	boundary="------------973A6603216E116BA9B31669"

--------------973A6603216E116BA9B31669
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I was building a custom-linux-image. I succesfully build the image with 
the help of bitbake tool.

When rebuilding the same image again, i was experiencing an error.

/ERROR: When reparsing //<filepath>.do_install, //the //basehash value changed from 3c2401cc61fce5eb899de19dbf78862f to //558516a74162944aff656a7d01321b12. The metadata is //not deterministic and this needs to be fixed. /Then i deleted the build/tmp and build/sstate, and again tried to rebuild. But Now I encountered with an another errors.

Error:
/</home/hutch/yocto_master_wcs_10_4_2013/oe-core/build/tmp/deploy/ipk/all/nativesdk-packagegroup-sdk-host_1.0-r11_all.ipk 
Matched in b manifest-i686-nativesdk-packagegroup-sdk-host.deploy-ipk 
Please verify which package should provide the above files. NOTE: Tasks 
Summary: Attempted 3172 tasks of which 2449 didn't need to be rerun and 
all succeeded./

I deleted all the files in /deploy/ipk, build/sstate, build/tmp-glibc and also deploy/sdk/ for building a new image.

Is there any alternative for rebuilding the image without the above errors and without deleting the file everytime.

Best Regards,
Rajesh



--------------973A6603216E116BA9B31669
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi,</p>
    <p>I was building a custom-linux-image. I succesfully build the
      image with the help of bitbake tool.</p>
    <p>When rebuilding the same image again, i was experiencing an
      error.<br>
    </p>
    <pre style="white-space: pre-wrap; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><i>ERROR: When reparsing </i><i>&lt;filepath&gt;.do_install, </i><i>the </i><i>basehash value changed from 3c2401cc61fce5eb899de19dbf78862f to </i><i>558516a74162944aff656a7d01321b12. The metadata is </i><i>not deterministic and this needs to be fixed.

</i>Then i deleted the build/tmp and build/sstate, and again tried to rebuild. But Now I encountered with an another errors.

Error:
<i>&lt;/home/hutch/yocto_master_wcs_10_4_2013/oe-core/build/tmp/deploy/ipk/all/nativesdk-packagegroup-sdk-host_1.0-r11_all.ipk
   Matched in b manifest-i686-nativesdk-packagegroup-sdk-host.deploy-ipk
Please verify which package should provide the above files.
NOTE: Tasks Summary: Attempted 3172 tasks of which 2449 didn't need to be
rerun and all succeeded.</i>

I deleted all the files in /deploy/ipk, build/sstate, build/tmp-glibc and also deploy/sdk/ for building a new image. 

Is there any alternative for rebuilding the image without the above errors and without deleting the file everytime.

Best Regards,
Rajesh


</pre>
  </body>
</html>

--------------973A6603216E116BA9B31669--
