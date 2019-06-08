Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BB9AE00DA4; Sat,  8 Jun 2019 15:46:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5DF2E0053F
	for <yocto@yoctoproject.org>; Sat,  8 Jun 2019 15:46:36 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id cl9so2161959plb.10
	for <yocto@yoctoproject.org>; Sat, 08 Jun 2019 15:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=AzMGkC2Rx8u5cIdCb7bNGU/K79vBJnbRoHxv/ZB/UJI=;
	b=uVYDEIDtgY+aMot2LQd4otY6YiQB0d19zZ0AL7cVh2xZ8hZgTYt9pLEUKEIH1cI5b7
	yyvD8qF0yKaPvrsf8pj02oAR0VVb1T3gi+rovekz2TIFCJMTCjSupAXnn1kli4cevwz3
	+aPH9Gkmn7fHyUjxRgXu691SFJYnlYBmaa5ztIWf4a3PY/cK4xiKtO+6lNQ373FZh9vo
	xYzZg8AqS5umrHD73jjPbiUxMtuoekSHCrDn8wawQvCeLTSuZ8qw0BDRNWMonBPkWpkm
	MxPZhcLjZGJB5qo0ZsrCWMZ4BWscwKmSZ4SnfKRsRou/iXXeDfexn3eiaPrKal7Dsbcf
	TqSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=AzMGkC2Rx8u5cIdCb7bNGU/K79vBJnbRoHxv/ZB/UJI=;
	b=bNnNZRTpC4rmjVsxEH47LXEFtZwjqM3Qkb/ckgu2U2uKR1nplEjDbKepLiFHhWpho5
	2HrOyQXvpilVq74YeyynamSlXuQGvK9WOS7Lk31QDLZXyHeKmxUZdCKUUpivPBkj3uBZ
	Lpa1LCoo1K/eBmj8O9FUyMS1W4oNfiK2OTRnWcJC5oXqI3cz/z348Gk6xdxqCsUmOmjt
	aHf1GoD7NMHMmp7w2v0gXrJjvxk/uI7MLTf/WriBXe8CBthrYXg1tYgZz+FzNLtc/WBJ
	JvsVK/ddTSxYF1gVWpItGFz/jIZozY9Zl5nULWGTGtgBJgY6KPqATZXeVWq1x/TPNPiD
	ri0w==
X-Gm-Message-State: APjAAAW1AFdPt5e4Z8SKD+ApcS5otw2z8Qg/RR5C7+3hBeEc7CLagpER
	0vgqTr1dHkmr8XDvo/iefMi5+WTS
X-Google-Smtp-Source: APXvYqx49wGlzVBH9tTdg8sSa1JNFOjD3uUk08jfcoqGxlgfGa7MgxKFVuO0bVhrYLmm6ciYYYC6kg==
X-Received: by 2002:a17:902:7883:: with SMTP id
	q3mr62314450pll.89.1560033995955; 
	Sat, 08 Jun 2019 15:46:35 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:d2a:35f8:d44b:ca36?
	([2601:202:4180:c33:d2a:35f8:d44b:ca36])
	by smtp.gmail.com with ESMTPSA id
	h19sm6170628pfn.79.2019.06.08.15.46.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 08 Jun 2019 15:46:35 -0700 (PDT)
To: Michael Halstead <mhalstead@linuxfoundation.org>,
	akuster808 <akuster808@gmail.com>
References: <20190606234656.28343-1-mhalstead@linuxfoundation.org>
	<1a8c9eb7-3866-4b98-ca7c-95fc00bf4989@gmail.com>
	<CADfgfoaEqEV60KbQp2wEfJ5DrH64P=a1L8b30YKOvWrWJvbHpQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <dc977673-9e97-6bf9-a075-3512197f9ff1@gmail.com>
Date: Sat, 8 Jun 2019 15:46:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CADfgfoaEqEV60KbQp2wEfJ5DrH64P=a1L8b30YKOvWrWJvbHpQ@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-docs] ref-manual: Corrected openSUSE essential packages
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
X-List-Received-Date: Sat, 08 Jun 2019 22:46:37 -0000
Content-Type: multipart/alternative;
	boundary="------------743D0B7CCD4F8736A6F26C69"
Content-Language: en-US

--------------743D0B7CCD4F8736A6F26C69
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 6/7/19 4:19 PM, Michael Halstead wrote:
>
>
> On Thu, Jun 6, 2019 at 5:07 PM akuster808 <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>
>
>     On 6/6/19 4:46 PM, Michael Halstead wrote:
>     > Some packages were bumped onto the pip3 install line. Install
>     them with zypper as before.
>     with backport? ie is Warrior or Thud affected, I suspect so
>
>
> Yes for Warrior. Thud is fine.
>
> Is there anything I need to do for the Warrior backport?
nope. i will handle this.

