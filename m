Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 598F0E00C46; Fri, 11 Oct 2019 07:42:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC889E00B9E
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 07:42:00 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id d22so4564349pll.7
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 07:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=QrhFSon5pqaBvINkyfGfh33/zEf8IZ6c7myoLE0COX0=;
	b=UBW0OwOWWJK9Iw0VaJEgmsRPVYjE/Kvfr5arGrJIdxj80WoPZVbWil6fGi/98/1GkW
	9KAGL1Nwr0FxFYNE00ZpGLaCNUQ3qxKZy00BCZYW33S7QyFBvsGIzM7xGuoJqkkaTxHv
	gAP+WzVGtFZbsF6wp5ZR/WyAgF17aE3fQOGilVDCUt1EHSNKsRDTibJ5mT1cUklUOSt+
	+kqEslYG2nFyDG3Sv5Kdk/26waxYBp+n/U6K3ikPgcj543Yq52VbZv9X2Id8TjYplmQQ
	U++15MUmEeDzbykk/XEKVjAMNZJNTiHM9oVMRCRF/AHJKgYOt7gfa/intmqd6dMADnqa
	mIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=QrhFSon5pqaBvINkyfGfh33/zEf8IZ6c7myoLE0COX0=;
	b=P3XSQ/in328VzYVaM7nl6Jcf/F5sZfYn1AUXRsp8GBnuCK+CBoCJFGhTOwv1YmVM4v
	aiel83ypjfxQruV9Z1g548i2uGul1gOvkLEMDyVd8vjegOSUaetLYndk0IvZGWVRthsw
	71o3RhKhjkEwTUBgzUiw3IvxJzJD9su4mFMIgytzCyIYr3Uny2KCRvev91xfQ6rZJZWK
	DgsChrsdMwKwtOD7L5oyzCjgCwGQObj5gUXLqROeuMCsJHmDgySNJr1rqfAJD/ZDzkN2
	7lAllfPqmbsmsC8wvJZkAjZ6THVBJ25Rgl6HOm6UPRr5JV8ZMkEgzncWTL2OCY10C6uE
	hKGg==
X-Gm-Message-State: APjAAAWzJrsFF8IfCEpT7sAw7McCo4wNyrh3MP6Eo9FSiin3HqOHvEaZ
	2GhwvT5uE7Er81QK/jpQkEumZ0MG
X-Google-Smtp-Source: APXvYqy0bl6hRvQN7IR/PLZENHdaXEMRpU7AZ5lwD6/Soj1gdUiwdO/t4OcbgezVkwAptn7vLAZN/w==
X-Received: by 2002:a17:902:900c:: with SMTP id
	a12mr3912264plp.30.1570804920178; 
	Fri, 11 Oct 2019 07:42:00 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:103e:a562:b75f:8d63?
	([2601:202:4180:a5c0:103e:a562:b75f:8d63])
	by smtp.gmail.com with ESMTPSA id
	v43sm14307918pjb.1.2019.10.11.07.41.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Oct 2019 07:41:59 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>, Armin Kuster <akuster808@gmail.com>
References: <20191008225435.6074-1-akuster808@gmail.com>
	<CA+chaQdhYq0K-i81kFauzTQ4Pc-CJMWvGk2xCutZX39X=w0JxQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <faafebae-e1f1-f9ba-61fc-d360736b62fc@gmail.com>
Date: Fri, 11 Oct 2019 07:41:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQdhYq0K-i81kFauzTQ4Pc-CJMWvGk2xCutZX39X=w0JxQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] layer.conf: Update for zeus series
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
X-List-Received-Date: Fri, 11 Oct 2019 14:42:01 -0000
Content-Type: multipart/alternative;
	boundary="------------AE7FF2692D17518934EBAC1C"
Content-Language: en-US

--------------AE7FF2692D17518934EBAC1C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 10/11/19 12:51 AM, Martin Jansa wrote:
> Acked-by: Martin Jansa <Martin.Jansa@gmail.com
> <mailto:Martin.Jansa@gmail.com>>
>
> Please merge this to unblock CI.

done

