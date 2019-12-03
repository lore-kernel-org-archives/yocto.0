Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9232.1575393041382120625
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 09:10:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=WDZIfnEb;
 spf=temperror, err=temporary DNS error (domain: mvista.com, ip: 140.211.169.56, mailfrom: akuster@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DD11E00D16; Tue,  3 Dec 2019 09:10:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14C44E00D16
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 09:10:34 -0800 (PST)
Received: by mail-pg1-f174.google.com with SMTP id r11so1954656pgf.1
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 09:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=cazWDsORC9a+By1yzaGhT/4uapsH17FK+++p/mCwu9c=;
        b=WDZIfnEb7cKKI1FhVWPsirZ2P5or7J+wjLHcoBNHbqJdOEsKSlP236a8uMtFnznU+a
         rJ1fg1XPOEHRq7vH/1Coq0ULcfgpjf0tUlrNJ1uapI+2zPvt+aeeYi+k43x0a+VMiNmN
         tfVuxPJywnccp6YVgqfyU5jvqM6Y7vTuLeCvc2IiHacNAWybXMeqG+Gtni/PzWYwWLdO
         rrw6UWIe554YK+K8nD/ksSerIBTRxjBnAQLjaVk9H1YLufTbH3vqBTLA5HljHBwNaQMY
         vfpMj+bQpwwCmLIsGuDNkbT/kgDUa6iBv6wjmVT3HpF5/+by5A5ngSDF1PFIpJ4jcEUj
         rQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=cazWDsORC9a+By1yzaGhT/4uapsH17FK+++p/mCwu9c=;
        b=EqlouJMuke+97vaciDzuHv9OS2m6KA9rinoxuRS4B5xWUpUnUnHVw40BfIXhZWd7/s
         cyH1AgTXhYHTwn33+bx5swXDM19diQyr2tvIUot5OgT/BY8i7V8DuubD+lL4vZBU3dTC
         TNgZ03ya8zAqg7jIFYXYpUj9XzmWo6/ZUrBIxDURLZaf7HXykvLx5LH1M0dbWzIwxDGc
         Wo9jQX5na4QP6nBhG3lTNvB6N/dQjGQr9HkacUOOozk8YhmtvLI4VxVjtKsV8c3UvQir
         7q3AZyMeSQRLSSqQAzcEtvm8I4nJlwkUPVSEKSwzqpbiPmBFgcKJFuq2yYGU4RE6xWKa
         f1kA==
X-Gm-Message-State: APjAAAW++jag0qaABQ7Icy2Qd9DlOONepjvN8c0ouUnUELEWagftcb09
	ur+IJwI+BVc2Q1DtDC+XxIDDnA==
X-Google-Smtp-Source: APXvYqwJbbyuT5zXTHSzTwXBi219UVYzBE77fj+U/wXe+sO6lGl2s6BFWCFLEzcDiq/eP+pPdjNxIQ==
X-Received: by 2002:a63:364f:: with SMTP id d76mr6587955pga.215.1575393033703;
        Tue, 03 Dec 2019 09:10:33 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:51a5:502e:8fc:9836? ([2601:202:4180:a5c0:51a5:502e:8fc:9836])
        by smtp.gmail.com with ESMTPSA id 125sm4649658pfu.136.2019.12.03.09.10.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Dec 2019 09:10:32 -0800 (PST)
Subject: Re: [yocto] QA cycle report for yocto-3.0.1.rc3
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Yocto TSC <tsc@yoctoproject.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "akuster808@gmail.com" <akuster808@gmail.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
 <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
From: "Armin Kuster" <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <bf55c70c-2de6-046f-b52a-43ea47c2c18b@mvista.com>
Date: Tue, 3 Dec 2019 09:10:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------DFE5B4DE4062A43B34D983EC"
Content-Language: en-US

--------------DFE5B4DE4062A43B34D983EC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 12/3/19 7:15 AM, Richard Purdie wrote:
> On Tue, 2019-12-03 at 07:15 +0000, Jain, Sangeeta wrote:
>> This is the full report for 3.0.1 RC3:  
>> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>>
>> ======= Summary ========
>> No high milestone defects.  
>> No new defects are found in this cycle.
>> valgrind ptest failed (BUG id:13666). 
>>
>> ======= Bugs ========
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666
> Thanks!
>
> Looking at the bug, it seems only one of the tests within the ptest
> regressed. Whilst that does need looking into, I'd say it isn't a
> release blocker and I'd propose we release 3.0.1 rc3.
>
> What does the rest of the TSC say?

I am fine with this to release.

- Armin
>
> Cheers,
>
> Richard
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47522): https://lists.yoctoproject.org/g/yocto/message/47522
> Mute This Topic: https://lists.yoctoproject.org/mt/65631873/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------DFE5B4DE4062A43B34D983EC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/3/19 7:15 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Tue, 2019-12-03 at 07:15 +0000, Jain, Sangeeta wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">This is the full report for 3.0.1 RC3:  
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults">https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults</a>

======= Summary ========
No high milestone defects.  
No new defects are found in this cycle.
valgrind ptest failed (BUG id:13666). 

======= Bugs ========
<a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Thanks!

Looking at the bug, it seems only one of the tests within the ptest
regressed. Whilst that does need looking into, I'd say it isn't a
release blocker and I'd propose we release 3.0.1 rc3.

What does the rest of the TSC say?</pre>
    </blockquote>
    <br>
    I am fine with this to release.<br>
    <br>
    - Armin<br>
    <blockquote type="cite"
cite="mid:7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Cheers,

Richard

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47522): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47522">https://lists.yoctoproject.org/g/yocto/message/47522</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/65631873/1024635">https://lists.yoctoproject.org/mt/65631873/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------DFE5B4DE4062A43B34D983EC--
