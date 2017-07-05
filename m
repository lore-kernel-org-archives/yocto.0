Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F9C0E00BE0; Tue,  4 Jul 2017 19:07:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E166DE00BD0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 19:07:52 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id t186so117139852pgb.1
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 19:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=EHzprqpfSbEITPXqYqfPDVxmjcQflbSOaGXASzrBSGU=;
	b=EXHJdXHspRFxISmz6EtggtxUOnUE9acvF01GY+RhhdBW+tXIb/nZgACpzv+p6GCOe5
	GFz0UxMEyO0yavf5owlObZ0ozuaWMnzBOt06RAzWqA05wyy/FucDAGg57XIbGlbrIvVT
	6qZRodlmAZ3NwJeMJ0Ma4pzXyk+CRYC0gcTqAx9/MU3JFQIHDIdFczuiAMxPADx+OCW6
	tP0jrXgktqG9e08khg14MDHdD9rJGbZUcVxfJW38qjHbyuUj1T3qO7315EtuiA7UsjHa
	PMYwW6oM9urb4epShNLTfqCToUgfp4vdVOH0YFM4WP6RoGPg31GExGFF3kaNt3YXmCwi
	6vSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=EHzprqpfSbEITPXqYqfPDVxmjcQflbSOaGXASzrBSGU=;
	b=nIsOQxy/wNd754sz3cCLc/XbrULUelbaXJfkxeNIyOXOHi/5lt+YId0VD8wluurOcZ
	nYaJU8hSnj8NNQtS1gCldiZ0Mz2abvG0JNwzLZWrwtRFF8M52zu2dcGFaliqbBHLYsvA
	+6RB/MAp7o3JmiKV6EI4YPIH0OHYZeAEx7CEvfQwjGjuiNcdRnxP95yOewjyqpd6KzjT
	l5LxcthNTsu7ncJW8XbuMKMZrO5KlmoWsl1cG+2o6sGG8VTTEKARpk3gB04i1zyxtpKo
	CNAimHCYZYbGRr50lD1LNUWK2OIHUJ33vlT5PlWxMD7WTWnsD2LdoHc38J+ye0ZL34tJ
	41sQ==
X-Gm-Message-State: AIVw112y0M5xXS+4YQA8+gw5g7QqYwzf6On1N34faQk9Q1dvPHw/MsSr
	uhDKFfriT0GrnwN0
X-Received: by 10.98.13.219 with SMTP id 88mr18288344pfn.191.1499220471971;
	Tue, 04 Jul 2017 19:07:51 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8?
	([2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8])
	by smtp.gmail.com with ESMTPSA id
	u73sm43974690pfi.105.2017.07.04.19.07.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 19:07:51 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <e4afdd98-d641-c111-914c-7d2b94e88c53@gmail.com>
Date: Wed, 5 Jul 2017 10:07:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Kernel image and dts
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
X-List-Received-Date: Wed, 05 Jul 2017 02:07:56 -0000
Content-Type: multipart/alternative;
	boundary="------------EE8CBD40C04276478A277D97"
Content-Language: en-US

--------------EE8CBD40C04276478A277D97
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Yocto Team Member,

I have a question related with *.dtbo,

Can I use *.dtbo for beaglebone directly with linux yocto kernel, 
without using ti mainline kernel ?

I want to use SPI port.

One example I can read : arch/arm/boot/dts/sun7i-a20-pcduino3.dts, where 
can I find those source files on yocto ? ==> build/tmp/ .....??

Thanks


-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------EE8CBD40C04276478A277D97
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Yocto Team Member,</p>
    <p>I have a question related with *.dtbo,</p>
    <p>Can I use *.dtbo for beaglebone directly with linux yocto kernel,
      without using ti mainline kernel ?</p>
    <p>I want to use SPI port.</p>
    <p>One example I can read :
      arch/arm/boot/dts/sun7i-a20-pcduino3.dts, where can I find those
      source files on yocto ? ==&gt; build/tmp/ .....??</p>
    <p>Thanks<br>
    </p>
    <p><br>
    </p>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------EE8CBD40C04276478A277D97--
