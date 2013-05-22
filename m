Return-Path: <precipice.development@gmail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EFD0E013E3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:25:12 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa10so2020982pad.5
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=5ZpEkdUzFKUX+wCHD+FgfBc0M0lUSZjHSixbhZw8iUg=;
	b=j1bsIa2ET6q1f9/WvfPsrKGffHfxhi6ahwGT2CgakuVZ82wwFbJR9hxgo5Vh7e0YtD
	kjJHFyDNKYaUuhboM5f9LBe5G3fNljLEJDF7HM7ET8UCewONzVu+v339+fOPfBzuTWGX
	BEVo6cYdE3T5ayioagoT8cSoClsSWj8OCXw3gM4HEVNHA/hwXhX+rysNJdbzDUNwNESo
	aFbnU4voFT0L7YJkHQhEzgVxHEiO3A+4v8Yqli9Rq8IEzmIAQgbc+gGFj04D1bAj9vNS
	yfwuebT0rkOQgzfNH09HBpQLc5XfjWabGRWVwjLvKHnY7w9tjpYllWZMIhbjcxzKVIhY
	i9Kg==
X-Received: by 10.68.202.7 with SMTP id ke7mr8763341pbc.82.1369243512201;
	Wed, 22 May 2013 10:25:12 -0700 (PDT)
Received: from Perth.local (ip70-176-238-137.ph.ph.cox.net. [70.176.238.137])
	by mx.google.com with ESMTPSA id
	qp4sm7977645pbc.41.2013.05.22.10.25.10 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 10:25:11 -0700 (PDT)
Message-ID: <519CFF76.5020302@gmail.com>
Date: Wed, 22 May 2013 10:25:10 -0700
From: "precipice.development" <precipice.development@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: Rudolf Streif <rstreif@linuxfoundation.org>
References: <CAN0nBNhwxY1hxj+BAyDKKkVnHSOpcxLfZB+vOq5MQqVvZQiSjA@mail.gmail.com>
	<CA+gsK-qmFq2NLcd4-AO=aRBC7q3W8fwRarLpnv9-WtS2TWFLtg@mail.gmail.com>
	<CAN0nBNisz3mG5mx3JAWHdGCuDmE7yYekdZgNXu4rH6dvJ9qp8g@mail.gmail.com>
In-Reply-To: <CAN0nBNisz3mG5mx3JAWHdGCuDmE7yYekdZgNXu4rH6dvJ9qp8g@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: ADT Install Issues
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
X-List-Received-Date: Wed, 22 May 2013 17:25:12 -0000
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Sorry - did not realize the typo in my
      message.<br>
      <br>
      The file I grabbed
      (core-image-minimal-dev-routerstationpro.tar.bz2) was from yocto.&nbsp;
      I copied the URL from Chrome and did not realize it pointed to a
      local URL.&nbsp; Same for the sato image.&nbsp; It was from Yocto and not
      local.&nbsp; The latter one was the one that worked<br>
      <br>
      Jerry<br>
      <br>
      On 22/05/13 10:03 , Precipice Development wrote:<br>
    </div>
    <blockquote
cite="mid:CAN0nBNisz3mG5mx3JAWHdGCuDmE7yYekdZgNXu4rH6dvJ9qp8g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="">Some progress. &nbsp;Thanks for your help. &nbsp;My notes
          are below. &nbsp;I found a path to get it working but not as per
          documentation</div>
        <div><br>
        </div>
        I did use my own rootfs image. &nbsp;In the adt_installer.conf file I
        had the following:
        <div>
          <br>
        </div>
        <div>
          <div>YOCTOADT_ROOTFS_mips="minimal-dev sato-sdk"</div>
          <div>YOCTOADT_TARGET_SYSROOT_IMAGE_mips="minimal-dev"</div>
          <div>YOCTOADT_TARGET_SYSROOT_LOC_mips="$HOME/adt/sysroots/mips"</div>
        </div>
        <div><br>
        </div>
        <div style="">In my eclipse preferences for ADT, I have sysroot
          pointed to the&nbsp;</div>
        <div style=""><br>
        </div>
        <div style="">I also
          grabbed&nbsp;<a class="moz-txt-link-freetext" href="file:///home/jph/downloads/core-image-minimal-dev-routerstationpro.tar.bz2">file:///home/jph/downloads/core-image-minimal-dev-routerstationpro.tar.bz2</a>
          and did a runqemu-extract-sdk as a test. Pointed my sysroots
          to the extracted folder. &nbsp;I get the same error in Eclipse. &nbsp;I
          went ahead and grabbed the sato image for RSPro and repeated.
          &nbsp;Reconfigure projects worked and gave me an info message only:</div>
        <div style=""><br>
        </div>
        <div style="">
          <div>Missing PROG mips-poky-linux-dlltool<span class=""
              style="white-space:pre"> </span><span class=""
              style="white-space:pre"> </span></div>
          <div>Missing PROG dlltool<span class=""
              style="white-space:pre"> </span>hw3<span class=""
              style="white-space:pre"> </span></div>
          <div>Missing PROG mips-poky-linux-mt<span class=""
              style="white-space:pre"> </span></div>
          <div><br>
          </div>
          <div style="">From this image the build worked. &nbsp;Not sure why
            I am getting those errors with the dev image however (both
            mine and the downloaded one).</div>
        </div>
        <div><br>
        </div>
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Tue, May 21, 2013 at 10:40 PM,
            Rudolf Streif <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:rstreif@linuxfoundation.org"
                target="_blank">rstreif@linuxfoundation.org</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">What
              root file system are you using with your Eclipse ADT
              setup? If you are using one of the default ones that you
              can specify in adt_installer.conf or your own?
              <div><br>
              </div>
              <div>In any case it looks as if your root file system
                image is not suitable for development work. You would
                need to use image targets that end in *-dev or *-sdk
                such as core-image-minimal-dev.</div>
              <div><br>
              </div>
              <div>Rudi</div>
            </blockquote>
          </div>
          <br>
          <br clear="all">
          <div><br>
          </div>
          -- <br>
          Precipice Development International<br>
          <a moz-do-not-send="true"
            href="http://www.precipicedevelopment.com">http://www.precipicedevelopment.com</a>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

