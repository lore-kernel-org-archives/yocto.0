Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B3B2E00DE3; Mon, 29 Jan 2018 07:38:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09810E00D92
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 07:38:24 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id s9so4732051pgq.13
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 07:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=yme8TJZTSg0boubbtW78Okw2hJuSmJJd/ELFxE1WAmc=;
	b=Id3lN9bB53mC/SfASPO7g2an+oRSQ7KdA+p6UaCQvCzFidj0AMBtjzCg6tWbz8Zaz3
	tHGw6v8njiifUCl+wavdU5BgL0xqYnTo7lImCfGnwYRuhrA7kFRyyW37Hz/JgnM05Lig
	yDKCCiyOwFoYFPr17l3Hm+qKn05R5++AtIxOLXq2qsmJOB7KMzgLjVbQhVQsEcsKZXFF
	qtRIxlUCYwi0fXIhdeGHC5Wakez/xY+NNuPipvWzcPd5QFCWf1V8b4sUtFPnYiZgFh9P
	7LI1kIhtQvQ5NLehM5LN87B+w+fTg7Kllgf5JbqIeI6zEFqIPzv2v0T48wygrcvU54fW
	mknA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=yme8TJZTSg0boubbtW78Okw2hJuSmJJd/ELFxE1WAmc=;
	b=bnUwuPILI3qD+dexqNeXC3rNzaPZB9QHC+kjH6LAinahdeXImuEMgmjZSwK7vInuvw
	cABmm64Y/dUjqArQoC6zIEL7/7AR7npgwAla0EMuqFtO5WlfgNJrpE3PVLI28MTxDTMP
	FbuoEKeosNjXlv6gTvh9AwckVuT58Zi6HGFhl5j4TQ7jl5uxMExbfb9rKOUrw39wH2RT
	jbYqrlUupTkbDkx0kl+OA/LcqFgK786FWrYrcU+KQZjzwiKQOb68etxL5H9GlAfQ2cne
	T25kFOgZkrvqxOsBtw7vRXqNrV+WofKcp8WHQHLO7M8ueHGalsoyXasZUHYr0rH8xosh
	TL4g==
X-Gm-Message-State: AKwxyteZuX7B0ysxzLTHGT5E34WDnF4+NVwpq4r6TqSFxd/QKenztJe2
	lIV2K6YdLO0Yti/96ReQmj84SA==
X-Google-Smtp-Source: AH8x226HlW0LQfSmasS++yzVipS9tS0tMB4e69J4FEWPdmqLUbPtCXzPkz/vau4LFbLx1dwBXUDEOQ==
X-Received: by 10.99.2.84 with SMTP id 81mr9938997pgc.117.1517240304120;
	Mon, 29 Jan 2018 07:38:24 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1184:f549:7cd3:8b32:47fb?
	([2601:202:4000:1184:f549:7cd3:8b32:47fb])
	by smtp.gmail.com with ESMTPSA id
	i187sm18121751pfc.99.2018.01.29.07.38.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Jan 2018 07:38:23 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>,
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
	<CAGAf8LyPoW5XORJ=uCBOVT8S2zWvQW6wkzU7yctKwR26We=aGA@mail.gmail.com>
	<CAJTo0LZqeXy9FPJwi19T6f9haWKHj3nVS6dRnfhMje1KAaD5-g@mail.gmail.com>
	<CAGAf8Lw-YP-bH21WzYZToSksoqbxGHBHmmN2c9a2rKdqJSQNXg@mail.gmail.com>
	<CAJTo0LYhnutWhSJchcCkqTTf9HtCuyD3-JqPfdjpYYbjNcZ2vw@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <f18e6715-9183-8937-2192-821f3420a070@gmail.com>
Date: Mon, 29 Jan 2018 07:38:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYhnutWhSJchcCkqTTf9HtCuyD3-JqPfdjpYYbjNcZ2vw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFT] Glibc 2.27
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
X-List-Received-Date: Mon, 29 Jan 2018 15:38:25 -0000
Content-Type: multipart/alternative;
	boundary="------------F06003A3907BA01AAE19547A"
Content-Language: en-US

--------------F06003A3907BA01AAE19547A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 01/29/2018 06:16 AM, Burton, Ross wrote:
> On 29 January 2018 at 13:56, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com <mailto:zoran.stojsavljevic@gmail.com>>
> wrote:
>
>     > Khem Raj writes: This has gotten limited testing.
>     > Burton Ross writes: This one will be easy to integrate.
>
>     Time Will Tell.
>
>
> I guess I meant easy in that it just won't be going to stable
> releases.=C2=A0 Obviously integration of a new C runtime release into
> master is never objectively easy.

We update tend to update some if not all the toolchain components at
least once between releases.=C2=A0 So far, the small team of folks who cl=
ean
up any issues with these updates have been successful.

- Armin

>
> Ross=C2=A0
>
>


--------------F06003A3907BA01AAE19547A
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
    <div class="moz-cite-prefix">On 01/29/2018 06:16 AM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LYhnutWhSJchcCkqTTf9HtCuyD3-JqPfdjpYYbjNcZ2vw@mail.gmail.com">
      <div dir="ltr">On 29 January 2018 at 13:56, Zoran Stojsavljevic <span
          dir="ltr">&lt;<a href="mailto:zoran.stojsavljevic@gmail.com"
            target="_blank" moz-do-not-send="true">zoran.stojsavljevic@gmail.com</a>&gt;</span>
        wrote:<br>
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">&gt;
              Khem Raj writes: This has gotten limited testing.<br>
              &gt; Burton Ross writes: This one will be easy to
              integrate.<br>
              <br>
              Time Will Tell.<br>
            </blockquote>
            <div><br>
            </div>
            <div>I guess I meant easy in that it just won't be going to
              stable releases.  Obviously integration of a new C runtime
              release into master is never objectively easy.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    We update tend to update some if not all the toolchain components at
    least once between releases.  So far, the small team of folks who
    clean up any issues with these updates have been successful.<br>
    <br>
    - Armin<br>
    <br>
    <blockquote type="cite"
cite="mid:CAJTo0LYhnutWhSJchcCkqTTf9HtCuyD3-JqPfdjpYYbjNcZ2vw@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div><br>
            </div>
            <div>Ross </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------F06003A3907BA01AAE19547A--
