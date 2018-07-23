Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB327E00C74; Mon, 23 Jul 2018 08:37:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [58.225.23.18 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32216E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 08:37:50 -0700 (PDT)
Received: by mail-pl0-f46.google.com with SMTP id j8-v6so320812pll.12
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 08:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=0x55d3hNALXzEow/0IQa2zn78kjwk98lARhTKtvT8O8=;
	b=Ab+QxSJjIZJby6+9xkZT5tS3jqFVcNwL/tcplqGeZqT+QtXdEIWHWCc+5iR+bND7Zr
	w0uxc4SSqP848PhJXgJt/ac1z53G6a2NQMrsnqMlGh00ekfeFkbq90l0BN9FXyiGN/QF
	3RIUryECUL2lFh2caXIABReDUwXCLtWqeGGHdfT9BE5O7O36soCvcIVBw5mAWkhg6jag
	inA0uczCi3yBUKv0OmiXxKWHuWEMO1ZusQBjb1LwTQCxLuaw2RZf39G1upUkfnz8cv8i
	u651/JQbUGhF0GkJDBAYEtxRURX7anxFM+QCDWWUtP5DKTOJ3pXBPrmfO6HLlFiuNpnQ
	wO+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=0x55d3hNALXzEow/0IQa2zn78kjwk98lARhTKtvT8O8=;
	b=m8ic5uuot1YyMxGIGywXqEbJ7hJFzBYz+xPsj2bnUmnNgp5EOK/Gx1pdbs+R7qz/NJ
	rf5MWRyeoSV5lXxVQMrVdjug8Pyjo23HmtqbY7ZSJKF+Jai+3N0mIDtse7087pAFqCsP
	GAtMIVg3xHTZ4mvPvKXoqcU8K0aOpT8xkon4aL4l+1Vr2ZObeOOLwlDOYP2X6igbuRnP
	mFWLEXM/v0/88uJM3NhfN08p1PJRl5lLuIHhC+C6BLR9GA10dpUwzEAtA/r9qY42ZoY6
	bVIzHYYlY6RaZey6f5fDdSJTZ0F7eezyh4UFmJTX93qaBjqKtEscMtq4XivrXjsEd4sB
	2qPw==
X-Gm-Message-State: AOUpUlEzuroi9y3IEAZbP7trF/oqyrwcnv/vXUB8JY4NPTA41PFyCS5P
	noP2PQaLy3Ww1JPg9HXLCQQ+X3Us9+b6vw==
X-Google-Smtp-Source: AAOMgpd2V8WbFzRb6cs7sjJVX74cyHbM4He2Xm+LZUOIp7auqUbBCLiUh8m9QisxoCbTmPeHdOyyng==
X-Received: by 2002:a17:902:70cc:: with SMTP id
	l12-v6mr13406957plt.132.1532360270171; 
	Mon, 23 Jul 2018 08:37:50 -0700 (PDT)
Received: from [10.211.4.220] ([58.225.23.18])
	by smtp.gmail.com with ESMTPSA id
	2-v6sm6380328pfs.58.2018.07.23.08.37.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jul 2018 08:37:49 -0700 (PDT)
To: Rudolf J Streif <rudolf.streif@gmail.com>, yocto@yoctoproject.org
References: <1e741f3f-f20e-4e38-d9ec-643e22b34e2d@gmail.com>
	<fa1281bd-1bb1-7126-d142-1ca4e599794a@gmail.com>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <e538eb13-26ff-edbb-cedd-f6fbfc2e6847@gmail.com>
Date: Mon, 23 Jul 2018 18:37:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fa1281bd-1bb1-7126-d142-1ca4e599794a@gmail.com>
Subject: Re: How to tell bitbake my prefered terminal in for devshell and access bitbake datastore?
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
X-List-Received-Date: Mon, 23 Jul 2018 15:37:51 -0000
Content-Type: multipart/alternative;
	boundary="------------98CF5FE47B7130FDFAFBA70E"
Content-Language: en-US

--------------98CF5FE47B7130FDFAFBA70E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Thanks, the OE_TERMINALvariable did it for me

>You cannot access d if you mean that

I don't mean d the object but the variables that are accessed by 
d.getVar method.

>all the variables are exported to the shell.

What variables exactly? I just tried to echo some of the machine config 
and recipe variables and they don't exist inside the devshell

On 07/23/2018 06:05 PM, Rudolf J Streif wrote:
> You can use the variable OE_TERMINAL to choose your preferred terminal.
> By default it's set to auto and Bitbake figures out what terminal is
> available on your system. Please refer to the manual at:
> https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#var-OE_TERMINAL.
>
>> Also, is it possible to access bitbake datastore from inside the
> devshell(or devpyshell) ?
>
> You cannot access d if you mean that, however, all the variables are
> exported to the shell.
>
> :rjs
>
>
> On 07/23/2018 02:49 AM, MOHAMMAD RASIM wrote:
>> Hi,
>>
>> when running bitbake with a recipe and giving the devshell as a
>> command bitbake runs the devshell inside xterm, on my other machine it
>> runs tmux.
>>
>> looking at the openembedded source code here
>> https://github.com/openembedded/openembedded-core/blob/master/meta/lib/oe/terminal.py
>>
>> I can see there are multiple classes for terminals that bitbake loop
>> through, but how can I tell bitbake that I prefer a certain terminal?
>>
>> Also, is it possible to access bitbake datastore from inside the
>> devshell(or devpyshell) ?
>>
>> Regards
>>


--------------98CF5FE47B7130FDFAFBA70E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    Thanks, the OE_TERMINAL<span class="permalink"> variable did it for
      me<br>
    </span><br>
    <pre wrap="">&gt;You cannot access d if you mean that
</pre>
    I don't mean d the object but the variables that are accessed by
    d.getVar method.<br>
    <pre>&gt;all the variables are exported to the shell.</pre>
    What variables exactly? I just tried to echo some of the machine
    config and recipe variables and they don't exist inside the devshell<br>
    <br>
    <span class="permalink"></span>
    <div class="moz-cite-prefix">On 07/23/2018 06:05 PM, Rudolf J Streif
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:fa1281bd-1bb1-7126-d142-1ca4e599794a@gmail.com">
      <pre wrap="">You can use the variable OE_TERMINAL to choose your preferred terminal.
By default it's set to auto and Bitbake figures out what terminal is
available on your system. Please refer to the manual at:
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#var-OE_TERMINAL">https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#var-OE_TERMINAL</a>.

</pre>
      <blockquote type="cite">
        <pre wrap="">Also, is it possible to access bitbake datastore from inside the
</pre>
      </blockquote>
      <pre wrap="">devshell(or devpyshell) ?

You cannot access d if you mean that, however, all the variables are
exported to the shell.

:rjs


On 07/23/2018 02:49 AM, MOHAMMAD RASIM wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hi,

when running bitbake with a recipe and giving the devshell as a
command bitbake runs the devshell inside xterm, on my other machine it
runs tmux.

looking at the openembedded source code here
<a class="moz-txt-link-freetext" href="https://github.com/openembedded/openembedded-core/blob/master/meta/lib/oe/terminal.py">https://github.com/openembedded/openembedded-core/blob/master/meta/lib/oe/terminal.py</a>

I can see there are multiple classes for terminals that bitbake loop
through, but how can I tell bitbake that I prefer a certain terminal?

Also, is it possible to access bitbake datastore from inside the
devshell(or devpyshell) ?

Regards

</pre>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------98CF5FE47B7130FDFAFBA70E--
