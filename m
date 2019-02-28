Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C216EE00950; Thu, 28 Feb 2019 09:26:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F10E00901
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:26:22 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id b20so17640792edw.11
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=zEMR9Rt88GbMNZOSvqDmgsmGylUIYbg7reJDYzN4VuE=;
	b=Edo9eJiIIowpcPWM3g85Zo6uIlRLAjtpUJkrbnTGeOWMAot8i8VkKnIe2VfLdkzbMw
	TalNpT1R2uXF7GqU8r48fNYMtRgR/tFl57g5HztyLFPyMGdA3FPLE9nYHEiMFP5C5cvo
	29Y7wRVxMHyYRIEm0DdPQi1fegzxNhfhQ6t1Cr1MV1h15QsQOY0nshG38osbUP7aE7Cb
	FFtAu7bjJrZUdK9AtDTCvTAOiWFIWszX2TpFlVJHGOIm4GGbhK13g7OaQMlBbD7VZ8rf
	R5OfyY/EMfjMQDPA7xiTrM4AyCHZDVRr2yf7aKypdaesSReQK/GY5TEiSeQgFm81eGUJ
	BU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=zEMR9Rt88GbMNZOSvqDmgsmGylUIYbg7reJDYzN4VuE=;
	b=YLiKTWMCYe96j+6aFta1GtgpCmKu6GznEGWOFXo9J+Arr3wxWUVkdfbGoY74ssQohh
	zWuXHn9YhmKtvHJvnmp40VeXfbqOdWTNOxqFECkcM/B8jt/EINv+hmpVm01zdrTj42dk
	fK/oVUacZy07FpLCkHXOkFIi2uVvzg63vWeHfeG6yfHPYP6KLNAMR5MUVvl/ViO0eGCZ
	sjLF6w6cigtf8i6agufyVCeOZObH/tPzE1rAZfS7KL4o1RbYTNwlitFxL3Nf3ubO12vW
	1FQODS1aHM1HEFZSQ1Q+2BBXlTTbLjc64XIi6Ld0OUwwOB6XCoQtEdwZMgM3h7Q6pL4c
	lFZQ==
X-Gm-Message-State: APjAAAUyvoOWHJwXQmw2ryBUKdWyM/Q9Ka1VR64Jy+lKRWstuh3L+eat
	eCdpkdv9Yv2gbQ16em6ZCKNNYBBY
X-Google-Smtp-Source: APXvYqxR/EUiK4BFrlAh2/8wdG4Tk4T8djDypJa3AGFfUQuzSrjiCJnjvkQE8+XOQbMJJOwRusr6vA==
X-Received: by 2002:a50:9154:: with SMTP id f20mr611846eda.68.1551374781437;
	Thu, 28 Feb 2019 09:26:21 -0800 (PST)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	d47sm5110399eda.77.2019.02.28.09.26.20 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Feb 2019 09:26:20 -0800 (PST)
To: yocto@yoctoproject.org
References: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <10f67545-7dac-9318-638f-78a164dcc5e5@googlemail.com>
Date: Thu, 28 Feb 2019 18:26:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
Subject: Re: ROS support on yocto project
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
X-List-Received-Date: Thu, 28 Feb 2019 17:26:23 -0000
Content-Type: multipart/alternative;
	boundary="------------18B3CFD8CB02600DCF4DD563"
Content-Language: en-US

--------------18B3CFD8CB02600DCF4DD563
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi!


Yes, there is, there is a meta-ros.


For your convenience:


https://discourse.ros.org/t/new-version-of-meta-ros-for-kinetic-distribution/2833

https://github.com/bmwcarit/meta-ros


It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last stable 
if I am not mistaken.


Regards,


    Matthias


On 2/21/19 9:26 AM, Carlos Pozos Ochoa wrote:
>
> I recently acquire a Renesas R Car M3 board which runs on an embedded 
> linux image build by means of the Yocto project. We are currently 
> using YOCTO 3.9.0. We are looking forward to implement ROS kinetic 
> libraries on this embedded linux. Does the yocto project supports this 
> libraries? In the case it does, is there any special process to 
> install and run them? Or is it work as a normal linux distribution?
>
>
>

--------------18B3CFD8CB02600DCF4DD563
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi!</p>
    <p><br>
    </p>
    <p>Yes, there is, there is a meta-ros. <br>
    </p>
    <p><br>
    </p>
    <p>For your convenience:</p>
    <p><br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://discourse.ros.org/t/new-version-of-meta-ros-for-kinetic-distribution/2833">https://discourse.ros.org/t/new-version-of-meta-ros-for-kinetic-distribution/2833</a></p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/bmwcarit/meta-ros">https://github.com/bmwcarit/meta-ros</a><br>
    </p>
    <p><br>
    </p>
    <p>It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last
      stable if I am not mistaken.<br>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>  <br>
    </p>
    <p>   Matthias<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/21/19 9:26 AM, Carlos Pozos Ochoa
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <div>
          <p style="margin: 0px 0px 10.66px;"><span style="margin: 0px;
              color: rgb(33, 33, 33); line-height: 107%; font-family:
              &quot;Segoe UI&quot;,sans-serif; font-size: 11.5pt;"
              lang="EN-US">I recently acquire a Renesas R Car M3 board
              which runs on an embedded linux image build by means of
              the Yocto project. We are currently using YOCTO 3.9.0. We
              are looking forward to implement ROS kinetic libraries on
              this embedded linux. Does the yocto project supports this
              libraries? In the case it does, is there any special
              process to install and run them? Or is it work as a normal
              linux distribution?</span><span style="margin: 0px;"
              lang="EN-US"></span></p>
        </div>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------18B3CFD8CB02600DCF4DD563--
