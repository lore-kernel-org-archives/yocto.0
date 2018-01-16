Return-Path: <ka6sox@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30AE4E00E22; Mon, 15 Jan 2018 19:57:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ka6sox[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E2AAE008A4
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 19:57:49 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id x42so3268057ita.4
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 19:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=82sJ9c0xvLXvltD6fnPM4MNYoURttfjEKhqOkrOD/Dc=;
	b=Vhw8rTVAlRNraDCLcW9THXnB8FflXwROdSaAlvcPO4+3yjvMbeiVVQkqJW2a8EFaWs
	pOfTaglyeNIZzGJnaBFC+03MME0etCPNwurnMIB4fyRvdFPmuKYbEJhXWjuA7PaPmUjG
	qFg9oykOyUzT5AVV1HfGpc+K4qIUtg9Kpx928LikRVIiQm8XKTxA4Ws495SDNguBVAKr
	c+eNCbXeoNMnnsZsVvG8ZD5tM/nFYeONHAL9n0KYgAZODVqEtyQurA0C8dQNTfIBaEel
	HeSNb82+fp+BhIf4Hajk+tXvBla0LTuIC0O40WjfiT1Hj19vD35h7p5GrxGM3hmWVFIf
	+mDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=82sJ9c0xvLXvltD6fnPM4MNYoURttfjEKhqOkrOD/Dc=;
	b=nWtQmSADQ5OwLc1BQjzpMC3lxL+gdVAslN5YXQMx+vn/j5VNTU5J6jv7xmZC+TUYMG
	wySxEoRcNw0M4+5YlMPnA6j+ekvE5PZ8GBvImGyZDiURqmCabzBly4VLgZiBYQzZgS/l
	4b5ymJQV3meddWTgJX2+74aZNI9p1YNBsmVeBkYEXCxc4wGySfgMeEBiE36WVYXcRdU2
	bKLqOtWNRKlVLtQyXYmBInokU8Bv5SbadbLk7mhoq91kYX/EXc9ERkNVlJjx3Lw1QSrK
	MoI7YR0VxK1DJvgnikwSEf3V+7fZnccgYXdQNFij4cEhRZnewOQ3cYBGebGD74QrlrWV
	TRpg==
X-Gm-Message-State: AKwxytc/0SoQo8KkJ9PXEfqmcoJdSsochBe4tno97p9xXFpKqVi+YHIx
	9+tuA9zK+cVp5w2QS5/nwREtA4OgkkLT9lLicfU=
X-Google-Smtp-Source: ACJfBos6kS8CuHmhi9RIrajtghoFAIQExEVDMLdhADOfgDzYdXxYPXiNWr8CzSmc/blC/P7Sq8l5ldL+KaZt5i7c6cE=
X-Received: by 10.36.28.20 with SMTP id c20mr17135227itc.142.1516075068990;
	Mon, 15 Jan 2018 19:57:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.26.5 with HTTP; Mon, 15 Jan 2018 19:57:48 -0800 (PST)
In-Reply-To: <CAGAf8Lws8HfvDvMvdpgXyTvKaVpmf5a1UUTbBc2OrTpw=mgPNA@mail.gmail.com>
References: <137d31ae-329e-53ff-f495-259168b787d5@balister.org>
	<CAGAf8Lws8HfvDvMvdpgXyTvKaVpmf5a1UUTbBc2OrTpw=mgPNA@mail.gmail.com>
From: Tom King <ka6sox@gmail.com>
Date: Mon, 15 Jan 2018 19:57:48 -0800
Message-ID: <CAHQecY5FEt0jMY97Cfq7tR4KAETqied0t3zfFgXw=J5YBSz53A@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded developer meeting Sunday before ELC in Portland
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
X-List-Received-Date: Tue, 16 Jan 2018 03:57:50 -0000
Content-Type: multipart/alternative; boundary="001a1144b54af0a9b90562dcbb1e"

--001a1144b54af0a9b90562dcbb1e
Content-Type: text/plain; charset="UTF-8"

What time...a number of us are headed up from SCaLE sunday morning to ELC...

its only about 2.5hrs to get there but early will leave a number of us late.

T

On Mon, Jan 15, 2018 at 3:41 PM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > March 11, 2108, Portland
>
> I guess, by this date yocto community will experience release 24.7 or
> similar... If?! ;-)
>
> Zoran
> _______
>
> On Mon, Jan 15, 2018 at 11:30 PM, Philip Balister <philip@balister.org>
> wrote:
>
>> We are setting up an OpenEmbedded developer meeting on the Sunday before
>> ELC. More information to follow, I just wanted to make sure everyone had
>> the date before making ELC travel arrangements.
>>
>> March 11, 2108, Portland
>>
>> Philip
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1144b54af0a9b90562dcbb1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What time...a number of us are headed up from SCaLE sunday=
 morning to ELC...<div><br></div><div>its only about 2.5hrs to get there bu=
t early will leave a number of us late.</div><div><br></div><div>T</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jan 15=
, 2018 at 3:41 PM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><div><div>&gt; March 11, 2108, Portland<br><br></div>I guess, by this=
 date yocto community will experience release 24.7 or similar... If?! ;-)<b=
r><br></div>Zoran<br>_______<br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote"><span class=3D"">On Mon, Jan 15, 2018 at 11:30 PM, Phi=
lip Balister <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@balister.org" t=
arget=3D"_blank">philip@balister.org</a>&gt;</span> wrote:<br></span><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span class=3D"">We are setting up an OpenEmbedded=
 developer meeting on the Sunday before<br>
ELC. More information to follow, I just wanted to make sure everyone had<br=
>
the date before making ELC travel arrangements.<br>
<br>
March 11, 2108, Portland<br>
</span><span class=3D"m_2291923091251816416HOEnZb"><font color=3D"#888888">=
<br>
Philip<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></font></span></blockquote></div><br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1144b54af0a9b90562dcbb1e--
