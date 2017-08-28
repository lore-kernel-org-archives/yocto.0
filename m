Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8EE9E00BB1; Mon, 28 Aug 2017 00:56:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (katutxakurra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE9FE00970
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 00:56:49 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id c18so14019371ioj.1
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 00:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=he7Lu8WoyrksL4mo+sFMAz4svWpocaSTQZxgg2ch1mg=;
	b=HX7uELtMCW+6bDEOAjm0yFgTMzOJieo3GYJghtDQZhgqhuGHGCt83gj7d7xORbYbpM
	1SyCT7ctB7J9qrNUa412D32QOyLGZP8h0pOIy9Abe1W4ZbvpiZkxvvd4msgSwJJQyf2B
	bEF1GJDk3C+BtYRzEQwKYLx8FKTJaWvpPhek+gnC9gDYuXt+8tZ96EpJMakL+bahB4hc
	4bhYCW25uqRsVetY0UOJO/xb3q4LHGJTsbXyH7phfRqA7Qw+3rtDHqAlC5KsOnnDGvfa
	mo5LwhAd/MDLM7D74KeGl9RC06sEO0v861AN3fLxAkTyYwwalxqE5kLjTjoxUiUgZ4IL
	8sTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=he7Lu8WoyrksL4mo+sFMAz4svWpocaSTQZxgg2ch1mg=;
	b=TX7ErIc194SLk+oNM774d98UXA2mYGYxfWaj7GVCB6ILQa+9zKgRl4QqXlKtwzn9dT
	H2kT2wrDVNiO6mg0kFLcQ+fQo4FPpH20//u3ls6ZLOJ1b0qVWZz109hZCwbaItsbQtcg
	1zf7GOTm/vvBzsrHgdNsDIDsGVfeTRMN9ysjWmtGg1gX7YfPXuGrlJ5g0NyV7aEvjjIS
	8KEOtRgCikFzkuyXgFoK7FRAEEmpv63Qpy+sFoA7HSJPABs1olN8PzmG6B4luqWJGL6E
	fC4uIcZJVsXUO+WHmZrP8lkanqcsAnIkAGjrSMh3FqLjtxHwPD1v5tn7Sx19+yWb2PR9
	dVew==
X-Gm-Message-State: AHYfb5iuR7dW6Z2mbE8OP9kKtuwPvgSjeYEiU6tCq2/zuVNmKccZW20n
	jaV6PQXp4rKWXXSWZlerDp4hcALEmQ==
X-Received: by 10.107.59.216 with SMTP id i207mr5757941ioa.320.1503907009030; 
	Mon, 28 Aug 2017 00:56:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.167.80 with HTTP; Mon, 28 Aug 2017 00:56:48 -0700 (PDT)
In-Reply-To: <20170811125251.t2t3kj6kbpsvhwxe@kaim-eeyore.kodakalaris.net>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
	<20170807111740.ppsdinlvltioc3uq@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX7ee=hCBYqWPQoeg_wrWjzqqbZvsrTm12sfZc2Fe0JJQ@mail.gmail.com>
	<20170811125251.t2t3kj6kbpsvhwxe@kaim-eeyore.kodakalaris.net>
From: Katu Txakur <katutxakurra@gmail.com>
Date: Mon, 28 Aug 2017 08:56:48 +0100
Message-ID: <CAM1ZcoX-DKScfwq==5y6TsH7MGZv5x6MXEuZ3PF4H487uyVshQ@mail.gmail.com>
To: Andrew Bradford <andrew@bradfordembedded.com>
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
X-List-Received-Date: Mon, 28 Aug 2017 07:56:52 -0000
Content-Type: multipart/alternative; boundary="94eb2c069ddc0c729d0557cba37a"

--94eb2c069ddc0c729d0557cba37a
Content-Type: text/plain; charset="UTF-8"

Hi Andrew

Thanks for your reply and sorry for the delay on this. I was on holidays
too.

2017-08-11 13:52 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com>:

> Hi Katu,
>
> I added back the yocto ml on CC, could you please keep this conversation
> on-list?
>
> Sure, sorry about that.

On 08/11 11:34, Katu Txakur wrote:
> > 2017-08-07 12:17 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com
> >:
> > > On 08/02 10:28, Paul Eggleton wrote:
> > > > On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> > > > > I'm still having problems fetching from Perforce. Is there any
> > > > > documentation based on the latest implementation of the
> > > > > poky/bitbake/lib/bb/fetch2/perforce.py file?
> > >
> > > There's some documentation now in the official Yocto Project
> > > documentation location for bitbake fetchers [1].  Prior to my changes
> > > there was very little if any documentation, afaik.
> > >
> > > [1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-
> > > manual/bitbake-user-manual.html#perforce-fetcher
> > >
> > > > > 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com>:
> > > > > > I'm upgrading a recipe that fetches the source code from
> Perforce.
> > > > > >
> > > > > > The old recipe was:
> > > > > >
> > > > > > SRC_URI = " \
> > > > > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/pe
> > > > > > rforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST}
> \
> > > > > >   "
> > > > > >
> > > > > > With the new version of /lib/bb/fetch2/perforce.py, I had to set
> > > P4PORT
> > > > > > outside SRC_URI, leaving the recipe with:
> > > > > >
> > > > > > SRC_URI = " \
> > > > > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > > > > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > > >   "
> > > > > >
> > > > > > The Perforce fetcher kind of works, but it seems to be ignoring
> the
> > > > > > "module" and the "label" attributes. After reading the Python
> script
> > > I can
> > > > > > see that after the "@", only the substring before the first ";"
> is
> > > used.
> > >
> > > Sorry for not making the label change more clear, but you should be
> able
> > > to simply set SRCREV="labelname" and have the functionality you desire.
> > > However, we don't use labels very often internally, so the use of
> labels
> > > in SRCREV isn't tested that often by me.
> > >
> >
> > I don't use labels that much either, however, I used to be able to write
> > the changeslist number as a label and it would
> > fetch the code for that changelist. This doesn't work using SRCREV =
> > "changelistnumber"
>
> This does work for me using oe-core morty branch and bitbake
> 1.32 which is the versions where these changes were first applied and
> where I did my testing.
>
> Like I have a recipe which I put:
>
> SRCREV = "184127"
>
> The p4 fetcher will go fetch changelist 184127 of the SRC_URI path in
> perforce.
>
> Or if I put:
>
> SRCREV = "${AUTOREV}"
>
> Then it'll fetch the HEAD/tip of the SRC_URI path in perforce.
>
> Is this not working the same way with poky now?
>

I'm using yocto pyro with bitbake 1.34.0. When I first fetch the code for
my recipe, it gets the latest changelist.
I submit a change and the next time, the recipe thinks there nothing new to
fetch. Also, using SRCREV = "184127"
doesn't work for me, it always gets the latest changelist.


>
> > > This change to using labels, changelist numbers, and allowing the use
> of
> > > AUTOREV was made so that the perforce fetcher would act more like the
> > > other source code control system fetchers.  Prior to my changes to the
> > > p4 fetcher, the way that recipes using p4 had to be written seemed
> > > rather awkward to me.  The way it is now isn't perfect, but it's closer
> > > to how the other fetchers act, I think (and hope).
> > >
> >
> > > > > Is there a way to set module and label/changelist? I have several
> > > folders
> > > > > > per recipe that I need to map to different subfolders and with
> the
> > > current
> > > > > > script some of the folders don't get fetched.
> > >
> > > I'm not sure I understand enough about how you use perforce and what
> you
> > > mean by mapping different subfolders.  Can you explain this in a more
> > > expanded way to me?  Maybe with some examples?
> > >
> >
> > What I mean by this is taking folders in different locations in Perforce
> > and fetch them to a custom folder structure inside the {WORKDIR}/p4
> folder.
> > This is an example of how I was doing this with the old version of the
> > fetcher:
> >
> > #leave blank, "", for latest revision
> > P4CHANGELIST = "${PR}"
> > S = "${WORKDIR}"
> > SRC_URI = " \
> > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> 1/folder1/...;module=subfolderunderp4/src/;label=${P4CHANGELIST}
> > \
> > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> 2/folder3/...;module=subfolderunderp4/pkg/;label=${P4CHANGELIST}
> > \
> > "
> >
> > Where folder1 contains the src files and folder3 contains the pkg
> > information. These need to be in an specific folder structure for the
> > recipe to work.
> > I had some issue when adding more than one line because it was trying to
> > copy everything to the same p4 folder.
>
> Ah, yeah... Sorry, that is a bit of a shortcoming of my changes.  The
> reason I made this change is because putting the given SRC_URI's
> repository directly into a directory like ${WORKDIR}/p4/ is how some of
> the other fetchers operate and it makes the automatic tasks just work
> correctly.  This is how the git fetcher does things so I tried to mimmic
> that but maybe I missed some nuance in how the git fetcher deals with
> more than one SRC_URI line being a git repo.  I hadn't realized that
> there was users of the p4 fetcher who did things like you are doing,
> sorry.
>
> I think it should be reasonably easy to make a patch to the p4 fetcher
> which will put each SRC_URI line which uses the p4 fetcher into its own
> directory within the ${WORKDIR}/p4/ directory such that it supports your
> style of fetching.  This then will likely require your recipe to know
> that this is the directory structure and properly change into
> directories as needed, but it sounds like you already comprehend that.
> And for users of the p4 fetcher who only use one SRC_URI line, I believe
> they would just need to set the S variable correctly to the directory
> name within ${WORKDIR}/p4/ to get the current operation.
>
> If you send a patch to change this, I'm happy to test it for you, please
> just put me on CC for the patch so I make sure I see it.
>

I have been looking at this and it wasn't straight forward for me... I
don't have much experience with this. I will continue trying but I might
need some help.
It's not only not being able to fetch more than one SRC_URI. We are also
loosing the flexibility of fetching different changelists for each line.
I'm not sure if this can be solved in this new fetcher whilst keeping git
and p4 "similar" as git doesn't work this way afaik.

>
> Thanks,
> Andrew
>

Thanks,
Katu

--94eb2c069ddc0c729d0557cba37a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andrew<br><div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Thanks for your reply and sorry for the delay on th=
is. I was on holidays too.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra"><div class=3D"gmail_quote">2017-08-11 13:52 GMT+01:00 =
Andrew Bradford <span dir=3D"ltr">&lt;<a href=3D"mailto:andrew@bradfordembe=
dded.com" target=3D"_blank">andrew@bradfordembedded.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Katu,<br>
<br>
I added back the yocto ml on CC, could you please keep this conversation<br=
>
on-list?<br>
<span class=3D"gmail-m_-7218079487513758928gmail-"><br></span></blockquote>=
<div>Sure, sorry about that.<br><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><span class=3D"gmail-m_-7218079487513758928gmail-">
On 08/11 11:34, Katu Txakur wrote:<br>
&gt; 2017-08-07 12:17 GMT+01:00 Andrew Bradford &lt;<a href=3D"mailto:andre=
w@bradfordembedded.com" target=3D"_blank">andrew@bradfordembedded.com</a>&g=
t;:<br>
</span><span class=3D"gmail-m_-7218079487513758928gmail-">&gt; &gt; On 08/0=
2 10:28, Paul Eggleton wrote:<br>
</span><span class=3D"gmail-m_-7218079487513758928gmail-">&gt; &gt; &gt; On=
 Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:<br>
&gt; &gt; &gt; &gt; I&#39;m still having problems fetching from Perforce. I=
s there any<br>
&gt; &gt; &gt; &gt; documentation based on the latest implementation of the=
<br>
&gt; &gt; &gt; &gt; poky/bitbake/lib/bb/fetch2/per<wbr>force.py file?<br>
&gt; &gt;<br>
&gt; &gt; There&#39;s some documentation now in the official Yocto Project<=
br>
&gt; &gt; documentation location for bitbake fetchers [1].=C2=A0 Prior to m=
y changes<br>
&gt; &gt; there was very little if any documentation, afaik.<br>
&gt; &gt;<br>
&gt; &gt; [1]: <a href=3D"http://www.yoctoproject.org/docs/2.3.1/bitbake-us=
er-" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproject.org/do<wb=
r>cs/2.3.1/bitbake-user-</a><br>
&gt; &gt; manual/bitbake-user-manual.htm<wbr>l#perforce-fetcher<br>
&gt; &gt;<br>
&gt; &gt; &gt; &gt; 2017-07-25 10:05 GMT+01:00 Katu Txakur &lt;<a href=3D"m=
ailto:katutxakurra@gmail.com" target=3D"_blank">katutxakurra@gmail.com</a>&=
gt;:<br>
</span><div><div class=3D"gmail-m_-7218079487513758928gmail-h5">&gt; &gt; &=
gt; &gt; &gt; I&#39;m upgrading a recipe that fetches the source code from =
Perforce.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; The old recipe was:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0p4://${P4USER}:${P4PASSWD}:${<wbr>P4HO=
ST}:${P4PORT}@Depot/path/p<wbr>e<br>
&gt; &gt; &gt; &gt; &gt; rforce/...;module=3Dlocal/path/r<wbr>elativeto/p4;=
label=3D${P4CHANGEL<wbr>IST} \<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; With the new version of /lib/bb/fetch2/perforce.py=
, I had to set<br>
&gt; &gt; P4PORT<br>
&gt; &gt; &gt; &gt; &gt; outside SRC_URI, leaving the recipe with:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0p4://${P4USER}:${P4PASSWD}@De<wbr>pot/=
path/perforce/...;module=3D<br>
&gt; &gt; &gt; &gt; &gt; local/path/relativeto/p4;label<wbr>=3D${P4CHANGELI=
ST} \<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; The Perforce fetcher kind of works, but it seems t=
o be ignoring the<br>
&gt; &gt; &gt; &gt; &gt; &quot;module&quot; and the &quot;label&quot; attri=
butes. After reading the Python script<br>
&gt; &gt; I can<br>
&gt; &gt; &gt; &gt; &gt; see that after the &quot;@&quot;, only the substri=
ng before the first &quot;;&quot; is<br>
&gt; &gt; used.<br>
&gt; &gt;<br>
&gt; &gt; Sorry for not making the label change more clear, but you should =
be able<br>
&gt; &gt; to simply set SRCREV=3D&quot;labelname&quot; and have the functio=
nality you desire.<br>
&gt; &gt; However, we don&#39;t use labels very often internally, so the us=
e of labels<br>
&gt; &gt; in SRCREV isn&#39;t tested that often by me.<br>
&gt; &gt;<br>
&gt;<br>
&gt; I don&#39;t use labels that much either, however, I used to be able to=
 write<br>
