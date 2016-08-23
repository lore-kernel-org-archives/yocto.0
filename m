Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF4EE00D19; Mon, 22 Aug 2016 22:12:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 116E1E00CF4
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 22:12:45 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id o80so175885935wme.1
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 22:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nMY3Eu0bSaMkr8vKmXzPcRbek+DRBAPF9a9OMF6KFws=;
	b=WVNvy+xGZYfSoGDen3Anshz1cOQ99rcWY8+Q+1wzh9ge3iO+1dhYugiSf6hkmheJ2v
	aGHcRNqMc5TrHPBX9Mv4CADT9/CQ2R5vLg9lj514k8oFwP9oAWwn35VI4idIVcM9Qn5u
	9VO2tQOGLIL7l1sYI4ghBpYTzqC0GQmCHXW5NpedAQ2H5lVwX+a31QkdMwZqjDajnvwv
	dcQTcAobYLs++BJb2FnroRhmwlerjzCSuRmZ/PZX/LVOnNSCY5gLmWs7uKZM5JF5lC31
	wbWtOXJHif+5w6JozBjNYZQsmBFsIIUu0fH3BjKt35Z5u7nPGkGwFeu1xMPXhzbnP0nW
	DpXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nMY3Eu0bSaMkr8vKmXzPcRbek+DRBAPF9a9OMF6KFws=;
	b=ixliH2XS0o/4exltw6vBjOFYj/zcJhGpmTT5NUSJzxyINpYPnCZt3hM+I5caPjeLv0
	thrDI2kZ1bn3y7BFrf8JDStX9qvGDSwWx38GuPBqatXuXokng/Z/efZ3GyYyOW+OJCPd
	YzfzKb87z6h4FljPfDNmEF4288aK0VMp00co2+c0xgjRU1i5CryDjDDViwU7k44XsEkJ
	HRPNQe5tG/I32XNmb0BPz/z9dfSN2WL/okPDXZ+s2j/xR2nTciAIqQsO7sgRC+4+cpmo
	SgDUSsJaxSvCxJmswsZkYRFiZ21d96FG82VjnGwkmX1NtQxwpCLueJorJGUTmgZytmnx
	NX4w==
X-Gm-Message-State: AEkoouv7i5CCOh5hfq8wvqtqpcEwFsMRGDZLzpcAzAfZqbAUhtk3BHncpusaIej89tXA8+V+VeZXzElT+ZiLxg==
X-Received: by 10.28.181.66 with SMTP id e63mr17429895wmf.116.1471929164592;
	Mon, 22 Aug 2016 22:12:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.195.10.194 with HTTP; Mon, 22 Aug 2016 22:12:43 -0700 (PDT)
In-Reply-To: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 22 Aug 2016 22:12:43 -0700
Message-ID: <CAJ86T=UU06z69pPN5GE6=Ua7hmzn8NvG3kBWh=gmafmLjTcRCw@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBMASK issue
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
X-List-Received-Date: Tue, 23 Aug 2016 05:12:51 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 22, 2016 at 6:50 PM, Takashi Matsuzawa
<tmatsuzawa@uievolution.com> wrote:
> Hello Yocto.
>
> Now I am trying to customize an existing BSP to my need.
> For this, I am adding following to my local.conf so that some of the recipes
> in the BSP to be ignored.
>
> (local.conf)
> BBMASK = "aaa|bbb|ccc"
> BBMASK .= "|ddd|eee"
>
> However, it does not work since BSP itself has lines like below in its
> layer.
>
> (somelayer.conf)
> BBMASK = "xxx|yyy|xxx"
>
> The BSP definition of BBMASK seems to be overwriting my BBMASK definition in
> my local.conf.
> I wonder what is the best way so that the both definition are effective.
>
> I confirmed modifying BSP's definition as below works, but not sure if this
> can be recommended as practice to everyone who provides layers for their
> BSPs.
>
> BBMASK .= "|xxx|yyy|xxx"

This isn't safe. It will only work if a default value for BBMASK is
set elsewhere. If not, then you end up with a BBMASK which begins with
"|", which effectively masks _every_ recipe.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

