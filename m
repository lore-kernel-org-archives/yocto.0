Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52CB2E00990; Tue, 17 Jan 2017 18:54:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CA8E00985
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 18:54:16 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id 203so303763ith.2
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 18:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=hu09KlI5dvuG74zQWuEltORlPg8Y9p7ps5/vZv89SCk=;
	b=jL4xAJq3tWqBik/Es3WLJJvjZ2BQ90LQ6e8B71hLFTapB2D1g/TPzc/Y4Cj4ZYL0XR
	1nxpJ3uiApieZZmjiMEITgJH8RlrPJqKkULc+LurfvzSc+zrbwqApEWHrduc4zTmV9Ay
	pF0ZwxQwE6jnWrxjT5ZAp2VXKwuWWZiAMdvhfVR9TAfPHUuxzbFdCIDnUadHQT26jVpE
	hWkGfE3emqUbalNgWHjTa9UaIwoe2mdnMdtRaP84wM05HNsDSKox4RykpMagsYPiL74g
	SZYoHsfQMzBs4OXrjLzfo3Fy66ZUCSsJamYgS65x85c02vPI52qPD7bBBa08NC18rUk3
	GsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=hu09KlI5dvuG74zQWuEltORlPg8Y9p7ps5/vZv89SCk=;
	b=ieHN8rySYu8wYpV0gkorvlWAJ/w6wbwz8vP2585OYY1s6ja9ow1l/3ts0eeDYVtDkA
	PI5W/Jkr0Zhqjbveps477bJaxqUZcAfYjSn+WCnmUTNSP02nayRhlKw92bPdnKgpc9hC
	LBEz6/kR1T9kUIHwYVY2+E+/fkUNhhMt/QvuT2Nd4RiLV+VqzbUbSTWmPTjZnAhs9NXO
	9E/MhVK2SuxZswBhfgP4OLTt0F0lFPBpwgLeCjEqxhuv5UxGFM0vteemHvEtDNAZI9H5
	a4lzEIAyTxKDsJyOOaO2xpSI5/KhXtMHd2T0R9BiYO43S6wGNw6iAc/gDJTVSgVuK/jP
	RcMw==
X-Gm-Message-State: AIkVDXIqsDhwSoXrTQxx/bFTfuX0jNGvfXM00Rg/gubflhFz7m7QgBHverB9kKxRZt0JRQ==
X-Received: by 10.36.25.18 with SMTP id b18mr1549328itb.56.1484708055531;
	Tue, 17 Jan 2017 18:54:15 -0800 (PST)
Received: from ?IPv6:2605:a601:a83:3700:b04b:55f0:5e3e:c88f?
	([2605:a601:a83:3700:b04b:55f0:5e3e:c88f])
	by smtp.gmail.com with ESMTPSA id l31sm305193iod.17.2017.01.17.18.54.14
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Jan 2017 18:54:15 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
References: <f5df85a01eecd22894f83c66b3c3884c@reliableembeddedsystems.com>
Message-ID: <53dace6e-9334-13e1-c963-eb27428e27f3@gmail.com>
Date: Tue, 17 Jan 2017 20:54:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <f5df85a01eecd22894f83c66b3c3884c@reliableembeddedsystems.com>
Subject: Re: "external"/"internal" SDK
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
X-List-Received-Date: Wed, 18 Jan 2017 02:54:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


> external SDK:
> everything the same as above, but for some packages there should be 
> only libraries - no header files.
Is there a reason why you want the libraries without the headers? It 
doesn't seem particularly useful to be able to link a program against a 
library, but not have the header to use its API (especially in an SDK, 
where the point is to build program against the libraries). If you are 
just worried about including the source code in the external SDK, you 
might be able to get by with simply removing "dbg-pkgs" from 
SDKIMAGE_FEATURES. This would still include the development headers for 
the libraries (i.e. the API), but would remove the source code for 
debugging (I think, I haven't actually tried it).

As an alternative, there might be a way to completely exclude those 
particular packages from the external SDK instead of removing the header 
files (see below)?
>
> I guess I'm not the first one who needs something like this.
>
> How would you do something like this the "Yocto way"?

We have to do something similar to this where I work. We actually 
accomplish this by having multiple "image" recipes dedicated to the 
SDK(s) that are distinct from our actual main image that goes on our 
final product. This allows us to add whatever we want to the SDK image, 
but keep our final image paired down to only what is necessary. For 
example, our (internal) SDK image has many libraries included in it that 
aren't going to necessarily be used by our final product, but we may 
want to use in the future. Having a separate SDK image allows us to 
(more or less) start using the library without having to go through the 
hassle of updating and re-releasing the SDK to add support (granted, we 
*do* have to install the new library on our product before it works, but 
that is generally easier in our particular work flow). To reduce 
duplicate maintenance, between the internal SDK and our product image, 
we make judicious use of bitbake include files to make sure that they 
both get all the packages that should be common.

Using a external SDK is a similar exercise, except we are much more 
careful about what libraries end up on that one. We make sure that none 
of our "special sauce" (i.e. proprietary) libraries end up there if we 
can help it. This might work for you if you can pare down what packages 
are including to keep the libraries you don't want from getting included 
in the SDK.

Finally, failing all that, you can probably create an external SDK image 
but remove "dev-pkgs" and "dbg-pkgs" from SDKIMAGE_FEATURES. This would 
create an SDK that isn't very exciting because you wouldn't have the 
headers for *any* libraries, but you could manually add the ones you did 
want back into the image by including the corresponding "-dev" package 
in IMAGE_INSTALL. It would be a lot of manual work, but you could 
probably get exactly what you wanted.

Not sure if its the "Yocto way", but it works well enough for us. 
Hopefully it will at least give a place to start.
Joshua Watt

