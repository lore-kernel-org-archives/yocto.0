Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 465B5E00D94; Thu, 11 Jan 2018 18:27:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (parkch98[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4DEE008FB
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 18:27:09 -0800 (PST)
Received: by mail-wr0-f174.google.com with SMTP id p6so4051603wrd.0
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 18:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kinE+UwB19yZt6aFzuTz8k8fij2jzU47ndzsvEru4kg=;
	b=FheEiY6IgeUcoAtg4KjQLUMw2woQAFVNDJDI27tPiMyEfM92+teMqjeEx5hd2I0CII
	/k83YzkIK/p9pxnyFOwabmbHmwu+bLMzJblxoIEPzJj7aLl1swa1m0nzRei2nMuACX+1
	QzzshYL/dH49xhDoZc8YLJ4hnY0KdR5HgybmXgbbLa4Wfo2jFgFS5HargXTpwMNGt1wP
	LJKbZJ+3c38uGbLTQyFa1AYdCluCxP0m6zO0xFBQg5PzgjBqqNvf/KlUeLYmcq0OYu9i
	rQlIpOoUzPvc/VpdxtlQwV/3qR05TemQFE02TJNFeQnxUAQaC3SQ9aZtMHsIow2aST2J
	DdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kinE+UwB19yZt6aFzuTz8k8fij2jzU47ndzsvEru4kg=;
	b=RGyfqYthzwbcdxWHDrryIWrRp7GwYOFs3AwyVPOT8haSiKoADN3+250rK82YfViXh+
	L2/c7czaliakNXCtfPEVySHnTPf9A0eChctnS9fvEtbP9gGvFNnituNOuXKZsgj+0tqn
	ZlCPmtItK6Q7CN2lzkSGRL2x31ORgIJKSEm5l7jLhJAqguyK2xCUDFcxzoYZe7XvJy8M
	H2PivRjix0zTAszMJrpXlCLsI/Rvj1CxYywK0SZTfZNc8K2R1l3/Rql/6iL9YcPWfwHw
	YzO6eh4sCms5j1Rvj8m+qSX7KV+mD/2VCVSQ2oGh3zaDhYf2shp4Ov8PJmXT9LGhmz7L
	CAbQ==
X-Gm-Message-State: AKGB3mK4J9tE1iEc6atT3UMrMof0ODQ8s5jozP6h680xFhDytSIq0PlN
	MZR64thqK9jjflLqNxdE5r7SAZ/joBcLWOVyH88=
X-Google-Smtp-Source: ACJfBovOAXCpD6Zbjs7zutvKFSb2lT8wjyPBH18d7qkJfAsL2pmgZfrCOm+YsXfLHl0apiliS7qqyz/JMgmhJ4Mg6Kc=
X-Received: by 10.223.197.206 with SMTP id v14mr23732174wrg.6.1515724028982;
	Thu, 11 Jan 2018 18:27:08 -0800 (PST)
MIME-Version: 1.0
References: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
	<952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
In-Reply-To: <952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
From: Chanho Park <parkch98@gmail.com>
Date: Fri, 12 Jan 2018 02:26:58 +0000
Message-ID: <CAPTzV17QSxoOtVU3fTdVpppJcRrcACVT4uDro_rUH6PP+B34-g@mail.gmail.com>
To: Philippe Coval <philippe.coval@osg.samsung.com>
Cc: "iotivity-dev@lists.iotivity.org" <iotivity-dev@lists.iotivity.org>,
	yocto@yoctoproject.org, "Maloor, Kishen" <kishen.maloor@intel.com>
Subject: Re: [meta-oic] Question about Iotivity 1.3.0/1 and fixes status
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
X-List-Received-Date: Fri, 12 Jan 2018 02:27:11 -0000
Content-Type: multipart/alternative; boundary="089e0824352c533bd605628b00d1"

--089e0824352c533bd605628b00d1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Philippe,

On Thu, 11 Jan 2018 at 7:11 PM Philippe Coval <
philippe.coval@osg.samsung.com> wrote:

>
> On 11/01/18 02:30, Chanho Park wrote:
> > Hi Philippe,
> >
> Hi Chanho Park, HNY to you


Wish you the same.


> > I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes
> > in your github tree[1].
>
> Yes they are still under review, did you test them ?
>
> Maybe I should resend them, now.


Okay. I=E2=80=99ll test them when you resend them. Please CCing me at that =
time.


>
> > I wonder why you don=E2=80=99t post them in the meta-oic.
>
> Well I shared patches to list couple of time:
>
> https://lists.yoctoproject.org/pipermail/yocto/2017-June/036896.html
> https://lists.yoctoproject.org/pipermail/yocto/2017-September/037829.html
> https://lists.yoctoproject.org/pipermail/yocto/2017-December/039355.html
>
> > Do you have a plan to upstream them?
> I need reviewer to approve and commit them (@Kishen ?)
> or may I do it by my own
> since  nobody objected on previous changes ?
>
> Side note, I also simplified a recipe for iotivity master branch
> (it now relies on scons install like tizen, debian etc)
>
> so if it helps I will update devel branch and this page soon:
> https://wiki.iotivity.org/wiki/yocto
>

Okay. I look forward to your results :)
Thanks.


>
> > Best Regards,
> BR, Keep in touch your feedback is valuable.


Sure. I=E2=80=99ll keep in touch you with my feedback.

Best Regards,
Chanho Park

--089e0824352c533bd605628b00d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hi Philippe,</div><br><div class=3D"gmail_quote"><di=
v dir=3D"auto">On Thu, 11 Jan 2018 at 7:11 PM Philippe Coval &lt;<a href=3D=
"mailto:philippe.coval@osg.samsung.com">philippe.coval@osg.samsung.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
On 11/01/18 02:30, Chanho Park wrote:<br>
&gt; Hi Philippe,<br>
&gt;<br>
Hi Chanho Park, HNY to you</blockquote><div dir=3D"auto"><br></div><div dir=
=3D"auto">Wish you the same.</div><div dir=3D"auto"><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><br>
&gt; I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes<b=
r>
&gt; in your github tree[1].<br>
<br>
Yes they are still under review, did you test them ?<br>
<br>
Maybe I should resend them, now.</blockquote><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Okay. I=E2=80=99ll test them when you resend them. Please C=
Cing me at that time.</div><div dir=3D"auto"><br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><br>
<br>
&gt; I wonder why you don=E2=80=99t post them in the meta-oic.<br>
<br>
Well I shared patches to list couple of time:<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-June/036896.=
html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/p=
ipermail/yocto/2017-June/036896.html</a><br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-September/03=
7829.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/pipermail/yocto/2017-September/037829.html</a><br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-December/039=
355.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/pipermail/yocto/2017-December/039355.html</a><br>
<br>
&gt; Do you have a plan to upstream them?<br>
I need reviewer to approve and commit them (@Kishen ?)<br>
or may I do it by my own<br>
since=C2=A0 nobody objected on previous changes ?<br>
<br>
Side note, I also simplified a recipe for iotivity master branch<br>
(it now relies on scons install like tizen, debian etc)<br>
<br>
so if it helps I will update devel branch and this page soon:<br>
<a href=3D"https://wiki.iotivity.org/wiki/yocto" rel=3D"noreferrer" target=
=3D"_blank">https://wiki.iotivity.org/wiki/yocto</a><br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Okay. I look for=
ward to your results :)</div><div dir=3D"auto">Thanks.</div><div dir=3D"aut=
o"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><br>
<br>
&gt; Best Regards,<br>
BR, Keep in touch your feedback is valuable.</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Su=
re. I=E2=80=99ll keep in touch you with my feedback.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Best Regards,</div><div dir=3D"auto">Chanho Pa=
rk</div></div></div>

--089e0824352c533bd605628b00d1--
