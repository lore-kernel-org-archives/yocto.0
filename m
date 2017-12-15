Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1E1EE00D19; Fri, 15 Dec 2017 08:08:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA11E00D41
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 08:08:21 -0800 (PST)
Received: by mail-wr0-f178.google.com with SMTP id o2so8470479wro.5
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 08:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/GlH8nKIF1uzICka1j2Gjk0QL51L5ZBddGCCPK42WWI=;
	b=e2gm6j4A7vqBi2nKh1CMTcU7aUvMMwLOcMjUfbqEoQ/OVfsKQoZsa9JS+M1WY3peEl
	t42+kTkFc/kks0ptIzZ/Ju6MHmZH8BmTuDdF2nz/SInM7rbw0JUu4NQyzR6Tt3S4f5Tg
	dosS/eEaXlwNuP4+qCJKiFfO3wKYZR/Hl4DOpyTrlDvmFj6T/o3GzDAkbfC7kXgbEZL3
	vIiJtWW3lI5mVZ1qk5e8ugus2nYoePH+RwQr0/gR0eEmxzAPx9GYrNVgjJ3Tz6TU8gMU
	p337ErfZbiIa2utKKAniAwtA3jzyZ67fg2Yo7Q3h9pORLZ4vjg2v2b9mcLso4OwMnpS1
	UibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/GlH8nKIF1uzICka1j2Gjk0QL51L5ZBddGCCPK42WWI=;
	b=sj6PaX/cLIgtfdq/blFr1vY2wUBsccnfhmVuaK68A60teaDdCYU7w3ekl93/fWIzmn
	EigAiBChdplCtp1sPexmxqaXM0iOTQ22EnxjFi+b/CFXyfRdlcHV5BP3oNXWU1D0a5Uk
	IooO2Ab6xgLtkqYa4G9fRzyPbC35aVtOglOwcSsoldER9F2SAxU7W0mAJzHjOvtTD5TV
	XvGMR4hTo5nBoJ2bCnc7vITsLHnQZT7UTEY4x8irQ4xQ/ZEt2QDbYuqQbT1/8benGiEZ
	JTvqUBEaj2L7QoLLOdu46bYAVBCm5EW4q+CjlcKtN/I2DS87c9S5lv8awEw7PDHc1g4Q
	CryA==
X-Gm-Message-State: AKGB3mKZwwttDiqXTKG8niFPyK1i86FF6290zrjKvDpeeJSiDmj/VOYQ
	JSj8XKAl3J8Mba44c5yNdvFTVElw3qrdLp4th+E=
X-Google-Smtp-Source: ACJfBovVuhuMp2DkxBSYeWli8QHVsbvWQguBM3ks6CX4bFSfVHr9IM992Ht9Oj+eqyzLRxkHXpEx9C2AcOr5WcBf0tc=
X-Received: by 10.223.153.151 with SMTP id y23mr2612986wrb.130.1513354100353; 
	Fri, 15 Dec 2017 08:08:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Fri, 15 Dec 2017 08:08:19 -0800 (PST)
In-Reply-To: <1513349714.15290.36.camel@genivi.org>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
	<1513343351.15290.25.camel@genivi.org>
	<CAF3SDA7qxvPZvLh6-JRRZpEAncb7ywmw2-ULpskveYXFMZn+hw@mail.gmail.com>
	<1513349714.15290.36.camel@genivi.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 15 Dec 2017 17:08:19 +0100
Message-ID: <CAGAf8LyvZhOzFQg-FC_2CFS42CD3FYhpJcjiTqnqDOfJSHTTfg@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Fri, 15 Dec 2017 16:08:23 -0000
Content-Type: multipart/alternative; boundary="f403045f54b4922e1b056063351c"

--f403045f54b4922e1b056063351c
Content-Type: text/plain; charset="UTF-8"

> I just reacted to Zoran's suggestion, with what I find to at least be a
better alternative for controlling the build host.

Gunnar,

You (probably) did not read Martin's (Jansa) comment on my initial, and my
reply. I already reverted my decision on
downgrading Fedora and other distros.

Zoran

On Fri, Dec 15, 2017 at 3:55 PM, Gunnar Andersson <gandersson@genivi.org>
wrote:

> On Fri, 2017-12-15 at 12:50 -0200, Daniel. wrote:
> > As I told before, by pass this is a simple matter of running devshell,
> > creating the folder and running running the build again,
> >
> > Paul ask me for more information and so I did, I'll remove that
> duplicated
> > layer and fire `bitbake -fc cleanall linux-raspberry && bitbake linux-
> > rapsberry` again, if I hit this I may try some digging. I don't think
> this
> > has to do with Fedora version, anyway, sooner or latter this version will
> > be tested, so this same error may arise, and at that time we'll be doing
> > the same questions, so, why to wait?
>
> Agreed!  It would seem strange if it's a host problem, and even if it were,
> it's better to get to the bottom of it, so that the latest popular distros
> work as intended.  I just reacted to Zoran's suggestion, with what I find
> to
> at least be a better alternative for controlling the build host.
>
> Good luck!
>
> - Gunnar
>
> >
> > Regards,
>
>
>

--f403045f54b4922e1b056063351c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; I just reacted to Zo=
ran&#39;s suggestion, with what I find to=C2=A0</span><span style=3D"font-s=
ize:12.8px">at least be a better alternative for controlling the build host=
.</span><br><div><span style=3D"font-size:12.8px"><br></span></div><div><sp=
an style=3D"font-size:12.8px">Gunnar,</span></div><div><span style=3D"font-=
size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">You (pr=
obably) did not read Martin&#39;s (Jansa) comment on my initial, and my rep=
ly. I already reverted my decision on</span></div><div><span style=3D"font-=
size:12.8px">downgrading Fedora and other distros.</span></div><div><span s=
tyle=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12=
.8px">Zoran</span></div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Fri, Dec 15, 2017 at 3:55 PM, Gunnar Andersson <span dir=3D=
"ltr">&lt;<a href=3D"mailto:gandersson@genivi.org" target=3D"_blank">gander=
sson@genivi.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><sp=
an class=3D"">On Fri, 2017-12-15 at 12:50 -0200, Daniel. wrote:<br>
&gt; As I told before, by pass this is a simple matter of running devshell,=
<br>
&gt; creating the folder and running running the build again,<br>
&gt;<br>
&gt; Paul ask me for more information and so I did, I&#39;ll remove that du=
plicated<br>
&gt; layer and fire `bitbake -fc cleanall linux-raspberry &amp;&amp; bitbak=
e linux-<br>
&gt; rapsberry` again, if I hit this I may try some digging. I don&#39;t th=
ink this<br>
&gt; has to do with Fedora version, anyway, sooner or latter this version w=
ill<br>
&gt; be tested, so this same error may arise, and at that time we&#39;ll be=
 doing<br>
&gt; the same questions, so, why to wait?=C2=A0<br>
<br>
</span>Agreed!=C2=A0 It would seem strange if it&#39;s a host problem, and =
even if it were,<br>
it&#39;s better to get to the bottom of it, so that the latest popular dist=
ros<br>
work as intended.=C2=A0 I just reacted to Zoran&#39;s suggestion, with what=
 I find to<br>
at least be a better alternative for controlling the build host.<br>
<br>
Good luck!<br>
<br>
- Gunnar<br>
<br>
&gt;<br>
&gt; Regards,<br>
<br>
<br>
</blockquote></div><br></div>

--f403045f54b4922e1b056063351c--
