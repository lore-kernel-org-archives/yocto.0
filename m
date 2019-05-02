Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BD2FE00D3E; Thu,  2 May 2019 11:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59F9E00D4D
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 11:21:33 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id y3so1413055plp.0
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 11:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=aY+D+UeosNxzrItjUr8u5EzfFw5SGH6mSJNj+GUWMaM=;
	b=GZbdLi389qX4hhIAIxxAMI+NMs/hUx3KsZ1M70zDNiO4/mnQVcOfiDbt8w3KoAVkt6
	VvgwIrPBrqiwGFJFzvKniYSxDY/qSafp9xYC28xmn/dzpA5AK9hYQRAriMiLIrANSf4x
	L6Kz/XZoF954c3bNuPqOWXYBLryyZdQ3w9skZeMrbXFfLOr4dqIWLu5YQpt5F8dVJ0sU
	cdNy+JRueEwHlYSFPXpJi10FpVwPCuU1mO+N1mOzV/v3+BKvyDMG8OUwFXVgfRLgQS1a
	ayDw7nyt9kaTVNx5sDHEtmUuFUYtGqbvVWWF16JFVierGWflZsKVOiJ/ust+uN414S5L
	GNEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=aY+D+UeosNxzrItjUr8u5EzfFw5SGH6mSJNj+GUWMaM=;
	b=M8NR0aDYnMja7A5fJ3SvZM0yrS2o9GdnkXth+1ZiFxDTRnwYf4OdTArLRWuMK6ZJjP
	YWoADDLme/PDQKQiNygbYek9LfIFPSX2T4s1MhFMD562uc0f/DM2gr664568UZNwfJC6
	aHs1mf23rqPyt0ykh74v9zTo45Mnx4TNbRXmjfoy/gbFX/S3u9XvOX9MQItW+5wLxMdW
	0x36ujp4MGN//2kRBx6HSlm1WJjKUC7Miz0I7QANclFs2iJzMvS9cWHVY69aV/6nOOjb
	jWhmCknCnRfox5fgXmZrEQSURZPDNQ1Mq9J1oQMAHD08/7W7vxe9f1N7MunSO2Vny+0A
	2ZtQ==
X-Gm-Message-State: APjAAAUii05qA1/RaA3/uR+G7bBfTjzdFy0d1DbAv0PQudqdsreS68MZ
	yT6bkm5qrkbNRoKVzfBhGAFYjkQjiZ0=
X-Google-Smtp-Source: APXvYqyNYTBNmTS4Z1Ezu3lq935DO2xolZdhvmJfzPKLBE/lnvMJXtWHDRKQHz3/1NqolowRS5q6KQ==
X-Received: by 2002:a17:902:b715:: with SMTP id
	d21mr5283374pls.103.1556821292894; 
	Thu, 02 May 2019 11:21:32 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:7403:feaf:ea56:abf7?
	([2601:202:4180:c33:7403:feaf:ea56:abf7])
	by smtp.gmail.com with ESMTPSA id
	l188sm3457112pfl.108.2019.05.02.11.21.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 May 2019 11:21:31 -0700 (PDT)
To: Scott Rifenbark <srifenbark@gmail.com>
References: <alpine.LFD.2.21.1905020916480.10974@localhost.localdomain>
	<6e58005a-83b4-a7dc-d5dd-c1533fc29ad8@mvista.com>
	<CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <4dec56c4-3876-b96c-9b31-a1e4d726f78b@mvista.com>
Date: Thu, 2 May 2019 11:21:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bsp-guide: replace meta-intel with meta-xilinx as container layer
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
X-List-Received-Date: Thu, 02 May 2019 18:21:38 -0000
Content-Type: multipart/alternative;
	boundary="------------104A1569BB7CE4223E2ED80A"
Content-Language: en-US

--------------104A1569BB7CE4223E2ED80A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 5/2/19 10:45 AM, Scott Rifenbark wrote:
> The term "Container Layer" was put in the ref-manual by me to describe
> a "meta-*" layer that had other "meta-*" layers (see
> https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer
> and the term "Container Layer").  Maybe this was never a good term?  I
> don't know.  Nobody has said anything about that term for many releases. 
>
> The problem Robert points out needs to be fixed in the BSP manual as
> "meta-intel" is not longer qualifying by my definition.  I can fix that. 
>
> Is "Container Layer" ok as I have defined it?
in those terms above, yes its fine.

thanks for clarifying.

Armin
>
> Thanks,
> Scott
>
> On Thu, May 2, 2019 at 10:21 AM akuster <akuster@mvista.com
> <mailto:akuster@mvista.com>> wrote:
>
>
>
>     On 5/2/19 6:19 AM, Robert P. J. Day wrote:
>     > As meta-intel is no longer a container layer, use meta-xilinx as
>     > an example instead.
>
>     I thought "meta-virtualization" was a container layer?
>
>     IMHO, a BSP should only deal with getting a MACHINE booted.
>
>     - armin
>     >
>     > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca
>     <mailto:rpjday@crashcourse.ca>>
>     >
>     > ---
>     >
>     > diff --git a/documentation/bsp-guide/bsp.xml
>     b/documentation/bsp-guide/bsp.xml
>     > index 0bb0b68ab..a53ff6bce 100644
>     > --- a/documentation/bsp-guide/bsp.xml
>     > +++ b/documentation/bsp-guide/bsp.xml
>     > @@ -146,18 +146,15 @@
>     >
>     >      <para>
>     >          Some layers function as a layer to hold other BSP layers.
>     > -        These layers are knows as
>     > +        These layers are known as
>     >          "<ulink
>     url='&YOCTO_DOCS_REF_URL;#term-container-layer'>container
>     layers</ulink>".
>     >          An example of this type of layer is the
>     > -        <filename>meta-intel</filename> layer.
>     > -        This layer contains BSP layers for the Intel-core2-32
>     > -        <trademark class='registered'>Intel</trademark> Common Core
>     > -        (Intel-core2-32) and the Intel-corei7-64
>     > -        <trademark class='registered'>Intel</trademark> Common Core
>     > -        (Intel-corei7-64).
>     > -        the <filename>meta-intel</filename> layer also contains
>     > -        the <filename>common/</filename> directory, which contains
>     > -        common content across those layers.
>     > +        <filename>meta-xilinx</filename> layer.
>     > +        This container layer contains some basic top-level
>     information,
>     > +        as well as three actual Xilinx-related BSP layers,
>     > +        <filename>meta-xilinx-bsp</filename>,
>     > +        <filename>meta-xilinx-contrib</filename>, and
>     > +        <filename>meta-xilinx-standalone</filename>.
>     >      </para>
>     >
>     >      <para>
>     >
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>