&gt; the changeslist number as a label and it would<br>
&gt; fetch the code for that changelist. This doesn&#39;t work using SRCREV=
 =3D<br>
&gt; &quot;changelistnumber&quot;<br>
<br>
</div></div>This does work for me using oe-core morty branch and bitbake<br=
>
1.32 which is the versions where these changes were first applied and<br>
where I did my testing.<br>
<br>
Like I have a recipe which I put:<br>
<br>
SRCREV =3D &quot;184127&quot;<br>
<br>
The p4 fetcher will go fetch changelist 184127 of the SRC_URI path in<br>
perforce.<br>
<br>
Or if I put:<br>
<br>
SRCREV =3D &quot;${AUTOREV}&quot;<br>
<br>
Then it&#39;ll fetch the HEAD/tip of the SRC_URI path in perforce.<br>
<br>
Is this not working the same way with poky now?<br></blockquote><div><br>I&=
#39;m using yocto pyro with bitbake 1.34.0. When I first fetch the code for=
 my recipe, it gets the latest changelist.</div><div>I submit a change and =
the next time, the recipe thinks there nothing new to fetch. Also, using SR=
CREV =3D &quot;184127&quot;</div><div>doesn&#39;t work for me, it always ge=
ts the latest changelist.<br>=C2=A0<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
<div><div class=3D"gmail-m_-7218079487513758928gmail-h5"><br>
&gt; &gt; This change to using labels, changelist numbers, and allowing the=
 use of<br>
