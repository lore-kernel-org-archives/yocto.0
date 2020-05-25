Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.34906.1590425234623875878
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 09:47:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TqqAJMtB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2804CE01C17; Mon, 25 May 2020 09:47:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 470E5E01C15
	for <yocto@yoctoproject.org>; Mon, 25 May 2020 09:47:12 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id se13so21031911ejb.9
        for <yocto@yoctoproject.org>; Mon, 25 May 2020 09:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xLv7wWxzGHflFDIrlJnMBhFSE2qJs3YxIC7MJSNdMas=;
        b=TqqAJMtBxP7qiqqGD0RtFKnn6y9maUf9D/wv9m6VclVMvr+5Ilspy/vO0Cbdiu5nNP
         ZklZ7CXy43OwcA7cDs6jeFfJDVfCqfpRSi0zSd2kzFs17lVDnPyVlaONGZJ+rtzNlHA3
         APAVO2t3eIB5KDjII+yh9fIb7yzx2lp0tEgNcNNU0CbKD3dAggYfyk2UH7y42anR7zQ2
         7zmswwed9zYxfU8kuqsOu98atKEKIV4LaMf5MGs4FrT7r83qIZ0Vbf9y0H1vtBvsW9GE
         zl+LTAWAzdIZyYVtTZOinsn/4TQ6IvjBDsVdoHOmQ1QGpfs7VZBy/sB0F2SmSR5Paa1F
         hdcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xLv7wWxzGHflFDIrlJnMBhFSE2qJs3YxIC7MJSNdMas=;
        b=RTQ2P5tfxyjrtzGhZPeBfxqyBAOYFT2VvINmT+e2y+IBRbnNNuC4OGrgMWHeZgI83k
         y18sUAS8kf2qmfLDW3k8lptgOiDEh6blJWOnp7eqV0W5J92iiPHjL9sFv9NKg6CWcy/Y
         P8BGfvrX4d1wjXM8GosaKbOe5ZHs97keMpQ9bSzqw0Dj5SuczB11/+zcbQVdSGltGyvX
         qSI+WjnizxgZSIXj6LT0xu+uWUVCnwvAOcbmNW8DDqjCb5KfLFqESz9FKXNo9ouUlb+t
         8oaPzWKLy7yHE9bo0Q6Ak5/GA9Bv7BwnscqONmHPo3vvp0Jd2Snv/zqUJ2ya8I3G99AM
         9FrA==
X-Gm-Message-State: AOAM533Uu7WMMqGvclPMjSia8ET8LLYEOTNst6zWwYkmr07lZMLvpe9S
	jAbCV2m28JNicPUN1nhaT2JECExmq405kAfyYNo=
X-Google-Smtp-Source: ABdhPJx68DI8es1UQjeqo/GZWP6YfM2i3VL3Rz5NV2tZt3z2WPsxnbfaR0RNwHobA4CqXO8ih/HbBNxU59v5VrnsbbY=
X-Received: by 2002:a17:906:ce36:: with SMTP id sd22mr18917652ejb.94.1590425231975;
 Mon, 25 May 2020 09:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005251229340.1134347@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005251229340.1134347@localhost.localdomain>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 25 May 2020 18:47:00 +0200
Message-ID: <CA+chaQe56NiFV+MFagQiQDBpKwt_YcgNY06zOLn=Ov2is9C1vQ@mail.gmail.com>
Subject: Re: [yocto] how to un-blacklist a blacklisted recipe?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fe69e205a67bbaab"

--000000000000fe69e205a67bbaab
Content-Type: text/plain; charset="UTF-8"

I don't use WR, but setting it to empty works fine for me.

Why do you think it shouldn't work? See
https://git.openembedded.org/openembedded-core/tree/meta/classes/blacklist.bbclass#n18

On Mon, May 25, 2020 at 6:38 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   asking what is almost certainly a silly question, but as i'm poring
> over the wind river LTS 19 (aka "zeus") developer's guide, i know that
> WR adds a feature for un-blacklisting blacklisted recipes via the
> PNWHITELIST variable, but the guide says something quite different in
> that it suggests that one can clear a blacklist from a recipe by
> setting the blacklist message to the empty string, as in:
>
>   PNBLACKLIST[recipe] = ""
>
>
> https://docs.windriver.com/bundle/Wind_River_Linux_Platform_Developers_Guide_LTS_19_tki1589820771450/page/inj1480988608162.html
>
>   um, wut?
>
>   oddly, there is no mention of WR's PNWHITELIST feature on that page,
> so i assumed that 1) someone forgot to update the guide to mention it,
> and 2) setting the message to the empty string might be the standard
> YP way to do it, but i'm pretty sure that won't work.
>
>   is there a way to un-blacklist a blacklisted recipe using standard
> YP? the reference manual entry for PNBLACKLIST doesn't suggest so:
>
>
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PNBLACKLIST
>
>   thoughts?
>
> rday
>
>
>
> 
>

--000000000000fe69e205a67bbaab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I don&#39;t use WR, but setting it to empty works fine for=
 me.<div><br></div><div>Why do you think it shouldn&#39;t work? See</div><d=
iv><a href=3D"https://git.openembedded.org/openembedded-core/tree/meta/clas=
ses/blacklist.bbclass#n18">https://git.openembedded.org/openembedded-core/t=
ree/meta/classes/blacklist.bbclass#n18</a><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 25, 2020 at=
 6:38 PM Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjd=
ay@crashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><br>
=C2=A0 asking what is almost certainly a silly question, but as i&#39;m po=
ring<br>
over the wind river LTS 19 (aka &quot;zeus&quot;) developer&#39;s guide, i=
 know that<br>
WR adds a feature for un-blacklisting blacklisted recipes via the<br>
PNWHITELIST variable, but the guide says something quite different in<br>
that it suggests that one can clear a blacklist from a recipe by<br>
setting the blacklist message to the empty string, as in:<br>
<br>
=C2=A0 PNBLACKLIST[recipe] =3D &quot;&quot;<br>
<br>
<a href=3D"https://docs.windriver.com/bundle/Wind_River_Linux_Platform_Dev=
elopers_Guide_LTS_19_tki1589820771450/page/inj1480988608162.html" rel=3D"no=
referrer" target=3D"_blank">https://docs.windriver.com/bundle/Wind_River_Li=
nux_Platform_Developers_Guide_LTS_19_tki1589820771450/page/inj1480988608162=
.html</a><br>
<br>
=C2=A0 um, wut?<br>
<br>
=C2=A0 oddly, there is no mention of WR&#39;s PNWHITELIST feature on that =
page,<br>
so i assumed that 1) someone forgot to update the guide to mention it,<br>
and 2) setting the message to the empty string might be the standard<br>
YP way to do it, but i&#39;m pretty sure that won&#39;t work.<br>
<br>
=C2=A0 is there a way to un-blacklist a blacklisted recipe using standard<=
br>
YP? the reference manual entry for PNBLACKLIST doesn&#39;t suggest so:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual=
.html#var-PNBLACKLIST" rel=3D"noreferrer" target=3D"_blank">https://www.yoc=
toproject.org/docs/current/ref-manual/ref-manual.html#var-PNBLACKLIST</a><b=
r>
<br>
=C2=A0 thoughts?<br>
<br>
rday<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000fe69e205a67bbaab--
