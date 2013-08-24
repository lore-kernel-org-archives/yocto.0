Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98359E003D2
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 17:03:32 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id u54so1128840wes.9
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 17:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qDyPXLmlwAgST31QnuoRRVrKttu5vakyu2mQMuELk/4=;
	b=loYeIKZT8ddR+xP8bBGFCrkEJYlTOCgLqvTETmNwImVrHUMTh8+QMQFnh2n6h2mEmn
	6Nzd6U7PhZgtA5jHMeb3XHdpMmApGxJUgBWa90CjAIJ6YxbPTcGcD6VPfgGrKJB37KAn
	6SA7PExpCiBuK3k6jgAsuwCpLS3IkpaD9wnSKXJ0tfEqvAS3RqyZBmCEQ4MZ5xi4ZewM
	uqR6IJiqC+9QyIdHr0kaVRHWRgBt8xZrX9TYGPMGrIU0A7dgYxC9VgiuEqguft4ogVHf
	AorpQ6ztbjdupdG7hArcC7qaNOFqIrwVEAPCR3/bkM7ICDa7cm6+N/vedCI9HA1WIuq0
	4iAQ==
X-Gm-Message-State: ALoCoQlCObham32veJZ660O6qM6lg9HxjKEZ1ZsK7Gc40lf05GTX1S5UplWmkUo4uSix53BeK/BX
X-Received: by 10.180.183.206 with SMTP id eo14mr3892051wic.33.1377302611211; 
	Fri, 23 Aug 2013 17:03:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Fri, 23 Aug 2013 17:03:11 -0700 (PDT)
X-Originating-IP: [92.86.21.113]
In-Reply-To: <CANyK_8etyRxPy6VG6HpCAQ926vMboaM5wjPZr-7QCXBKHR=CmA@mail.gmail.com>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-4-git-send-email-andrei@gherzan.ro>
	<CANyK_8etyRxPy6VG6HpCAQ926vMboaM5wjPZr-7QCXBKHR=CmA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 24 Aug 2013 03:03:11 +0300
Message-ID: <CAK18fxGCnMAOdBKSmh12OZ-OrOhzJwqXQaZCZ7O_+vgT1Z4a1Q@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 04/11] rpi-config: Update to 2013-08-20 master's snapshot
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
X-List-Received-Date: Sat, 24 Aug 2013 00:03:36 -0000
Content-Type: multipart/alternative; boundary=001a11c2297ce3ce5d04e4a640b7

--001a11c2297ce3ce5d04e4a640b7
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 23, 2013 at 2:06 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Use git as package version. There is no package version for this script.
> >
> > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> > ---
> >  recipes-bcm/bootfiles/rpi-config_0.1.bb |   57
> -------------------------------
> >  recipes-bcm/bootfiles/rpi-config_git.bb |   57
> +++++++++++++++++++++++++++++++
> >  2 files changed, 57 insertions(+), 57 deletions(-)
> >  delete mode 100644 recipes-bcm/bootfiles/rpi-config_0.1.bb
> >  create mode 100644 recipes-bcm/bootfiles/rpi-config_git.bb
>
> Sorry to be pedantic, but the diffs are easier to check if you add the
> '-M' option to catch renames. I always forget to add it so I did "git
> config --global diff.renames copy" to catch all renames and copies
> whenever I do format-patch.
>

My bad. Forgot -M. Sorry.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c2297ce3ce5d04e4a640b7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Aug 23, 2013 at 2:06 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 20 August 2013 18:02, Andrei Gherzan &lt;=
<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; Use git as package version. There is no package version for this scrip=
t.<br>
&gt;<br>
&gt; Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro"=
>andrei@gherzan.ro</a>&gt;<br>
&gt; ---<br>
&gt; =A0recipes-bcm/bootfiles/<a href=3D"http://rpi-config_0.1.bb" target=
=3D"_blank">rpi-config_0.1.bb</a> | =A0 57 -------------------------------<=
br>
&gt; =A0recipes-bcm/bootfiles/<a href=3D"http://rpi-config_git.bb" target=
=3D"_blank">rpi-config_git.bb</a> | =A0 57 +++++++++++++++++++++++++++++++<=
br>
&gt; =A02 files changed, 57 insertions(+), 57 deletions(-)<br>
&gt; =A0delete mode 100644 recipes-bcm/bootfiles/<a href=3D"http://rpi-conf=
ig_0.1.bb" target=3D"_blank">rpi-config_0.1.bb</a><br>
&gt; =A0create mode 100644 recipes-bcm/bootfiles/<a href=3D"http://rpi-conf=
ig_git.bb" target=3D"_blank">rpi-config_git.bb</a><br>
<br>
Sorry to be pedantic, but the diffs are easier to check if you add the<br>
&#39;-M&#39; option to catch renames. I always forget to add it so I did &q=
uot;git<br>
config --global diff.renames copy&quot; to catch all renames and copies<br>
whenever I do format-patch.<br></blockquote><div><br></div><div style>My ba=
d. Forgot -M. Sorry.=A0</div></div><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a11c2297ce3ce5d04e4a640b7--
