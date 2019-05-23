Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6B7E00BAA; Thu, 23 May 2019 13:24:17 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E864E00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 13:24:16 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id a8so10984305edx.3
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 13:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/eKcwRIWpPVJUYmMKiFrFl6q5wCjFgU+nAVhrwT76rg=;
	b=IMduiC5nehkcdWuKwiTV482LJpG0R6X/KCsHBM5XsB16mJI5TeoiIIok4K36PMsxdK
	tyxA+vMVVKHpRN6LsIgex1/4wNiISxOBZwgYVUbn4d4Js5RWNdWzsvMRa95n1KEer2lO
	TVQ0Z0fmuwYuAGdOBedilaUl8gfN/Wk4KbNrsz+gjcz2NLAXxhV3i0wj8mJWNud27nCD
	rmeTckRDmvfN5MLIUGKOtTKyTfmTWgsgcli4NdCZQxVL4kuXePYLJbh0cQhncPe7liDU
	qP8WEzZmiAK1+f+dLZcQpokvj60RPnhhpahvDD8QFZ7Z8dN37Y6+k6ILHQ5xn+0nm5dE
	nIrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/eKcwRIWpPVJUYmMKiFrFl6q5wCjFgU+nAVhrwT76rg=;
	b=mYW2XZ+iymPa98olBwGaouWAwJBA8UrPNtcyq7fGCakLDyMePn15Yb9XRSZaVvr7Dv
	kHEPtNv+Yn096ErN80zdfKJdHIn2m672slEh9CUf7rXpsi2ofU7KWuUx0x++HqqoROG6
	7+mrJEkM+bD9KvefaefYMIJ1O5oF7ZJzJBA/ON4UoKhgT30l5F4F2RI9L1tJolz6M0Yd
	CqSgHEtaBDlN7zW0rdpS0mD66jeiDmQAOdTfuSs+xH5syWWM3YQnyRZI52ApwdFrsaFH
	tQ2C/ucLul9UXYEyhkTt+k9n/6ibgcSFzarpQX1qdjFI8bKWqUfWa9V37h9+SSP3XV0N
	rXtw==
X-Gm-Message-State: APjAAAXX4g7q7nEGa+L79f3Fm1BMpSKrOeIlSyjX6T2dO44LLoAr7//E
	rNcjjZ5bS9KuNXEQACuTcz3aN/Tqdac1jMZwLJZRQSDu
X-Google-Smtp-Source: APXvYqwGOWALzDaucXxAccLKjwy4dl9NI4kuBvnzWjhL+8YLjKv3qruEPD/aMzXcF9SuBthjcJuUEVwFkKpqqSqYvP0=
X-Received: by 2002:a17:906:488e:: with SMTP id
	v14mr38700956ejq.216.1558643055434; 
	Thu, 23 May 2019 13:24:15 -0700 (PDT)
MIME-Version: 1.0
References: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
	<CAFNP8Otu94ncfmc=x8D0myzqJWNp6A_O22ihY+DnO6NJLzXcZw@mail.gmail.com>
	<CANNYZj8+EyFfFroKb0_Y=AtPxmT+bATKy7ctdEkbOch3mKJt9w@mail.gmail.com>
In-Reply-To: <CANNYZj8+EyFfFroKb0_Y=AtPxmT+bATKy7ctdEkbOch3mKJt9w@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 23 May 2019 13:24:03 -0700
Message-ID: <CAFNP8Our-eoF_Vnw3tvyHkVNxCdnSrinGhsR-ZCtS15xGEcBjg@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: distrodata documentation in 2.7 Mega Manual
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
X-List-Received-Date: Thu, 23 May 2019 20:24:17 -0000
Content-Type: multipart/alternative; boundary="000000000000a6a161058993ddc5"

--000000000000a6a161058993ddc5
Content-Type: text/plain; charset="UTF-8"

Paul & Alexander,

I have updated the YP doc set for the removal of the three classes.
Changes apply to the 2.7 and "master" (2.8)
trees.  You see the effects in:

 * https://yoctoproject.org/docs/2.7/mega-manual/mega-manual.html
 * https://yoctoproject.org/docs/2.8/mega-manual/mega-manual.html

Thanks for pointing these out and for the added explanations.

Scott

