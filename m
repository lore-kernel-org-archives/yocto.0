Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2F19E00A1A; Thu, 15 Nov 2018 14:46:41 -0800 (PST)
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
	*      [209.85.208.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C7A4E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 14:46:40 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id b14so15558003edt.6
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 14:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZJjOiaMmf/TcDyuXhjSuZP8QI6CXsJ+DBEtqQCXgVUI=;
	b=kqjEcbOGduhLbgcSGep75hbnw5gt1ysg5CZ+SrzYhN2VDAmeLApHVje6olI1tpUIKz
	+oAa2S12InSJ28dMY8Htom/39b04negZ6yckQuDMLO2qOLmnZ6yVFm/cz8PtkRQJC4aH
	bGmIV+t6AkIWNsJAyH+gmnT8XG1Cq//1VItzBWkthTusR8UurM3KTo4GA1Io9FenR0un
	qKUHgfwntGhuszhyjHroWjtuFt2ODdDrdVfhh5tUQJJa+CSKbxdotWQpITCUJZQSFXic
	lBstby18NvgLJYJCIH3lEbF94+6oVf6/vxMycDtO+wPwyigWmz4x0VOF8Bcj176ie6kM
	TrOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZJjOiaMmf/TcDyuXhjSuZP8QI6CXsJ+DBEtqQCXgVUI=;
	b=pQrO0jgXqhIf0ciw8yOrtvFqVgNwCCJ8OCM75JPVpZoAcWIjDoFgaL/E1Ji7W64dar
	aGeaqbLcF2Fghji0alpBS424u8aIDXsBNrndQw+94STjr2RSizNuZxxOsuB1cTly9pSx
	nCkijv5XB3XGPNrXnsTuo5PMPuvx6JxYxHz6e4IWzZhyTp34rsqg3cAcRIr4Kd2jzX2S
	gvOvNB2zCz8ulqc1OZWpekGypgpIuMJWjf/5M4lh5ZZ/MPKYeTkyO7gPHtRqsjivHAab
	Mm+ImaLMWIT2le4+yLAvY59k5NRDuUNXKb3ml0nPvMKszFE3sB9jjfI7QGN5Nr/sZDJ0
	PycQ==
X-Gm-Message-State: AGRZ1gINIn+6L+zHSfdBwMS6HZzjwAjyfd5QjNJ5lVEaoQ8FfDTTdsgC
	7a6w2i4jST8SC91ISYC+y4CJiEnlXVfcihDBhfI=
X-Google-Smtp-Source: AJdET5cNiqtvnVA5ZJZk8iTwrLj97rkmjidvSZJ07YF0SPetMoGlWOHfknMbqZrfn/A/zedqsh3iyLwsg09SQ6gEQDw=
X-Received: by 2002:a50:a2e7:: with SMTP id
	94-v6mr7505322edm.221.1542321999327; 
	Thu, 15 Nov 2018 14:46:39 -0800 (PST)
MIME-Version: 1.0
References: <CAPoiz9z_LvL=ZwH6meNSAR1GbXgtjsdj2f3C4F3c2dTu7Q3W-w@mail.gmail.com>
	<07bf3e7d-7086-8ba2-111b-0d8f8db5fc8c@windriver.com>
In-Reply-To: <07bf3e7d-7086-8ba2-111b-0d8f8db5fc8c@windriver.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 15 Nov 2018 14:46:27 -0800
Message-ID: <CAFNP8OsXCCNkqHq-qsb3QPaScA_zqZYt2T4STE0tSqtpoHAODw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QEMU kernel defconfigs
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
X-List-Received-Date: Thu, 15 Nov 2018 22:46:41 -0000
Content-Type: multipart/alternative; boundary="000000000000e63988057abbd2b9"

--000000000000e63988057abbd2b9
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 12:08 PM Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 2018-11-15 12:29 p.m., Jon Mason wrote:
> > I'm having difficulty determining where the kernel defconfigs are
> > defined and located.  I'm specifically looking for the qemuarm and
> > qemuarm64 kernel defconfigs.  I've looked at the relevant
> > documentation,
> https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
> > and
> > no SRC_URI with defconfig or KBUILD_DEFCONFIG_KMACHINE defined in
> > meta/recipes-kernel/linux/linux-yocto_4.18.bb
> >
> > What am I missing?
>
> The reference machines with linux-yocto don't use defconfigs at all.
> They are fully assembled from the configuration fragments in the
> kernel-cache repo.
>
> You'll see the location of the kernel-cache, and the routines that
> gather up the fragments in the linux-yocto* recipes.
>
> The kernel development manual has that detail as well:
>
>
> https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#kernel-dev-advanced
>
> Bruce
>
> >
> > Also, "A defconfig file is simply a .config renamed to "defconfig"."
> > is not correct.  A properly created defconfig is created by `make
> > savedefconfig` and is a minimal file which only has the delta between
> > the desired config and defaults from the Kconfig files.
> >
> https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#creating-a-defconfig-file
> >
> > Thanks,
> > Jon
>

Jon - see
https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#creating-a-defconfig-file
for some re-phrasing.

>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e63988057abbd2b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Thu, Nov 15, 2018 at 12:08 PM Bruce Ashfield &lt;<a href=3D"m=
ailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2018-11-=
15 12:29 p.m., Jon Mason wrote:<br>
&gt; I&#39;m having difficulty determining where the kernel defconfigs are<=
br>
&gt; defined and located.=C2=A0 I&#39;m specifically looking for the qemuar=
m and<br>
&gt; qemuarm64 kernel defconfigs.=C2=A0 I&#39;ve looked at the relevant<br>
&gt; documentation, <a href=3D"https://www.yoctoproject.org/docs/2.5.1/kern=
el-dev/kernel-dev.html#using-an-in-tree-defconfig-file" rel=3D"noreferrer" =
target=3D"_blank">https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel=
-dev.html#using-an-in-tree-defconfig-file</a><br>
&gt; and<br>
&gt; no SRC_URI with defconfig or KBUILD_DEFCONFIG_KMACHINE defined in<br>
&gt; meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_4.18.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-yocto_4.18.bb</a><br>
&gt; <br>
&gt; What am I missing?<br>
<br>
The reference machines with linux-yocto don&#39;t use defconfigs at all.<br=
>
They are fully assembled from the configuration fragments in the<br>
kernel-cache repo.<br>
<br>
You&#39;ll see the location of the kernel-cache, and the routines that<br>
gather up the fragments in the linux-yocto* recipes.<br>
<br>
The kernel development manual has that detail as well:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.ht=
ml#kernel-dev-advanced" rel=3D"noreferrer" target=3D"_blank">https://www.yo=
ctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#kernel-dev-advanced</a=
><br>
<br>
Bruce<br>
<br>
&gt; <br>
&gt; Also, &quot;A defconfig file is simply a .config renamed to &quot;defc=
onfig&quot;.&quot;<br>
&gt; is not correct.=C2=A0 A properly created defconfig is created by `make=
<br>
&gt; savedefconfig` and is a minimal file which only has the delta between<=
br>
&gt; the desired config and defaults from the Kconfig files.<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-d=
ev.html#creating-a-defconfig-file" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#creating-a-=
defconfig-file</a><br>
&gt; <br>
&gt; Thanks,<br>
&gt; Jon<br></blockquote><div><br></div><div>Jon - see <a href=3D"https://w=
ww.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#creating-a-defcon=
fig-file">https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.htm=
l#creating-a-defconfig-file</a> for some re-phrasing.<br></div><div><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; <br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--000000000000e63988057abbd2b9--
