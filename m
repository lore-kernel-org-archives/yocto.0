Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6FB3E00B1A; Mon, 26 Mar 2018 09:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 001C5E008EE
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 09:51:52 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id x4-v6so12288826pln.7
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 09:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=tU9piMRHlysKyCDjBjwf9mPwGgK9Iy8oHTjPycnr8zs=;
	b=V8l0vJvGawmrPKPmQ1sJvGWUiV0lh6RPukirBtRTHsaj4YKADIrHELVwsnHhU0SeYM
	EdGhzjiMpHfG3AbpXsPEQ/XlfKjeybNWl6IfzRozjgYZ52ySEwR3DCtsz5HnYRNysF+q
	vlWd2SHH4GAKV5Ys+IHN+j+xmD4Rmn17UprZmQgrrhXPhGEn6+CvJ6OJz6RgvM/yl+6o
	xV+TaZlQ7VgDmYLQeTz8arTtUZvx2feTgkpzBhD5RRXI1eJ5ZW0Ix2kWZ5uqZ87UtDFj
	+LTZIwxq64wSpXNUhQvkXQmhztdhIw3TEDsD1M97ytVdsXaqIVdKtqLHu7iIOtLpRVOQ
	knLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=tU9piMRHlysKyCDjBjwf9mPwGgK9Iy8oHTjPycnr8zs=;
	b=cZ27shzxeZN6f67kur2Iv9eLhGRcWmOsuNZLUPmmfkTRVa/cAEdTZ/Q4wL2f/xGjUh
	LyaldiV9icZ0PdTJioowwn/G6FIgd8sp5XqKcq82D09dD999RsX6AC1StR8P1733sJF7
	Ea4vbVRQYvSY+7HFNZx3f91F2hyCZ6VWArnY1VDfGpaVZannSl7vc72av9orBXCp1S/S
	+e/NrE9mpNdIxY+r+obBwzAvdOfQszcQz/5e0EWkQdqGeASqE2z/xr6JUl+NM/w7V2gh
	SKEZVlGRgHe8PoY+cyxuLSjf974NsxVhXG1TP2Xr79+O2mEUp0VsFUY4flcasSbfZLZv
	1UsQ==
X-Gm-Message-State: AElRT7GsWdPSaesE2DgaZYJ1g6YV1Xaru1LjiGrC1X9P0eIH3MbkSDO4
	FRIKp1LfarfCscmTdmroLwyWDQ==
X-Google-Smtp-Source: AG47ELuz5k2yBnBNMzd1vIR4ar5yrpsOQKPRFJSvOIc8k48VIrrjV9SqGGqzxqOjKKNPrD4ihRfUyQ==
X-Received: by 2002:a17:902:7e09:: with SMTP id
	b9-v6mr41121283plm.223.1522083112406; 
	Mon, 26 Mar 2018 09:51:52 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:203c:a04e:87e9:791b?
	([2601:202:4000:1184:203c:a04e:87e9:791b])
	by smtp.gmail.com with ESMTPSA id
	g2sm5298347pfg.130.2018.03.26.09.51.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Mar 2018 09:51:51 -0700 (PDT)
To: Martin Townsend <mtownsend1973@gmail.com>, yocto@yoctoproject.org
References: <CABatt_zYz0R7ruRWnLXr=Wp0z5A0m3qfZxmjGOeidqbJuxvXLQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <ce8d7607-4876-a91a-e9e9-383da39df9be@gmail.com>
Date: Mon, 26 Mar 2018 09:51:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CABatt_zYz0R7ruRWnLXr=Wp0z5A0m3qfZxmjGOeidqbJuxvXLQ@mail.gmail.com>
Subject: Re: U-Boot networking broken in Rocko
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
X-List-Received-Date: Mon, 26 Mar 2018 16:51:53 -0000
Content-Type: multipart/alternative;
	boundary="------------A3D32714DE7CD8433C8F8C5A"
Content-Language: en-US

--------------A3D32714DE7CD8433C8F8C5A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 03/26/2018 08:47 AM, Martin Townsend wrote:
> Hi,
>
> I've discovered that U-Boot in Rocko for several builds that I
> maintain is broken when performing various network related operations
> like tftp, dhcp and ping. You get a data abort and it resets.  I found
> that this has already been fixed in U-Boot with the commit below.  I
> think it has something to do with the way GCC 7.1 onwards is now
> handling memory alignment.  Anyway the problems have gone away when I
> apply this patch and was wondering if it should be included in the
> U-Boot recipes in Rocko, or is no-one else seeing this problem?

please send a patch to openembedded-core@lists.openembedded.org

with rocko called on in the beginning of subject line

