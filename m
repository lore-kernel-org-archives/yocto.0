Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A1EE00DC9; Tue, 10 Jul 2018 13:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF0CDE00929
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 13:24:46 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id k81-v6so45135450oib.4
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 13:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=aXcNbK+/qSr5ORgYNtspoFYOek7a+E3P3L0H/FCLsPw=;
	b=brIP3t02VEEIdOYBJ+pje1MyaAl1edUUrj8zMTGZrjrNMOphPeHTlqhYDJdKEf6/2N
	bGRVXC4sV0nFK1Dl1cUND+Mt9bPbkKIHgkimYxraW3X1tQUnSSxdNRKojnFSCwRu9x5t
	vmBrwDYzBobmRzj0NvBsvwVl0Z+sJhywiUmlMEKE+OJg+QNdyS0P3IzPHeGTRM/TLUgR
	zsAZ4BW1ieIhYeWRtRrRhctTsGuOtfjoWspzvB1YwBUWtcuOWdyBOebUfYJXv3BSnkG0
	BIdMui+vLBjUiJd25s4wa7cJltSvIO7NJJM7rWr2R+58d5mAON+B7muiecRQCOdacSIU
	b/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=aXcNbK+/qSr5ORgYNtspoFYOek7a+E3P3L0H/FCLsPw=;
	b=Ih0xyUSOhOPPPkuJ5OflkJqjcwxZmnBZTbQK5FLr+bmO/l6ZCLV31MOpZg6qdnSRQc
	Ht1+Y1VLO/sTQgfoYX2+YUoLCbrOBOP0ctCKAA1ADlOajwwKV9V4KhZ2xANvjafgUXDI
	AJ5dsm//bKkI+IexuO+usYDHR2CalLmhN+P6hmGmYujUscJs2qTyNLg9SivpUHf8xRMX
	AMx2w6vuVGZWTedmGCoMoSaF16lR4SXYVQOrHs+GWamuajYfW0shWAYIxgxPRuIXnE4D
	gSszIidg2BzG6yhaW/ctQXMAdtBGoMyHtB/5F8c0glRF8Cy76Clk4HjugG6tIfOBVb1C
	QA0A==
X-Gm-Message-State: AOUpUlF/SYXv3LveHjGUySUWQ7fPQGmGtyQPHizjXDMEppzEa5O4NW6t
	7uZasCADC5CSUAWDjMhbl99gkqvIuUQ=
X-Google-Smtp-Source: AAOMgpfMREd94a9s6Kct39tEx3S+FhH3ZHdtUMiOvr+RNJXXcEItGnHBkbvP+wV1mJMl1Mb8prcE4Q==
X-Received: by 2002:aca:e8c9:: with SMTP id
	f192-v6mr2568297oih.87.1531254285824; 
	Tue, 10 Jul 2018 13:24:45 -0700 (PDT)
Received: from [10.43.100.81] (64.2.3.196.ptr.us.xo.net. [64.2.3.196])
	by smtp.googlemail.com with ESMTPSA id
	k133-v6sm15186563oia.36.2018.07.10.13.24.44
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Jul 2018 13:24:44 -0700 (PDT)
To: yocto@yoctoproject.org
References: <CAOsp8o-2V=xNk4aEB9HfV9j=aHdW=bgyOqcCg13QJqQ2APSOHA@mail.gmail.com>
	<CANNYZj9161QoBpFJ7w3Z-1Pog5fRntsr=7mxNwtRz8y3SQq3_g@mail.gmail.com>
	<CAJTo0LZKArwnjGxbZnhyrY2eTnKL5g7Tp1yvFQhbMu3tNwhoSw@mail.gmail.com>
	<CAOsp8o9U02cT0Y3u0GerispM0RjowviEUxgbxysFPwrdihg53w@mail.gmail.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
Message-ID: <6f53c0ec-3047-e83b-3327-b24395c3baa6@mvista.com>
Date: Tue, 10 Jul 2018 13:24:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o9U02cT0Y3u0GerispM0RjowviEUxgbxysFPwrdihg53w@mail.gmail.com>
Subject: Re: Hook for layer-only actions?
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
X-List-Received-Date: Tue, 10 Jul 2018 20:24:53 -0000
Content-Type: multipart/alternative;
	boundary="------------1F8321A5D09A9D826081DF25"
Content-Language: en-US

--------------1F8321A5D09A9D826081DF25
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 7/10/2018 1:04 PM, Michael Habibi wrote:
> Well I should have just used what I want to actually do as the 
> example, and not a QA action.
>
> I want to create a new type of manifest that is only my layer, that 
> will include line items that basically has like: package name, 
> version, download URL, checksum, license.
>
> I have no idea yet how to implement it, but wanted to make sure it was 
> feasible.

It is.

You more or less just need to figure out which layer the recipe comes 
from. Then you can build functions on top of that.

https://github.com/MontaVista-OpenSourceTechnology/meta-montavista-cgx/blob/master/conf/layerinfo.inc

We modify the mirror we point to based on what layer the recipe resides 
in...The specific function that would interest you is
get_layername

Which we set LAYER_NAME to, then we use functions to do things with 
LAYER_NAME.