thanks,
Armin
>  
>
>
>     - armin
>     >
>     > Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org
>     <mailto:mhalstead@linuxfoundation.org>>
>     > ---
>     >  documentation/poky.ent | 4 ++--
>     >  1 file changed, 2 insertions(+), 2 deletions(-)
>     >
>     > diff --git a/documentation/poky.ent b/documentation/poky.ent
>     > index b5f600969..a436d9027 100644
>     > --- a/documentation/poky.ent
>     > +++ b/documentation/poky.ent
>     > @@ -68,8 +68,8 @@
>     >       python3-jinja2 SDL-devel xterm">
>     >  <!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL "python gcc gcc-c++
>     git chrpath make wget python-xml \
>     >       diffstat makeinfo python-curses patch socat python3
>     python3-curses tar python3-pip \
>     > -     python3-pexpect xz which python3-Jinja2 Mesa-libEGL1
>     > -     $ sudo pip3 install GitPython libSDL-devel xterm">
>     > +     python3-pexpect xz which python3-Jinja2 Mesa-libEGL1
>     libSDL-devel xterm
>     > +     $ sudo pip3 install GitPython">
>     >  <!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL "-y epel-release
>     >       $ sudo yum makecache
>     >       $ sudo yum install gawk make wget tar bzip2 gzip python
>     unzip perl patch \
>
>


--------------743D0B7CCD4F8736A6F26C69
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 6/7/19 4:19 PM, Michael Halstead
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADfgfoaEqEV60KbQp2wEfJ5DrH64P=a1L8b30YKOvWrWJvbHpQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr"><br>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, Jun 6, 2019 at 5:07
            PM akuster808 &lt;<a href="mailto:akuster808@gmail.com"
              moz-do-not-send="true">akuster808@gmail.com</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex"><br>
            <br>
            On 6/6/19 4:46 PM, Michael Halstead wrote:<br>
            &gt; Some packages were bumped onto the pip3 install line.
            Install them with zypper as before.<br>
            with backport? ie is Warrior or Thud affected, I suspect so<br>
          </blockquote>
          <div><br>
          </div>
          <div>Yes for Warrior. Thud is fine.</div>
          <div><br>
          </div>
          <div>Is there anything I need to do for the Warrior backport?
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    nope. i will handle this.<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote type="cite"
cite="mid:CADfgfoaEqEV60KbQp2wEfJ5DrH64P=a1L8b30YKOvWrWJvbHpQ@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <br>
            - armin<br>
            &gt;<br>
            &gt; Signed-off-by: Michael Halstead &lt;<a
              href="mailto:mhalstead@linuxfoundation.org"
              target="_blank" moz-do-not-send="true">mhalstead@linuxfoundation.org</a>&gt;<br>
            &gt; ---<br>
            &gt;  documentation/poky.ent | 4 ++--<br>
            &gt;  1 file changed, 2 insertions(+), 2 deletions(-)<br>
            &gt;<br>
            &gt; diff --git a/documentation/poky.ent
            b/documentation/poky.ent<br>
            &gt; index b5f600969..a436d9027 100644<br>
            &gt; --- a/documentation/poky.ent<br>
            &gt; +++ b/documentation/poky.ent<br>
            &gt; @@ -68,8 +68,8 @@<br>
            &gt;       python3-jinja2 SDL-devel xterm"&gt;<br>
            &gt;  &lt;!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL "python
            gcc gcc-c++ git chrpath make wget python-xml \<br>
            &gt;       diffstat makeinfo python-curses patch socat
            python3 python3-curses tar python3-pip \<br>
            &gt; -     python3-pexpect xz which python3-Jinja2
            Mesa-libEGL1<br>
            &gt; -     $ sudo pip3 install GitPython libSDL-devel
            xterm"&gt;<br>
            &gt; +     python3-pexpect xz which python3-Jinja2
            Mesa-libEGL1 libSDL-devel xterm<br>
            &gt; +     $ sudo pip3 install GitPython"&gt;<br>
            &gt;  &lt;!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL "-y
            epel-release<br>
            &gt;       $ sudo yum makecache<br>
            &gt;       $ sudo yum install gawk make wget tar bzip2 gzip
            python unzip perl patch \<br>
            <br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------743D0B7CCD4F8736A6F26C69--
