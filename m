Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40585E01473
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 06:53:47 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id c13so6472600vea.11
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 06:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=SQ902C5ZJ59UptQe79sHWg3sS+NjmXg8wHuKD3hn3zo=;
	b=T6WDJzq+quYUscnr+2mzktpj4DkiJRJdQ+CMKT+U/t66JU4ZxtSTlz5H4PT2LzRMSH
	Wba1mbTNiuZxjnAKzq1g8njf/s1RS6HS3h5OYWflvM5ut5eAW96aULwWAVdXBG4y4cZv
	0n9+FM6gfkE+xEtrzbtDttUV9zTkGUFvH9op7JzM+nLV4AENpOskazjT9U8aq7MZnoMD
	W4tcSoLs6XxXv7DwwM+7J8s8gUfUWXLuT1rJh8I5D43Q/hbud7BrCa6uw1G4qqqYHKma
	SpUpt9C6nEnr7OV2sbOxiMIu2b1VDqvK7xuo9da6o1mJY7Jyv4PG1k1ooEqS3RAWOmcZ
	0ooQ==
MIME-Version: 1.0
X-Received: by 10.58.205.179 with SMTP id lh19mr19034600vec.7.1365515626736;
	Tue, 09 Apr 2013 06:53:46 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.70.141 with HTTP; Tue, 9 Apr 2013 06:53:46 -0700 (PDT)
In-Reply-To: <20130409125403.GC2474@jama>
References: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
	<20130409125403.GC2474@jama>
Date: Tue, 9 Apr 2013 15:53:46 +0200
X-Google-Sender-Auth: OUwXaREo-1eP7rvPqqA61wRf75E
Message-ID: <CAFMfyz+04EeUJ2QqqzBsKoFDOe5YXX7HtTRWWmBvSvK5nZHqVw@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>, yocto@yoctoproject.org
Subject: Re: systemd vs sysvinit
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
X-List-Received-Date: Tue, 09 Apr 2013 13:53:47 -0000
Content-Type: multipart/alternative; boundary=089e011841a0ddf48904d9ede1cf

--089e011841a0ddf48904d9ede1cf
Content-Type: text/plain; charset=ISO-8859-1

Hello Martin, I didnot find it.. Is it possible to send me a link so that I
can work on it

Greets,
Satya


On Tue, Apr 9, 2013 at 2:54 PM, Martin Jansa <martin.jansa@gmail.com> wrote:

> On Tue, Apr 09, 2013 at 01:21:31PM +0200, Satya Swaroop Damarla wrote:
> > Hi, I created two images first by using sysvinit and the other using
> > systemd... The image using sysvinit works perfectly but the image with
> > systemd works only from the second boot. In the first boot it hangs. What
> > could be the possible reasons?
>
> run-postinst service probably, see my e-mail in oe-core ML
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--089e011841a0ddf48904d9ede1cf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Hello Martin, I didnot find it.. Is it possible to send me a link so that=
 I can work on it</span><div style=3D"font-family:arial,sans-serif;font-siz=
e:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Greets=
,</div><div style=3D"font-family:arial,sans-serif;font-size:13px">Satya</di=
v></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tu=
e, Apr 9, 2013 at 2:54 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&g=
t;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
ue, Apr 09, 2013 at 01:21:31PM +0200, Satya Swaroop Damarla wrote:<br>
&gt; Hi, I created two images first by using sysvinit and the other using<b=
r>
&gt; systemd... The image using sysvinit works perfectly but the image with=
<br>
&gt; systemd works only from the second boot. In the first boot it hangs. W=
hat<br>
&gt; could be the possible reasons?<br>
<br>
</div></div>run-postinst service probably, see my e-mail in oe-core ML<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>

--089e011841a0ddf48904d9ede1cf--
