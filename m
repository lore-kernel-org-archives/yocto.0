Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12248E00B87; Wed, 11 Oct 2017 01:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D242E00B53
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 01:54:25 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id z187so1287727ioz.12
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 01:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XwGwZ3oxpP6LbRu6LmiYfP03GghnpvLWmO+Ib8kl1xU=;
	b=yTVVAqPi5Vh71WFC9phyeuR22ePnTGoFqU7et00HtLIRRlINteril52tJXGXjsYzsh
	3SLRpQLrLIHGcXDUeFuBiq1yIYglVSVnfGXgfD9tCXSowiPAcw85NgrGfKEFvm27znDQ
	YFcmCTQkvOa5WhfNfCU+AtxbpJc074YWHn+8iWNkiQ9ZR8Vxjk78to3fP6FQhzOKQdR4
	oIXDw9+TvKNHsPgk8hkUR3knzf7Ht4HpiAGYJ0P0i3ioMdsEv+c3GbNelGgnaAIxwxxX
	tu88l8nsJGk4V448E3eM/q6xAPV7hN+58wLfrZZdT1+xG5nIwk6qYVKIJJR2PwQ2rrZ9
	C8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XwGwZ3oxpP6LbRu6LmiYfP03GghnpvLWmO+Ib8kl1xU=;
	b=jooPSv0+No7jxFdYcb/nZiB6BuLAThBt7Aj/6jhPW8cGSLvgxaQiQQ8df6+0DQg+XT
	TS7A6FOfPIMsMweogWELsOOeWWicY/La2UXzXKHq4pXhg8TGx5AiSsrWR+FSTy+HLmT4
	Wn0MquYEIeYUKglt3q1f8NE6B3omAOfbKHt59WRlirdOlvuF1oVz5ReEErUnCGSyVjuB
	gmlAJaNpnnzKdL6kEf/dHGSX2O2xfY+v9qBvY+N0foNdQe7jo1WT3K8PQDscZNAEgekS
	MVqT4Nmoq14Bmj2fS/KFOKlFM3jlARqllOUOQ0KtvVQ7Ss+1bvgPEXiVwy6nXNUQSRRa
	DrdA==
X-Gm-Message-State: AMCzsaW0SERdWr1zkQg9xnbLCbkkTYkbeFNIFCuIRmokEzo6xIVK1QG8
	a/CMj5lcU2fiyavsQ7YzLSAjldphAIKvcjCHDm1EXA==
X-Google-Smtp-Source: AOwi7QB1MkQiSD4da3Pzjr/IyHcp3JUXlghS+2HXObbcKbkfV/KYmURf0bSeHaVTPpDea5FsTo91r6KZ3EcQ2VIdAj0=
X-Received: by 10.107.133.85 with SMTP id h82mr19642043iod.208.1507712064861; 
	Wed, 11 Oct 2017 01:54:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Wed, 11 Oct 2017 01:54:04 -0700 (PDT)
In-Reply-To: <1507704333.9509.23.camel@collabora.co.uk>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Oct 2017 09:54:04 +0100
Message-ID: <CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 08:54:26 -0000
Content-Type: multipart/alternative; boundary="001a113fd83a0ccb8e055b41929f"

--001a113fd83a0ccb8e055b41929f
Content-Type: text/plain; charset="UTF-8"

Both of your recipes will need to depend on the user-creating recipe.

Ross

On 11 October 2017 at 07:45, Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> On Tue, 2017-10-10 at 15:31 -0700, Aaron_Wright@selinc.com wrote:
>
> > Hi
> >
> > I want to use the same user in two different recipe.
> > I create the user in recipe A.bb and it works fine.
> > Now I want to use the same user in B.bb so I add DEPENDS = "A"
> > thinking that sysroot will be
> > populated with A.bb users.
> >
> > But when I bitbake the recipe, user is not found.
> > I conclude that I have to use USERADD_* in each recipe, right?
> >
> > What happen if I use different USERADD_PARAM_${PN} in each recipe?
> >
> > I also try to use EXTRA_USERS_PARAMS but without success?
> >
> > Is there a way to populate sysroot with users?
> >
> > Thanks
> >
> > --
> > Fabien
> > --
>
> When I have this issue I just make a separate recipe that creates the
> user, and have all the other recipes depend on it.
> That way the user is always created with the same parameters, without
> possibility of getting out of sync.
>
>
> Thanks Aaron
>
> Yes it is exactly what we do before with morty but now we use pyro and the
> sysroot is per recipe and not common to all recipe.
> And I search in the sysroot and the users created in recipe A are not
> applied to /etc/passwd.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113fd83a0ccb8e055b41929f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Both of your recipes will need to depend on the user-creat=
ing recipe.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On 11 October 2017 at 07:45, Fabien Lahoudere=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk" =
target=3D"_blank">fabien.lahoudere@collabora.co.uk</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div><div><div class=3D"h5"><div>On Tue, 20=
17-10-10 at 15:31 -0700, <a href=3D"mailto:Aaron_Wright@selinc.com" target=
=3D"_blank">Aaron_Wright@selinc.com</a> wrote:</div><blockquote type=3D"cit=
e"><tt><font size=3D"2">&gt; Hi<br>
&gt; <br>
&gt; I want to use the same user in two different recipe.=C2=A0<br>
&gt; I create the user in recipe A.bb and it works fine.<br>
&gt; Now I want to use the same user in B.bb so I add DEPENDS =3D &quot;A&q=
uot;
<br>
&gt; thinking that sysroot will be<br>
&gt; populated with A.bb users.<br>
&gt; <br>
&gt; But when I bitbake the recipe, user is not found.=C2=A0<br>
&gt; I conclude that I have to use USERADD_* in each recipe, right?<br>
&gt; <br>
&gt; What happen if I use different USERADD_PARAM_${PN} in each recipe?<br>
&gt; <br>
&gt; I also try to use EXTRA_USERS_PARAMS but without success?<br>
&gt; <br>
&gt; Is there a way to populate sysroot with users?<br>
&gt; <br>
&gt; Thanks<br>
&gt; <br>
&gt; -- <br>
&gt; Fabien<br>
&gt; -- <br>
</font></tt>
<br><tt><font size=3D"2">When I have this issue I just make a separate reci=
pe
that creates the user, and have all the other recipes depend on it.</font><=
/tt>
<br><tt><font size=3D"2">That way the user is always created with the same
parameters, without possibility of getting out of sync.</font></tt></blockq=
uote><div><br></div></div></div><div>Thanks Aaron</div><div><br></div><div>=
Yes it is exactly what we do before with morty but now we use pyro and the =
sysroot is per recipe and not common to all recipe.</div><div>And I search =
in the sysroot and the users created in recipe A are not applied to /etc/pa=
sswd.</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113fd83a0ccb8e055b41929f--