thanks,
Armin
>
> Many Thanks,
> Martin.
>
> commit 704f3acfcf55343043bbed01c5fb0a0094a68e8a
> Author: Denis Pynkin <denis.pynkin@collabora.com
> <mailto:denis.pynkin@collabora.com>>
> Date:   Fri Jul 21 19:28:42 2017 +0300
>
>     net: Use packed structures for networking
>     
>     PXE boot is broken with GCC 7.1 due option '-fstore-merging' enabled
>     by default for '-O2':
>     
>     BOOTP broadcast 1
>     data abort
>     pc : [<8ff8bb30>]          lr : [<00004f1f>]
>     reloc pc : [<17832b30>]    lr : [<878abf1f>]
>     sp : 8f558bc0  ip : 00000000     fp : 8ffef5a4
>     r10: 8ffed248  r9 : 8f558ee0     r8 : 8ffef594
>     r7 : 0000000e  r6 : 8ffed700     r5 : 00000000  r4 : 8ffed74e
>     r3 : 00060101  r2 : 8ffed230     r1 : 8ffed706  r0 : 00000ddd
>     Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
>     Resetting CPU ...
>     
>     Core reason is usage of structures for network headers without packed
>     attribute.
>     
>     Reviewed-by: Yauheni Kaliuta <yauheni.kaliuta@redhat.com
> <mailto:yauheni.kaliuta@redhat.com>>
>     Signed-off-by: Denis Pynkin <denis.pynkin@collabora.com
> <mailto:denis.pynkin@collabora.com>>
>     Acked-by: Joe Hershberger <joe.hershberger@ni.com
> <mailto:joe.hershberger@ni.com>>
>
>
>


--------------A3D32714DE7CD8433C8F8C5A
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
    <div class="moz-cite-prefix">On 03/26/2018 08:47 AM, Martin Townsend
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABatt_zYz0R7ruRWnLXr=Wp0z5A0m3qfZxmjGOeidqbJuxvXLQ@mail.gmail.com">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I've discovered that U-Boot in Rocko for several builds
          that I maintain is broken when performing various network
          related operations like tftp, dhcp and ping. You get a <span
style="color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline">data
            abort and it resets.  I found that this has already been
            fixed in U-Boot with the commit below.  I think it has
            something to do with the way GCC 7.1 onwards is now handling
            memory alignment.  Anyway the problems have gone away when I
            apply this patch and was wondering if it should be included
            in the U-Boot recipes in Rocko, or is no-one else seeing
            this problem?</span></div>
      </div>
    </blockquote>
    <br>
    please send a patch to <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a><br>
    <br>
    with rocko called on in the beginning of subject line<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote type="cite"
cite="mid:CABatt_zYz0R7ruRWnLXr=Wp0z5A0m3qfZxmjGOeidqbJuxvXLQ@mail.gmail.com">
      <div dir="ltr">
        <div><span
style="color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline"><br>
          </span></div>
        <div><span
style="color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline">Many
            Thanks,</span></div>
        <div><span
style="color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline">Martin.</span></div>
        <div><br>
        </div>
        <div>
          <div>commit 704f3acfcf55343043bbed01c5fb0a0094a68e8a</div>
          <div>Author: Denis Pynkin &lt;<a
              href="mailto:denis.pynkin@collabora.com"
              moz-do-not-send="true">denis.pynkin@collabora.com</a>&gt;</div>
          <div>Date:   Fri Jul 21 19:28:42 2017 +0300</div>
          <div><br>
          </div>
          <div>    net: Use packed structures for networking</div>
          <div>    </div>
          <div>    PXE boot is broken with GCC 7.1 due option
            '-fstore-merging' enabled</div>
          <div>    by default for '-O2':</div>
          <div>    </div>
          <div>    BOOTP broadcast 1</div>
          <div>    data abort</div>
          <div>    pc : [&lt;8ff8bb30&gt;]          lr :
            [&lt;00004f1f&gt;]</div>
          <div>    reloc pc : [&lt;17832b30&gt;]    lr :
            [&lt;878abf1f&gt;]</div>
          <div>    sp : 8f558bc0  ip : 00000000     fp : 8ffef5a4</div>
          <div>    r10: 8ffed248  r9 : 8f558ee0     r8 : 8ffef594</div>
          <div>    r7 : 0000000e  r6 : 8ffed700     r5 : 00000000  r4 :
            8ffed74e</div>
          <div>    r3 : 00060101  r2 : 8ffed230     r1 : 8ffed706  r0 :
            00000ddd</div>
          <div>    Flags: nzcv  IRQs off  FIQs off  Mode SVC_32</div>
          <div>    Resetting CPU ...</div>
          <div>    </div>
          <div>    Core reason is usage of structures for network
            headers without packed</div>
          <div>    attribute.</div>
          <div>    </div>
          <div>    Reviewed-by: Yauheni Kaliuta &lt;<a
              href="mailto:yauheni.kaliuta@redhat.com"
              moz-do-not-send="true">yauheni.kaliuta@redhat.com</a>&gt;</div>
          <div>    Signed-off-by: Denis Pynkin &lt;<a
              href="mailto:denis.pynkin@collabora.com"
              moz-do-not-send="true">denis.pynkin@collabora.com</a>&gt;</div>
          <div>    Acked-by: Joe Hershberger &lt;<a
              href="mailto:joe.hershberger@ni.com"
              moz-do-not-send="true">joe.hershberger@ni.com</a>&gt;</div>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------A3D32714DE7CD8433C8F8C5A--