On Thu, May 23, 2019 at 2:23 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Thu, 23 May 2019 at 02:22, Scott Rifenbark <srifenbark@gmail.com>
> wrote:
> >  * In dev-manual's "Using the Auto Upgrade Helper (AUH)" section -
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#gs-using-the-auto-upgrade-helper:
> Step 5 talks about making configurations in the local.conf file.  First
> thing is to enable "distrodata" by inheriting the class.  Do we have an
> equivalent for this now that the class is gone?
>
> This is no longer necessary, you can remove the step.
>
> > * in ref-manual's "do_distrodata" task section -
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-distrodata:
> Does this task disappear as well?  Or, is there an equivalent?
>
> There is no equivalent, you can remove the sectrion.
>
> > * In ref-manual's "do_checkpkg" task section -
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-checkpkg:
> This task was included as part of the distrodata.bbclass.  How do we
> address the do_checkpkg task section now?
>
> The equivalent functionality is provided by running devtool - 'devtool
> latest-version' for one recipe, 'devtool check-upgrade-status' for
> several (or all).
>
> > * In the UPSTREAM_CHECK_GETTAGREGEX variable description in the
> ref-manual glossary -
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_GITTAGREGEX:
> How do we change this?
> > * in the UPSTREAM_CHECK_REGEX variable description also in the glossary
> -
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_REGEX:
> How do we change this?
> > * in the UPSTREAM_CHECK_URI variable description also int he glossary -
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_URI:
> How do we change this?
>
> All three should refer to the equivalent replacement (see above)
> provided by devtool.
>
> Alex
>

--000000000000a6a161058993ddc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Paul &amp; Alexander, <br></div><div><br></div><div>I=
 have updated the YP doc set for the removal of the three classes.=C2=A0 Ch=
anges apply to the 2.7 and &quot;master&quot; (2.8)</div><div>trees.=C2=A0 =
You see the effects in:</div><div><br></div><div>=C2=A0* <a href=3D"https:/=
/yoctoproject.org/docs/2.7/mega-manual/mega-manual.html">https://yoctoproje=
ct.org/docs/2.7/mega-manual/mega-manual.html</a></div><div>=C2=A0* <a href=
=3D"https://yoctoproject.org/docs/2.8/mega-manual/mega-manual.html">https:/=
/yoctoproject.org/docs/2.8/mega-manual/mega-manual.html</a></div><div><br><=
/div><div>Thanks for pointing these out and for the added explanations.</di=
v><div><br></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 23, 2019 at 2:23 AM Alexan=
der Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On Thu, 23 May 2019 at 02:22, Scott Rifenbark &lt;<a href=3D"mailto:sr=
ifenbark@gmail.com" target=3D"_blank">srifenbark@gmail.com</a>&gt; wrote:<b=
r>
&gt;=C2=A0 * In dev-manual&#39;s &quot;Using the Auto Upgrade Helper (AUH)&=
quot; section - <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-manua=
l/mega-manual.html#gs-using-the-auto-upgrade-helper" rel=3D"noreferrer" tar=
get=3D"_blank">https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manua=
l.html#gs-using-the-auto-upgrade-helper</a>: Step 5 talks about making conf=
igurations in the local.conf file.=C2=A0 First thing is to enable &quot;dis=
trodata&quot; by inheriting the class.=C2=A0 Do we have an equivalent for t=
his now that the class is gone?<br>
<br>
This is no longer necessary, you can remove the step.<br>
<br>
&gt; * in ref-manual&#39;s &quot;do_distrodata&quot; task section - <a href=
=3D"https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-=
tasks-distrodata" rel=3D"noreferrer" target=3D"_blank">https://www.yoctopro=
ject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-distrodata</a>: Do=
es this task disappear as well?=C2=A0 Or, is there an equivalent?<br>
<br>
There is no equivalent, you can remove the sectrion.<br>
<br>
&gt; * In ref-manual&#39;s &quot;do_checkpkg&quot; task section - <a href=
=3D"https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-=
tasks-checkpkg" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproje=
ct.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-checkpkg</a>: This t=
ask was included as part of the distrodata.bbclass.=C2=A0 How do we address=
 the do_checkpkg task section now?<br>
<br>
The equivalent functionality is provided by running devtool - &#39;devtool<=
br>
latest-version&#39; for one recipe, &#39;devtool check-upgrade-status&#39; =
for<br>
several (or all).<br>
<br>
&gt; * In the UPSTREAM_CHECK_GETTAGREGEX variable description in the ref-ma=
nual glossary - <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-manua=
l/mega-manual.html#var-UPSTREAM_CHECK_GITTAGREGEX" rel=3D"noreferrer" targe=
t=3D"_blank">https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.=
html#var-UPSTREAM_CHECK_GITTAGREGEX</a>: How do we change this?<br>
&gt; * in the UPSTREAM_CHECK_REGEX variable description also in the glossar=
y - <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manua=
l.html#var-UPSTREAM_CHECK_REGEX" rel=3D"noreferrer" target=3D"_blank">https=
://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_=
CHECK_REGEX</a>: How do we change this?<br>
&gt; * in the UPSTREAM_CHECK_URI variable description also int he glossary =
- <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.=
html#var-UPSTREAM_CHECK_URI" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHEC=
K_URI</a>: How do we change this?<br>
<br>
All three should refer to the equivalent replacement (see above)<br>
provided by devtool.<br>
<br>
Alex<br>
</blockquote></div>

--000000000000a6a161058993ddc5--