--------------104A1569BB7CE4223E2ED80A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 5/2/19 10:45 AM, Scott Rifenbark
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">The term "Container Layer" was put in the
          ref-manual by me to describe a "meta-*" layer that had other
          "meta-*" layers (see <a
href="https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer"
            moz-do-not-send="true">https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer</a>
          and the term "Container Layer").  Maybe this was never a good
          term?  I don't know.  Nobody has said anything about that term
          for many releases.  <br>
        </div>
        <div dir="ltr"><br>
        </div>
        <div>The problem Robert points out needs to be fixed in the BSP
          manual as "meta-intel" is not longer qualifying by my
          definition.  I can fix that.  <br>
        </div>
        <div><br>
        </div>
        <div>Is "Container Layer" ok as I have defined it?</div>
      </div>
    </blockquote>
    in those terms above, yes its fine. <br>
    <br>
    thanks for clarifying.<br>
    <br>
    Armin<br>
    <blockquote type="cite"
cite="mid:CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Thanks, <br>
        </div>
        <div>Scott<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, May 2, 2019 at 10:21
          AM akuster &lt;<a href="mailto:akuster@mvista.com"
            moz-do-not-send="true">akuster@mvista.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
          <br>
          On 5/2/19 6:19 AM, Robert P. J. Day wrote:<br>
          &gt; As meta-intel is no longer a container layer, use
          meta-xilinx as<br>
          &gt; an example instead.<br>
          <br>
          I thought "meta-virtualization" was a container layer?<br>
          <br>
          IMHO, a BSP should only deal with getting a MACHINE booted.<br>
          <br>
          - armin<br>
          &gt;<br>
          &gt; Signed-off-by: Robert P. J. Day &lt;<a
            href="mailto:rpjday@crashcourse.ca" target="_blank"
            moz-do-not-send="true">rpjday@crashcourse.ca</a>&gt;<br>
          &gt;<br>
          &gt; ---<br>
          &gt;<br>
          &gt; diff --git a/documentation/bsp-guide/bsp.xml
          b/documentation/bsp-guide/bsp.xml<br>
          &gt; index 0bb0b68ab..a53ff6bce 100644<br>
          &gt; --- a/documentation/bsp-guide/bsp.xml<br>
          &gt; +++ b/documentation/bsp-guide/bsp.xml<br>
          &gt; @@ -146,18 +146,15 @@<br>
          &gt;<br>
          &gt;      &lt;para&gt;<br>
          &gt;          Some layers function as a layer to hold other
          BSP layers.<br>
          &gt; -        These layers are knows as<br>
          &gt; +        These layers are known as<br>
          &gt;          "&lt;ulink
          url='&amp;YOCTO_DOCS_REF_URL;#term-container-layer'&gt;container
          layers&lt;/ulink&gt;".<br>
          &gt;          An example of this type of layer is the<br>
          &gt; -        &lt;filename&gt;meta-intel&lt;/filename&gt;
          layer.<br>
          &gt; -        This layer contains BSP layers for the
          Intel-core2-32<br>
          &gt; -        &lt;trademark
          class='registered'&gt;Intel&lt;/trademark&gt; Common Core<br>
          &gt; -        (Intel-core2-32) and the Intel-corei7-64<br>
          &gt; -        &lt;trademark
          class='registered'&gt;Intel&lt;/trademark&gt; Common Core<br>
          &gt; -        (Intel-corei7-64).<br>
          &gt; -        the &lt;filename&gt;meta-intel&lt;/filename&gt;
          layer also contains<br>
          &gt; -        the &lt;filename&gt;common/&lt;/filename&gt;
          directory, which contains<br>
          &gt; -        common content across those layers.<br>
          &gt; +        &lt;filename&gt;meta-xilinx&lt;/filename&gt;
          layer.<br>
          &gt; +        This container layer contains some basic
          top-level information,<br>
          &gt; +        as well as three actual Xilinx-related BSP
          layers,<br>
          &gt; +       
          &lt;filename&gt;meta-xilinx-bsp&lt;/filename&gt;,<br>
          &gt; +       
          &lt;filename&gt;meta-xilinx-contrib&lt;/filename&gt;, and<br>
          &gt; +       
          &lt;filename&gt;meta-xilinx-standalone&lt;/filename&gt;.<br>
          &gt;      &lt;/para&gt;<br>
          &gt;<br>
          &gt;      &lt;para&gt;<br>
          &gt;<br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------104A1569BB7CE4223E2ED80A--
