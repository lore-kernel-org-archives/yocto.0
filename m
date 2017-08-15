Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29B4DE00C93; Mon, 14 Aug 2017 18:09:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E424E00CB9
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 18:09:11 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id i12so6784979pgr.3
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 18:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=+7oVLmddTQQIyfxx0jMeYLhMixB8L2UUNu2nPMsqfOM=;
	b=AQBgJ9kFCygByl24LsKV646C9xiNNA5ReOBqh68KOpp83j7WzoV8eDo+GigM4zMovf
	cRP9w86Xf7l44tUNLKfxiBms+mjIN0WIIkZIh0+cZH8fKoyzP16wOm8ZcTGboAfigpuT
	8Go9RnRnD2ojjXxR50Fd9GKOL+O24l/bX5a+fK/EPFkhHsP4a+EjlhNMytRrGGoOas8F
	1WtxRSIeAt1ofiSHn5gFmgd5YlQ0Qxi7MZX64LH+eESJqLOYKIev1CPwGbUedVDO1Mlu
	KP+mtjDP6jBLAO3D1D74T5zcjmPezma5r+6g66jqav3CD2pSkeQsdEOBVuc2f43bc6ek
	Hflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=+7oVLmddTQQIyfxx0jMeYLhMixB8L2UUNu2nPMsqfOM=;
	b=YN2Im4HQgvbwGFYySaEVxGd+C0WqT5CaO3rTy9SUQI3b6aECCIgNBgu4KjRc7XlMSq
	amm41AUpsmpODrUxFqUI4ntP0sh1NaloauyWSkHz8xYkuzYRi2m9wnVdQQVhBz3Ta8i0
	glpAQXQY+K7j6oeuprTmdMbWjpwMkqSuYb9a9sVj2whGIUCRldyxAAbGZoqiF3MaPaw9
	ybEkXbr6fU0YKKQexwK4J3zbU+PlZ/TiiL/RLRk1ORwu0L7x5dWHtGbfu2XsPBFL8B8V
	vR47tf6QFhqinl45XER7ZUpijA7aovtXnA2xXsLcya2+eYYXOcElPgHUbPytqKj8gyHw
	Tq6Q==
X-Gm-Message-State: AHYfb5hAlOfRyH5+t0fSBy9rxQft0YOf4SoRLtQebr3y/lF/JQnfppGf
	VaYnHeCCNiqHbh/lCSo=
X-Received: by 10.98.16.194 with SMTP id 63mr23888574pfq.172.1502759350320;
	Mon, 14 Aug 2017 18:09:10 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	w123sm16056255pfb.60.2017.08.14.18.09.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Aug 2017 18:09:09 -0700 (PDT)
To: Christopher Larson <kergoth@gmail.com>,
	Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
Date: Tue, 15 Aug 2017 09:09:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Tue, 15 Aug 2017 01:09:13 -0000
Content-Type: multipart/alternative;
	boundary="------------964E40E660AA9914513FEAD6"
Content-Language: en-US

--------------964E40E660AA9914513FEAD6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Team Yocto Members,

I continue compiling, and got :

ERROR: 
/home/bianchi/poky/openembedded-core/meta/recipes-core/images/build-appliance-image_15.0.0.bb: 
No IMAGE_CMD defined for IMAGE_FSTYPES entry 'wic.vmdk' - possibly 
invalid type name or missing support class
ERROR: Failed to parse recipe: 
/home/bianchi/poky/openembedded-core/meta/recipes-core/images/build-appliance-image_15.0.0.bb

How can I fix it ?

regards,

Riko


On 14/08/17 23:56, Christopher Larson wrote:
> The openembedded-core root isn’t a layer, openembedded-core/meta is.
>
> On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval 
> <leonardo.sandoval.gonzalez@linux.intel.com 
> <mailto:leonardo.sandoval.gonzalez@linux.intel.com>> wrote:
>
>     On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
>     > Dear Yocto Members,
>     >
>     > How can I find this file ?
>
>
>     this is a pretty general question. are you running bitbake from the
>     build directory? double check your conf/bblayers.conf and make sure
>     paths there are pointing correctly.
>
>
>     >
>     > ==
>     >
>     > ERROR: Unable to parse
>     > /home/bianchi/poky/openembedded-core/conf/layer.conf: [Errno 2] file
>     > /home/bianchi/poky/openembedded-core/conf/layer.conf not found
>     >
>     >
>     > Thanks,
>     >
>     > Riko
>     >
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
> -- 
> Christopher Larson
> kergoth at gmail dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Senior Software Engineer, Mentor Graphics


--------------964E40E660AA9914513FEAD6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Team Yocto Members,</p>
    <p>I continue compiling, and got :</p>
    <p>ERROR:
/home/bianchi/poky/openembedded-core/meta/recipes-core/images/build-appliance-image_15.0.0.bb:
      No IMAGE_CMD defined for IMAGE_FSTYPES entry 'wic.vmdk' - possibly
      invalid type name or missing support class<br>
      ERROR: Failed to parse recipe:
/home/bianchi/poky/openembedded-core/meta/recipes-core/images/build-appliance-image_15.0.0.bb</p>
    <p>How can I fix it ?</p>
    <p>regards,</p>
    <p>Riko<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 14/08/17 23:56, Christopher Larson
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com">
      <div dir="ltr">The openembedded-core root isn’t a layer,
        openembedded-core/meta is.</div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Mon, Aug 14, 2017 at 8:49 AM,
          Leonardo Sandoval <span dir="ltr">&lt;<a
              href="mailto:leonardo.sandoval.gonzalez@linux.intel.com"
              target="_blank" moz-do-not-send="true">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
              class="">On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:<br>
              &gt; Dear Yocto Members,<br>
              &gt;<br>
              &gt; How can I find this file ?<br>
              <br>
              <br>
            </span>this is a pretty general question. are you running
            bitbake from the<br>
            build directory? double check your conf/bblayers.conf and
            make sure<br>
            paths there are pointing correctly.<br>
            <div class="HOEnZb">
              <div class="h5"><br>
                <br>
                &gt;<br>
                &gt; ==<br>
                &gt;<br>
                &gt; ERROR: Unable to parse<br>
                &gt; /home/bianchi/poky/<wbr>openembedded-core/conf/layer.<wbr>conf:
                [Errno 2] file<br>
                &gt; /home/bianchi/poky/<wbr>openembedded-core/conf/layer.<wbr>conf
                not found<br>
                &gt;<br>
                &gt;<br>
                &gt; Thanks,<br>
                &gt;<br>
                &gt; Riko<br>
                &gt;<br>
                <br>
                <br>
                --<br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        <div class="gmail_signature" data-smartmail="gmail_signature">
          <div dir="ltr">
            <div>
              <div dir="ltr">Christopher Larson<br>
                kergoth at gmail dot com<br>
                Founder - BitBake, OpenEmbedded, OpenZaurus<br>
                Senior Software Engineer, Mentor Graphics</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------964E40E660AA9914513FEAD6--