>
> On Wed, Oct 9, 2019 at 12:55 AM Armin Kuster <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>     Signed-off-by: Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>>
>     ---
>      conf/layer.conf                          | 2 +-
>      meta-integrity/conf/layer.conf           | 2 +-
>      meta-security-compliance/conf/layer.conf | 2 +-
>      meta-tpm/conf/layer.conf                 | 2 +-
>      4 files changed, 4 insertions(+), 4 deletions(-)
>
>     diff --git a/conf/layer.conf b/conf/layer.conf
>     index b9a4f25..3e890e1 100644
>     --- a/conf/layer.conf
>     +++ b/conf/layer.conf
>     @@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
>      BBFILE_PATTERN_security = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_security = "8"
>
>     -LAYERSERIES_COMPAT_security = "warrior"
>     +LAYERSERIES_COMPAT_security = "zeus"
>
>      LAYERDEPENDS_security = "core openembedded-layer perl-layer
>     networking-layer meta-python"
>     diff --git a/meta-integrity/conf/layer.conf
>     b/meta-integrity/conf/layer.conf
>     index 41989da..962424c 100644
>     --- a/meta-integrity/conf/layer.conf
>     +++ b/meta-integrity/conf/layer.conf
>     @@ -21,6 +21,6 @@ INTEGRITY_BASE := '${LAYERDIR}'
>      # interactive shell is enough.
>      OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>
>     -LAYERSERIES_COMPAT_integrity = "warrior"
>     +LAYERSERIES_COMPAT_integrity = "zeus"
>      # ima-evm-utils depends on keyutils from meta-oe
>      LAYERDEPENDS_integrity = "core openembedded-layer"
>     diff --git a/meta-security-compliance/conf/layer.conf
>     b/meta-security-compliance/conf/layer.conf
>     index 9ccadab..0e93bd0 100644
>     --- a/meta-security-compliance/conf/layer.conf
>     +++ b/meta-security-compliance/conf/layer.conf
>     @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "scanners-layer"
>      BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_scanners-layer = "10"
>
>     -LAYERSERIES_COMPAT_scanners-layer = "warrior"
>     +LAYERSERIES_COMPAT_scanners-layer = "zeus"
>
>      LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>     diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
>     index cdccc55..3af2d95 100644
>     --- a/meta-tpm/conf/layer.conf
>     +++ b/meta-tpm/conf/layer.conf
>     @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>      BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_tpm-layer = "10"
>
>     -LAYERSERIES_COMPAT_tpm-layer = "warrior"
>     +LAYERSERIES_COMPAT_tpm-layer = "zeus"
>
>      LAYERDEPENDS_tpm-layer = " \
>          core \
>     -- 
>     2.17.1
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------AE7FF2692D17518934EBAC1C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 10/11/19 12:51 AM, Martin Jansa
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+chaQdhYq0K-i81kFauzTQ4Pc-CJMWvGk2xCutZX39X=w0JxQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Acked-by: Martin Jansa &lt;<a
          href="mailto:Martin.Jansa@gmail.com" moz-do-not-send="true">Martin.Jansa@gmail.com</a>&gt;
        <div><br>
        </div>
        <div>Please merge this to unblock CI.</div>
      </div>
    </blockquote>
    <br>
    done<br>
    <br>
    <blockquote type="cite"
cite="mid:CA+chaQdhYq0K-i81kFauzTQ4Pc-CJMWvGk2xCutZX39X=w0JxQ@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Oct 9, 2019 at 12:55
          AM Armin Kuster &lt;<a href="mailto:akuster808@gmail.com"
            moz-do-not-send="true">akuster808@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by:
          Armin Kuster &lt;<a href="mailto:akuster808@gmail.com"
            target="_blank" moz-do-not-send="true">akuster808@gmail.com</a>&gt;<br>
          ---<br>
           conf/layer.conf                          | 2 +-<br>
           meta-integrity/conf/layer.conf           | 2 +-<br>
           meta-security-compliance/conf/layer.conf | 2 +-<br>
           meta-tpm/conf/layer.conf                 | 2 +-<br>
           4 files changed, 4 insertions(+), 4 deletions(-)<br>
          <br>
          diff --git a/conf/layer.conf b/conf/layer.conf<br>
          index b9a4f25..3e890e1 100644<br>
          --- a/conf/layer.conf<br>
          +++ b/conf/layer.conf<br>
          @@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"<br>
           BBFILE_PATTERN_security = "^${LAYERDIR}/"<br>
           BBFILE_PRIORITY_security = "8"<br>
          <br>
          -LAYERSERIES_COMPAT_security = "warrior"<br>
          +LAYERSERIES_COMPAT_security = "zeus"<br>
          <br>
           LAYERDEPENDS_security = "core openembedded-layer perl-layer
          networking-layer meta-python"<br>
          diff --git a/meta-integrity/conf/layer.conf
          b/meta-integrity/conf/layer.conf<br>
          index 41989da..962424c 100644<br>
          --- a/meta-integrity/conf/layer.conf<br>
          +++ b/meta-integrity/conf/layer.conf<br>
          @@ -21,6 +21,6 @@ INTEGRITY_BASE := '${LAYERDIR}'<br>
           # interactive shell is enough.<br>
           OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"<br>
          <br>
          -LAYERSERIES_COMPAT_integrity = "warrior"<br>
          +LAYERSERIES_COMPAT_integrity = "zeus"<br>
           # ima-evm-utils depends on keyutils from meta-oe<br>
           LAYERDEPENDS_integrity = "core openembedded-layer"<br>
          diff --git a/meta-security-compliance/conf/layer.conf
          b/meta-security-compliance/conf/layer.conf<br>
          index 9ccadab..0e93bd0 100644<br>
          --- a/meta-security-compliance/conf/layer.conf<br>
          +++ b/meta-security-compliance/conf/layer.conf<br>
          @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "scanners-layer"<br>
           BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"<br>
           BBFILE_PRIORITY_scanners-layer = "10"<br>
          <br>
          -LAYERSERIES_COMPAT_scanners-layer = "warrior"<br>
          +LAYERSERIES_COMPAT_scanners-layer = "zeus"<br>
          <br>
           LAYERDEPENDS_scanners-layer = "core openembedded-layer
          meta-python"<br>
          diff --git a/meta-tpm/conf/layer.conf
          b/meta-tpm/conf/layer.conf<br>
          index cdccc55..3af2d95 100644<br>
          --- a/meta-tpm/conf/layer.conf<br>
          +++ b/meta-tpm/conf/layer.conf<br>
          @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"<br>
           BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"<br>
           BBFILE_PRIORITY_tpm-layer = "10"<br>
          <br>
          -LAYERSERIES_COMPAT_tpm-layer = "warrior"<br>
          +LAYERSERIES_COMPAT_tpm-layer = "zeus"<br>
          <br>
           LAYERDEPENDS_tpm-layer = " \<br>
               core \<br>
          -- <br>
          2.17.1<br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href="mailto:yocto@yoctoproject.org" target="_blank"
            moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------AE7FF2692D17518934EBAC1C--