&gt; &gt; AUTOREV was made so that the perforce fetcher would act more like=
 the<br>
&gt; &gt; other source code control system fetchers.=C2=A0 Prior to my chan=
ges to the<br>
&gt; &gt; p4 fetcher, the way that recipes using p4 had to be written seeme=
d<br>
&gt; &gt; rather awkward to me.=C2=A0 The way it is now isn&#39;t perfect, =
but it&#39;s closer<br>
&gt; &gt; to how the other fetchers act, I think (and hope).<br>
&gt; &gt;<br>
&gt;<br>
&gt; &gt; &gt; &gt; Is there a way to set module and label/changelist? I ha=
ve several<br>
&gt; &gt; folders<br>
&gt; &gt; &gt; &gt; &gt; per recipe that I need to map to different subfold=
ers and with the<br>
&gt; &gt; current<br>
&gt; &gt; &gt; &gt; &gt; script some of the folders don&#39;t get fetched.<=
br>
&gt; &gt;<br>
&gt; &gt; I&#39;m not sure I understand enough about how you use perforce a=
nd what you<br>
&gt; &gt; mean by mapping different subfolders.=C2=A0 Can you explain this =
in a more<br>
&gt; &gt; expanded way to me?=C2=A0 Maybe with some examples?<br>
&gt; &gt;<br>
&gt;<br>
&gt; What I mean by this is taking folders in different locations in Perfor=
ce<br>
&gt; and fetch them to a custom folder structure inside the {WORKDIR}/p4 fo=
lder.<br>
&gt; This is an example of how I was doing this with the old version of the=
<br>
&gt; fetcher:<br>
&gt;<br>
&gt; #leave blank, &quot;&quot;, for latest revision<br>
&gt; P4CHANGELIST =3D &quot;${PR}&quot;<br>
&gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt; SRC_URI =3D &quot; \<br>
&gt; p4://${P4USER}:${P4PASSWD}:${P<wbr>4HOST}:${P4PORT}@Depot/project<wbr>=
1/folder1/...;module=3Dsubfolder<wbr>underp4/src/;label=3D${P4CHANGEL<wbr>I=
ST}<br>
&gt; \<br>
&gt; p4://${P4USER}:${P4PASSWD}:${P<wbr>4HOST}:${P4PORT}@Depot/project<wbr>=
2/folder3/...;module=3Dsubfolder<wbr>underp4/pkg/;label=3D${P4CHANGEL<wbr>I=
ST}<br>
&gt; \<br>
&gt; &quot;<br>
&gt;<br>
&gt; Where folder1 contains the src files and folder3 contains the pkg<br>
&gt; information. These need to be in an specific folder structure for the<=
br>
&gt; recipe to work.<br>
&gt; I had some issue when adding more than one line because it was trying =
to<br>
&gt; copy everything to the same p4 folder.<br>
<br>
</div></div>Ah, yeah... Sorry, that is a bit of a shortcoming of my changes=
.=C2=A0 The<br>
reason I made this change is because putting the given SRC_URI&#39;s<br>
repository directly into a directory like ${WORKDIR}/p4/ is how some of<br>
the other fetchers operate and it makes the automatic tasks just work<br>
correctly.=C2=A0 This is how the git fetcher does things so I tried to mimm=
ic<br>
that but maybe I missed some nuance in how the git fetcher deals with<br>
more than one SRC_URI line being a git repo.=C2=A0 I hadn&#39;t realized th=
at<br>
there was users of the p4 fetcher who did things like you are doing,<br>
sorry.<br>
<br>
I think it should be reasonably easy to make a patch to the p4 fetcher<br>
which will put each SRC_URI line which uses the p4 fetcher into its own<br>
directory within the ${WORKDIR}/p4/ directory such that it supports your<br=
>
style of fetching.=C2=A0 This then will likely require your recipe to know<=
br>
that this is the directory structure and properly change into<br>
directories as needed, but it sounds like you already comprehend that.<br>
And for users of the p4 fetcher who only use one SRC_URI line, I believe<br=
>
they would just need to set the S variable correctly to the directory<br>
name within ${WORKDIR}/p4/ to get the current operation.<br>
<br>
If you send a patch to change this, I&#39;m happy to test it for you, pleas=
e<br>
just put me on CC for the patch so I make sure I see it.<br></blockquote><d=
iv>=C2=A0</div><div>I have been looking at this and it wasn&#39;t straight =
forward for me... I don&#39;t have much experience with this. I will contin=
ue trying but I might need some help.</div><div>It&#39;s not only not being=
 able to fetch more than one SRC_URI. We are also loosing the flexibility o=
f fetching different changelists for each line. I&#39;m not sure if this ca=
n be solved in this new fetcher whilst keeping git and p4 &quot;similar&quo=
t; as git doesn&#39;t work this way afaik. <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<br>
Thanks,<br>
Andrew<br>
</blockquote></div></div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Thanks,</div><div class=3D"gmail_extra">Katu<br></div></div><=
/div>

--94eb2c069ddc0c729d0557cba37a--
