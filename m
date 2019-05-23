Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70E3BE00798; Thu, 23 May 2019 07:40:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE73E00B81
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:39:58 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id f10so6584197wre.7
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=OeztEVJoiYldIm7nxkVUnSI1nDzcbWShvvg1t2MITIQ=;
	b=iZ+mvjqBPsdzZW5CRIWJZKySFMxhSOPU4nJmhhn5xx8nh4oHU2LbHf3NbiDImeOOmz
	ZcfzrpYeZqloKzt9FhtZ7a97+oOHnG4Kn0cRam5lRwaO5WjUtfa7DQCyOBeAo2sNHk6o
	nltJ3qGIW7M6nYoTpO+iWA9s+UtrhST5Hq22zbufiUwE2bq0Qp5t/FaeHxIWgq/Be5fj
	OdUmY3eI4Ni79KPGhey85KIUCPKyIav8ygJYN88tZe5TtxeylCGHJJwHKcNOLEA6ZiHx
	Q5IQy/J7LK7VPGdUlAN1prM9Ww/mibFMf2xr4OFdZhQSik8WgXd+KsGMXAn/0izxUWml
	u/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=OeztEVJoiYldIm7nxkVUnSI1nDzcbWShvvg1t2MITIQ=;
	b=hE8Q+sGwjyRjrIsj8thJH0EEASrZJs6mJBPzJ9qLQUWctG/4zVyd/YxKzLx7Ph8Qew
	Ca7vcazJ4hfjsZ1biNx03xvAT6pchZJ8C66EkE7Eo1SAcGquwD8JU3JuRYd7x7njhrSc
	it2h8nKD870K1kl4mCS0gEgt1sH7xmZHJ8NAoy0ylEwnPApvGRBXaBN2TwNtiBNnWs3R
	3StiWeDB9q6HCUWCQ3aGYX1prprCI5IR6M3lYLxrm+T6IskGYr1lsJIV4R0Y5+/PXs89
	GyOMfrU3PgO1V54LAIZUZS+sMpsWnMLjUqAWiqiFVwWrSX1sPnKUwkAFV8l9ipGwQnSM
	/QBg==
X-Gm-Message-State: APjAAAXIzrNYVPlQzMZGoUGUk9Gw6Nuueh/x3+45Rrw+O3vfaBVisYp5
	vFONGpDcaoSZPRPpZPjdXFFGRQ==
X-Google-Smtp-Source: APXvYqxKHD/TxDr1zjqgDRt1cgq1NbMKqFpEefka1DSuheEZ4HcUWwLnlhf9Vkq76s4w2dZ7Anet3Q==
X-Received: by 2002:a5d:534b:: with SMTP id t11mr14104154wrv.297.1558622397166;
	Thu, 23 May 2019 07:39:57 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101]) by smtp.gmail.com with ESMTPSA id
	f11sm25872143wrv.93.2019.05.23.07.39.56
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 07:39:56 -0700 (PDT)
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <4df12974-8aef-0ae7-66d4-bc5dd2167100@gherzan.ro>
Date: Thu, 23 May 2019 15:39:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
Cc: zubair@balena.io, Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-devsrc used to be full source - not the case since thud
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
X-List-Received-Date: Thu, 23 May 2019 14:40:10 -0000
Content-Type: multipart/alternative;
	boundary="------------2E8DAD618F834AB6D3ABA1E8"
Content-Language: en-US

