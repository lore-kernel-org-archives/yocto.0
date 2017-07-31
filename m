Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13AD0E00C3C; Mon, 31 Jul 2017 06:20:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DA2E00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:20:20 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id x3so178861880oia.1
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0IRQj5sHdypOMRzMYX/viWt/c0DnLiEnE9fYb63up1w=;
	b=iOXWx7XCNuLTspc/TZAyN05FcgxnrOIxkYF568GpD0aDcmAJbf2M6POy8utlIspH/I
	pMDKmj6bBNwkpqJw81vHchQJGU7EnpXrEcgSAhbnBR+G+qZOjSJnmeQclvu3NUMXHu+0
	CkLe79J4xt9OPzj+hulQw52DBxXyHSKDrOgnmwwiZBUiWEkVZqjOD7xCRpI693NP3N8E
	QV8mYwxkHVNSrbhs0ZluW9eLYWXpcjGBWe5jh+v4S1ep3DDulc5OJfyzlzu9GkmZBe4d
	ULEpbeeEQEdbxtLMOPyfB0g6/wBRZrwpQIqcznFh30jkAjtcaVQef4i9vnCQ5xA6t/M0
	w0Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0IRQj5sHdypOMRzMYX/viWt/c0DnLiEnE9fYb63up1w=;
	b=LdN9CTJjaaE4IN5ZYWK0slFQYYWjZkFp9yo8qvdJ4TFHKs6hHKfD+33ocP8etQLkT2
	cMT3zYrKI2BphpTKdHQofZH4heI+I0BZb9xsT3Or/jiD4u3h2jnTkA9Y37emL9kqOu0x
	amfU2JyeGnm/R14b7RTjBkyB3Ih7vesIcs/FlRlahb33lj6QHhTp237ZOSbNh5UBDi7G
	WluaLzJD1Wg0dax6ngQK5qTD0ZScSGiYHWpFGUJT43fgBvIZbGd+8ZtsVIA4FhnVcYwu
	80jQ+JaMIPqdPbrH75xUKt2ncUm5Q3HuQL8uzksRSMTiGv1/+fqpcKoT2G1PcPxhiuDU
	uPXw==
X-Gm-Message-State: AIVw112nl8ARj+MyuR/wt0fxDPEK8qK7q7B01buj0RzdNRlnlhrJsoWv
	VUNvuQ8Y1C7cMTRT9oMitwZsHvTmOQ==
X-Received: by 10.202.198.199 with SMTP id w190mr13104747oif.93.1501507219547; 
	Mon, 31 Jul 2017 06:20:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.12.89 with HTTP; Mon, 31 Jul 2017 06:20:18 -0700 (PDT)
Received: by 10.74.12.89 with HTTP; Mon, 31 Jul 2017 06:20:18 -0700 (PDT)
In-Reply-To: <CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Mon, 31 Jul 2017 21:20:18 +0800
Message-ID: <CAByQQ_pmpHgaD8vSqV8QfxV-0Let2mC1kYVA8CCafSZJWLE0YA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Mon, 31 Jul 2017 13:20:21 -0000
Content-Type: multipart/alternative; boundary="001a1134fb2473ab4f05559ce497"

--001a1134fb2473ab4f05559ce497
Content-Type: text/plain; charset="UTF-8"

I forgot which one? How can I update?thx
https://www.yoctoproject.org/downloads/yocto-project
On Jul 31, 2017 9:17 PM, "Riko Ho" <antonius.riko@gmail.com> wrote:

> Git clone ...
> On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
>> How did you get poky?
>>
>> Ross
>>
>> On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>>> How can I see my branch?
>>> On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>>>
>>>> On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>>>>
>>>>> Is my auto make disabled with icecc ?
>>>>>
>>>>> How to make it enable ? thanks.
>>>>>
>>>>
>>>> That's just a debug message.
>>>>
>>>> > | help2man: can't get `--help' info from automake-1.15
>>>> > | Try `--no-discard-stderr' if option outputs to stderr
>>>> > | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>>>>
>>>>
>>>> That's the error your hitting.
>>>>
>>>> I think you need to update to the latest commit for the branch you're
>>>> on, there was a problem with modern perl in help2man.  What release/branch
>>>> are you using?
>>>>
>>>> Ross
>>>>
>>>
>>

--001a1134fb2473ab4f05559ce497
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I forgot which one? How can I update?thx<br>
<a href=3D"https://www.yoctoproject.org/downloads/yocto-project">https://ww=
w.yoctoproject.org/downloads/yocto-project</a></p>
<div class=3D"gmail_quote">On Jul 31, 2017 9:17 PM, &quot;Riko Ho&quot; &lt=
;<a href=3D"mailto:antonius.riko@gmail.com">antonius.riko@gmail.com</a>&gt;=
 wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p dir=3D"lt=
r">Git clone ...</p>
<div class=3D"gmail_quote">On Jul 31, 2017 9:16 PM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">How did you get poky?<div><br></div><div>Ross</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 31 July =
2017 at 14:14, Riko Ho <span dir=3D"ltr">&lt;<a href=3D"mailto:antonius.rik=
o@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">How can I see my branch?=
</p><div class=3D"m_-2527222328943836964m_-4777739250393309465HOEnZb"><div =
class=3D"m_-2527222328943836964m_-4777739250393309465h5">
<div class=3D"gmail_quote">On Jul 31, 2017 9:12 PM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">On 31 July 2017 at 03:33, Riko Ho <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">antonius.=
riko@gmail.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcol=
or=3D"#FFFFFF">
    <p>Is my auto make disabled with icecc ?</p>
    <p>How to make it enable ? thanks.<br></p></div></blockquote><div><br><=
/div><div>That&#39;s just a debug message. <br><br>&gt; | help2man: can&#39=
;t get `--help&#39; info from automake-1.15<br>&gt; | Try `--no-discard-std=
err&#39; if option outputs to stderr<br>&gt; | Makefile:3687: recipe for ta=
rget &#39;doc/automake-1.15.1&#39; failed<br><br><br>That&#39;s the error y=
our hitting.</div><div><br></div><div>I think you need to update to the lat=
est commit for the branch you&#39;re on, there was a problem with modern pe=
rl in help2man.=C2=A0 What release/branch are you using?</div><div><br></di=
v><div>Ross</div></div></div></div>
</blockquote></div>
</div></div></blockquote></div><br></div>
</blockquote></div>
</blockquote></div>

--001a1134fb2473ab4f05559ce497--
