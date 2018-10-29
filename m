Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8145FE00C31; Mon, 29 Oct 2018 12:19:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09476E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 12:18:21 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id j22-v6so702461pfh.3
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 12:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=MfT/ShHjSuMAyYJdS2PzzG3eqWA5Q47e6CrlynKhVSs=;
	b=O4kt2CgyMfTRf7dGhh70Z2P2sI1EHCznmIJCbvGd10qzTH2wmgxHRqqncCNHwXj/MC
	ciOHftgvpQCWlrgfid6qF7wYT/ye5TH38KOeThTPd6hccTw5lS1M7YcNV+CW7oTiBKbE
	20XmFOYLqBkB8gZtQx0SOboDSHW6LpXnr7lWzrFJXR0CSwe3lygpBdP2C5H8kdvX0s5r
	6srg8XQstPbBsZtikGfzpyvEs6e4U0J8uwowUAgNAlpP6AAcQ7k3NRzpT61clLi6C/Y6
	IJqdLHNvXQX6lM2C4EGqBW4qNBtGJ2KWjtEZ0OjE05+i44l9qCQ0jlhwXE4mSECZPCaI
	6+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=MfT/ShHjSuMAyYJdS2PzzG3eqWA5Q47e6CrlynKhVSs=;
	b=m4QK/iKhkVwtnDh5INU7yYQuf67p6fWo/4MtNjXdt7Oxs2qrGmMQYJqcYuNntVw9FI
	JuNSMc7YRRCHY4YvvAvCe590oC13a0q6ntT83HefphaowelvjoVSiKl9zWpbeC+IvNG2
	W5lMUKjsPNeULCFoYaSfYU3OQXxEcvcUp8JmZqVl3rz1zZlViKLz2ZJKhoj9tAattLZI
	nFAtDchNZd5kHWawbRKNuMgpj0ftWtFUoNqqs+9IJSIQ3lA/d6MIDsvW8E6gnYSyfA0D
	hKLturFCmOU3UcaPdAr2AevF/hIQoaiD11H8uO3p6dFFXnZjglEDjzuBweD1MBhkH31I
	PBeQ==
X-Gm-Message-State: AGRZ1gKNrRYoLz45ZPKvCeaDwqdEn0XZH2oSa1DhLSm2aMaash/Q859N
	7eUqWH7tVgfcwU/Cn7RUEPm+CwRHZRU=
X-Google-Smtp-Source: AJdET5f2cyPSTCRTXdrMtzj5oEqojtfcP5MoKl85oxpbZyelK8LgFwgCjz1z/WveOPKU2mH4pwPW1A==
X-Received: by 2002:a62:50ca:: with SMTP id
	g71-v6mr6817983pfj.62.1540840700996; 
	Mon, 29 Oct 2018 12:18:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:3405:5320:ca09:da28?
	([2601:202:4180:c33:3405:5320:ca09:da28])
	by smtp.gmail.com with ESMTPSA id
	x189-v6sm15933383pfb.162.2018.10.29.12.18.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 12:18:19 -0700 (PDT)
To: Joe MacDonald <joe@deserted.net>, yocto@yoctoproject.org
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <534cc424-18d3-1d7f-dd75-a0d16d9a1959@mvista.com>
Date: Mon, 29 Oct 2018 12:18:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
Subject: Re: [meta-selinux][sumo][PATCH 0/7] Refpolicy updates for sumo
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
X-List-Received-Date: Mon, 29 Oct 2018 19:19:24 -0000
Content-Type: multipart/alternative;
	boundary="------------80269B61853720AD3C9B89E6"
Content-Language: en-US

--------------80269B61853720AD3C9B89E6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


On 10/29/18 11:31 AM, Joe MacDonald wrote:
> I'm sending this out  as a follow-up to our discussion from last week.
> This set will be placed on the newly-created 'sumo' branch.  I plan to
> follow up with a slightly different version for a new 'thud' branch as
> well, at which point things should be stable enough on those two
> branches that I can finish up the refpolicy update (2.20180701) I'd
> started a little while ago.  After that, I think top of my list is to
> clean up some (I think unintended) behaviour in the _git recipe variants.
>
> Comments / suggestions / etc. more than welcome.


so this is not based on Master?

- armin

>
> -- 
> Joe MacDonald
> :wq
>

--------------80269B61853720AD3C9B89E6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/29/18 11:31 AM, Joe MacDonald
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>I'm sending this out  as a follow-up to our discussion
          from last week. This set will be placed on the newly-created
          'sumo' branch.  I plan to follow up with a slightly different
          version for a new 'thud' branch as well, at which point things
          should be stable enough on those two branches that I can
          finish up the refpolicy update (2.20180701) I'd started a
          little while ago.  After that, I think top of my list is to
          clean up some (I think unintended) behaviour in the _git
          recipe variants.</div>
        <div><br>
        </div>
        <div>Comments / suggestions / etc. more than welcome.</div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>so this is not based on Master? <br>
    </p>
    <p>- armin<br>
    </p>
    <blockquote type="cite"
cite="mid:CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        -- <br>
        <div dir="ltr" class="gmail_signature"
          data-smartmail="gmail_signature">Joe MacDonald<br>
          :wq</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------80269B61853720AD3C9B89E6--
