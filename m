Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B93DE00D4E; Tue, 23 Aug 2016 10:14:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BA9E00D3D
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 10:14:28 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id q11so4019267qtb.2
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 10:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=yVDfxFkGKr+eB+O8IZhPSx8XMDjj966+7ryYYbxH5G8=;
	b=I+G+aQ5kHxCJn8PzrLbX4jxsNnOdhbn04kavCFopggmgf3xr023WRh8Zc/sJfE12H5
	4YnXx56hIxpLKycJEstiCdZXWK32dhV5lKeS+ReZ+/XMBYhwt1UbvU9sznFtu5DjeT6r
	qLX4ln9KL/GDafdPXc6JjTW1qJiwzEY4+WtVke44FF5Uy3a1MbiEm1kWfmKeJLF1rBUq
	F6QSkJJ1mbyIBTKC13Wq1It/uCk1y6vc1GYGOa1y236uFYraGYjujuvkN3k7+qASoO20
	KQLy0OfuDg0xpImb8Ij9mfl7KuSxrXIXQ5j2hGvYK/5ffgTpQeTHcr6o0AghokBAwGd+
	itsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=yVDfxFkGKr+eB+O8IZhPSx8XMDjj966+7ryYYbxH5G8=;
	b=mXq9R9C4G6ZGthT9J4jTqk3U61KT4hFj/vEvGpULZIn+ZyWpr2AIaxBay0h4lkWlOg
	6YRF/xQSSUhNn8ukZqVkPbt4+XXsbXifyAb3JgVxnI9S4BvXyajGl4vwlVFmqi166EV8
	He/pcy86nEteYrWt0IQmBcHljtbCr1OYdWFk7hlW+rLEDjxvfgIapXx7El5wLeyakr31
	AmK9BkSSugNnkeajtQNpMLDC7qz8FHf9iQUO4oM9bFnidmw28UK6ZmE+cmoqu7b2oapM
	d91Mfky7jGV7oNZ1cnCaW4whsbM62KXZrYeAzYT2fHgC0PCqeIKtHKqCq0AF74GFqd/9
	mRhA==
X-Gm-Message-State: AEkoouusfYKwwLGXrDWS4t+wehbZRXLjp9IpDa3uchj0nMy6KTYyl+sH5Ueh8u5yeyvguw==
X-Received: by 10.200.45.235 with SMTP id q40mr31497034qta.34.1471972467748;
	Tue, 23 Aug 2016 10:14:27 -0700 (PDT)
Received: from [10.26.31.149] ([151.124.225.52])
	by smtp.gmail.com with ESMTPSA id
	t42sm2274505qte.24.2016.08.23.10.14.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Aug 2016 10:14:26 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>, Armin Kuster <akuster808@gmail.com>
References: <1471713575-19243-1-git-send-email-akuster808@gmail.com>
	<43BBF605-B0E6-4821-92FC-AFD74C9C8C26@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <20b99c34-873d-3868-f610-381e5c580207@gmail.com>
Date: Tue, 23 Aug 2016 10:14:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <43BBF605-B0E6-4821-92FC-AFD74C9C8C26@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] clamav: fix gcc 6.x build failure.
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
X-List-Received-Date: Tue, 23 Aug 2016 17:14:33 -0000
Content-Type: multipart/alternative;
	boundary="------------5646EFC7A6B8666A05F5C581"

--------------5646EFC7A6B8666A05F5C581
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 08/20/2016 11:36 AM, Khem Raj wrote:
>> On Aug 20, 2016, at 10:19 AM, Armin Kuster <akuster808@gmail.com> wrote:
>>
>> ./llvm/include/llvm/Support/AlignOf.h:57:24: error: expected unqualified-id before 'alignof'
>> static inline unsigned alignof() { return AlignOf<T>::Alignment; }
>>                         ^~~~~~~
> For this error, perhaps its better to ifdef this function definition with
>
> #if __cplusplus <= 199711L
> #endif
>
> since it has been added to standard after c++98, that patch (if works) can be upstreamed too.

Ok. I will look into to that. I heard there was an upstream fixed but no 
update released. I will see how easy it is to backport.

- armin
>
>
>> compile with -std=gnu++98
>>
>> alt in future is to us llvm3X and configure --with-system-llvm --with-llvm-linking=dynamic.
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> recipes-security/clamav/clamav_0.99.2.bb | 2 ++
>> 1 file changed, 2 insertions(+)
>>
>> diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
>> index 184d605..73905a7 100644
>> --- a/recipes-security/clamav/clamav_0.99.2.bb
>> +++ b/recipes-security/clamav/clamav_0.99.2.bb
>> @@ -50,6 +50,8 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
>>              --disable-rpath \
>>              "
>>
>> +CXXFLAGS += "--std=gnu++98"
>> +
>> do_configure () {
>>      cd ${S}
>>      ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------5646EFC7A6B8666A05F5C581
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 08/20/2016 11:36 AM, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:43BBF605-B0E6-4821-92FC-AFD74C9C8C26@gmail.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">On Aug 20, 2016, at 10:19 AM, Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> wrote:

./llvm/include/llvm/Support/AlignOf.h:57:24: error: expected unqualified-id before 'alignof'
static inline unsigned alignof() { return AlignOf&lt;T&gt;::Alignment; }
                       ^~~~~~~
</pre>
      </blockquote>
      <pre wrap="">
For this error, perhaps its better to ifdef this function definition with

#if __cplusplus &lt;= 199711L
#endif

since it has been added to standard after c++98, that patch (if works) can be upstreamed too.</pre>
    </blockquote>
    <br>
    Ok. I will look into to that. I heard there was an upstream fixed
    but no update released. I will see how easy it is to backport.<br>
    <br>
    - armin <br>
    <blockquote
      cite="mid:43BBF605-B0E6-4821-92FC-AFD74C9C8C26@gmail.com"
      type="cite">
      <pre wrap="">


</pre>
      <blockquote type="cite">
        <pre wrap="">
compile with -std=gnu++98

alt in future is to us llvm3X and configure --with-system-llvm --with-llvm-linking=dynamic.

Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
recipes-security/clamav/clamav_0.99.2.bb | 2 ++
1 file changed, 2 insertions(+)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index 184d605..73905a7 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -50,6 +50,8 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
            --disable-rpath \
            "

+CXXFLAGS += "--std=gnu++98"
+
do_configure () {
    cd ${S}
    ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
--
2.7.4

--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------5646EFC7A6B8666A05F5C581--
