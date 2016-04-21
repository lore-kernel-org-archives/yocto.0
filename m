Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E40E3E00CEA; Thu, 21 Apr 2016 11:02:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f194.google.com (mail-lb0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29185E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 11:02:16 -0700 (PDT)
Received: by mail-lb0-f194.google.com with SMTP id mx9so3383623lbb.2
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 11:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Tch8CaTLPBEeNbeJXRCMPqVgNe5ODF/odkM3HmCt6F0=;
	b=ifA/+5sYRmFWALufbcctQVaDwEF3MCa4T2c841FKcVdbLa5oEu+n8jSA8D8LtLkaNR
	OOJCmEVQ6O49L2slAWpxtUlZXYm0O92dhfTOM0T9qdedRljLniFZREuoi2KUP+B5dEkq
	N4jd2ZJkWsVK81B3Ek7CgkFj9GwFI+H9pkHWHZFPEwYA0NncZw27oaIwmsdn6oj6CPzB
	uH3tD4hcx+JS8/oy8ZoUeco4jRGxm6VLH1YzdVkz+7gmM5aK2TXQQWlfq5LCE2WX/2/v
	bFC2ykWbkJph0xMWR6HSAFQsFV09gAzZFR5Jxr1FuE1bXWAf9yMyOfyr2cjrQSAuSaR7
	h33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Tch8CaTLPBEeNbeJXRCMPqVgNe5ODF/odkM3HmCt6F0=;
	b=JpKLVxE1HW9vv/LTyPVRJiIE+Py0fOhJ2bwzuTkufRRigbbSiUPi7qFRGk/9c6G+Uv
	nzyM0ETccHP2ljK4fltWEfX39tn3cNpkna2/nrLVVzaaxzi4b+QBJ4mhljexS7gHkLwy
	bvVYzBo1ahk8UpRH0zyZOP3i5gMGmGnczQ4/1HILOfUL20WsJm1N2qNq2tcIGSMgBRT7
	7vhR//n5x3sT9Ie0W8HqE5Q1s+/yt5w8QLV2rnFWrZSpw1CtaUHZuqZxh7ZYy7p/fXB8
	sDJSFFDpTbgR8YO7zQZkSLQTF6CN3Pkf6N3MVcnQL8tam2lQouX5X29qVrodTuTcarJZ
	wQ5g==
X-Gm-Message-State: AOPr4FVWOXcn9PEMq5WJ7n8APeQL1Qu/AaBH1aIbmAiNvOxC327Taafw3y7h10kA7cyeK5WyFvRo17Fovh8jdQ==
MIME-Version: 1.0
X-Received: by 10.112.134.195 with SMTP id pm3mr6961376lbb.127.1461261735185; 
	Thu, 21 Apr 2016 11:02:15 -0700 (PDT)
Received: by 10.112.128.196 with HTTP; Thu, 21 Apr 2016 11:02:15 -0700 (PDT)
X-Originating-IP: [81.159.212.160]
In-Reply-To: <20160421175533.GS1588@resin>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-5-git-send-email-theodor@gherzan.ro>
	<20160421175533.GS1588@resin>
Date: Thu, 21 Apr 2016 19:02:15 +0100
Message-ID: <CAJjOg+H9+8QyueBHotQc_F+a4K6_16V2RFtojn-MDEH4_L4psQ@mail.gmail.com>
From: Theodor Gherzan <theodor@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/5] README: Document new variable configuration
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
X-List-Received-Date: Thu, 21 Apr 2016 18:02:19 -0000
Content-Type: text/plain; charset=UTF-8

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 README | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/README b/README
index 536926b..326b0bd 100644
--- a/README
+++ b/README
@@ -29,6 +29,7 @@ Contents:
     3.L. Enable SPI bus
     3.M. Enable I2C
     3.N. Enable PiTFT support
+    3.O. Enable UART support
 4. Extra apps
     4.A. omxplayer
 5. Board Configuration
@@ -233,6 +234,12 @@ the modelname should be added as a
MACHINE_FEATURES in local.conf like below:
 List of currently supported models:
     - pitft22

+3.O. Enable UART
+===============
+Set this variable to enable UART on raspberypi3:
+ENABLE_UART = "1"
+
+Note: The value of enable_uart would be set to 1 by default on raspberrypi 1/2.

 4. Extra apps
 =============
-- 
2.1.4

On Thu, Apr 21, 2016 at 6:55 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Apr 21, 2016 at 06:32:13PM +0100, Theodor Gherzan wrote:
>> From: Theodor Gherzan <theodor@resin.io>
>>
>> Signed-off-by: Theodor Gherzan <theodor@resin.io>
>> ---
>>  README | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/README b/README
>> index 536926b..cbc7a92 100644
>> --- a/README
>> +++ b/README
>> @@ -233,6 +233,10 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
>>  List of currently supported models:
>>      - pitft22
>>
>> +3.O. Enable UART
>> +===============
>> +Set this variable to enable UART:
>> +ENABLE_UART = "1"
>
> Based on the explaination about enable_uart this is not quite right.
> Cause on rpi1, rpi2 and cm it will get enabled without this variable by
> default. So this needs a little additional information.
>
>>
>>  4. Extra apps
>>  =============
>> --
>> 2.1.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan

