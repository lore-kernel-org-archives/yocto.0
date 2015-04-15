Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08CE5E009B8; Tue, 14 Apr 2015 20:34:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D28C3E0079F
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 20:33:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3F3Xqa1021430
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Apr 2015 20:33:52 -0700 (PDT)
Received: from [128.224.163.137] (128.224.163.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Tue, 14 Apr 2015 20:33:58 -0700
Message-ID: <552DDC1C.3090401@windriver.com>
Date: Wed, 15 Apr 2015 11:33:48 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: heli Atck <heliatck@gmail.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
References: <CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com>
In-Reply-To: <CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com>
X-Originating-IP: [128.224.163.137]
Cc: yocto@yoctoproject.org
Subject: Re: 1.7.1 ADT-installer errors
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
X-List-Received-Date: Wed, 15 Apr 2015 03:34:00 -0000
Content-Type: multipart/alternative;
	boundary="------------060001050503010605090900"

--------------060001050503010605090900
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I can confirm it is an issue.  I got  a 404 not found error when I tried 
to download the core-image-sato-sdk-qemux86.tar.bz2 from 
http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/. Looks like the 
symbolic link is broken.

Beth,
Would you please have a look at this and fix it ?

Thanks,
Yi

在 2015年04月14日 16:24, heli Atck 写道:
> Hi, I'm new to Yocto (and embedded Linux for that matter). I was 
> following the ADT manual to get started with application development. 
> I tried using the ADT-installer script, but ran into some errors.
>
> Here's the relevant part of the installer log file:
>
> /Creating directory /home/spe/test-yocto/qemux86...
> Extracting rootfs: core-image-sato-sdk-qemux86.tar.bz2, using pseudo...
> tar (child): ./download_image/core-image-sato-sdk-qemux86.tar.bz2: 
> Cannot open: No such file or directory
> tar (child): Error is not recoverable: exiting now
> tar: Child returned status 2
> tar: Error is not recoverable: exiting now/
>
> There are no files in my /download_image directory so I guess they 
> have not been properly retrieved from the repository. I looked at the 
> repository for 1.7.1 at 
> http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/ and some of the 
> relevant files seem to be missing.
>
> Or did I mis a step somewhere?
>
> Sammy
>
>


--------------060001050503010605090900
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi,<br>
    <br>
    I can confirm it is an issue.  I got  a 404 not found error when I
    tried to download the core-image-sato-sdk-qemux86.tar.bz2 from
    <a class="moz-txt-link-freetext" href="http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/">http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/</a>. Looks like
    the symbolic link is broken. <br>
    <br>
    Beth, <br>
    Would you please have a look at this and fix it ? <br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    <div class="moz-cite-prefix">在 2015年04月14日 16:24, heli Atck 写道:<br>
    </div>
    <blockquote
cite="mid:CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi, I'm new to Yocto (and embedded Linux for that matter).
          I was following the ADT manual to get started with application
          development. I tried using the ADT-installer script, but ran
          into some errors. <br>
          <br>
        </div>
        Here's the relevant part of the installer log file:<br>
        <div><br>
          <i>Creating directory /home/spe/test-yocto/qemux86...<br>
            Extracting rootfs: core-image-sato-sdk-qemux86.tar.bz2,
            using pseudo...<br>
            tar (child):
            ./download_image/core-image-sato-sdk-qemux86.tar.bz2: Cannot
            open: No such file or directory<br>
            tar (child): Error is not recoverable: exiting now<br>
            tar: Child returned status 2<br>
            tar: Error is not recoverable: exiting now</i><br>
          <br>
        </div>
        <div>There are no files in my /download_image directory so I
          guess they have not been properly retrieved from the
          repository. I looked at the repository for 1.7.1 at <a
            moz-do-not-send="true"
            href="http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/">http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/</a>
          and some of the relevant files seem to be missing.<br>
          <br>
        </div>
        <div>Or did I mis a step somewhere?<br>
          <br>
        </div>
        <div>Sammy<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------060001050503010605090900--
