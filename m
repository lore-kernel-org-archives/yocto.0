Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E86EDE008D4; Sat, 14 Apr 2018 15:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
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
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE648E008D4
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 15:34:31 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id o16so8809239pfk.9
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 15:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=hgum0855DbRsky9+EJlHt+365u/iUYt34tnvZly5EzU=;
	b=Q27FoG64kfGn4SiHfwj76e4yl5Cv5D9zZTy+f98AzHOetyErNNlz8hs/Z6QWXeJyKe
	WCYv03PVDzfqGLlf+81XeQlduicpFpiKyHpZUnAnNNBCF/yvfxBHw7Qs8375hnIJlqzj
	rncdMxWAHHS89MaaYpHdmoGWX14V/X2j4gBNilPJAWAUsCJUypg3MoDsASNddfE5FxlE
	ZnRzKoCyy9Q6z82QomBHgFPNZQ5becLAyE3whAL6mMvJedWlUo00//FCI4bKrwYosVXF
	5YMn9xYBQkIaMMRXMeDKD/VTXFWKSkPYa20b7+f3TVWQqGPSqbds76p1A7Kl8nanb1ns
	nYNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=hgum0855DbRsky9+EJlHt+365u/iUYt34tnvZly5EzU=;
	b=j9AHxOwFFGx/7nIcCIOxiIPKAiu5mrM1E3Qi3oOMA6VrYJgoRH9mjk7KOpFlE+Tx72
	BPrp8O7fTJpXykEWc+R9nqkUNPRopSUgenT4tjeex61KiCW7V+cY0EUrV426NBVEVOHO
	Y6NCRGgYiLNMVB93dnB0vieCHux0Pxzxz2plF0nNVfW/apBXA0OEmbuNHtfZFug/9QTM
	2dpnGzUSIvlgyaStjR7PFr1GfAtoGI6/n928S56PDhvUAWFHwTeo5iKtT1BfUTkZinqw
	eSHU+DX4+tvNN4yCWdUA2JQXPTzOMK0TuWFUWXDIMxKBPZbUj1s/R5e1LXGS9vHzr+6m
	/Cmg==
X-Gm-Message-State: ALQs6tDeeFwDExyQpj8qPkHAyDULFrQ2r+KX8rTSx6Ue5c0lngN4cK1A
	cDCW/Urx1xTeGNnddxcEyAtfVA==
X-Google-Smtp-Source: AIpwx49AS9cXPsaS20ElM7U1AG53+1y05mxFvxDRH1HzyaRsmwNw9Gas0MYDk5ODhpW2MnCVeWpRcA==
X-Received: by 10.101.97.200 with SMTP id j8mr8284689pgv.443.1523745270968;
	Sat, 14 Apr 2018 15:34:30 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:19e4:d7e5:ee20:78ac?
	([2601:202:4000:1184:19e4:d7e5:ee20:78ac])
	by smtp.gmail.com with ESMTPSA id
	h21sm13618491pgv.57.2018.04.14.15.34.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Apr 2018 15:34:30 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <1523720014-3204-1-git-send-email-akuster@mvista.com>
	<CAMKF1srHEK-+YtSZ-_vMp=GbZ4k8SRFxpNG=NAhZX1aa82A5Dw@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <f7b740e1-c88d-5efe-55a9-2035964a6dd1@gmail.com>
Date: Sat, 14 Apr 2018 15:34:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srHEK-+YtSZ-_vMp=GbZ4k8SRFxpNG=NAhZX1aa82A5Dw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH 1/2] layer: add LAYERSERIES_COMPAT for rocko
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
X-List-Received-Date: Sat, 14 Apr 2018 22:34:37 -0000
Content-Type: multipart/alternative;
	boundary="------------8DA3377485F11DC8B5EF5B6E"
Content-Language: en-US

