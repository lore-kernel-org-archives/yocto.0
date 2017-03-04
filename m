Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C06EE009A5; Sat,  4 Mar 2017 14:19:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.169 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02031E009A5
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 14:19:14 -0800 (PST)
Received: by mail-wr0-f169.google.com with SMTP id g10so94126120wrg.2
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 14:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wzkDZ3FoEJiWl5n0q4of2fuowFoyyadTPm1FQqkjHqM=;
	b=cPW4OvZjK1Dhblej2SAM9m/VNmvFZrG55MB8Gr2L0MfowR+MXsmU2QxOeby1w64ACp
	M7iozW2AJUzrYGrmU/66+vRUuIos5cwDwmC4vpi669twPnr4RBczms8j2ZkhXs5CWSKT
	/3gRiA2kggNCW51+4G7SZpkhi4Qk1dIEUV0ZcXfTonLkbi0/SG2xQOuRZsyy0IWSbQRZ
	h6x//f2l/Va+hXLVvIHNcmyQil1qXT62jFVP08Uwwd7deoXG8/QBu7YPl3l2neGGw5Iz
	NGUjAkylOjphpdWlvDxdfDAQvhZCzOlonV0N6+LO+Sz/sanuz34e3zh0ev8DPr7Kcrx6
	rbcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wzkDZ3FoEJiWl5n0q4of2fuowFoyyadTPm1FQqkjHqM=;
	b=AcQQW11CTi6rAO/JuZsh0jWj0O4wTbuFmi5ngLyuX63bHN4rWcm4SXsC7BZzWbIEMG
	s0m0gu46HFJ2AMzb8H+jm82Zc0mPtXqxsv5IBm0sbhwNDS84FuW04FhdGHdEIKIBXg9k
	ndDlW1WYTxe5DEi0cuw/kcrQ/jkgJwlZMfBdCxNYeu9L5MdKcvx31/pqoI5oqwNk88uH
	sUsHFG6gnt3Mz0aLWnbRfLRUw1VGT9uoR/yIn1jlFqyB4h2R0Itv7yoPjdaBICDKPJZ5
	c3qc87MTIUKtBZnNgb5iQj9CDpLoKBV9OyOAsajnKnbCoG8XKchErjISbWTpKt+wDl0c
	EAvg==
X-Gm-Message-State: AMke39k/IY1liFBGxGpg63BfEaL3BAWEusSAOjQ5JAXH410QhxEGpajSzLl0Kay1V4g+WuBPLq8Dik24W9gnnw==
X-Received: by 10.223.134.229 with SMTP id 34mr4383043wry.104.1488665953814;
	Sat, 04 Mar 2017 14:19:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.88.4 with HTTP; Sat, 4 Mar 2017 14:19:13 -0800 (PST)
In-Reply-To: <CAK7GjbjSrwD7knTjL3fROZkZiaB2C3wdCKUnNKKR-iUuwrQdkg@mail.gmail.com>
References: <CAC+thW31ggogO8jNoN2p3r11pqnk-wJxDqLeVD1Pb4hWt5_cBw@mail.gmail.com>
	<CAK7GjbjSrwD7knTjL3fROZkZiaB2C3wdCKUnNKKR-iUuwrQdkg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Sat, 4 Mar 2017 23:19:13 +0100
Message-ID: <CAC+thW3y=wW2vXfKfvHdztjtQ998xeiwo7y-Tw8ue_2YByab+g@mail.gmail.com>
To: Steve Burt <steve@planet.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Dev Day at ELC 2017
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
X-List-Received-Date: Sat, 04 Mar 2017 22:19:16 -0000
Content-Type: multipart/alternative; boundary=001a114917345dd0710549ef0d20

--001a114917345dd0710549ef0d20
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 1:41 AM, Steve Burt <steve@planet.com> wrote:

> The slides are on the wiki:
> https://wiki.yoctoproject.org/wiki/DevDay_US_2017
>
> Hope this helps.
>

Thanks for the link, Steve: appreciated!


>
> On Thu, Mar 2, 2017 at 2:22 AM, Andrea Galbusera <gizero@gmail.com> wrote:
>
>> Hi,
>>
>> I was expecting to find some material from the Dev Day at ELC at [1] as
>> usual. Was it published somewhere else than the usual page?
>>
>> [1] https://www.yoctoproject.org/tools-resources/presentations
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a114917345dd0710549ef0d20
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Mar 3, 2017 at 1:41 AM, Steve Burt <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:steve@planet.com" target=3D"_blank">steve@planet.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">The slides are on th=
e wiki:<div><a href=3D"https://wiki.yoctoproject.org/wiki/DevDay_US_2017" t=
arget=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/DevDay_US_2017</a>=
<br></div><div><br></div><div>Hope this helps.</div></div></blockquote><div=
><br></div><div>Thanks for the link, Steve: appreciated!</div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote"><div><div class=3D"h5">On Thu, Mar 2, 2017 at 2:22 AM, An=
drea Galbusera <span dir=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" ta=
rget=3D"_blank">gizero@gmail.com</a>&gt;</span> wrote:<br></div></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr">Hi,<div><=
br></div><div>I was expecting to find some material from the Dev Day at ELC=
 at [1] as usual. Was it published somewhere else than the usual page?</div=
><div><br></div><div>[1]=C2=A0<a href=3D"https://www.yoctoproject.org/tools=
-resources/presentations" target=3D"_blank">https://www.yoctoproject.o<wbr>=
rg/tools-resources/presentatio<wbr>ns</a></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div></div>

--001a114917345dd0710549ef0d20--
