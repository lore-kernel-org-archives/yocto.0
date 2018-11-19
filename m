Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 122A3E00C41; Mon, 19 Nov 2018 11:28:59 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7063E009B2
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 11:28:57 -0800 (PST)
Received: by mail-pg1-f194.google.com with SMTP id v28so3758205pgk.10
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 11:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=U2DLo26zr0rG3na3kv1pQoXPTiPGjB5D5RcDIbUaqkU=;
	b=SkpMMV6Bl13r2tVNBO/7Vz3+sXJhSslQFtjtaACv19aVisJEmfHXhdFvz+qKE12v4D
	SQEu4uSrqfenjP5Gw4hw0bG2p0HZN9VKpz9oBl2Ut2fhlWroDYLJrUJENMxB5m13RB0X
	IPjttxMv3fjvCS2bzQvKZZ8Jcq2JYnjnn0lNM6+Y4aMx5e4rs7ltyYBKZUWB8snLy0sz
	kUSM1zLyur2YROBKCAGxLdSPFPSuQw2cvYIWcYdt3mUvOzDAWgMoX6zKDLwOkEttPeHF
	rGqPqrVqAuUGxiJskLMKUaEAPioSnEmeQet0odVKVWc5YiUTSEGP0DtmfCqcnHygYHNi
	LE/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=U2DLo26zr0rG3na3kv1pQoXPTiPGjB5D5RcDIbUaqkU=;
	b=mbnOI5k9CscGbyHulRfpDpVquzOHu0Jne8L2k5XDSHalCgRpQnNuby66a0DBKKO5ee
	uLQ7B9OcS8xQ8SPKSDIV45Ey+fzr6ufjjsGGgtRh7TjvOLvqVaNJABWOe5ijXfvE9t3V
	aADnAMXvRVMYeo/S3tGv3dgm0BLI1Tb0b4HorOq4QStivFBgt19FN9f0xLO4PVeGDmgk
	LsTz6nhdO7RUPR5RUBw7G0hZ+D+oZoTjP3nPgdU/FQYdtEjH3PNm5ln7DxZAKa9tIyPI
	h7OBQT/Nakjfm1DmeSKyp9jqr7bEhdPR9QGaP6dTT3Dn6y2g2OXytgp+HzA22Ajruqq6
	h1fw==
X-Gm-Message-State: AGRZ1gJXhiPjAp4DOw2OmaPvdlwrLm+7x59T03eeli7SSfzeUjtAiFSW
	l5D88M5vhtcr169tTRQn+V8AABj2
X-Google-Smtp-Source: AJdET5fsTajJGp093tzMdNBJur8X7ZXBCEA2vksLomqVAmJtg7uDYNF/Cptnos3O3hTASpN7yPN/xg==
X-Received: by 2002:a63:1204:: with SMTP id h4mr21305577pgl.51.1542655737143; 
	Mon, 19 Nov 2018 11:28:57 -0800 (PST)
Received: from [10.47.245.159] ([156.39.10.47])
	by smtp.gmail.com with ESMTPSA id
	x27sm56594381pfe.178.2018.11.19.11.28.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Nov 2018 11:28:56 -0800 (PST)
To: Scott Rifenbark <srifenbark@gmail.com>
References: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
	<CAFNP8OuRthep-BdMDtNeed1a9XoCuEM6CM0n_ea6cb8pVXwECg@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <ca26364b-07e1-b83e-3948-402fd01f95f5@gmail.com>
