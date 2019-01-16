Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD912E00C4D; Wed, 16 Jan 2019 00:58:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gmshastri[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EEEDE00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:58:26 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id v205so3446837vsc.3
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=R8oDJLyOIsBQ+HGL0YOqpx2QZ/rFN48tHTKo44kmZ2s=;
	b=Q+cHjmHLhP1ilrjyBxTgor33Jr4LHOBO3CC+4X00Huq55dXvMl11h/2YrZyMLZSm+l
	sis1sXYBPe4Dv+ivbjul/nFUgdX4OmndRY5f2iE6QS2lgAB1pXrPZitwSJP7gRB0tSY8
	NJbXupKsYwf1JRjx/LXjAOSuSiH7O3Rrx37kv+ljar1v+d5NHJhOoQO8IJtDxfPdoLPX
	VHg2rZq2YC6lEDnuzoE5xgFkSbkuUaUTc1N5FX51SZIHvHs41VnE1Sgfd1h1acncMpvs
	F5uQZIbuqSKnMvDKZ4crIE22W2sQwBrGkEtPsRDw1/lIj9F+ybubYE/ajp0Wn+WEHf0m
	Ekdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=R8oDJLyOIsBQ+HGL0YOqpx2QZ/rFN48tHTKo44kmZ2s=;
	b=hzjvzaRu4FHA2zJwOSfThvkOipBQmxg5zsb0G1zIKcZsB789EgZwWDxdOUnImXEOcB
	2+jTrkEbP8FQxzCPMMXeCWaPjgCxSZQM1QUodzaSO+cXekRSHE6WNLr9LJsJL+XAMO6m
	ctrZwobwOivLg9m/OXIJA4BynqvDnSkUQepKK28oar8PXoo9dK8Vh9eyFCGpFynIE/P4
	xVfTBUyeIMdimDIp29pjC9JVDkOt412pGyIJrNJR/R0bMRLmoep/A6e2q/rZCmJ1c1cV
	+rrd0oQDMKMh6tcBf76f9GDXNt6WEiuOZD0bBDOWK/5TDlFhVJzGAax0kaUK1HlBW2Ux
	i4sw==
X-Gm-Message-State: AJcUukeslPIbcN61sB/RYFf4TiFwH0kRvFUDZOu43X91zhTCDVYPdh43
	mo5E+t0OsOuQ89KaiNljVH5oYWVyKrcYdG/5OSQ=
X-Google-Smtp-Source: ALg8bN74+TkuWzCKbYQOE4YgVfedJoGPo68ywvAmPWHevDXsps9unk0YHAbn52loZq/aTLDlhsigwV1d1uHYDVaPObg=
X-Received: by 2002:a67:b001:: with SMTP id z1mr3368376vse.238.1547629105527; 
	Wed, 16 Jan 2019 00:58:25 -0800 (PST)
MIME-Version: 1.0
References: <CAE_REAuoUGr7L-Cc5_f38wy-Myq1g69D_97wA_cfEu=ULUyAQA@mail.gmail.com>
	<CAE_REAt2p+C+CRSCj=yfRBw4TEkswUP7uTpue8NLu3Gqzgn5xg@mail.gmail.com>
	<CAP71WjykQrPZpBDEpnhD6c_nEYRD5XweSN5dbU4Bb+q7WO3kmw@mail.gmail.com>
In-Reply-To: <CAP71WjykQrPZpBDEpnhD6c_nEYRD5XweSN5dbU4Bb+q7WO3kmw@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
Date: Wed, 16 Jan 2019 09:58:13 +0100
Message-ID: <CAE_REAve_AHUs3V77y=J0CGyum3dTgngxTJgAvw5uX=o_C0FSQ@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Community support for any Yocto release
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
X-List-Received-Date: Wed, 16 Jan 2019 08:58:26 -0000
Content-Type: multipart/alternative; boundary="0000000000001441c8057f8f7b8c"

--0000000000001441c8057f8f7b8c
Content-Type: text/plain; charset="UTF-8"

Thanks Nicolas for the prompt answer and wiki page information.

So as you said, "Typically, alongside the latest release the previous two
releases are also maintained.", do you mean any release will be maintained
for 1 year by community?

Regards,
Gaurang

On Wed, Jan 16, 2019 at 9:50 AM Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> Hello,
>
> On Wed, Jan 16, 2019 at 9:47 AM Gaurang Shastri <gmshastri@gmail.com>
> wrote:
>
>>
>> Hi All,
>>
>> For how many years yocto community officially support any Yocto release?
>> (This includes like bug fixes, CVE fixes, enhancements, etc etc)
>>
>> For example, the latest release happened on 11/15/2018 (Yocto 2.6), so
>> how long this will be supported by community?
>>
>> Sorry, if this information is already present on some wiki page, but I am
>> not able to find it. So pointer to that wiki page will really help.
>>
>
> This information is indeed available her:
> https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
>
> "Typically, alongside the latest release the previous two releases are
> also maintained."
>
>
>>
>> Regards,
>> Gaurang Shastri
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000001441c8057f8f7b8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks Nicolas for the prompt answer=
 and wiki page information.<br><br></div>So as you said, &quot;Typically, a=
longside the latest release the previous two releases are also maintained.&=
quot;, do you mean any release will be maintained for 1 year by community?<=
br><br></div><div>Regards,<br></div><div>Gaurang<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jan 16, 2019 at 9:50 AM Nicola=
s Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.deche=
sne@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr">Hello,<div><br></div></div><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail-m_2091671860379567230gmail_attr">On Wed, Jan 16, 2019 a=
t 9:47 AM Gaurang Shastri &lt;<a href=3D"mailto:gmshastri@gmail.com" target=
=3D"_blank">gmshastri@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr"><div><div><div><div><div>Hi All,<br><br></div>For ho=
w many years yocto community officially support any Yocto release? (This in=
cludes like bug fixes, CVE fixes, enhancements, etc etc)<br><br></div>For e=
xample, the latest release happened on 11/15/2018 (Yocto 2.6), so how long =
this will be supported by community?<br><br></div>Sorry, if this informatio=
n is already present on some wiki page, but I am not able to find it. So po=
inter to that wiki page will really help.<br></div></div></div></div></div>=
</blockquote><div><br></div><div>This information is indeed available her:<=
/div><div><a href=3D"https://wiki.yoctoproject.org/wiki/Stable_branch_maint=
enance" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Stable_branch_=
maintenance</a></div><div><br></div><div>&quot;Typically, alongside the lat=
est release the previous two releases are also maintained.&quot;</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div><br></div>Regards=
,<br></div>Gaurang Shastri<br></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div></div>
</blockquote></div>

--0000000000001441c8057f8f7b8c--
