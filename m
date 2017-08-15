Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE9BE00D77; Mon, 14 Aug 2017 17:55:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 734C9E00A39
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 17:55:28 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id u5so57426483pgn.0
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 17:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=dRMoXziYXvXnNc77ISTHbSnpFGKI161rPn1uIB2XDCw=;
	b=Qu3IXze31GKGWKnJqjNDCBQIWeW12ilREn1w0mlXoRTlsuvKefj4GGmGiLXXl+JG5B
	YsA3KPvZd+3MQ2k9UfGtbi1i/fc06W+7sFPonnEfIxLusS40dq4voqk/G2Brqb0fAz/4
	acO7E7tc4EM7B9x9JeJWBo7MPiiIk8heAxAHvIf5neg83y4cV6vse5RcZr4JuUl2LbQt
	EHoMSLW8sxO+IDNdsVYWqIRdEGzB0mHzUeu4WbL35E5fDLPlv+vM3sT6W1RG+To6Qo8z
	4Adg8Av35JKpgOOPEcGxIlMUyDFzlXIdHJv912srwUHcYVMa2R3Hl9S3PvH4ItG7eVaq
	fUpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=dRMoXziYXvXnNc77ISTHbSnpFGKI161rPn1uIB2XDCw=;
	b=NMbO0HO1ZEIu+YJXOmu552ps3j40wwH2fMriupGOXufDOUzjggU8mtyXHJ6IWIAlB3
	QRphneQNnMS/3z3bUb5vWnh7w3p2ildl2jfNkpjT3+Fvkr3dUQ3Idz73/ufBrO3+9ZYu
	I/ER21FCIB+BZOQBIIy41poidEqdGivblLgGKm+aDwednRRWtVBv6iGrgcK1toit6i/T
	nmrGGCrQ5KVO5UabLWSSh+J37SQkhzQIqdonzvPQ3QgyoLhItk5PK8Lu4+afYZcNQlyC
	HL5BJfH+i3Hikzp2ZWrW3uoUCmiUNI3cGu0AbP2GJts3XUF8jkYOGwLcdTuJVIeL/Rvp
	K9KQ==
X-Gm-Message-State: AHYfb5iLlzFt9s2Uh0uAKuEm5/J+Z/+aw+a9vG6E0V9i5NU5cOfxN048
	+3z0L71xayDJA6QZwro=
X-Received: by 10.84.209.165 with SMTP id y34mr29827782plh.200.1502758528360; 
	Mon, 14 Aug 2017 17:55:28 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	e5sm16242258pgn.55.2017.08.14.17.55.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Aug 2017 17:55:27 -0700 (PDT)
To: Christopher Larson <kergoth@gmail.com>,
	Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <118304ca-6d89-0dcd-fa3f-df08db04b9bf@gmail.com>
Date: Tue, 15 Aug 2017 08:55:23 +0800
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
X-List-Received-Date: Tue, 15 Aug 2017 00:55:35 -0000
Content-Type: multipart/alternative;
	boundary="------------16AB4205C6CE193447293BA4"
Content-Language: en-US

--------------16AB4205C6CE193447293BA4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks for the clue, now it's compiling,


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


--------------16AB4205C6CE193447293BA4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Thanks for the clue, now it's compiling,<br>
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

--------------16AB4205C6CE193447293BA4--
