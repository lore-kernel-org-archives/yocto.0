Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECEADE00DE0; Wed, 15 May 2019 10:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B041E00DD2
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 10:07:50 -0700 (PDT)
Received: by mail-pl1-f180.google.com with SMTP id x15so165175pln.9
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 10:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=kAu21LDXj0UCYo1vNllaVCEk27Gjzj6RUJ/NcC78Kks=;
	b=EOtNA7FqxWBsnlmz9rgdU618LzHQkJoL3Wj6/CwroIKppFKPFVPDbEQUd7qONbj2dy
	XtPs4difgFSSPcL+who07h9IHaflXl3QR/kbupJkHS4wMYcpzNkkz/w6Fs3tLnvkKUm/
	BcMlDo6Fy/t3wEtKn7FORNtrQai1FHc+IlcTKZePKHUWJ7h+e0G8PleOzxAa2xJ0cOLE
	bZ6P0bszJsGpert+25eso9MVsGT0Ux0RqJoNJyOEGlJny+P8U8lcIeCP4Aj3fXfGLQYE
	2GOP1phLUt4CoLByRsqVxymqZkOgxDG2zzVVjGJmce1xcLGpk+FmuCbVBBVVclmMpTc2
	L7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kAu21LDXj0UCYo1vNllaVCEk27Gjzj6RUJ/NcC78Kks=;
	b=dBK1gpi/mSpPv8zjCPTLIsLsD5Cz3OBOtCNhVCIcnEwpBJomvWWwDANDxFgIvBIZh9
	+KV6Kny5DBe40HeupzxPYRSUdtqWd9aJhxErxzdtAbCDYnvVZhhTvDCDkIHr6jxBu9PU
	dKUqiwev6Wkxeig6Ps0GydJb6En6LzEgPupG/IxSfeX70/TedJSqEXouZlNv6fSXLTVs
	RqGOIVOwZNp1IIFf74cKWRINXzGMpJ3hK+xqfjG8LwoDgQlWnbKykToD9bh8hoTLWHPg
	T7RRS0DNVIQ1TDeWnbVArnDvdAPcYBcPY74mKWVa2cymWY8mHdQbOZOcqmmFuiTguoir
	ZYyw==
X-Gm-Message-State: APjAAAXImjMVo3T/NgWy9qk2MN3QTyAyj66gqxJzdnLeOaxx6pnSswvL
	xWM2LGOEtpqR3M+mpmyFpT+TDu7sgOU=
X-Google-Smtp-Source: APXvYqz4CostGdMkinUusoweNC6Bjdj9s1kwLpgh7aU8ViTe7dkmYIxWQqOPWMyxA4bSw6+7iMBTlA==
X-Received: by 2002:a17:902:be15:: with SMTP id
	r21mr45485850pls.340.1557940069985; 
	Wed, 15 May 2019 10:07:49 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	z125sm4496272pfb.75.2019.05.15.10.07.48
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 May 2019 10:07:48 -0700 (PDT)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
Date: Wed, 15 May 2019 10:07:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
Subject: Re: problem adding a user
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
X-List-Received-Date: Wed, 15 May 2019 17:07:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Greg,

Well, I suppose I wrote the book you are referring to...


Using

useradd -p PASSWORD USER

takes the password hash for PASSWORD hence the use of openssl in:

useadd -p `openssl passwd PASSWORD` USER

openssl password creates the password hash using the original crypt hash 
algorithm if no other options are specified. e.g.

$ openssl passwd hello
6hEsTksgRkeiI

With this the first two characters of the output is the salt and the 
rest is the password hash. If you want openssl to create the same result 
again:

$ openssl passwd -salt "6h" hello
6hEsTksgRkeiI

You can use newer algorithms like MD5 based BSD password algorithm 1:

$ openssl passwd -1 hello
$1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1

$1 : password algorithm 1
$4Mu8Fcs. : salt
$eIKgPP7RCYrb3lFZjhADA1 : password hash


If you log into the system you have to use the clear password. The 
system reads the salt, creates the password hash and compares the results.


:rjs


On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
> I'm trying to use the example in "Embedded Linux Systems with the Yocto Project" to add a user to my Yocto build. In the book the sample code:
>
>     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>
> uses openssl to generate the encrypted password string to pass to useradd. I have never been able to get this to work. When I run the openssl
> command on the cmd line I get a different value every time, this seems wrong, How can the password code compare against it if every encode
> produces a different value?
>
> I am getting the user added to the system, the home directory shows up and the user is in the passwd and group files. I just can't login to the
> account.
>
> I've obviously got something confused, any help would be appreciated.
>
> Greg Wilson-Lindberg
>   

-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


