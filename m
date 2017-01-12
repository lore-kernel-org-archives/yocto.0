Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 042A9E00524; Wed, 11 Jan 2017 16:44:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (grsandeep85[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B888DE0049A
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 16:43:59 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id s140so5138115qke.0
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 16:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=61ryLFZS/ZeAb73NekQOlMrlBNCMWi6OzlV5drCcymo=;
	b=ifiIr2lJs+aSGpTQG6XKiS7Dq3i6rOEnpHPH4ZCSxbO0BHf1YAxe+pAsYeTz7zcA+r
	sfZ6PpE1ZWfLUtDGVh0HupwEYdIeGOYj0kl9EEz68BEuOEWI5ellERfCGvSm8tHAYO9y
	I6xB3WKPcjWX8KO04ONcvqGmpSq83n3JmF2f7hcp9PFYouk9LK1pnv82J5I9Y5Ialxk4
	f9RLMWp1759oQK3p3sl4p4vYPmT/ET6twQMeg3KlFEs77P2onl6Gpy+bFt95ykrHIlwP
	eL8r/afJT1M7PC3xX8EAYVhGSbiElUTgFuagnRm069iqW/kxcFC8Pbov2VPBRFQoloQp
	Yb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=61ryLFZS/ZeAb73NekQOlMrlBNCMWi6OzlV5drCcymo=;
	b=SgDBxkcKCcWXPaNPWcV3vliwqF1zSQ/VmJ2kchAom3c6CjCzg197y1baHY5F3zpxNR
	yPx0NR7tB0Kajt1RxevPMaEaWQUVC0KcaPBwXfNWn8clFshbWI1D8m0pMKa8qCSC84XX
	u77jRPNLaiXQ6ncvaQTZC+5jKgWRVRuFFytGWf4a7xPq5muv6Hgu9KYpOs5/u6o/IrK9
	LC5QfuCJ5cYK1aQJa1kcsRd7KS2u0lfM5OMIiLvaxBzba/MOBpDrcq5+98UvYPs2IdAM
	oM+8qBDpRd8aDenyP4Z/v5w9OEuPjRLHUJGWO9g8vhKMK/MfXqeKAIeBGb8M1qdzZWFA
	QxqQ==
X-Gm-Message-State: AIkVDXKm4Efe5GcH3fXnvBEeEywdbyVzSD3ksEQpZD4rB5WjseZRpI51mZHxPkrkfqoAhbdO5lCMheqe13ifrg==
X-Received: by 10.55.138.2 with SMTP id m2mr10727457qkd.115.1484181838549;
	Wed, 11 Jan 2017 16:43:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.62.37 with HTTP; Wed, 11 Jan 2017 16:43:58 -0800 (PST)
In-Reply-To: <c93f2baf-e05d-fc8a-0789-9651dc5a1fd4@balister.org>
References: <c93f2baf-e05d-fc8a-0789-9651dc5a1fd4@balister.org>
From: "Sandeep G.R" <grsandeep85@gmail.com>
Date: Wed, 11 Jan 2017 17:43:58 -0700
Message-ID: <CAKP9-Sh2bM9Qwet0FyeLBHAexkoNN089Xrr2ryQktPY5t7fQoA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: OpenEmbedded Developers Meeting in Portland before ELC
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
X-List-Received-Date: Thu, 12 Jan 2017 00:44:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c07272844d8fc0545db03d9

--94eb2c07272844d8fc0545db03d9
Content-Type: text/plain; charset=UTF-8

Hi Philip,

Is Yocto developer day planned during ELC-2017 Portland, USA. Can you share
the registration details if any?

On Mon, Jan 9, 2017 at 2:04 PM, Philip Balister <philip@balister.org> wrote:

> As we do around each Embedded Linux Conference, OpenEmbedded will host a
> developer meeting to discuss the state of OpenEmbedded and what efforts
> we should focus on over the next six months or so.
>
> All developers and users are welcome to attend. We like to hear feedback
> from a variety of people over what works, doesn't work, and is useful to
> people using OpenEmbedded for all sort of applications.
>
> The meeting will be held Monday, Feb 20 at a location we can almost
> announce. Based on prior years, the meeting will run from 9AM to 5PM.
>
> If you are going to attend add your name to:
>
> http://openembedded.org/wiki/OEDAM_2017
>
> Also, go ahead and add ideas for the agenda. We'll organize them better
> just before the actual meeting.
>
> See you all in Portland,
>
> Philip
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Thanks & Regards,*
*Sandeep G R*

--94eb2c07272844d8fc0545db03d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;color:#073763">Hi Philip,</div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif;color:#073763"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif;color:#073763">Is Yocto developer day planned during ELC-2017 Portland,=
 USA. Can you share the registration details if any?</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jan 9, 2017 at 2:04=
 PM, Philip Balister <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@baliste=
r.org" target=3D"_blank">philip@balister.org</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">As we do around each Embedded Linux Conference, O=
penEmbedded will host a<br>
developer meeting to discuss the state of OpenEmbedded and what efforts<br>
we should focus on over the next six months or so.<br>
<br>
All developers and users are welcome to attend. We like to hear feedback<br=
>
from a variety of people over what works, doesn&#39;t work, and is useful t=
o<br>
people using OpenEmbedded for all sort of applications.<br>
<br>
The meeting will be held Monday, Feb 20 at a location we can almost<br>
announce. Based on prior years, the meeting will run from 9AM to 5PM.<br>
<br>
If you are going to attend add your name to:<br>
<br>
<a href=3D"http://openembedded.org/wiki/OEDAM_2017" rel=3D"noreferrer" targ=
et=3D"_blank">http://openembedded.org/wiki/<wbr>OEDAM_2017</a><br>
<br>
Also, go ahead and add ideas for the agenda. We&#39;ll organize them better=
<br>
just before the actual meeting.<br>
<br>
See you all in Portland,<br>
<br>
Philip<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763" face=3D"arial, helv=
etica, sans-serif"><b>Thanks &amp; Regards,</b></font><div><font face=3D"ar=
ial, helvetica, sans-serif"><font color=3D"#073763"><b>Sandeep G R</b></fon=
t><br></font><br></div></div></div></div></div>
</div>

--94eb2c07272844d8fc0545db03d9--
