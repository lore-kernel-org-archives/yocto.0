Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31833E00D7E; Wed, 21 Aug 2019 02:08:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5BBE00798
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 02:08:23 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id rl8M2000c2dwwGE01l8MgE; Wed, 21 Aug 2019 11:08:22 +0200
To: Gabriele Zampieri <gabbla.malist@gmail.com>
References: <fb9ff55a-2fa8-39c5-aa9e-1cb9a5533c6e@faresoftware.it>
	<CAAx3WaCZF75mCHjBP_3vF=Xy8xNUUnBGQWaakhvZV7a_S9LqMA@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <0462ac7e-6b7f-2b5a-2713-871db94f39b5@faresoftware.it>
Date: Wed, 21 Aug 2019 11:08:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAx3WaCZF75mCHjBP_3vF=Xy8xNUUnBGQWaakhvZV7a_S9LqMA@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566378502; bh=TxUBZLcI5sWwAC3suvG/beD+264flXZsKJB9LxKpppM=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=Z3CTbEow2cAzK5RPzWUfY9Wwt58yxQg84/YbYjqBqA43QaDZH/HFGv4DhaskxiFA5
	VpGtsaK4KIE5EVv9+ZIXC7RTN4V1idOnX+77C2DK72MV0DT8d4iDwyWKKu2qBNxTJz
	Aa3g7v1IkKOD38s5pILPur7L7uW4ws5y1e38E4sPChAv/vzuPVuIJ5l45vFP9yIccM
	HgUMEDbShw0Lay+Fj9N/J0p++ZL7LjY87Ht+5WLzwqFb73K/jmIttCcScrrCmN7H9P
	evM9gEm0pHc3DV+Yl58wsu3iVA5Dp17vQ4HSRK/ChLXKq5dL53mMgcs951ThEIn9f9
	MzmmcEt+6JzCw==
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Final DISTRO_FEATURES value
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
X-List-Received-Date: Wed, 21 Aug 2019 09:08:26 -0000
Content-Type: multipart/alternative;
	boundary="------------334DCBB6106711ED811A4827"
Content-Language: it

--------------334DCBB6106711ED811A4827
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Thanks

I try

Il 21/08/19 08:36, Gabriele Zampieri ha scritto:
> Ciao,
>
> you can inspect the testdata file located next to the generated image,
> under deploy floder.
>
> Best regards,
> Gabriele
>
> Il giorno mer 21 ago 2019 alle ore 08:25 Mauro Ziliani
> <mauro@faresoftware.it <mailto:mauro@faresoftware.it>> ha scritto:
>
>     Hi all.
>
>     How can I inspect the final value of DISTRO_FEATURES when bitbake has
>     completed the parse all recipes?
>
>
>     Best regards,
>
>        MZ
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>

--------------334DCBB6106711ED811A4827
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Thanks</p>
    <p>I try<br>
    </p>
    <div class="moz-cite-prefix">Il 21/08/19 08:36, Gabriele Zampieri ha
      scritto:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAx3WaCZF75mCHjBP_3vF=Xy8xNUUnBGQWaakhvZV7a_S9LqMA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Ciao, <br>
        </div>
        <div><br>
        </div>
        <div>you can inspect the testdata file located next to the
          generated image, under deploy floder.</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Gabriele<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Il giorno mer 21 ago 2019 alle
          ore 08:25 Mauro Ziliani &lt;<a
            href="mailto:mauro@faresoftware.it" moz-do-not-send="true">mauro@faresoftware.it</a>&gt;
          ha scritto:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          all.<br>
          <br>
          How can I inspect the final value of DISTRO_FEATURES when
          bitbake has <br>
          completed the parse all recipes?<br>
          <br>
          <br>
          Best regards,<br>
          <br>
             MZ<br>
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
  </body>
</html>

--------------334DCBB6106711ED811A4827--
