Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E24EDE007C2; Tue,  5 Aug 2014 20:10:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joaohf[at]gmail.com)
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
	*      [209.85.213.45 listed in list.dnswl.org]
Received: from mail-yh0-f45.google.com (mail-yh0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1883E007B5
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 20:10:35 -0700 (PDT)
Received: by mail-yh0-f45.google.com with SMTP id 29so1315958yhl.18
	for <yocto@yoctoproject.org>; Tue, 05 Aug 2014 20:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=TSXVvx4DRHSXDKIgD7fm6/wDCFTZLmIZQjiVbnIP0jU=;
	b=jkRDPGxIwRN4HAkLs9M6vSO68wKA9bPonl3FzTTqVtpRZTy5MbEM0nBMzhg4tvvrmX
	QHrej8sUNWwLW+cePadS5RA8mh9zGCX8XLPgHhjXt0N4iTgHbSUoUiPQjHC9iQrKd0cy
	2AKmpYRIg/zvzlCt+A0R1+0H0nhpGIXFYaAEoYlQOfiWhYzPeXoCdSNlZuVKIafSRcDE
	DShvi/g0SQ3EIudBsiLGRh9hRPYhuGHGM+Xs1wBGrd0xpOpQjFLM/4lJ5djej59upRTY
	cAyPf+gA9qBQ+fR+FZ40tFVHN277I8Vh7rRtLoqUWqveArxvWHnq+cp80CtMkqDmmpRD
	zAIg==
X-Received: by 10.236.20.135 with SMTP id p7mr3133610yhp.36.1407294634470;
	Tue, 05 Aug 2014 20:10:34 -0700 (PDT)
Received: from [192.168.0.12] ([201.53.208.133])
	by mx.google.com with ESMTPSA id x48sm6369694yha.5.2014.08.05.20.10.32
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Aug 2014 20:10:33 -0700 (PDT)
Message-ID: <53E19C9D.7010709@gmail.com>
Date: Wed, 06 Aug 2014 00:10:21 -0300
From: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRmVycmVpcmEgZGUgRnJlaXRhcw==?=
	<joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>	
	<CFFE70D2.703B%alexandru.c.georgescu@intel.com>	
	<53DC4886.8070406@gmail.com> <1407229526.6981.72.camel@ted>
In-Reply-To: <1407229526.6981.72.camel@ted>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.7_M2 release candidate 1 ready for QA
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
X-List-Received-Date: Wed, 06 Aug 2014 03:10:40 -0000
Content-Type: multipart/alternative;
	boundary="------------010404060106010000090905"

--------------010404060106010000090905
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 05-08-2014 06:05, Richard Purdie wrote:
> On the specific errors, I think its likely the fact we're using one 
> compiler over multiple different configurations and there is likely 
> some kind of path issue somewhere. It may be worth filing bugs on 
> these issues to ensure they don't get lost. 

Bug filled, 6613
*
*

-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil


--------------010404060106010000090905
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <div class="moz-cite-prefix">On 05-08-2014 06:05, Richard Purdie
      wrote:<br>
    </div>
    <blockquote cite="mid:1407229526.6981.72.camel@ted" type="cite">
      On the specific errors, I think its likely the fact we're using
      one
      compiler over multiple different configurations and there is
      likely some
      kind of path issue somewhere. It may be worth filing bugs on these
      issues to ensure they don't get lost.
    </blockquote>
    <br>
    Bug filled, 6613<br>
    <b><br>
    </b>
    <pre class="moz-signature" cols="72">-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil</pre>
  </body>
</html>

--------------010404060106010000090905--
