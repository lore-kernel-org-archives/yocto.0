Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B458E00C81; Mon, 17 Oct 2016 18:21:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 524FEE00A7D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:21:01 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id i85so10348408pfa.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=MKaeA1PYPlgA9IGG/99TB+Dq9shq2QyXLPjOWAVxyXI=;
	b=LHMTtWnReg09QQPHHQxZsNhDBfJZvhN0kYrwA5aNwf3HSBmV+jT2Y1YxmUfw2Bbg9s
	575zeeEcH8nDppXuevD6G3Gsm92wPefAHe+X7yBnSro6hTGwShLADVG5v7SlAPD6MZa2
	DzbSqBBqNRg/uY/CHaq7I1liSqj9cj8WFCztnB4CtMlFKTBotRdQAboKlKkZnt9T+hVS
	pRDibE99u+AiKbdD3vAEqwnW4vaw3TGLWHXw7lq773NqgyMZsKiQgS9IfUsUqGoHzOhN
	SeKn1smJMKcIi0Y192lummCH6ejXzIBzpVobc305PR/76PXYfR1sqOMN9gISm3UVNOzd
	nm9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=MKaeA1PYPlgA9IGG/99TB+Dq9shq2QyXLPjOWAVxyXI=;
	b=ktUemf9UEGbjgJW8EFcJJ6gI3ay+bs2uLcSgsWPh/geyBSYE/mm3AiANpouISDqNe2
	u+uLD7Wylltktjt5k1Ac8jFlQFCKR56m5PRVcZCd5F/rSHRp2wo3mKQylDbbVNTNiUZ5
	5JHn4COLDZGNjvKxIR3upYeRZkkEkXzdxJdZeLx6dIvdSgb8a2W0DFxMDVyIXlwBvD/Y
	GmHQJ9ztjZez4hiV3lGgZlkEIjf0wmkedc0j3J0ag2MsrEdQWdIm72XpGzHTMldQlm0H
	SnzU5i86nfBuO4LVpq89wAOBBpMTpirrr4airXqcFYkqjry9m1ROrcpRPcTgwC7E2pvf
	BOrA==
X-Gm-Message-State: AA6/9RlSlmDuPi+do6OzZ6vBk+9THrxn0vH7Dw5h5mfYGPg7e+2jcLlXKhiEHiV9oyEIAw==
X-Received: by 10.98.68.7 with SMTP id r7mr497586pfa.77.1476753661666;
	Mon, 17 Oct 2016 18:21:01 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	l1sm11048191pai.14.2016.10.17.18.21.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Oct 2016 18:21:01 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>, Armin Kuster <akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-5-git-send-email-akuster808@gmail.com>
	<3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a03ea6fc-d9e2-a4cc-aa0f-e66bbdfaead7@gmail.com>
Date: Mon, 17 Oct 2016 18:21:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 05/17] tpm2simulator: add package
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
X-List-Received-Date: Tue, 18 Oct 2016 01:21:05 -0000
Content-Type: multipart/alternative;
	boundary="------------D73046F436920759F144E598"

--------------D73046F436920759F144E598
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 10/17/2016 05:13 PM, Khem Raj wrote:
>> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> wrote:
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> .../tpm2simulator/tpm2simulator-native_116.bb      | 25 ++++++++++++++++++++++
>> 1 file changed, 25 insertions(+)
>> create mode 100644 recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>>
>> diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>> new file mode 100644
>> index 0000000..33eaf99
>> --- /dev/null
>> +++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>> @@ -0,0 +1,25 @@
>> +SUMMARY = "TPM 2.0 Simulator Extraction Script"
>> +LICENSE = "BSD-2-Clause"
>> +LIC_FILES_CHKSUM = "file://../LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b"
>> +
>> +DEPENDS += "python"
>> +
>> +SRCREV = "93dc4412432013ed7bcabd42007754c68f6e362e"
>> +SRC_URI = "git://github.com/stwagnr/tpm2simulator.git"
>> +
>> +S = "${WORKDIR}/git/cmake"
>> +
>> +PV = "116+git${SRCPV}"
>> +
>> +inherit native lib_package cmake
>> +
>> +EXTRA_OECMAKE = " \
>> +	-DCMAKE_BUILD_TYPE=Debug \
>> +	-DSPEC_VERSION=116 \
>> +"
>> +
>> +do_configure_prepend () {
>> +	sed -i 's/^SET = False/SET = True/' ${WORKDIR}/git/scripts/settings.py
> use S instead of WORKDIR
S = "${WORKDIR}/git/cmake"

that file does not reside there.

the build process does a relative ref outside the "cmake" dir to run the 
scripts.

unless you mean I should do " ${S}/../scripts/settings.py" ?
>
>> +}
>> +
>> +BBCLASSEXTEND = “native"
> it is not needed.
k

thanks for the review.

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
>
>


--------------D73046F436920759F144E598
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/17/2016 05:13 PM, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">On Oct 17, 2016, at 5:02 PM, Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> wrote:

Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
.../tpm2simulator/tpm2simulator-native_116.bb      | 25 ++++++++++++++++++++++
1 file changed, 25 insertions(+)
create mode 100644 recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb

diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
new file mode 100644
index 0000000..33eaf99
--- /dev/null
+++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
@@ -0,0 +1,25 @@
+SUMMARY = "TPM 2.0 Simulator Extraction Script"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://../LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b">"file://../LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b"</a>
+
+DEPENDS += "python"
+
+SRCREV = "93dc4412432013ed7bcabd42007754c68f6e362e"
+SRC_URI = "git://github.com/stwagnr/tpm2simulator.git"
+
+S = "${WORKDIR}/git/cmake"
+
+PV = "116+git${SRCPV}"
+
+inherit native lib_package cmake
+
+EXTRA_OECMAKE = " \
+	-DCMAKE_BUILD_TYPE=Debug \
+	-DSPEC_VERSION=116 \
+"
+
+do_configure_prepend () {
+	sed -i 's/^SET = False/SET = True/' ${WORKDIR}/git/scripts/settings.py
</pre>
      </blockquote>
      <pre wrap="">
use S instead of WORKDIR</pre>
    </blockquote>
    S = "${WORKDIR}/git/cmake"<br>
    <br>
    that file does not reside there.<br>
    <br>
    the build process does a relative ref outside the "cmake" dir to run
    the scripts.<br>
    <br>
    unless you mean I should do " ${S}/../scripts/settings.py" ?<br>
    <blockquote
      cite="mid:3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com"
      type="cite">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">+}
+
+BBCLASSEXTEND = “native"
</pre>
      </blockquote>
      <pre wrap="">
it is not needed.</pre>
    </blockquote>
    k<br>
    <br>
    thanks for the review.<br>
    <br>
    - armin<br>
    <blockquote
      cite="mid:3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com"
      type="cite">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">--
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

--------------D73046F436920759F144E598--
