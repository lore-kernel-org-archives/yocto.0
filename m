Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AA73E00C0B; Mon,  1 Feb 2016 01:02:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB81E00BE1
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 01:02:22 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id p63so60179789wmp.1
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 01:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=uTbZtYIwzroskM8SDH9b/K/r5cMzWmjGGvMXLMkCfbY=;
	b=IptvoOoDpgO6Rr6NwdoVoINd73rfNRFiH+eptqnrDFCyGwJLiOMSdmiZNtqCFukLH7
	Ob+9aBGxBjtVdRAgiG9OwdXgvBy9ESI1l2+CG3SM9NXlhqNJi35ncz0XQeZ0Bb4d+Waz
	bInoHiJTwGhCiGy4bHw9KPVjBLBoqf5n3C8Z2FddCtNi9iKN3RLiRWSlrBfRDYgRvdi8
	3HvsuhNVNPxwirAhB6Uy+nhKsxCBBkO4ux87n+A7ApaRqnwm4bNxkKwwFgC8REUMc9uD
	xxA5CYCUTPjLnjBkkeXN/+qkg9ukXCCdID2oBb3IixWS5uwkqa4eCxNK84+hh+mE/Xgg
	+DvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-type;
	bh=uTbZtYIwzroskM8SDH9b/K/r5cMzWmjGGvMXLMkCfbY=;
	b=LrfSSvnDv0LUaerVaUX3e9W6KfDp03dISAeke5hgrSgn4Vijs1q9JjWmxTsTMB/9yN
	1qcE1+QZkmvLThZgdSklBTeLt5sEiwoM16ZtTrpZgHbtpV+kXtgIMyopU4XPr6HCl5D2
	GN5Nlspv0SJ0hsIZ8a/gSvYbL8XDP73nVAuKzzKVLXazYMwupylQKqI8fGeTwzC5/dzx
	lfMloB7lhoBnHRQ1uDniInis70EzAlNKn9SvlH9yFZ1yj0S2EBHACZ/MDdQk8Fd/pP6c
	oIlFVIJJF2XPG3u11wO+XY+Q8U8Uax31SZcTc4SLBeC+/Befldn0Ess1rJFGl9D1HyuZ
	GorQ==
X-Gm-Message-State: AG10YOQ0dc550WdUTrXq5j4U8E6Y8AHrYOkvZc+9Z/CGk9DsGNZM28pvuNiuz3B+yiuY86bS6UqGOza7uFe8iw==
X-Received: by 10.28.99.69 with SMTP id x66mr10649178wmb.10.1454317341304;
	Mon, 01 Feb 2016 01:02:21 -0800 (PST)
MIME-Version: 1.0
References: <AMXPR01MB0865B0A5B853FA4FD557C8092DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
	<20160201085852.GA2803@jama>
In-Reply-To: <20160201085852.GA2803@jama>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Mon, 01 Feb 2016 09:02:11 +0000
Message-ID: <CAP2S6e4YnGG=ybxy6Cy4YDHUH-gZxE5ZGLu7y93j5JsJF7G8Eg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>,
	Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get the latest version of Qt5 with meta-qt5
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
X-List-Received-Date: Mon, 01 Feb 2016 09:02:26 -0000
Content-Type: multipart/alternative; boundary=001a1148f7aa84ec1d052ab1a40f

--001a1148f7aa84ec1d052ab1a40f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

In the meta-qt5 repo on github :

fido branch is Qt 5.4
jethro branch is Qt 5.5
master branch is Qt 5.6

a simple "git checkout -b jethro" should get you there...



Le lun. 1 f=C3=A9vr. 2016 =C3=A0 09:56, Martin Jansa <martin.jansa@gmail.co=
m> a
=C3=A9crit :

> On Mon, Feb 01, 2016 at 08:39:08AM +0000, Karim ATIKI wrote:
> > Hi all,
> >
> >
> > I've been using yocto to create distros on rspi2 and develop Qt5 based
> applications.
> >
> >
> > I noticed that through the meta-qt5 layer, it is Qt 5.4.1 that is
> compiled and deployed.
>
> I don't know how you noticed that, but meta-qt5 currently has
> 5.6-alpha1, since this commit in October:
>
> https://github.com/meta-qt5/meta-qt5/commit/178a817e6f4604e0f4b24a416d5e8=
3b428cbabe7
>
> > How should I tune the metadata so that the latest version of Qt 5 is
> used instead ?
>
> If you want even newer version, you need to rebase patches, update
> SRCREVs and PVs like the commit above.
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1148f7aa84ec1d052ab1a40f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br>In the meta-qt5 repo on git=
hub :<br><br></div>fido branch is Qt 5.4<br></div>jethro branch is Qt 5.5<b=
r></div>master branch is Qt 5.6<br><br></div>a simple &quot;git checkout -b=
 jethro&quot; should get you there...<br><br><div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0lun. 1 f=C3=A9vr. 2016 =C3=
=A0=C2=A009:56, Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">=
martin.jansa@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">On Mon, Feb 01, 2016 at 08:39:08AM +0000, Karim ATIKI wrote=
:<br>
&gt; Hi all,<br>
&gt;<br>
&gt;<br>
&gt; I&#39;ve been using yocto to create distros on rspi2 and develop Qt5 b=
ased applications.<br>
&gt;<br>
&gt;<br>
&gt; I noticed that through the meta-qt5 layer, it is Qt 5.4.1 that is comp=
iled and deployed.<br>
<br>
I don&#39;t know how you noticed that, but meta-qt5 currently has<br>
5.6-alpha1, since this commit in October:<br>
<a href=3D"https://github.com/meta-qt5/meta-qt5/commit/178a817e6f4604e0f4b2=
4a416d5e83b428cbabe7" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/meta-qt5/meta-qt5/commit/178a817e6f4604e0f4b24a416d5e83b428cbabe7</a><br=
>
<br>
&gt; How should I tune the metadata so that the latest version of Qt 5 is u=
sed instead ?<br>
<br>
If you want even newer version, you need to rebase patches, update<br>
SRCREVs and PVs like the commit above.<br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a1148f7aa84ec1d052ab1a40f--
