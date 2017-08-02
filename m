Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48841E00C9E; Wed,  2 Aug 2017 02:52:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (katutxakurra[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0583E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 02:52:00 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id g13so18229805ioj.5
	for <yocto@yoctoproject.org>; Wed, 02 Aug 2017 02:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yiUbOaybPXgyQDZqY6FE3vtdch7OIRBip2zRH0fUeBo=;
	b=sryXczqX7Z2tbonQQ1JOz1JxmirFBxHPZWLgKEYelwSJBfv1jqhOkU/uEfVDx3I5GC
	TtbGUHJn5lUwW+kmeiJEb4q9MYr1LulQVBQxROc8NlxrFSYwGVAYzNfdrJXedC1+pfwL
	hb5Ix7ek8tOFxFa1vgiHEEDsZIsoaIijoX7u2inXIR1wR4PoTLHCvWE26b1pezWL2DDj
	vbZGdJW2/Rf9Zrpiv28BmM1QdqjnKzRrHrVu5IkpbZFzcx21WKq2TTcjktqTnc4x4aYE
	f8xvUdHeqOJKf4k80yw1mEVVZNJy4Opr9oM/IkixqYrMU85UQWHo9UgwhosBUVzmcBUa
	Ivpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yiUbOaybPXgyQDZqY6FE3vtdch7OIRBip2zRH0fUeBo=;
	b=KP4GfQ/bKrkkAmJko2rZ/kWPHvT7PcAAK6B664FNTAXDTuWUch6Ya4kiiF0YE85lEQ
	4BfOv62mj1JYB71tVeBocDRlVaiRDOQtbTY2ywd2QYeMXdamwaOklS/ZbhD/DW1x6UHL
	WnkGO+eI6VmAcaeFBGg0NdXfxyUbGn23GLyzOTMw+9C8bQrtawMFjtWKdHPg90WattQa
	PltOpayJ1OPpURFQJ5ja1swPhXN2SdUQu6Y8iv+8QA98h9qqpMH9TRMVeiLAHXv1erSU
	ZvDzIxe7joeed39vJBLngQt180kJ4pu4Xni17dQ1Gms4jsr3/5sGNctvtJn0lkHY3av3
	8xGw==
X-Gm-Message-State: AIVw111+aReXk/GRN4KTo9XLf6SO2NnGKF6/uItMgJjGP+d7suVeewvj
	JoIsGN+DyIdkFb+RFVUS9qRP05ngwA==
X-Received: by 10.107.39.14 with SMTP id n14mr28211714ion.0.1501667520186;
	Wed, 02 Aug 2017 02:52:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.111.194 with HTTP; Wed, 2 Aug 2017 02:51:59 -0700 (PDT)
In-Reply-To: <1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
From: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 2 Aug 2017 10:51:59 +0100
Message-ID: <CAM1ZcoXMT3ZRVUtba2pyWw8p2tH5vEdBez9sHZBKv=xBgJtBXQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Andrew Bradford <andrew.bradford@kodakalaris.com>
Subject: Re: Perforce fetcher ignores module and label
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
X-List-Received-Date: Wed, 02 Aug 2017 09:52:03 -0000
Content-Type: multipart/alternative; boundary="001a1140443c1c8eab0555c23766"

--001a1140443c1c8eab0555c23766
Content-Type: text/plain; charset="UTF-8"

Thank you Paul,
I will wait and see if Andrew Bradford can kindly have a look at this.

Cheers,
Katu

2017-08-02 9:28 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Katu,
>
> Andrew Bradford (on CC) was the last person to make significant changes to
> that module. I believe it's not very widely used - none of the recipes we
> commonly deal with make use of it and thus few of us have enough experience
> with it to give good advice. If Andrew doesn't have any ideas, the code
> shouldn't be too hard to follow and we will accept patches (particularly if
> they are accompanied with a good explanation of why the change is needed in
> the commit message).
>
> Cheers,
> Paul
>
> On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> > Hi,
> >
> > I'm still having problems fetching from Perforce. Is there any
> > documentation based on the latest implementation of the
> > poky/bitbake/lib/bb/fetch2/perforce.py file?
> > The copyright 2016 points to Kodak Alaris, Inc. Should I contact them?
> >
> > I would appreciate if someone could point me in the right direction.
> >
> > Regards,
> > Katu
> >
> > 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com>:
> >
> > > Hi,
> > >
> > > I'm upgrading a recipe that fetches the source code from Perforce.
> > >
> > > The old recipe was:
> > >
> > > SRC_URI = " \
> > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/pe
> > > rforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST} \
> > >   "
> > >
> > > With the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT
> > > outside SRC_URI, leaving the recipe with:
> > >
> > > SRC_URI = " \
> > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > >   "
> > >
> > > The Perforce fetcher kind of works, but it seems to be ignoring the
> > > "module" and the "label" attributes. After reading the Python script I
> can
> > > see that after the "@", only the substring before the first ";" is
> used.
> > >
> > > Is there a way to set module and label/changelist? I have several
> folders
> > > per recipe that I need to map to different subfolders and with the
> current
> > > script some of the folders don't get fetched.
> > >
> > > Thanks for your time.
> > >
> > > Regards,
> > > Katu
> > >
> >
>
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a1140443c1c8eab0555c23766
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you Paul, <br>I will wait and see if Andre=
w Bradford can kindly have a look at this.<br><br></div>Cheers,<br></div>Ka=
tu<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-=
08-02 9:28 GMT+01:00 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:=
paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.=
com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Katu,<br>
<br>
Andrew Bradford (on CC) was the last person to make significant changes to<=
br>
that module. I believe it&#39;s not very widely used - none of the recipes =
we<br>
commonly deal with make use of it and thus few of us have enough experience=
<br>
with it to give good advice. If Andrew doesn&#39;t have any ideas, the code=
<br>
shouldn&#39;t be too hard to follow and we will accept patches (particularl=
y if<br>
they are accompanied with a good explanation of why the change is needed in=
<br>
the commit message).<br>
<br>
Cheers,<br>
Paul<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m still having problems fetching from Perforce. Is there any<br>
&gt; documentation based on the latest implementation of the<br>
&gt; poky/bitbake/lib/bb/fetch2/<wbr>perforce.py file?<br>
&gt; The copyright 2016 points to Kodak Alaris, Inc. Should I contact them?=
<br>
&gt;<br>
&gt; I would appreciate if someone could point me in the right direction.<b=
r>
&gt;<br>
&gt; Regards,<br>
&gt; Katu<br>
&gt;<br>
&gt; 2017-07-25 10:05 GMT+01:00 Katu Txakur &lt;<a href=3D"mailto:katutxaku=
rra@gmail.com">katutxakurra@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m upgrading a recipe that fetches the source code from Perf=
orce.<br>
&gt; &gt;<br>
&gt; &gt; The old recipe was:<br>
&gt; &gt;<br>
&gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt;=C2=A0 =C2=A0p4://${P4USER}:${P4PASSWD}:${<wbr>P4HOST}:${P4PORT}@D=
epot/path/<wbr>pe<br>
&gt; &gt; rforce/...;module=3Dlocal/path/<wbr>relativeto/p4;label=3D${<wbr>=
P4CHANGELIST} \<br>
&gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt;<br>
&gt; &gt; With the new version of /lib/bb/fetch2/perforce.py, I had to set =
P4PORT<br>
&gt; &gt; outside SRC_URI, leaving the recipe with:<br>
&gt; &gt;<br>
&gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt;=C2=A0 =C2=A0p4://${P4USER}:${P4PASSWD}@<wbr>Depot/path/perforce/.=
..;<wbr>module=3D<br>
&gt; &gt; local/path/relativeto/p4;<wbr>label=3D${P4CHANGELIST} \<br>
&gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt;<br>
&gt; &gt; The Perforce fetcher kind of works, but it seems to be ignoring t=
he<br>
&gt; &gt; &quot;module&quot; and the &quot;label&quot; attributes. After re=
ading the Python script I can<br>
&gt; &gt; see that after the &quot;@&quot;, only the substring before the f=
irst &quot;;&quot; is used.<br>
&gt; &gt;<br>
&gt; &gt; Is there a way to set module and label/changelist? I have several=
 folders<br>
&gt; &gt; per recipe that I need to map to different subfolders and with th=
e current<br>
&gt; &gt; script some of the folders don&#39;t get fetched.<br>
&gt; &gt;<br>
&gt; &gt; Thanks for your time.<br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt; Katu<br>
&gt; &gt;<br>
&gt;<br>
<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a1140443c1c8eab0555c23766--
