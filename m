Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3890E009D2; Thu, 21 May 2015 07:20:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FFC8E00985
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 07:20:26 -0700 (PDT)
Received: by laat2 with SMTP id t2so103709319laa.1
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 07:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=a/6p8qZD0eTgZaSHTCtpnBMy4uGUIoECYkeTpx6iR6o=;
	b=jhA9PINpQQBN+2HC/cgySbA2XcpNUr9xPW2bCnICwtyij5z9WxBi39qnnIvU9F/C5k
	WUmlyIAaRMJewSjFpgJv4LOyUsEVudG+pBJ6LdSsMN82wudPb1yQ6MxVKoIc/2Rd9qY1
	eT8oA6sO9Tbl5gJIsPuYLfVEaLguFxvHreFqypbfp3AFnZjKor6FG6ptLQ9FTOKSGrin
	+0vtQs9pXgiHGVvlHFaZfctPzFUEmT+gP4priYSiW28AQCH7n05XPJpABq+WnEOXr/Ku
	828I2JqeKQR4yAFxNlyjNXbiiUDrnDZsm5NJGHCwX9U9bM488VcJKG70Vv0vLueyRIuI
	OSbw==
X-Received: by 10.152.116.49 with SMTP id jt17mr2445277lab.82.1432218024421;
	Thu, 21 May 2015 07:20:24 -0700 (PDT)
Received: from [192.168.50.14] (89-70-157-137.dynamic.chello.pl.
	[89.70.157.137]) by mx.google.com with ESMTPSA id
	yq18sm5342087lbb.47.2015.05.21.07.20.23
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 May 2015 07:20:23 -0700 (PDT)
Message-ID: <555DE9A5.8090105@gmail.com>
Date: Thu, 21 May 2015 16:20:21 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CABc_YGCU1KaKpSZr24-BO2cDHS-s5qkp1j1U2ri+UCoa-zrc0w@mail.gmail.com>
	<2022355.kJ2gG9TIlz@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2022355.kJ2gG9TIlz@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Removing do_compile task and ordering problem
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
X-List-Received-Date: Thu, 21 May 2015 14:20:32 -0000
Content-Type: multipart/alternative;
	boundary="------------000307000008040307030000"

--------------000307000008040307030000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

After reading manual I assumed that /deltask/ will reorder the dependences.
If this is expected behaviour it is fine for me :)
I use /noexec/ flag then.

Regards,
Marcin


W dniu 21.05.2015 o 14:55, Paul Eggleton pisze:
> Hi Marcin,
>
> On Thursday 21 May 2015 12:47:05 Marcin Krzemiński wrote:
>> I am writing recipe that inherits from *native*.
>> I removed do_compile task using: *deltask do_compile*
>> When i was ruing bitbake my-recipe all works fine, but when I added recipe
>> to *EXTRA_IMAGEDEPENDS *and run* bitbake core-image-minimal *tasks were
>> reordered in some strange way that task do_install was performed before
>> do_fetch.
>> When I hanged *deltask do_compile *to *do_compile[noexec] = "1" * all went
>> back to normal.
>> I found *deltask *in manual so I do not know, is it a bug or not?
> I suspect this is because all deltask does is delete the task, it does not
> reconnect the dependency chain such that tasks that depended on the deleted
> task would depend on the tasks that the deleted task depended upon, so what
> you get in this case is do_install no longer having any dependencies. To be
> honest the current behaviour seems reasonable to me, though it is not
> immediately obvious and ought to be described in the manual. I think in your
> situation you really do want to set the noexec flag rather than using deltask.
>
> Cheers,
> Paul
>


--------------000307000008040307030000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    After reading manual I assumed that <i>deltask</i> will reorder the
    dependences.<br>
    If this is expected behaviour it is fine for me :)<br>
    I use <i>noexec</i> flag then.<br>
    <br>
    Regards,<br>
    Marcin<br>
    <br>
    <br>
    <div class="moz-cite-prefix">W dniu 21.05.2015 o 14:55, Paul
      Eggleton pisze:<br>
    </div>
    <blockquote
      cite="mid:2022355.kJ2gG9TIlz@peggleto-mobl.ger.corp.intel.com"
      type="cite">
      <pre wrap="">Hi Marcin,

On Thursday 21 May 2015 12:47:05 Marcin Krzemiński wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">I am writing recipe that inherits from *native*.
I removed do_compile task using: *deltask do_compile*
When i was ruing bitbake my-recipe all works fine, but when I added recipe
to *EXTRA_IMAGEDEPENDS *and run* bitbake core-image-minimal *tasks were
reordered in some strange way that task do_install was performed before
do_fetch.
When I hanged *deltask do_compile *to *do_compile[noexec] = "1" * all went
back to normal.
I found *deltask *in manual so I do not know, is it a bug or not?
</pre>
      </blockquote>
      <pre wrap="">
I suspect this is because all deltask does is delete the task, it does not 
reconnect the dependency chain such that tasks that depended on the deleted 
task would depend on the tasks that the deleted task depended upon, so what 
you get in this case is do_install no longer having any dependencies. To be 
honest the current behaviour seems reasonable to me, though it is not 
immediately obvious and ought to be described in the manual. I think in your 
situation you really do want to set the noexec flag rather than using deltask.

Cheers,
Paul

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------000307000008040307030000--
