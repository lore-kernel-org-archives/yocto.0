Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C810E00D84; Tue, 20 Aug 2019 23:43:32 -0700 (PDT)
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
	*      [46.30.212.1 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Aug 2019 23:43:31 PDT
Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com
	(mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C1B3E00D33
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 23:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-type:in-reply-to:mime-version:date:message-id:from:references:to:
	subject:from; bh=1hWNLguT32FnURSg21afbtLdflMqBJQSre/ju7uAgp4=;
	b=iTN4fiO1NSCOg7DTxxBHt83QLwXp8W+LhAcpCenoK9D1ldYIb8LA00/JSZm/jJfOmA8VMDZjnPLiL
	muKO0KRwBG1ySi1dEyOHAb+BVSwp6ML2zRu/WpwPFEpyRUMLcTgmrUYcfkN+8w8wYd+tAz8oVfOKMy
	a0BlcIsM5IWiQNGw=
X-HalOne-Cookie: 2779934d54a752e6011e8d8457a4b912982a316b
X-HalOne-ID: d77109ed-c3de-11e9-b9ff-d0431ea8a290
Received: from [192.168.0.101] (unknown [90.141.253.5])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id d77109ed-c3de-11e9-b9ff-d0431ea8a290;
	Wed, 21 Aug 2019 06:42:28 +0000 (UTC)
To: yocto@yoctoproject.org
References: <fb9ff55a-2fa8-39c5-aa9e-1cb9a5533c6e@faresoftware.it>
	<CAAx3WaCZF75mCHjBP_3vF=Xy8xNUUnBGQWaakhvZV7a_S9LqMA@mail.gmail.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <b15935c3-785e-1356-3272-e69aab60d019@berginkonsult.se>
Date: Wed, 21 Aug 2019 08:42:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAx3WaCZF75mCHjBP_3vF=Xy8xNUUnBGQWaakhvZV7a_S9LqMA@mail.gmail.com>
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
X-List-Received-Date: Wed, 21 Aug 2019 06:43:32 -0000
Content-Type: multipart/alternative;
	boundary="------------D01D76A7BD4768433AD607E5"
Content-Language: en-US

--------------D01D76A7BD4768433AD607E5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

or if you want to inspect how it is built up you can find out by 
'bitbake <image> -e'. Will produce information about from which files 
the variable is built up. It produces a lot of output so pipe to a file 
or editor.

Regards,
/Peter

On 2019-08-21 08:36, Gabriele Zampieri wrote:
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
>


--------------D01D76A7BD4768433AD607E5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi,<br>
      <br>
      or if you want to inspect how it is built up you can find out by
      'bitbake &lt;image&gt; -e'. Will produce information about from
      which files the variable is built up. It produces a lot of output
      so pipe to a file or editor.<br>
      <br>
      Regards,<br>
      /Peter<br>
      <br>
      On 2019-08-21 08:36, Gabriele Zampieri wrote:<br>
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
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------D01D76A7BD4768433AD607E5--