Date: Mon, 19 Nov 2018 11:28:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAFNP8OuRthep-BdMDtNeed1a9XoCuEM6CM0n_ea6cb8pVXwECg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [[yocto-docs][thud][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 19:28:59 -0000
Content-Type: multipart/alternative;
	boundary="------------385F35A2687EA858224D9909"
Content-Language: en-US

--------------385F35A2687EA858224D9909
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 11/19/18 10:16 AM, Scott Rifenbark wrote:
> Armin,
>
> See
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros
> and let me know if the patch is good.
Looks good.
Thanks,
Have a good Thanksgiving.
Armin
>
> Thanks,
> Scott
>
> On Sun, Nov 18, 2018 at 6:15 PM Armin Kuster <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>     poky.conf
>         ubuntu-16.04
>         ubuntu-16.10
>         ubuntu-17.04
>         fedora-26
>         centos-7
>         debian-8
>         debian-9
>         opensuse-42.1
>         opensuse-42.2
>
>     Signed-off-by: Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>>
>     ---
>      documentation/ref-manual/ref-system-requirements.xml | 20
>     ++++++++++++--------
>      1 file changed, 12 insertions(+), 8 deletions(-)
>
>     diff --git a/documentation/ref-manual/ref-system-requirements.xml
>     b/documentation/ref-manual/ref-system-requirements.xml
>     index 9298e84..0abc47e 100644
>     --- a/documentation/ref-manual/ref-system-requirements.xml
>     +++ b/documentation/ref-manual/ref-system-requirements.xml
>     @@ -93,19 +93,22 @@
>                      <listitem><para>Ubuntu 11.10</para></listitem>
>                      <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>
>                      <listitem><para>Ubuntu 13.10</para></listitem>
>     -                <listitem><para>Ubuntu 14.04
>     (LTS)</para></listitem> -->
>     +                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>
>                      <listitem><para>Ubuntu 14.10</para></listitem>
>                      <listitem><para>Ubuntu 15.04</para></listitem>
>     -                <listitem><para>Ubuntu 15.10</para></listitem>
>     +                <listitem><para>Ubuntu 15.10</para></listitem> -->
>                      <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
>     +                <listitem><para>Ubuntu 16.10 (LTS)</para></listitem>
>     +                <listitem><para>Ubuntu 17.04 </para></listitem>
>      <!--                <listitem><para>Fedora 16
>     (Verne)</para></listitem>
>                      <listitem><para>Fedora 17
>     (Spherical)</para></listitem>
>                      <listitem><para>Fedora release 19 (Schrödinger's
>     Cat)</para></listitem>
>     -                <listitem><para>Fedora release 20
>     (Heisenbug)</para></listitem> -->
>     +                <listitem><para>Fedora release 20
>     (Heisenbug)</para></listitem>
>                      <listitem><para>Fedora release 22</para></listitem>
>                      <listitem><para>Fedora release 23</para></listitem>
>     -<!--                <listitem><para>Fedora release
>     24</para></listitem>
>     -                <listitem><para>CentOS release 5.6
>     (Final)</para></listitem>
>     +                <listitem><para>Fedora release
>     24</para></listitem> -->
>     +                <listitem><para>Fedora release 26</para></listitem>
>     +<!--                <listitem><para>CentOS release 5.6
>     (Final)</para></listitem>
>                      <listitem><para>CentOS release 5.7
>     (Final)</para></listitem>
>                      <listitem><para>CentOS release 5.8
>     (Final)</para></listitem>
>                      <listitem><para>CentOS release 6.3
>     (Final)</para></listitem>
>     @@ -121,13 +124,14 @@
>                      <listitem><para>Debian GNU/Linux 7.4
>     (Wheezy)</para></listitem>
>                      <listitem><para>Debian GNU/Linux 7.5
>     (Wheezy)</para></listitem>
>                      <listitem><para>Debian GNU/Linux 7.6
>     (Wheezy)</para></listitem> -->
>     -<!--                <listitem><para>openSUSE 11.4</para></listitem>
>     +<!--                <listitem><para>openSUSE 11.4</para></listitem>
>                      <listitem><para>openSUSE 12.1</para></listitem>
>                      <listitem><para>openSUSE 12.2</para></listitem>
>                      <listitem><para>openSUSE 12.3</para></listitem>
>     -                <listitem><para>openSUSE 13.1</para></listitem> -->
>     -                <listitem><para>openSUSE 13.2</para></listitem>
>     +                <listitem><para>openSUSE 13.1</para></listitem>
>     +                <listitem><para>openSUSE 13.2</para></listitem> -->
>                      <listitem><para>openSUSE 42.1</para></listitem>
>     +                <listitem><para>openSUSE 42.2</para></listitem>
>                  </itemizedlist>
>              </para>
>
>     -- 
>     2.7.4
>


--------------385F35A2687EA858224D9909
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 11/19/18 10:16 AM, Scott Rifenbark
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFNP8OuRthep-BdMDtNeed1a9XoCuEM6CM0n_ea6cb8pVXwECg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div>Armin, <br>
          </div>
          <div><br>
          </div>
          <div>See <a
href="https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros"
              moz-do-not-send="true">https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros</a>
            and let me know if the patch is good.</div>
        </div>
      </div>
    </blockquote>
    Looks good.<br>
    Thanks, <br>
    Have a good Thanksgiving.<br>
    Armin<br>
    <blockquote type="cite"
cite="mid:CAFNP8OuRthep-BdMDtNeed1a9XoCuEM6CM0n_ea6cb8pVXwECg@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div><br>
          </div>
          <div>Thanks, <br>
          </div>
          <div>Scott<br>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr">On Sun, Nov 18, 2018 at 6:15 PM Armin Kuster &lt;<a
            href="mailto:akuster808@gmail.com" moz-do-not-send="true">akuster808@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">poky.conf<br>
              ubuntu-16.04<br>
              ubuntu-16.10<br>
              ubuntu-17.04<br>
              fedora-26<br>
              centos-7<br>
              debian-8<br>
              debian-9<br>
              opensuse-42.1<br>
              opensuse-42.2<br>
          <br>
          Signed-off-by: Armin Kuster &lt;<a
            href="mailto:akuster808@gmail.com" target="_blank"
            moz-do-not-send="true">akuster808@gmail.com</a>&gt;<br>
          ---<br>
           documentation/ref-manual/ref-system-requirements.xml | 20
          ++++++++++++--------<br>
           1 file changed, 12 insertions(+), 8 deletions(-)<br>
          <br>
          diff --git
          a/documentation/ref-manual/ref-system-requirements.xml
          b/documentation/ref-manual/ref-system-requirements.xml<br>
          index 9298e84..0abc47e 100644<br>
          --- a/documentation/ref-manual/ref-system-requirements.xml<br>
          +++ b/documentation/ref-manual/ref-system-requirements.xml<br>
          @@ -93,19 +93,22 @@<br>
                           &lt;listitem&gt;&lt;para&gt;Ubuntu
          11.10&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Ubuntu 12.04
          (LTS)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Ubuntu
          13.10&lt;/para&gt;&lt;/listitem&gt;<br>
          -                &lt;listitem&gt;&lt;para&gt;Ubuntu 14.04
          (LTS)&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Ubuntu 14.04
          (LTS)&lt;/para&gt;&lt;/listitem&gt; <br>
                           &lt;listitem&gt;&lt;para&gt;Ubuntu
          14.10&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Ubuntu
          15.04&lt;/para&gt;&lt;/listitem&gt;<br>
          -                &lt;listitem&gt;&lt;para&gt;Ubuntu
          15.10&lt;/para&gt;&lt;/listitem&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Ubuntu
          15.10&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Ubuntu 16.04
          (LTS)&lt;/para&gt;&lt;/listitem&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Ubuntu 16.10
          (LTS)&lt;/para&gt;&lt;/listitem&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Ubuntu 17.04
          &lt;/para&gt;&lt;/listitem&gt;<br>
           &lt;!--                &lt;listitem&gt;&lt;para&gt;Fedora 16
          (Verne)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Fedora 17
          (Spherical)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Fedora release 19
          (Schrödinger's Cat)&lt;/para&gt;&lt;/listitem&gt;<br>
          -                &lt;listitem&gt;&lt;para&gt;Fedora release 20
          (Heisenbug)&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Fedora release 20
          (Heisenbug)&lt;/para&gt;&lt;/listitem&gt; <br>
                           &lt;listitem&gt;&lt;para&gt;Fedora release
          22&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Fedora release
          23&lt;/para&gt;&lt;/listitem&gt;<br>
          -&lt;!--                &lt;listitem&gt;&lt;para&gt;Fedora
          release 24&lt;/para&gt;&lt;/listitem&gt;<br>
          -                &lt;listitem&gt;&lt;para&gt;CentOS release
          5.6 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Fedora release
          24&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;Fedora release
          26&lt;/para&gt;&lt;/listitem&gt;<br>
          +&lt;!--                &lt;listitem&gt;&lt;para&gt;CentOS
          release 5.6 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;CentOS release
          5.7 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;CentOS release
          5.8 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;CentOS release
          6.3 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
          @@ -121,13 +124,14 @@<br>
                           &lt;listitem&gt;&lt;para&gt;Debian GNU/Linux
          7.4 (Wheezy)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Debian GNU/Linux
          7.5 (Wheezy)&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;Debian GNU/Linux
          7.6 (Wheezy)&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
          -&lt;!--                &lt;listitem&gt;&lt;para&gt;openSUSE
          11.4&lt;/para&gt;&lt;/listitem&gt;<br>
          +&lt;!--                &lt;listitem&gt;&lt;para&gt;openSUSE
          11.4&lt;/para&gt;&lt;/listitem&gt; <br>
                           &lt;listitem&gt;&lt;para&gt;openSUSE
          12.1&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;openSUSE
          12.2&lt;/para&gt;&lt;/listitem&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;openSUSE
          12.3&lt;/para&gt;&lt;/listitem&gt;<br>
          -                &lt;listitem&gt;&lt;para&gt;openSUSE
          13.1&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
          -                &lt;listitem&gt;&lt;para&gt;openSUSE
          13.2&lt;/para&gt;&lt;/listitem&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;openSUSE
          13.1&lt;/para&gt;&lt;/listitem&gt; <br>
          +                &lt;listitem&gt;&lt;para&gt;openSUSE
          13.2&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
                           &lt;listitem&gt;&lt;para&gt;openSUSE
          42.1&lt;/para&gt;&lt;/listitem&gt;<br>
          +                &lt;listitem&gt;&lt;para&gt;openSUSE
          42.2&lt;/para&gt;&lt;/listitem&gt;<br>
                       &lt;/itemizedlist&gt;<br>
                   &lt;/para&gt;<br>
          <br>
          -- <br>
          2.7.4<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------385F35A2687EA858224D9909--
