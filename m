Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61B78E00A6B; Tue,  6 Nov 2018 14:10:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4484FE0097C
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 14:10:50 -0800 (PST)
Received: by mail-pf1-f194.google.com with SMTP id r64-v6so6736256pfb.13
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 14:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=OfBDL2DDkcSeWGl7Z/OWPTn4iAv4rwiCfR85Mxek1cU=;
	b=T8/q03VoCnk6y4h8onBIOquIG096RDwKd0192EL4kyBHSli77QY3Wnfc15+xGd9Nuv
	Fk4CUSMngFbD5aV4QIPKu3yF+aQX+e7hajw2hHay16Ij/FMM2ykGmZ4pz5vMn7mv0W7Q
	Gy3cQbtMX7ndSAAHPrU9xC2A01LCFLvw0kCskAykr4lr3ELHcaImv3xmksbLAr+QxC+Y
	bpL+8Vb8l3ewnvVSZieHv6NjYCTjysLmXxEh/MAVEp5LnEbtbEuviSrJ7V1dp0Cfn7Xk
	GVerwIpw5yOi+6325Xr8du8CIsvbfK6K6jbK7IEtzgArQwWyKslmZbCXhXTzATMNSVRO
	4oSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=OfBDL2DDkcSeWGl7Z/OWPTn4iAv4rwiCfR85Mxek1cU=;
	b=CVOyxDIX8Cj1u8c042AdzO/2+l2unOXAFATK2ZVpL8reQTM2BC10S9wAIDV+b3e9+B
	r/gIYJU3lJ2bvlyJIDjx05TJ3MMoCDATwGNG+Py5T/FdOunZZxEh/Or9MOX5KIBsDOK8
	lLrBfijJbgNWX6AGChxxs4krkQrv2fJkChlGsI1VsNZBGIEyqjhYIqkeLrZvNfDS2ne/
	WK6LIPj1JVOyxJ33UHF1aiJTuHR/tEFu8U6m7lvBSPIRGxA+JYlFYnzTnePQ6y0GIdD9
	SprM/DpGFZ4I1pgPtWCyzjTwFW4r36R7znb7TmR0geK1EL5RR/ytC4Dm79aPeKD5Rbjn
	KaaQ==
X-Gm-Message-State: AGRZ1gI6xXw3E/RunB68huNfx6hRpoLB6F6yKtKi1zM/afWn8hpoSpCq
	AWq63L9M5mya73lanMZAjqwZpZfc
X-Google-Smtp-Source: AJdET5fxJRwiPGTYB8Brf/6vbOf5GbuKlUpMsKqQehfZ+Sb+BLL66YzwnrRkZuZdYZ7VpmvakdV7gQ==
X-Received: by 2002:a63:2f07:: with SMTP id v7mr23871540pgv.368.1541542249541; 
	Tue, 06 Nov 2018 14:10:49 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:bd6f:ce:d9fb:a281?
	([2601:202:4180:c33:bd6f:ce:d9fb:a281])
	by smtp.gmail.com with ESMTPSA id
	y184sm17418364pgd.71.2018.11.06.14.10.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Nov 2018 14:10:49 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <1541541389-21595-1-git-send-email-akuster@mvista.com>
	<CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <c59e74fd-868c-225a-3799-eaf5000f59af@gmail.com>
Date: Tue, 6 Nov 2018 14:10:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-cache][v4.4][PATCH] kver: bump to v4.4.147
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
X-List-Received-Date: Tue, 06 Nov 2018 22:10:51 -0000
Content-Type: multipart/alternative;
	boundary="------------9C07BAEC6F4D56E2A1CDFFCF"
Content-Language: en-US

--------------9C07BAEC6F4D56E2A1CDFFCF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


On 11/6/18 2:05 PM, Khem Raj wrote:
> On Tue, Nov 6, 2018 at 1:57 PM Armin Kuster <akuster808@gmail.com> wrote:
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>> ---
>>  kver | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/kver b/kver
>> index 7b008cd..5ccc572 100644
>> --- a/kver
>> +++ b/kver
>> @@ -1 +1 @@
>> -v4.4.141
>> +v4.4.147
> why not 4.4.162

because linux-yocto-4.4
<http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/> is not at
4.4.162. I am just trying to use the latest in that kernel repo.


- armin

>
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--------------9C07BAEC6F4D56E2A1CDFFCF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/6/18 2:05 PM, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Nov 6, 2018 at 1:57 PM Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster@mvista.com">&lt;akuster@mvista.com&gt;</a>
---
 kver | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kver b/kver
index 7b008cd..5ccc572 100644
--- a/kver
+++ b/kver
@@ -1 +1 @@
-v4.4.141
+v4.4.147
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
why not 4.4.162</pre>
    </blockquote>
    <p>because <a title="linux-yocto-4.4"
        href="http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/">linux-yocto-4.4</a>
      is not at 4.4.162. I am just trying to use the latest in that
      kernel repo.</p>
    <p><br>
    </p>
    <p>- armin<br>
    </p>
    <blockquote type="cite"
cite="mid:CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">--
2.7.4

--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------9C07BAEC6F4D56E2A1CDFFCF--
