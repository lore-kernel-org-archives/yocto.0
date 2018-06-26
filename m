Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AD5BE0084F; Tue, 26 Jun 2018 13:16:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA7BE006F1
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 13:15:57 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id b10-v6so4423608pgq.11
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 13:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=GiWrwz5Y6ghCfNnHxCQp0IgzdafN6/5M1GUK2QzLoc0=;
	b=sd8sMnpdpjpjpjC9lHSAtRv/9LMJ6JJ5uU/hK9C9fHz8Oj5LqlliMMEjUnXWVOdEE7
	AoGeDfVZEIKpHPWRi60n6/xcvejyvaAa4sn/X3a9RewJoZjLZyMVNDBpmNeZSVrRVKCP
	vVDQuIHtdQsCg2aXaozwlD7ThZuSPp3bUso5BnUKROZ24CUSFP9Ih16FYbZ3w8Iy89bu
	BK/3JPmzdNXlQS+Rp/UGHgxzJrfrNAMkzv/yO0+Z5agwjovgqH5KMbe/n8T2UVmYdf5e
	fb/MYianCsSAmQMyFDRO8Gk4nYNx/6ZhwSxfoLLAj5PBQ2XHE2SqWO08muVAvAX3tUIj
	lWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=GiWrwz5Y6ghCfNnHxCQp0IgzdafN6/5M1GUK2QzLoc0=;
	b=M4IGspdoQ5X39QUNeAYzTXJbLiTGXXw9D1Ov881/dK+t4LJxh2zgNoT/ONm6x6xqlS
	EJ0ZSNrkLXJdCxarQEXltvglyOlRjbA+195+7LThEgg/7hMa+WzUtV9eWqPdvZ+b5+Bs
	urANdknMsKIVareQpR8arICGO9LT9JjVq1sQ3tNSGW3+8WPS8Fuxot/RCXS90ZvSkVpP
	ydA1NcI90uwBsANVawTWt/3N96fj4E7UXweSnN7m8wHEdn4sj+oVoUtrmttWMdepAYMj
	9TBKS1bdNVnWXRnIBz3d+As+mrp/MhiLjSpQtmSwFea/Vnd59WVGMAK+SI2dhRjNAz17
	KMZA==
X-Gm-Message-State: APt69E0XmzeX50JDgkaV+Zdo1yPdggzJZdX2pmFfBcFz1uI6r7AcD4Gt
	urUZu7Tk3CnpEocaSmygX62d6LVt
X-Google-Smtp-Source: AAOMgpffvbY28lizVgW0V8MpDfwEKFgkRKvk16veC4xISHK99j07+XlNVX3q29MOdteAXysUKzSdrQ==
X-Received: by 2002:a62:660a:: with SMTP id
	a10-v6mr2934652pfc.156.1530044157101; 
	Tue, 26 Jun 2018 13:15:57 -0700 (PDT)
Received: from [10.43.100.234] (64.2.3.196.ptr.us.xo.net. [64.2.3.196])
	by smtp.gmail.com with ESMTPSA id
	q82-v6sm4889799pfg.170.2018.06.26.13.15.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Jun 2018 13:15:56 -0700 (PDT)
To: Giordon Stark <kratsg@gmail.com>, "N:" <yocto@yoctoproject.org>
References: <CAFzUWGmFaHwccznqTA_ppKA5SNjcB2+SqwYgP1yvtACMrKiLLQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <d9590764-7090-4740-32d1-51efdfb0711e@gmail.com>
Date: Tue, 26 Jun 2018 13:15:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAFzUWGmFaHwccznqTA_ppKA5SNjcB2+SqwYgP1yvtACMrKiLLQ@mail.gmail.com>
Subject: Re: Best practice for updating a single recipe in meta-openembedded?
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
X-List-Received-Date: Tue, 26 Jun 2018 20:16:01 -0000
Content-Type: multipart/alternative;
	boundary="------------49F7E4F17ED849DD2741BCFE"
Content-Language: en-US

--------------49F7E4F17ED849DD2741BCFE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 06/26/2018 12:37 PM, Giordon Stark wrote:
> Hi all,
Wrong mailing list. Meta-openembedded questions should be directed to
openembedded-devel@lists.openembedded.org

>
> I noticed on a 64b board, devmem2 isn't able to write 32b. I noticed,
> surprisingly, that there's now a patch for this fix in master
> (https://github.com/openembedded/meta-openembedded/commit/1bcd15ed5b31bdec492af99f671718d7a6eb887b).
>
> I'm currently on rocko, which doesn't have this additional change. Can
> I just cherry-pick this commit onto meta-openembedded, or should I
> apply these changes into my custom layer, and leave the
> meta-openembedded layer untouched?

I am running through master changes and this changes is a candidate for
backport to both sumo and then rocko.

- armin
>
> Thanks,
>
> Giordon
> -- 
> Giordon Stark
>
>


--------------49F7E4F17ED849DD2741BCFE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 06/26/2018 12:37 PM, Giordon Stark
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFzUWGmFaHwccznqTA_ppKA5SNjcB2+SqwYgP1yvtACMrKiLLQ@mail.gmail.com">
      <div dir="ltr">Hi all,</div>
    </blockquote>
    Wrong mailing list. Meta-openembedded questions should be directed
    to <a class="moz-txt-link-abbreviated" href="mailto:openembedded-devel@lists.openembedded.org">openembedded-devel@lists.openembedded.org</a><br>
    <br>
    <blockquote type="cite"
cite="mid:CAFzUWGmFaHwccznqTA_ppKA5SNjcB2+SqwYgP1yvtACMrKiLLQ@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>I noticed on a 64b board, devmem2 isn't able to write 32b.
          I noticed, surprisingly, that there's now a patch for this fix
          in master (<a
href="https://github.com/openembedded/meta-openembedded/commit/1bcd15ed5b31bdec492af99f671718d7a6eb887b"
            moz-do-not-send="true">https://github.com/openembedded/meta-openembedded/commit/1bcd15ed5b31bdec492af99f671718d7a6eb887b</a>).</div>
        <div><br>
        </div>
        <div>I'm currently on rocko, which doesn't have this additional
          change. Can I just cherry-pick this commit onto
          meta-openembedded, or should I apply these changes into my
          custom layer, and leave the meta-openembedded layer untouched?</div>
      </div>
    </blockquote>
    <br>
    I am running through master changes and this changes is a candidate
    for backport to both sumo and then rocko.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CAFzUWGmFaHwccznqTA_ppKA5SNjcB2+SqwYgP1yvtACMrKiLLQ@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Thanks,</div>
        <div><br>
        </div>
        <div>Giordon</div>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature"
        data-smartmail="gmail_signature">
        <div dir="ltr">Giordon Stark</div>
      </div>
      <!--'"--><br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------49F7E4F17ED849DD2741BCFE--