>
> On Tue, Jul 10, 2018 at 2:27 PM Burton, Ross <ross.burton@intel.com 
> <mailto:ross.burton@intel.com>> wrote:
>
>     Hypothetically a new QA action should be added at the distro level, by
>     writing a class and adding it to INHERIT.
>
>     (I've several new QA tests added in this way)
>
>     Ross
>
>     On 10 July 2018 at 19:53, Alexander Kanavin
>     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>> wrote:
>     > Yes. Implement a class and inherit it from the recipes.
>     >
>     > Alex
>     >
>     > 2018-07-10 20:50 GMT+02:00 Michael Habibi <mikehabibi@gmail.com
>     <mailto:mikehabibi@gmail.com>>:
>     >> I was wondering if there is a way I can apply a global
>     modification to all
>     >> recipes in a layer? For instance, we have our own layer for our
>     changes that
>     >> sit on top of the base Yocto/OE layers.
>     >>
>     >> What if, hypothetically, I wanted to insert a do_package_qa
>     action globally,
>     >> for everything in our layer. Is there a way to codify that,
>     beyond actually
>     >> adding this to every recipe in our layer?
>     >>
>     >> --
>     >> _______________________________________________
>     >> yocto mailing list
>     >> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     >> https://lists.yoctoproject.org/listinfo/yocto
>     >>
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------1F8321A5D09A9D826081DF25
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/10/2018 1:04 PM, Michael Habibi
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAOsp8o9U02cT0Y3u0GerispM0RjowviEUxgbxysFPwrdihg53w@mail.gmail.com">
      <div dir="ltr">Well I should have just used what I want to
        actually do as the example, and not a QA action.
        <div><br>
        </div>
        <div>I want to create a new type of manifest that is only my
          layer, that will include line items that basically has like:
          package name, version, download URL, checksum, license.</div>
        <div><br>
        </div>
        <div>I have no idea yet how to implement it, but wanted to make
          sure it was feasible.</div>
      </div>
    </blockquote>
    <br>
    It is. <br>
    <br>
    You more or less just need to figure out which layer the recipe
    comes from. Then you can build functions on top of that.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/MontaVista-OpenSourceTechnology/meta-montavista-cgx/blob/master/conf/layerinfo.inc">https://github.com/MontaVista-OpenSourceTechnology/meta-montavista-cgx/blob/master/conf/layerinfo.inc</a><br>
    <br>
    We modify the mirror we point to based on what layer the recipe
    resides in...The specific function that would interest you is<br>
    <span style="color: rgb(0, 92, 197); font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">get_layername</span><br>
    <br>
    Which we set LAYER_NAME to, then we use functions to do things with
    LAYER_NAME.<br>
    <br>
    <blockquote type="cite"
cite="mid:CAOsp8o9U02cT0Y3u0GerispM0RjowviEUxgbxysFPwrdihg53w@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div dir="ltr">On Tue, Jul 10, 2018 at 2:27 PM Burton, Ross &lt;<a
            href="mailto:ross.burton@intel.com" moz-do-not-send="true">ross.burton@intel.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">Hypothetically
          a new QA action should be added at the distro level, by<br>
          writing a class and adding it to INHERIT.<br>
          <br>
          (I've several new QA tests added in this way)<br>
          <br>
          Ross<br>
          <br>
          On 10 July 2018 at 19:53, Alexander Kanavin &lt;<a
            href="mailto:alex.kanavin@gmail.com" target="_blank"
            moz-do-not-send="true">alex.kanavin@gmail.com</a>&gt; wrote:<br>
          &gt; Yes. Implement a class and inherit it from the recipes.<br>
          &gt;<br>
          &gt; Alex<br>
          &gt;<br>
          &gt; 2018-07-10 20:50 GMT+02:00 Michael Habibi &lt;<a
            href="mailto:mikehabibi@gmail.com" target="_blank"
            moz-do-not-send="true">mikehabibi@gmail.com</a>&gt;:<br>
          &gt;&gt; I was wondering if there is a way I can apply a
          global modification to all<br>
          &gt;&gt; recipes in a layer? For instance, we have our own
          layer for our changes that<br>
          &gt;&gt; sit on top of the base Yocto/OE layers.<br>
          &gt;&gt;<br>
          &gt;&gt; What if, hypothetically, I wanted to insert a
          do_package_qa action globally,<br>
          &gt;&gt; for everything in our layer. Is there a way to codify
          that, beyond actually<br>
          &gt;&gt; adding this to every recipe in our layer?<br>
          &gt;&gt;<br>
          &gt;&gt; --<br>
          &gt;&gt; _______________________________________________<br>
          &gt;&gt; yocto mailing list<br>
          &gt;&gt; <a href="mailto:yocto@yoctoproject.org"
            target="_blank" moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          &gt;&gt; <a
            href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
          &gt;&gt;<br>
          &gt; --<br>
          &gt; _______________________________________________<br>
          &gt; yocto mailing list<br>
          &gt; <a href="mailto:yocto@yoctoproject.org" target="_blank"
            moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          &gt; <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
      <!--'"--><br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a></pre>
  </body>
</html>

--------------1F8321A5D09A9D826081DF25--
