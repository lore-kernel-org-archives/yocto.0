Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF1A0E00972; Fri, 17 Jun 2016 00:02:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 080F5E0071C
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 00:02:02 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id a66so87465573wme.0
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 00:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=cxIbGGEqdZMEqeZEGdQqKv/11olFWTjtcdcSEPmeh7Y=;
	b=RnDLrMN4nEjf8cYWGF8q9esbfFdr0y8XCyQB7yxmKixWnzlIe36YNVefYU271Z83Ru
	vj0iGwxgAID1Th9xYA/40DPEBsi4Q4ZRswvpbhvXvX8gFXSutWSa9MFSGuHwF5fOYMI2
	Xham/coTvrSyrkRnazo60+0faoA2Oul0qDllwFVQ3iNJ8R/nQl5WS2OZsN7dM/4Go3yP
	UMCeHnYJnvXMkdBYgw5WtNio0WEuwxEdYf07ZSRFIembMxY4zWsGGkdVYKV66Rl9vKeS
	/JIvq2bny79CmbAyXwfpuMWDci/3ZSdX4zGFIacLVAuj18+AnTHIh28LFgI8u39IcN2a
	hTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=cxIbGGEqdZMEqeZEGdQqKv/11olFWTjtcdcSEPmeh7Y=;
	b=L+4VsEA/eo6N57zYHlLOxHKXIZy7DKkWe7c8fqfzeseukhtWo+z1M0gFjYeBDF6cST
	yTRWhqk6Uh9L4RGB48heSRRP9rO6a/9FbPWbyhzNC8sokIa7+xx8MjG+loJX5AyiOWTR
	HC1h9YRJRGSqdX6V0d0KvnwnhcE2WoohAcjNCzQRgaJFaDt6BWUTIHgklLD1yoz/F88S
	pGCvyHpHEe/riObgZS2p77a14CUbRkdExxiU2mh/T32mgY4VpzvKe45pwvpMVgmab8Na
	1M/0/Y5ymsjLnhu5ylI2B+8rK8g4qonPXKxAFVfnMAab1uhj6cQR2r1m5/+3S+/CWpTD
	0mDg==
X-Gm-Message-State: ALyK8tLgmfL9rqUi/A3m8esEs9gbY32swAuHZquA3fx1heQ6oeqUwtnovgCNreqwbdN6ww==
X-Received: by 10.28.125.81 with SMTP id y78mr676189wmc.5.1466146921601;
	Fri, 17 Jun 2016 00:02:01 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	g3sm47260153wjb.47.2016.06.17.00.02.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 17 Jun 2016 00:02:01 -0700 (PDT)
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
	<57639CF0.70105@elfin.de>
	<DB23C91B06C303459B24BC3208AF424A20F4A510@MBX214.d.ethz.ch>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <5763A068.6050409@elfin.de>
Date: Fri, 17 Jun 2016 09:02:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F4A510@MBX214.d.ethz.ch>
Subject: Re: NTP
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
X-List-Received-Date: Fri, 17 Jun 2016 07:02:05 -0000
Content-Type: multipart/alternative;
	boundary="------------000007040900050606020709"

--------------000007040900050606020709
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

> I am new to Yocto, so please explain a bit more.
Not all of the recipes can be found in poky layers.
You can use multiple layers together to be able to access more recipes 
(and features like bbclasses, etc.).
You will find more info in the manual.
>
> All I have done is:
>   git clone -b krogoth git://git.yoctoproject.org/poky.git
>
> How do I now add layers ?
http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#enabling-your-layer
You will find the whole manual quite useful.
>
> Or can I somehow clone Yocto 2.1 with all layers ?
I don't think that's possible.
>
> Damir
>

Best regards,
Piotr Lewicki

--------------000007040900050606020709
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F4A510@MBX214.d.ethz.ch"
      type="cite">
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">I am new to Yocto, so please explain a
        bit more.<br>
      </div>
    </blockquote>
    Not all of the recipes can be found in poky layers.<br>
    You can use multiple layers together to be able to access more
    recipes (and features like bbclasses, etc.).<br>
    You will find more info in the manual.<br>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F4A510@MBX214.d.ethz.ch"
      type="cite">
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">
        <br>
        All I have done is:<br>
          git clone -b krogoth git://git.yoctoproject.org/poky.git<br>
        <br>
        How do I now add layers ?<br>
      </div>
    </blockquote>
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#enabling-your-layer">http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#enabling-your-layer</a><br>
    You will find the whole manual quite useful.<br>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F4A510@MBX214.d.ethz.ch"
      type="cite">
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">
        <br>
        Or can I somehow clone Yocto 2.1 with all layers ?<br>
      </div>
    </blockquote>
    I don't think that's possible.<br>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F4A510@MBX214.d.ethz.ch"
      type="cite">
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">
        <br>
        Damir<br>
        <br>
      </div>
    </blockquote>
    <br>
    Best regards,<br>
    Piotr Lewicki<br>
  </body>
</html>

--------------000007040900050606020709--
