Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB6B6E00C18; Mon, 17 Oct 2016 18:29:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
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
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F756E00A7D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:29:50 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id os4so5703170pac.3
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=9kttONpJ3M2c24NJf64VoMH6kFkdoMaSeOw/b8acPcI=;
	b=Gk2DaFfHwdqSjuHYytAoauCKlHycoc77mu0U3kvjQLs5JCGX/9rBeuWdLjS51n5b+p
	V3aq4JfKPzzqixEj1yQMovr3GbrI/4vwAQ0EFqssck92d5KVmXqvEEMUvO2y2Q+zKStg
	o459XeJCgrIFU5PY7ZQoOwAzgHbRUFBaZJrkkRlR7taKwCjL7dAWcMv8RZhgQ8CbHFbl
	FXBQMpoCZ7eJxD98xigRGc9SxyMB5dal53WhrQK3vHRgcPpaOBhwCznikQ+wrgxRiqDv
	2Vvnen742mJMjFbHdVsIxjjKLCJH0MbzDX915a+iUpnefgP2JNtj17ZM5A3dJEBQDEPL
	CMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=9kttONpJ3M2c24NJf64VoMH6kFkdoMaSeOw/b8acPcI=;
	b=gkY0BwTbDOgkepLCjdFVyX80Ikbe28MDlDHrBikfEVyu0fIduDDaB/zvTQO//1aOKV
	nrVQMARmXeDWzuYHH8rgk1UsSySCjagGyrSqJkqcRfsvKYPOJyE7/iNwUeTWtGGRhzrk
	d56tAwXAt86/1/06T55lsPjs3JPJO3gjWKOWKT9Ou/wXfzRbyOD6EntHLigm758Xh/E7
	vWBAWoixP2BS0ECpLATaPXeg1a8TT5S2MVd8R14edUwk+f9dUr18oW0sGvDVxhJ1TP4Z
	vFjkaG2HTTtb+gBicjtgWczoCki4EBHngwSJiEI7LCyPixGznpEW3SnfPZ2UB5XoLUnP
	or9w==
X-Gm-Message-State: AA6/9RnYVuJ/aGF8FF63XGDQJyXTn8uv4X7jrWPFOdBPgXDLM12Pl5eFZQsd4N8lycxnmA==
X-Received: by 10.67.22.230 with SMTP id hv6mr454755pad.93.1476754190741;
	Mon, 17 Oct 2016 18:29:50 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	wv1sm50920922pab.15.2016.10.17.18.29.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Oct 2016 18:29:50 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>, Armin Kuster <akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-2-git-send-email-akuster808@gmail.com>
	<50477F55-24E5-48C3-B584-15BB8265234B@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <98085902-b4ca-f333-c008-026226851f18@gmail.com>
Date: Mon, 17 Oct 2016 18:29:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <50477F55-24E5-48C3-B584-15BB8265234B@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 02/17] tpm-tools: add native support
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
X-List-Received-Date: Tue, 18 Oct 2016 01:29:53 -0000
Content-Type: multipart/alternative;
	boundary="------------3F4496B8B81AA520DBC1A52D"

--------------3F4496B8B81AA520DBC1A52D
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 10/17/2016 05:10 PM, Khem Raj wrote:
>> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> wrote:
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
>> recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 +++++++++++++++++++++++
>> 2 files changed, 26 insertions(+)
>> create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>>
>> diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
>> index 5645976..99ea8ee 100644
>> --- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
>> +++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
>> @@ -9,6 +9,7 @@ SECTION = "tpm"
>> LICENSE = "CPL-1.0"
>> LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
>> DEPENDS = "libtspi openssl"
>> +DEPENDS_class-native = "trousers-native"
>>
>> SRC_URI += " \
>>      http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.gz \
>> @@ -20,3 +21,5 @@ SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
>> SRC_URI[sha256sum] = "66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
>>
>> inherit autotools gettext
>> +
>> +BBCLASSEXTEND = "native"
>> diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>> new file mode 100644
>> index 0000000..be49dd9
>> --- /dev/null
>> +++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>> @@ -0,0 +1,23 @@
>> +SUMMARY = "Tools for TPM2."
>> +DESCRIPTION = "tpm2.0-tools"
>> +LICENSE = "BSD"
>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
>> +SECTION = "tpm"
>> +
>> +DEPENDS = "tpm2.0-tss openssl curl"
>> +
>> +SRCREV = "c924cc8ca752e5af6a829f893c6be4b185d56e99"
>> +
>> +SRC_URI = "git://github.com/01org/tpm2.0-tools.git;protocol=git;branch=master;name=tpm2.0-tools;destsuffix=tpm2.0-tools"
>> +
>> +S = "${WORKDIR}/tpm2.0-tools"
>> +
>> +PV = "1.0+git${SRCPV}”
> it seems to be 2.0 isn’t it ?
tpm2.0 refers to the TPM standard version 2, not the sources version. 
There are no versions on the git sources that I could decode. I will 
drop it all together and use SRCPV.

thanks,
Armin
>
>> +
>> +inherit autotools-brokensep pkgconfig
>> +
>> +do_configure () {
>> +	cd ${S}
>> +	./bootstrap  --force
>> +	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
>> +}
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


--------------3F4496B8B81AA520DBC1A52D
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
    <div class="moz-cite-prefix">On 10/17/2016 05:10 PM, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:50477F55-24E5-48C3-B584-15BB8265234B@gmail.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">On Oct 17, 2016, at 5:02 PM, Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> wrote:

Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 +++++++++++++++++++++++
2 files changed, 26 insertions(+)
create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb

diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
index 5645976..99ea8ee 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
@@ -9,6 +9,7 @@ SECTION = "tpm"
LICENSE = "CPL-1.0"
LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9">"file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"</a>
DEPENDS = "libtspi openssl"
+DEPENDS_class-native = "trousers-native"

SRC_URI += " \
    <a class="moz-txt-link-freetext" href="http://downloads.sourceforge.net/project/trousers/$">http://downloads.sourceforge.net/project/trousers/$</a>{BPN}/${PV}/${BP}.tar.gz \
@@ -20,3 +21,5 @@ SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
SRC_URI[sha256sum] = "66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"

inherit autotools gettext
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
new file mode 100644
index 0000000..be49dd9
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2.0-tools"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=91b7c548d73ea16537799e8060cea819">"file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"</a>
+SECTION = "tpm"
+
+DEPENDS = "tpm2.0-tss openssl curl"
+
+SRCREV = "c924cc8ca752e5af6a829f893c6be4b185d56e99"
+
+SRC_URI = "git://github.com/01org/tpm2.0-tools.git;protocol=git;branch=master;name=tpm2.0-tools;destsuffix=tpm2.0-tools"
+
+S = "${WORKDIR}/tpm2.0-tools"
+
+PV = "1.0+git${SRCPV}”
</pre>
      </blockquote>
      <pre wrap="">
it seems to be 2.0 isn’t it ?</pre>
    </blockquote>
    tpm2.0 refers to the TPM standard version 2, not the sources
    version. There are no versions on the git sources that I could
    decode. I will drop it all together and use SRCPV.<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote
      cite="mid:50477F55-24E5-48C3-B584-15BB8265234B@gmail.com"
      type="cite">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">+
+inherit autotools-brokensep pkgconfig
+
+do_configure () {
+	cd ${S}
+	./bootstrap  --force
+	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+}
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

--------------3F4496B8B81AA520DBC1A52D--
