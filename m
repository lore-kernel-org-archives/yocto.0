Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D060E00444; Thu, 20 Oct 2016 08:26:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FFA2E002AC
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 08:26:39 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 128so5893571pfz.1
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 08:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=AZO867JrlEiao4zaw9fzlcmZxZH+/S+8kDWCvVyRnXM=;
	b=V4cDIOVEFlupMEqXuCbFrKcMHw6WDtygAoiEFzXEjQw32Mi6tJyJgHWrRQKxW81rJr
	4Zs/JnM0JhAb03g9Zs3q48w+PXs3nshWPXMksTmOV+N/anCuzMjy9cIWL7YXPbRgXRm7
	VkDOBgzET5NaebCBCHM/B+XyHPRDqORwJ3YpXCaKRTHzS/Zli5eqCeI0Kst7ZZFFbuuT
	+RIsPdy6RW/CLeajOsfslYEehAsFYEfvUTcfYO3i4wPStSNzP1N6sAaI4sIeIIK84wW5
	5ZZkCzdD+XH8WmVjSfdTEkrp5g67b/Q/BWTp7TCH0Igsy5aGSrpLINHOdcFh3jJuUkaf
	GUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=AZO867JrlEiao4zaw9fzlcmZxZH+/S+8kDWCvVyRnXM=;
	b=U9biMyYysou1Po08C7Uiw0x29r1itCbrlk2kck81uO1b9w2RAwlkrxeS6uUC+iKX8Y
	T3au1HUCjNXJprWwmPbt42GBe3IfZWywia+biqZghR3V2vSeohJARm0RO9sj0Lzewcyp
	AnPxhIiBSc/64H+pKOQnGIF0druHgz4CyK7FucfBi3wEisuRdeCULIWs3W4lRa5Wk0SM
	2I/M32D6t762A/7xuiDvFPAHOg0JAWQs3XNfIrBJXXMvPSB2fDMovIshjvKxJGwvnAFB
	n0tYk6nUXlH+GoBtXhuo2URmGxt59Y6tuj5tgWnv/1BnhG0XdhsoS6L1x2tV8oeM6Kx+
	grwQ==
X-Gm-Message-State: AA6/9RkURTdBZXXMfOjDjQQaIEoGLx04PiSzyisBaNu0Lt+dzLvdlRlETiVK2U2yCcWoyw==
X-Received: by 10.99.110.201 with SMTP id j192mr1843167pgc.133.1476977199314; 
	Thu, 20 Oct 2016 08:26:39 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:bc9a:54ac:66f2:66ed?
	([2601:202:4001:9ea0:bc9a:54ac:66f2:66ed])
	by smtp.gmail.com with ESMTPSA id
	g67sm30168293pfd.82.2016.10.20.08.26.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Oct 2016 08:26:38 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, yocto@yoctoproject.org
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <d6402792-2a48-60f4-bf27-c9758128eabb@gmail.com>
Date: Thu, 20 Oct 2016 08:26:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
Subject: Re: 2.2 release note material
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
X-List-Received-Date: Thu, 20 Oct 2016 15:26:43 -0000
Content-Type: multipart/alternative;
	boundary="------------2167688060BA35F2C5FD2F15"

--------------2167688060BA35F2C5FD2F15
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Paul


On 10/19/2016 07:25 PM, Paul Eggleton wrote:
> Hi all,
>
> I've been gathering material for the 2.2 release notes, here is what I have at
> the moment. Things missing:

Thanks for putting this together.

>
> * Any new features/enhancements for the kernel tools - Bruce, is there
> anything worth noting?
>
> * Known issues that are worth calling out
>
> Note that I haven't included all of the bugfixes in this release since we
> haven't been recently and there are a lot of them. I do have a list of them if
> we want to include them but not only is it very long, it's not guaranteed to
> be devoid of fixes for regressions within the release and I also haven't
> tweaked any of the items to be more understandable out of context as I have
> with the features/enhancements.
>
> Let me know if I've missed or misrepresented anything.

Regarding the CVE list. I see some info is based on what was in the 
commit messages for package updates. I suspect the list would be bigger 
because of general package updates. Should the release notes make note 
of that?
  Should the community in general provide more info in the commits to 
help with release notes if that is a source used for that process?


- Armin
>
> Cheers,
> Paul
>
>
>


--------------2167688060BA35F2C5FD2F15
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Paul<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/19/2016 07:25 PM, Paul Eggleton
      wrote:<br>
    </div>
    <blockquote
      cite="mid:1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com"
      type="cite">
      <pre wrap="">Hi all,

I've been gathering material for the 2.2 release notes, here is what I have at 
the moment. Things missing:</pre>
    </blockquote>
    <br>
    Thanks for putting this together.<br>
    <br>
    <blockquote
      cite="mid:1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com"
      type="cite">
      <pre wrap="">

* Any new features/enhancements for the kernel tools - Bruce, is there 
anything worth noting?

* Known issues that are worth calling out

Note that I haven't included all of the bugfixes in this release since we 
haven't been recently and there are a lot of them. I do have a list of them if 
we want to include them but not only is it very long, it's not guaranteed to 
be devoid of fixes for regressions within the release and I also haven't 
tweaked any of the items to be more understandable out of context as I have 
with the features/enhancements.

Let me know if I've missed or misrepresented anything.</pre>
    </blockquote>
    <br>
    Regarding the CVE list. I see some info is based on what was in the
    commit messages for package updates. I suspect the list would be
    bigger because of general package updates. Should the release notes
    make note of that?<br>
     Should the community in general provide more info in the commits to
    help with release notes if that is a source used for that process?<br>
    <br>
    <br>
    - Armin<br>
    <blockquote
      cite="mid:1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com"
      type="cite">
      <pre wrap="">

Cheers,
Paul

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------2167688060BA35F2C5FD2F15--
