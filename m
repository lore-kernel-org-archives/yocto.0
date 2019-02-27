Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A210E00CEE; Wed, 27 Feb 2019 12:16:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83E90E0097C
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 12:16:13 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id b20so15007125edw.11
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 12:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YLBK8qxL+92pF6jEmznBvvgwu6ZyyS3/qfnTYWO5VDM=;
	b=UDG2sRlygeP0jxua1WaokARB48EgacRK9H6FTERLqQlq3Uzh5UI6MY9J/wTRLLMTWR
	TkKO0co4jxYpEfrZyLvrTsBRZfnW7MpfmLi159nHvxSb+YL/DXDtEc/VC4zAJFJyFUai
	n6AagqKhdVgtvpiFGOSrYp/HtLtz3eh8KfBt9DToQq1voBQrCFgl/JP0/wKAb7ho3Jhe
	PKsSRrI9xVOcuHp+RCmDQuZxBbkaoLmrShVOuyOFFA1nQJHmh5nstYHbsI+9FoqNt13X
	o6Jcn5DRh37HnYOs7GXS1uwTwA1i1NypA5w/6Le47VqNbfBwSX41NeButZx1qkYE82/E
	1LVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YLBK8qxL+92pF6jEmznBvvgwu6ZyyS3/qfnTYWO5VDM=;
	b=lbhrWGtg0GGqS55jNU0c4sahoj6yAZwC/wBmxjP1rUHcyGghkaQa9APZ1EhuehR/UK
	jgiIZvcz3a632AgdBmtO2J+vRTNfkz3HTQUlnCSGgLxmrL/E1D5WiLfAHg8/VqzpGtHa
	0Pj4O68YGXT+S0TSKfTP2ALumghMV+TJOjRTi1/z9G9WyJdAXY0s9OMtPFYh3YOu2nJK
	LSGeeMr5YV1ZwWZ8GB0nH/jQW7jL/JfR3BHq108cC2wFNNM+AGhzrqY2DVfGqMBYYwB1
	aae7IRxF2vN3/pq73KaZSJ0Lxr03jTa5VkMsRAtf4LrO18s2aHA8+xhlNuUsA/X28C4Z
	nUsg==
X-Gm-Message-State: AHQUAubYoxTkTYsS6lxHI34jKgVKTGUVQDi2b6PKrVvU9/qY9zHoQqpT
	SrP3MVEaLdPUAFF5r4LQxcO1r/knMlejlZ5ebVLJGA==
X-Google-Smtp-Source: AHgI3IYcxiW1w78Y4jpjx4KcRbW42W/J1hnsuVyoH31mlEPwg5NKZbcSW3OZq+LHMB5ipR4368ExlzQ4HqjQ4vT8ZCc=
X-Received: by 2002:a17:906:3719:: with SMTP id
	d25mr2747470ejc.142.1551298572496; 
	Wed, 27 Feb 2019 12:16:12 -0800 (PST)
MIME-Version: 1.0
References: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
In-Reply-To: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 27 Feb 2019 12:16:01 -0800
Message-ID: <CAFNP8OtVN5tjv3xV57q+kjiewtH24tdm3HCqHL+dMKayNcKaMg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Information about non-traditional uses of the Yocto Project and OpenEmbedded
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
X-List-Received-Date: Wed, 27 Feb 2019 20:16:15 -0000
Content-Type: multipart/alternative; boundary="0000000000005ab5a60582e5d864"

--0000000000005ab5a60582e5d864
Content-Type: text/plain; charset="UTF-8"

Sounds like good potential for a section or chapter in the user docs.

Scott

On Wed, Feb 27, 2019 at 12:01 PM Philip Balister <philip@balister.org>
wrote:

> During the last OpenEmbedded developer meeting, it became clear that
> people are using the Yocto project/OpenEmbedded in spaces outside what
> we think of as traditional embedded. Lieu Ta is working on a
> presentation for the Linux Foundation Leadership Summit and we would
> like to collect as many "unusual" applications are possible from
> companies we can publicly acknowledge. Unusual is edge, containers,
> desktop, etc. Or even really interesting embedded applications :)
>
> Please drop me an email (off list is fine) with enough info for us to
> add you to a slide and acknowledge your work.
>
> Thanks,
>
> Philip
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

--0000000000005ab5a60582e5d864
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sounds like good potential for a section or chapter i=
n the user docs.</div><div><br></div><div>Scott<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 27, 20=
19 at 12:01 PM Philip Balister &lt;<a href=3D"mailto:philip@balister.org">p=
hilip@balister.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">During the last OpenEmbedded developer meeting, it became=
 clear that<br>
people are using the Yocto project/OpenEmbedded in spaces outside what<br>
we think of as traditional embedded. Lieu Ta is working on a<br>
presentation for the Linux Foundation Leadership Summit and we would<br>
like to collect as many &quot;unusual&quot; applications are possible from<=
br>
companies we can publicly acknowledge. Unusual is edge, containers,<br>
desktop, etc. Or even really interesting embedded applications :)<br>
<br>
Please drop me an email (off list is fine) with enough info for us to<br>
add you to a slide and acknowledge your work.<br>
<br>
Thanks,<br>
<br>
Philip<br>
-- <br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org" target=3D"_blan=
k">Openembedded-core@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
</blockquote></div>

--0000000000005ab5a60582e5d864--