--------------2E8DAD618F834AB6D3ABA1E8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 23/05/2019 15.32, Bruce Ashfield wrote:
>
>
> On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro
> <mailto:andrei@gherzan.ro>> wrote:
>
>     Hello,
>
>     This might have been discussed before. I couldn't find a relevant
>     thread, but if it is so, just link me to it.
>
>     Since thud, more specific since
>
>     commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>     Author: Bruce Ashfield <bruce.ashfield@windriver.com
>     <mailto:bruce.ashfield@windriver.com>>
>     Date:   Sat Aug 18 22:50:44 2018 -0400
>         kernel-devsrc: restructure for out of tree (and on target)
>     module builds
>
>     ... we switched from a recipe that was deploying the entire source
>     code
>     to one that provides mainly the kernel headers (but not only). This
>     change broke people expectations of this recipe while the
>     description is
>     also confusing: "Development source linux kernel. When built, this
>     recipe packages the \source of the preferred virtual/kernel
>     provider and
>     makes it available for full kernel \development or external module
>     builds".
>
>     If size is not a problem (which can be the case when you compile on a
>     builder for example and deploy only a OOT kernel module through other
>     means), the full kernel source was a painless experience where
>     things like
>
>     commit a9471601fedd1f5087304eaa5fd39b98ae220313
>     Author: Bruce Ashfield <bruce.ashfield@windriver.com
>     <mailto:bruce.ashfield@windriver.com>>
>     Date:   Thu Aug 30 09:45:41 2018 -0400
>         kernel-devsrc: fix arm/arm64 target module build
>
>     ... would not appear. I understand the size impact on target and for
>     those cases, continuously maintaining this recipe with new
>     files/resources needed from the kernel, makes sense. So my proposal is
>     to have two recipes, for example kernel-devsrc and kernel-fullsrc
>     (kernel-src etc.) so people can choose what they need/want
>     deploying/using. Or even have another devsrc provider. I'm open to any
>     implementation detail. I'd just want to have an option for a full
>     kernel
>     source recipe.
>
>
> This is already planned, and hidden in bugzilla somewhere. I'll have
> some new kernel packaging
> options available for the fall release.
Nice to hear that. Can you share more details on that because we plan to
implement it for BalenaOS and would be a waste to redo what you already
have or do it in different ways and reset afterwards.

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


--------------2E8DAD618F834AB6D3ABA1E8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 23/05/2019 15.32, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default" style="font-size:small"><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, May 23, 2019 at 9:56
            AM Andrei Gherzan &lt;<a href="mailto:andrei@gherzan.ro"
              moz-do-not-send="true">andrei@gherzan.ro</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Hello,<br>
            <br>
            This might have been discussed before. I couldn't find a
            relevant<br>
            thread, but if it is so, just link me to it.<br>
            <br>
            Since thud, more specific since<br>
            <br>
            commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
            Author: Bruce Ashfield &lt;<a
              href="mailto:bruce.ashfield@windriver.com" target="_blank"
              moz-do-not-send="true">bruce.ashfield@windriver.com</a>&gt;<br>
            Date:   Sat Aug 18 22:50:44 2018 -0400<br>
                kernel-devsrc: restructure for out of tree (and on
            target) module builds<br>
            <br>
            ... we switched from a recipe that was deploying the entire
            source code<br>
            to one that provides mainly the kernel headers (but not
            only). This<br>
            change broke people expectations of this recipe while the
            description is<br>
            also confusing: "Development source linux kernel. When
            built, this<br>
            recipe packages the \source of the preferred virtual/kernel
            provider and<br>
            makes it available for full kernel \development or external
            module builds".<br>
            <br>
            If size is not a problem (which can be the case when you
            compile on a<br>
            builder for example and deploy only a OOT kernel module
            through other<br>
            means), the full kernel source was a painless experience
            where things like<br>
            <br>
            commit a9471601fedd1f5087304eaa5fd39b98ae220313<br>
            Author: Bruce Ashfield &lt;<a
              href="mailto:bruce.ashfield@windriver.com" target="_blank"
              moz-do-not-send="true">bruce.ashfield@windriver.com</a>&gt;<br>
            Date:   Thu Aug 30 09:45:41 2018 -0400<br>
                kernel-devsrc: fix arm/arm64 target module build<br>
            <br>
            ... would not appear. I understand the size impact on target
            and for<br>
            those cases, continuously maintaining this recipe with new<br>
            files/resources needed from the kernel, makes sense. So my
            proposal is<br>
            to have two recipes, for example kernel-devsrc and
            kernel-fullsrc<br>
            (kernel-src etc.) so people can choose what they need/want<br>
            deploying/using. Or even have another devsrc provider. I'm
            open to any<br>
            implementation detail. I'd just want to have an option for a
            full kernel<br>
            source recipe.<br>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div class="gmail_default" style="font-size:small">This is
              already planned, and hidden in bugzilla somewhere. I'll
              have some new kernel packaging</div>
            <div class="gmail_default" style="font-size:small">options
              available for the fall release.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Nice to hear that. Can you share more details on that because we
    plan to implement it for BalenaOS and would be a waste to redo what
    you already have or do it in different ways and reset afterwards. <br>
    <pre class="moz-signature" cols="72">-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</pre>
  </body>
</html>

--------------2E8DAD618F834AB6D3ABA1E8--
