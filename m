Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0593E00BBC; Mon, 21 Aug 2017 07:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AD88E00970
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 07:51:23 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id g131so157284010oic.3
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 07:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=woyc9xyAUu6Fxs9kr08UR3HFynYUHyOdzYxOylO3orE=;
	b=iQCBdLgUxYUvC+bDRaxy4kud5oVjLtcnvrJ5auQeqGTvvLogaqNaeELdFtbHshrp81
	/XiDxU5AvVJz/0lymdg8y9bK6V/Q0Q2XEqia8pLmMIwincoK+84Dl/G2SQ4OgxI+cQFX
	zRu+sBqJ6jwZc/50GNGh3gBYBuhp3VXaJf4kg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=woyc9xyAUu6Fxs9kr08UR3HFynYUHyOdzYxOylO3orE=;
	b=nT91uH2JQ2+VqV6Bu9/WSfMYKPGwN4igNgAbA2SwuaisO+EotYYescir0NSqiHBgK7
	FHrGhbb1wJ/6vaP02kn77Cd6cyl4MguNOSbavYSJerfbDE8/JKeZFSo6Ne7Au6q4bJd4
	WDBBmAHKumrgtyq8+AsUBoeEJqzvzLCeObnqWlM20ftKZLCJSOqwI6owu/I+AVTRJjjQ
	D+E0r5P6mlZDK+/HRqPG9aFO9YXTF7Vo0LTXQhcPuX73XevHgeUxfMompY6Hf3vHgIH+
	1e0IbKWJahASqIEr2jt8sixqHJrF7722H+KhWPTWgjZr+QjhMnOxIvVt/pNkaQaXJsLQ
	JpUg==
X-Gm-Message-State: AHYfb5gwYM0YsFAdXbhRwHSyX8vPrbIvF8hBvSpDsid8of3kADzMNmSW
	AGYgOU0HYxTv2Bb1/HVu/xoFh85TRlxj
X-Received: by 10.202.69.85 with SMTP id s82mr18703064oia.308.1503327083062;
	Mon, 21 Aug 2017 07:51:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.117.90 with HTTP; Mon, 21 Aug 2017 07:51:22 -0700 (PDT)
In-Reply-To: <CAJ86T=XJfe_AFQ9MwRCZfMG6cZP9U-gx4WrqTUzk9Bs8YcQD2A@mail.gmail.com>
References: <CAP3gWc9wu0_86_QjKQOyKXXOc-5pD4H61sU2i_WMY2=rooCT6g@mail.gmail.com>
	<CAJ86T=XJfe_AFQ9MwRCZfMG6cZP9U-gx4WrqTUzk9Bs8YcQD2A@mail.gmail.com>
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Mon, 21 Aug 2017 10:51:22 -0400
Message-ID: <CAP3gWc_C3PpHvvuDj8V54LsmXrOTbCup-KxwGgYQgqPuKM_L8A@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>, opensource@keylevel.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Predictable network interface names without systemd?
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
X-List-Received-Date: Mon, 21 Aug 2017 14:51:24 -0000
Content-Type: multipart/alternative; boundary="001a113dc034c4a8a30557449c2f"

--001a113dc034c4a8a30557449c2f
Content-Type: text/plain; charset="UTF-8"

Wow, thanks Chris and Andre!

I'm just getting to play around with this, but Andre's trick seems to have
worked exactly like I was hoping for.  I ended up just adding a bbappend
that removes the file touched in the line of the eudev recipe Andre
referenced.

Thanks again,
Aaron

On Fri, Aug 18, 2017 at 4:59 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Aug 18, 2017 at 9:37 AM, Aaron Schwartz
> <aaron.schwartz@logicsupply.com> wrote:
> > Does anybody here know of a way to get predictable network interface
> names
> > without systemd?
>
> If you are using eudev, then try commenting out the line below "Use
> classic network interface naming scheme" in the eudev recipe.
>
> > I realize I could write a script to do it myself, but I was hoping
> there's
> > an easier solution that's ready to go (or close to it).
> >
> > Thanks in advance!
> > Aaron
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a113dc034c4a8a30557449c2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Wow, thanks Chris and Andre!<div><br></div><div>I&#39;m ju=
st getting to play around with this, but Andre&#39;s trick seems to have wo=
rked exactly like I was hoping for.=C2=A0 I ended up just adding a bbappend=
 that removes the file touched in the line of the eudev recipe Andre refere=
nced.</div><div><br></div><div>Thanks again,</div><div>Aaron</div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Aug 18, 2017 at 4:=
59 PM, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmai=
l.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><span class=3D"">On Fri, Aug 18, 2017 at 9:37 AM,=
 Aaron Schwartz<br>
&lt;<a href=3D"mailto:aaron.schwartz@logicsupply.com">aaron.schwartz@logics=
upply.<wbr>com</a>&gt; wrote:<br>
&gt; Does anybody here know of a way to get predictable network interface n=
ames<br>
&gt; without systemd?<br>
<br>
</span>If you are using eudev, then try commenting out the line below &quot=
;Use<br>
classic network interface naming scheme&quot; in the eudev recipe.<br>
<span class=3D"im HOEnZb"><br>
&gt; I realize I could write a script to do it myself, but I was hoping the=
re&#39;s<br>
&gt; an easier solution that&#39;s ready to go (or close to it).<br>
&gt;<br>
&gt; Thanks in advance!<br>
&gt; Aaron<br>
&gt;<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;</div></div></blockquote></div>
</div></div>

--001a113dc034c4a8a30557449c2f--
