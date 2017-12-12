Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84EFEE00D03; Tue, 12 Dec 2017 06:18:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 031CCE00CEF
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 06:18:19 -0800 (PST)
Received: by mail-vk0-f66.google.com with SMTP id m15so4132253vkf.13
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 06:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8czdeD/mvccvzs9BxdcxrwLIguyVg1K6ECQmExhewKA=;
	b=MegEf7B7yJRBKX9G1Fihi/2QorV4FX2CUNxJ0F+ETc5iY/vyWYKMFqaWfl4TlKUH8j
	L5K0vOYf0bW14/A+m86PnuW3OzSlKLh2fmXXATiH9YHBStEkzrsppNZ4lHJ12ulkoyfM
	+8/xoqSIpdig9y/ZPYrjwRF7FolWQYj6fiDKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8czdeD/mvccvzs9BxdcxrwLIguyVg1K6ECQmExhewKA=;
	b=NZ6uyCHuo3uaIg1HkFq8+gWckvtm9ec96ef7SME25+c4V6jMGyV8XPn7dDs1AdxuKX
	7xL02J5K0XnIMQil2vhnSUoeFlzZSfvkCAFA1sc6mRGjf6d0hEykgKcGxzyUjqMtpotv
	eXEU1V+BYISDZa0gwdviBMcCPyS4gGVSTX7xsT5l1ei1WOZEIn65qkGEn3AgtyPgUkkx
	ZE6iFrSywrn34cMJITihrYAgch6pPZjBfHlWITgZIQpIu5IvzFneGd0IchHsksiVz3fN
	oR9oD7enXc8HAXyskn9wVcvKEycWAzqm8gdNFqJbgkiaQVVet4rChzuAoRQWEInzWlP8
	HJZA==
X-Gm-Message-State: AKGB3mLziN6YD+e/hpvQ+jfBXQf12aLpXjb09k+NBorMdlNtotgupbMd
	mvUoQj4yhTSbZAiD+9lYvaelW5nYbwWtFIY2IyzVDQ==
X-Google-Smtp-Source: ACJfBouZLX9OTpRhzq62Tu9+2ohA7Dyg//4t6z55GS0MahhjZP2y7LZsnmdjnsQA654z0hxY5WPyVO3suj9cRfsezlY=
X-Received: by 10.31.53.67 with SMTP id c64mr4009876vka.50.1513088299008; Tue,
	12 Dec 2017 06:18:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.176.68 with HTTP; Tue, 12 Dec 2017 06:18:18 -0800 (PST)
In-Reply-To: <6feec949-df63-7320-4c70-b06053b51818@linux.intel.com>
References: <20171207185111.14402-1-limon.anibal@gmail.com>
	<6feec949-df63-7320-4c70-b06053b51818@linux.intel.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Tue, 12 Dec 2017 08:18:18 -0600
Message-ID: <CA+_Aqitp2Eb5OeW3nZMpiyxeE-AT=So39NCx8enUJu9g8MWUxw@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@linux.intel.com>
X-Mailman-Approved-At: Tue, 12 Dec 2017 09:31:19 -0800
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner 1/3] Makefile: libcheck now requires to link subunit
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
X-List-Received-Date: Tue, 12 Dec 2017 14:18:20 -0000
Content-Type: multipart/alternative; boundary="001a1137d0e093ab5f0560255244"

--001a1137d0e093ab5f0560255244
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 12 December 2017 at 06:24, Joshua Lock <joshua.g.lock@linux.intel.com>
wrote:

> This entire series merged to master of the ptest-runner2 repository.
>
> Will you be sending a recipe update?
>

Yes, can you create the v2.1.1 tag pointing current master?

Cheers,
Anibal


>
> Thanks,
> Joshua
>
>
> On 07/12/17 18:51, An=C3=ADbal Lim=C3=B3n wrote:
>
>> From: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>> ---
>>   Makefile | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 434b89f..1bde7be 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -22,7 +22,7 @@ TEST_SOURCES=3Dtests/main.c tests/ptest_list.c
>> tests/utils.c $(BASE_SOURCES)
>>   TEST_OBJECTS=3D$(TEST_SOURCES:.c=3D.o)
>>   TEST_EXECUTABLE=3Dptest-runner-test
>>   TEST_LDFLAGS=3D-lm -lrt -lpthread
>> -TEST_LIBSTATIC=3D-lcheck
>> +TEST_LIBSTATIC=3D-lcheck -lsubunit
>>     TEST_DATA=3D$(shell echo `pwd`/tests/data)
>>
>>
>

--001a1137d0e093ab5f0560255244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 12 December 2017 at 06:24, Joshua Lock <span dir=3D"ltr">&lt;<a href=
=3D"mailto:joshua.g.lock@linux.intel.com" target=3D"_blank">joshua.g.lock@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This=
 entire series merged to master of the ptest-runner2 repository.<br>
<br>
Will you be sending a recipe update?<br></blockquote><div><br></div><div>Ye=
s, can you create the v2.1.1 tag pointing current master?</div><div><br></d=
iv><div>Cheers,</div><div>Anibal</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
<br>
Thanks,<br>
Joshua<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 07/12/17 18:51, An=C3=ADbal Lim=C3=B3n wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
From: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon@linaro.org"=
 target=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
<br>
Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon@li=
naro.org" target=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
---<br>
=C2=A0 Makefile | 2 +-<br>
=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/Makefile b/Makefile<br>
index 434b89f..1bde7be 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -22,7 +22,7 @@ TEST_SOURCES=3Dtests/main.c tests/ptest_list.c tests/util=
s.c $(BASE_SOURCES)<br>
=C2=A0 TEST_OBJECTS=3D$(TEST_SOURCES:.c<wbr>=3D.o)<br>
=C2=A0 TEST_EXECUTABLE=3Dptest-runner-t<wbr>est<br>
=C2=A0 TEST_LDFLAGS=3D-lm -lrt -lpthread<br>
-TEST_LIBSTATIC=3D-lcheck<br>
+TEST_LIBSTATIC=3D-lcheck -lsubunit<br>
=C2=A0 =C2=A0 TEST_DATA=3D$(shell echo `pwd`/tests/data)<br>
=C2=A0 <br>
</blockquote>
</div></div></blockquote></div><br></div></div>

--001a1137d0e093ab5f0560255244--
