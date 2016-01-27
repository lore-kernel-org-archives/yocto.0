Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ABF9E00C0B; Tue, 26 Jan 2016 18:11:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A227E007D9
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 18:11:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u0R2Br2a026504
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Jan 2016 18:11:53 -0800 (PST)
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Tue, 26 Jan 2016 18:11:52 -0800
Message-ID: <56A82765.30403@windriver.com>
Date: Wed, 27 Jan 2016 10:11:49 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: <openembedded-devel@lists.openembedded.org>, Patches and discussions about
	the oe-core layer <openembedded-core@lists.openembedded.org>, Yocto Project
	<yocto@yoctoproject.org>
References: <2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com>
In-Reply-To: <2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com>
X-Originating-IP: [128.224.163.141]
Subject: Re: [oe] [RFT] Glibc 2.23 and binutils 2.26
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
X-List-Received-Date: Wed, 27 Jan 2016 02:11:58 -0000
Content-Type: multipart/alternative;
	boundary="------------010306050104020204020902"

--------------010306050104020204020902
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2016 07:54 PM, Khem Raj wrote:
> Hi all
>
> upstream glibc and binutils release branches have been cut out and are being made ready for next release
> I have put together update patchset for both of them
>
> here are the branches
>
> https://github.com/kraj/openembedded-core/tree/kraj/binutils-2.26
> https://github.com/kraj/openembedded-core/tree/kraj/glibc-2.23
>
> FYI These are still using autorev to ensure that we test tip of release branches
>
> Please give them a shot in your environments and report any issues you encounter.
>
> Thanks for help
>
> -Khem
>
>
>
>
>

0001-Generate-relocatable-SDKs.patch is included in SRC_URI twice, which 
causes the following error when building binutils-crosssdk-XXX.

ERROR: Command Error: exit status: 1  Output:
Patch 0001-Generate-relocatable-SDKs.patch is already applied; check 
your series file
ERROR: Function failed: patch_do_patch

binutils-2.26.inc and binutils-crosssdk_2.26.bb both has this patch in 
its SRC_RUI.

Regards,
Chen Qi

--------------010306050104020204020902
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/17/2016 07:54 PM, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com"
      type="cite">
      <pre wrap="">Hi all

upstream glibc and binutils release branches have been cut out and are being made ready for next release
I have put together update patchset for both of them

here are the branches

<a class="moz-txt-link-freetext" href="https://github.com/kraj/openembedded-core/tree/kraj/binutils-2.26">https://github.com/kraj/openembedded-core/tree/kraj/binutils-2.26</a>
<a class="moz-txt-link-freetext" href="https://github.com/kraj/openembedded-core/tree/kraj/glibc-2.23">https://github.com/kraj/openembedded-core/tree/kraj/glibc-2.23</a>

FYI These are still using autorev to ensure that we test tip of release branches

Please give them a shot in your environments and report any issues you encounter.

Thanks for help

-Khem



</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    0001-Generate-relocatable-SDKs.patch is included in SRC_URI twice,
    which causes the following error when building
    binutils-crosssdk-XXX.<br>
    <br>
    ERROR: Command Error: exit status: 1  Output:<br>
    Patch 0001-Generate-relocatable-SDKs.patch is already applied; check
    your series file<br>
    ERROR: Function failed: patch_do_patch<br>
    <br>
    binutils-2.26.inc and binutils-crosssdk_2.26.bb both has this patch
    in its SRC_RUI.<br>
    <br>
    Regards,<br>
    Chen Qi<br>
  </body>
</html>

--------------010306050104020204020902--
