Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 116B5E00D08; Thu, 14 Mar 2019 17:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B4CE00AB0
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 17:17:30 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id y124so4969593pfy.7
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 17:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Kol/tBu5ULUDPnBpvDR9WuuE/AYv0hSmpu1lLVaaNvc=;
	b=pxD3jQZsd2C5b/dFIfr+cZgHulVjZUQnhXTzolQfe2mlEvcleFYIp+P8VyBflrvXXA
	IHSI4PPCfcEKeA2uGYY6al+u+ANBONzjOZ1ZrN0s33u6BvBZHgGTHf0O4zD0Y/x8RLst
	z6bOtCDJNoT1aBgSbv3uHOYxIVHUqef/ySs792XCc8+4QYuh1rgcon+CWq76+t8Sl3AX
	P95K23FTYDss+38GsEafhZ6ZifbIJ4JQQHGIDzU1GcFqWVq93nIGh+LXwVu/5KroaR3f
	5sHntvU3BNjRMPTD+PEHjGGNu44fd3H39kZLhBCULSgdyZ4fTuNNyVEZjhb5EXtraRjN
	e15Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=Kol/tBu5ULUDPnBpvDR9WuuE/AYv0hSmpu1lLVaaNvc=;
	b=WCZQY2BbEA/Q9tmsunSYYgfWbZrwEZakSLGT/wTNHhvvgq3qrGvADqhPOrhNM+vOey
	qUIQ0rNWb7AZGkhJdaSFwIVXPdxQFEmZ0H+O1A/dE9GZEE2cjgqDZsbksMMKSg5AwvmO
	Dgnb1A/U95DEXu/PflKF+w9YSpS90bCMMPzUn4D6wgbIruHIC45gR8BzCJncd4W6KhtL
	Q+KzJZ87RCVHM0+RJBK6cugtov0RFonX4yayldGPc2tcYAI8bhqNIsuBT93ZMVBLSvVH
	mya82UHosSyXoY1Fp5skT7ItxX/No7DolTok3g1w/YUaycVwA6/2R1Zn6dkKxvbObfcc
	gX6Q==
X-Gm-Message-State: APjAAAU6vtyeu0xsbry9ULWzPs8BcNPvJfzoajvVC8/NwhVTi0TOm4Fs
	oFkvAV2UbqE8htHIrdHS0ayV9BUvt68=
X-Google-Smtp-Source: APXvYqynpaxE3ZFn85e3E/ObXmlchhqSbLbSXUJEffErBOaaAik4H0pSx4bBjJxzqwCksrcGJQZ2LA==
X-Received: by 2002:aa7:809a:: with SMTP id v26mr1007428pff.103.1552609049209; 
	Thu, 14 Mar 2019 17:17:29 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:1c38:8eb8:1763:902b?
	([2601:202:4180:c33:1c38:8eb8:1763:902b])
	by smtp.gmail.com with ESMTPSA id w2sm404641pgp.81.2019.03.14.17.17.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 17:17:27 -0700 (PDT)
To: Teemu K <maillinglists18@gmail.com>, yocto@yoctoproject.org
References: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <e91ee356-42ba-1e7c-8490-49e0ab076da0@mvista.com>
Date: Thu, 14 Mar 2019 17:17:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
Subject: Re: SDK build fails at latest thud
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
X-List-Received-Date: Fri, 15 Mar 2019 00:17:35 -0000
Content-Type: multipart/alternative;
	boundary="------------622A252A7996B98EA763D024"
Content-Language: en-US

--------------622A252A7996B98EA763D024
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 3/13/19 9:50 PM, Teemu K wrote:
> Hi,
>
> I noticed that when trying to build sdk on thud it fails on latest
> version. Actually it broke somewhere between commits:
>
> 1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
> 7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)
>
> I'm using it with meta-freescale - layer to build image to iMX8.
>
> I'm using command 'populate_sdk' and it works fine on older version,
> but newer version it fails with error:
Can you provide the steps to reproduce?
>
> ==
> The following packages have unmet dependencies:
>  target-sdk-provides-dummy : Conflicts: coreutils
> E: Unable to correct problems, you have held broken packages.

There is a change sitting in stable/thud-next:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&id=af5cf78b275ab5226354337d25d8dc1c41a08904

which might be related. Can you try that branch?

git://git.yoctoproject.org/poky-contrib  stable/thud-next

- armin
> ==
>
> I'm assuming this is problem in poky - layer and not meta-freescale
> since it can be 'fixed' by downgrading to older version of thud.
>
> -Teemu


--------------622A252A7996B98EA763D024
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/13/19 9:50 PM, Teemu K wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">Hi,

I noticed that when trying to build sdk on thud it fails on latest
version. Actually it broke somewhere between commits:

1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)
</pre>
    </blockquote>
    <blockquote type="cite"
cite="mid:CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

I'm using it with meta-freescale - layer to build image to iMX8.

I'm using command 'populate_sdk' and it works fine on older version,
but newer version it fails with error:</pre>
    </blockquote>
    Can you provide the steps to reproduce?
    <blockquote type="cite"
cite="mid:CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

==
The following packages have unmet dependencies:
 target-sdk-provides-dummy : Conflicts: coreutils
E: Unable to correct problems, you have held broken packages.</pre>
    </blockquote>
    <br>
    There is a change sitting in stable/thud-next:<br>
    <br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&amp;id=af5cf78b275ab5226354337d25d8dc1c41a08904">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&amp;id=af5cf78b275ab5226354337d25d8dc1c41a08904</a><br>
    <br>
    which might be related. Can you try that branch?<br>
    <br>
    <a rel="vcs-git" href="git://git.yoctoproject.org/poky-contrib"
      title="poky-contrib Git repository">git://git.yoctoproject.org/poky-contrib</a> 
    stable/thud-next<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">
==

I'm assuming this is problem in poky - layer and not meta-freescale
since it can be 'fixed' by downgrading to older version of thud.

-Teemu
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------622A252A7996B98EA763D024--
