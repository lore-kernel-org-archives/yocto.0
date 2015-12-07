Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 574DCE008C8; Mon,  7 Dec 2015 08:19:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D82F6E00349
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 08:19:19 -0800 (PST)
Received: by lbpu9 with SMTP id u9so30130141lbp.2
	for <yocto@yoctoproject.org>; Mon, 07 Dec 2015 08:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type;
	bh=zPH34tKNdfSe/CpAZjCYGyyScTfgx2ct78DvbU9qhO8=;
	b=gBn5qVX2yP6xbdCFxXpil2qrtzeoCZehnMxxyNhzc2VEHwXTXz/IOUveT27+1pcsux
	xTWL8wcVlSn6uH9/TJlkRIb+2HxvJjeD+GsUhutJIS9Psp+FyrPmHWo2N9TeXmjqjFjZ
	MGnmdiGR+ZEjDOddNLJ1JT3kbdYc9R3ctlk70ZG/oeC3a2c2mjl20cLuJfP3uogoXmPG
	39gjo4ZZ0acDiG8TRsbzTzVvzsGyPt/9rfhrZJwkGHusJtVDatCP+Rz/qlT/N7VWbxWf
	V18rtOzMBqLyFVxpX9ePrkO/0jhm2hFyFi9Z3kG7zxp53Z69D2yLk8MryTECYb6/uFZ3
	DDLA==
X-Received: by 10.112.188.231 with SMTP id gd7mr7973366lbc.6.1449505157895;
	Mon, 07 Dec 2015 08:19:17 -0800 (PST)
Received: from [192.168.50.14] (89-70-160-122.dynamic.chello.pl.
	[89.70.160.122])
	by smtp.gmail.com with ESMTPSA id i7sm5042439lbo.39.2015.12.07.08.19.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 Dec 2015 08:19:17 -0800 (PST)
To: mike9874 channel <mike987418@gmail.com>, yocto@yoctoproject.org
References: <CADkGNzhWGEV8+fW2nuKEvWUvftqB8is7WOK0A3EGpFhe5mTYAA@mail.gmail.com>
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
Message-ID: <5665B184.2030208@gmail.com>
Date: Mon, 7 Dec 2015 17:19:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CADkGNzhWGEV8+fW2nuKEvWUvftqB8is7WOK0A3EGpFhe5mTYAA@mail.gmail.com>
Subject: Re: PREEMPT-RT patch: wrong header
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
X-List-Received-Date: Mon, 07 Dec 2015 16:19:23 -0000
Content-Type: multipart/alternative;
	boundary="------------000700020306020307040000"

--------------000700020306020307040000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I think you need to set PREFERRED_VERSION_linux-headers, but I have no 
idea what you should set for yocto-rt.

Regards,
Marcin

W dniu 07.12.2015 o 14:03, mike9874 channel pisze:
> Hello,
> i am building an image for qeumux86 with the PREEMT-RT patch. 
> Therefore I use the following in my image.conf file:
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
> PREFERRED_VERSION_linux-yocto-rt ?= "4%"
>
> I get an image with the 4.1.8-rt8-yocto-preempt-rt kernel. I have an 
> Application which is also build into the image where I try to use 
> SCHED_DEADLINE with sched_setattr() and struct sched_attr from 
> <sched.h>. My bitbake compiler throws following error: storage size of 
> 'scheduling_attribut' isn't known.
> Where do I get the correct Headers to compile my application?
>
> Regards,
> Mike
>
>


--------------000700020306020307040000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello,<br>
    <br>
    I think you need to set PREFERRED_VERSION_linux-headers, but I have
    no idea what you should set for yocto-rt.<br>
    <br>
    Regards,<br>
    Marcin<br>
    <br>
    <div class="moz-cite-prefix">W dniu 07.12.2015 o 14:03, mike9874
      channel pisze:<br>
    </div>
    <blockquote
cite="mid:CADkGNzhWGEV8+fW2nuKEvWUvftqB8is7WOK0A3EGpFhe5mTYAA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div>
                <div>Hello,<br>
                </div>
                i am building an image for qeumux86 with the PREEMT-RT
                patch. Therefore I use the following in my image.conf
                file:<br>
                PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"<br>
                PREFERRED_VERSION_linux-yocto-rt ?= "4%"<br>
                <br>
              </div>
              I get an image with the 4.1.8-rt8-yocto-preempt-rt kernel.
              I have an Application which is also build into the image
              where I try to use SCHED_DEADLINE with sched_setattr() and
              struct sched_attr from &lt;sched.h&gt;. My bitbake
              compiler throws following error: storage size of
              'scheduling_attribut' isn't known.<br>
            </div>
            Where do I get the correct Headers to compile my
            application?<br>
            <br>
          </div>
          Regards,<br>
        </div>
        Mike<br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000700020306020307040000--