--------------8DA3377485F11DC8B5EF5B6E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 04/14/2018 11:39 AM, Khem Raj wrote:
>
> On Sat, Apr 14, 2018 at 8:34 AM Armin Kuster <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>     Signed-off-by: Armin Kuster <akuster@mvista.com
>     <mailto:akuster@mvista.com>>
>     ---
>      meta-cgl-common/conf/layer.conf  | 2 ++
>      meta-cgl-fsl-ppc/conf/layer.conf | 2 ++
>      2 files changed, 4 insertions(+)
>
>     diff --git a/meta-cgl-common/conf/layer.conf
>     b/meta-cgl-common/conf/layer.conf
>     index bdf5f3f..bcbff51 100644
>     --- a/meta-cgl-common/conf/layer.conf
>     +++ b/meta-cgl-common/conf/layer.conf
>     @@ -14,3 +14,5 @@ BBFILE_PRIORITY_cgl-common = "7"
>      LAYERDEPENDS_cgl-common = "core openembedded-layer
>     networking-layer perl-layer filesystems-layer security selinux"
>
>      require conf/distro/include/cgl_common_security_flags.inc
>     +
>     +LAYERSERIES_COMPAT_cgl-common-layer = "rocko"
>
>     diff --git a/meta-cgl-fsl-ppc/conf/layer.conf
>     b/meta-cgl-fsl-ppc/conf/layer.conf
>     index 353824d..2fee17e 100644
>     --- a/meta-cgl-fsl-ppc/conf/layer.conf
>     +++ b/meta-cgl-fsl-ppc/conf/layer.conf
>     @@ -10,3 +10,5 @@ BBFILE_PATTERN_cgl-fsl-ppc = "^${LAYERDIR}/"
>      BBFILE_PRIORITY_cgl-fsl-ppc = "7"
>
>      LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"
>     +
>     +LAYERSERIES_COMPAT_cgl-fsl-ppc-layer = "rocko"
>
>
> Seems this should be cgl-fsl-ppc isn’t it
correct. v2 a bit later

thanks,
Armin
>
>     -- 
>     2.7.4
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>


--------------8DA3377485F11DC8B5EF5B6E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/14/2018 11:39 AM, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1srHEK-+YtSZ-_vMp=GbZ4k8SRFxpNG=NAhZX1aa82A5Dw@mail.gmail.com">
      <div><br>
        <div class="gmail_quote">
          <div dir="auto">On Sat, Apr 14, 2018 at 8:34 AM Armin Kuster
            &lt;<a href="mailto:akuster808@gmail.com"
              moz-do-not-send="true">akuster808@gmail.com</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Signed-off-by:
            Armin Kuster &lt;<a href="mailto:akuster@mvista.com"
              target="_blank" moz-do-not-send="true">akuster@mvista.com</a>&gt;<br>
            ---<br>
             meta-cgl-common/conf/layer.conf  | 2 ++<br>
             meta-cgl-fsl-ppc/conf/layer.conf | 2 ++<br>
             2 files changed, 4 insertions(+)<br>
            <br>
            diff --git a/meta-cgl-common/conf/layer.conf
            b/meta-cgl-common/conf/layer.conf<br>
            index bdf5f3f..bcbff51 100644<br>
            --- a/meta-cgl-common/conf/layer.conf<br>
            +++ b/meta-cgl-common/conf/layer.conf<br>
            @@ -14,3 +14,5 @@ BBFILE_PRIORITY_cgl-common = "7"<br>
             LAYERDEPENDS_cgl-common = "core openembedded-layer
            networking-layer perl-layer filesystems-layer security
            selinux"<br>
            <br>
             require conf/distro/include/cgl_common_security_flags.inc<br>
            +<br>
            +LAYERSERIES_COMPAT_cgl-common-layer = "rocko"</blockquote>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">diff --git
            a/meta-cgl-fsl-ppc/conf/layer.conf
            b/meta-cgl-fsl-ppc/conf/layer.conf<br>
            index 353824d..2fee17e 100644<br>
            --- a/meta-cgl-fsl-ppc/conf/layer.conf<br>
            +++ b/meta-cgl-fsl-ppc/conf/layer.conf<br>
            @@ -10,3 +10,5 @@ BBFILE_PATTERN_cgl-fsl-ppc =
            "^${LAYERDIR}/"<br>
             BBFILE_PRIORITY_cgl-fsl-ppc = "7"<br>
            <br>
             LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"<br>
            +<br>
            +LAYERSERIES_COMPAT_cgl-fsl-ppc-layer = "rocko"<br>
          </blockquote>
          <div dir="auto"><br>
          </div>
          <div dir="auto">Seems this should be cgl-fsl-ppc isn’t it</div>
        </div>
      </div>
    </blockquote>
    correct. v2 a bit later<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote type="cite"
cite="mid:CAMKF1srHEK-+YtSZ-_vMp=GbZ4k8SRFxpNG=NAhZX1aa82A5Dw@mail.gmail.com">
      <div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">-- <br>
            2.7.4<br>
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
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------8DA3377485F11DC8B5EF5B6E--
