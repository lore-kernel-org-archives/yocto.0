Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B72EE007AD; Thu, 24 May 2018 09:08:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7524CE006F1
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 09:08:21 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id i12-v6so4140305wrc.4
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 09:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WC8lDSzvO1vNl4ZZQXNeoMnbAuZnf24VIjt4dfM/aLU=;
	b=V67BFVTu2Q78BKtQEpmccIcsCl48zk7NJb+zG/yUui5my3B1LA4deCQkV3WXLRn09k
	0JxjDcKQGFuiNnS0ZwSPTFTR3roTqo9U9dZGNmE4JpLg42DnD79vVldpc+XdTqSNncXE
	yLR+mwo8z2FaDU4RCUaCLzJZafp88KmmuloLnnXZmRDygTaBBzTVulxD8aO37NFro2dt
	vlktlB62odyrhdQNvvjyoWApaTqGXIcxs1uNEdjmCDOhWhgjOdvfJrv/fwZn02cfrbTk
	38boADyDnnwEMPoyelgGM7jIUsVnAuuQJq2DBycxSO1HpkROIi4SCfv/IYSMMks+iJnN
	CEAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WC8lDSzvO1vNl4ZZQXNeoMnbAuZnf24VIjt4dfM/aLU=;
	b=U9j/jcgZz/s2yMInudNKmdV7GX2ABPszqAF079fUL9kY831us33B+VC1o7869429wZ
	eezYDmAFQsIhG5jox1Lpwpyhphtppxzx+5uX/Ej9+3NsKP/Pr9wjxKBdsj+1UJhw90VV
	YGEnJscGGjPy5BSzS2VdajPf3zjWlh3RtV5d0jrK12lSb/VYajUPMPL6F6JkbzYeIdLn
	k3DDwGm0024IFuIwSXN75LLp9t24PBj1pEHQsX1fpqrOIvUUTcbrKn7kObHnOFbFQhGx
	x6TDuaivF+ZosHMRY4dZnNNBifPlDBColGjffICLtA6sNe8E2T8Am0sr6pveXnCsCN8F
	h1kw==
X-Gm-Message-State: ALKqPwc70itVAJZA5x31x374oJiqeWXcvkpnDeiu9m301NwEy1/Gdo1R
	gfL78YhBHlYeQ36sdiitGhAk95TIkRCf9D4DksRpYQ==
X-Google-Smtp-Source: AB8JxZrLmS2cXD5ZnJCLCiUGGlYauoIV8vEn/zXf0pnhf+Rn78rvbbZZoPnkF1zoU2tBbpwWHwhqYE4WzopkL9TDYYE=
X-Received: by 2002:a19:a70f:: with SMTP id
	q15-v6mr4779924lfe.39.1527178100344; 
	Thu, 24 May 2018 09:08:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:cb07:0:0:0:0:0 with HTTP; Thu, 24 May 2018 09:08:19
	-0700 (PDT)
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7310795@fmsmsx111.amr.corp.intel.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7310795@fmsmsx111.amr.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 24 May 2018 12:08:19 -0400
Message-ID: <CAHUNapT0Rs9d74wm=WKxS1RrQVBC3oXjngWfxPBpqFx4beKs=Q@mail.gmail.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minites: Yocto Project Bug Triage
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
X-List-Received-Date: Thu, 24 May 2018 16:08:22 -0000
Content-Type: multipart/alternative; boundary="0000000000002e0e8e056cf5dcb6"

--0000000000002e0e8e056cf5dcb6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 24, 2018 at 11:01 AM, Jolley, Stephen K <
stephen.k.jolley@intel.com> wrote:

> AR: Stephen =E2=80=93 Mention IRC channel and links on IRC and meeting in=
vite.
>

Also: create calendar of Yocto meetings (google calendar?)

--0000000000002e0e8e056cf5dcb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, May 24, 2018 at 11:01 AM, Jolley, Stephen K <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:stephen.k.jolley@intel.com" target=3D"_blank">stephen.k.jolley=
@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">






<div><font size=3D"3" face=3D"Times New Roman"><span style=3D"font-size:12p=
t"><div><font size=3D"2" face=3D"Calibri" color=3D"#1F497D"><span style=3D"=
font-size:11pt">AR: Stephen =E2=80=93 Mention IRC channel and links on IRC =
and meeting invite.</span></font></div></span></font><font size=3D"3" face=
=3D"Times New Roman"><span style=3D"font-size:12pt"><a name=3D"m_1992351526=
593856378__MailEndCompose"></a></span></font><font size=3D"3" face=3D"Times=
 New Roman"><span style=3D"font-size:12pt">
</span></font></div></blockquote></div><br></div><div class=3D"gmail_extra"=
>Also: create calendar of Yocto meetings (google calendar?)<br></div></div>

--0000000000002e0e8e056cf5dcb6--
