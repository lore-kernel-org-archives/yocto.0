Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23E7AE00BAF; Wed, 25 Jul 2018 06:47:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f177.google.com (mail-yb0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 176DBE009B9
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 06:47:48 -0700 (PDT)
Received: by mail-yb0-f177.google.com with SMTP id s8-v6so2994608ybe.8
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 06:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=xQlY1etF3ArQXQFlHJa+p1Jd8lgvQ1Mxt9Hfyvmtl00=;
	b=LcrinPgw7nrqjBoFiic+AYhHwx+aNwIdiB2LpIe6h9Jko/KMYHhP07B5jyg8N3F1qI
	JO6bM3yi4itABejhPHA4CB1V8zjFKToOx4iq9ect8tnzI9wBl3D3mL59+68qts1QPSZ5
	Ipdn2tMBaE4GEMwnFtAW+H2xTLARtpa/hpKoRVJSjQSIAhXrvXgyIIc/cCSQIi6y5J6Y
	vtijTIWVWrvGyngJcxfreV7ck86v920zqfqaVVh6CkjYo3PNq4C2W1TxVYhggicXgWjw
	ULeMs/jXyafovIY4VGXJdr3lW/S/Z90e+m9X4kWsPJHwskaPr1UoPMs0WEtDT3zIREdZ
	ffgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=xQlY1etF3ArQXQFlHJa+p1Jd8lgvQ1Mxt9Hfyvmtl00=;
	b=XhEGkTGzXVoBULlKSFRmqt5sTQr7P7pbRJOEW74DAbwR+RT+TOKp8+AE50lVN03M6P
	WFINoZS6RaAPaXJFCMl4vE4c1Z603Hg5dmzZRzF4n8FQxv/EE2zbzr0PTPAm3rEDr8Fv
	Hwrbd2FIDUDTPpMEzaWgfSL2M3FausofQp7AXGM4eaL5JSKW9vajlBqaN87dvrFvU3OM
	DyYu+eNYraN/Rd6rzoJ/4a35yicBvwpY3wZrUHStWR0POqb60eZVJ1Vx/wLmjrDky8cI
	0T8tvhgfjFclwRDfZI1RMcSvEdyOsmeJ+MHy3PcDdoDzu6pNpVQQs55TycEj2+mEN13v
	VRZw==
X-Gm-Message-State: AOUpUlFOo9tc84XyUZl1YN1CtcGNUHsPBGtwYIME6j8/5L5Mm9fclqv7
	MIp2rRzye8KZ8fH6UFUwzhBjP2YiOWIBBCN+Ty2nkDcm
X-Google-Smtp-Source: AAOMgpf1evPGOIi9GXLL6zHg+AEIfW8cR92pbFQYROPun3T50FsAK/O8Y/FJ5g02ViiqLRkT8xFRRSYoLcpgniT2NoQ=
X-Received: by 2002:a25:a2c8:: with SMTP id
	c8-v6mr11502386ybn.300.1532526468138; 
	Wed, 25 Jul 2018 06:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
In-Reply-To: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Wed, 25 Jul 2018 08:47:12 -0500
Message-ID: <CAJgxT3-Jrr2baQz8Y6c_VzNf0Jn6qSEfgNbDYu7xGN4g1PRT=A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Ordering of anonymous Python functions and task signature calculations
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
X-List-Received-Date: Wed, 25 Jul 2018 13:47:50 -0000
Content-Type: multipart/alternative; boundary="000000000000be0a9f0571d31f47"

--000000000000be0a9f0571d31f47
Content-Type: text/plain; charset="UTF-8"

(Cross-posting to bitbake-devel.)

Quite a while ago I wrote the following message:

On Tue, Jan 24, 2017 at 11:55 AM Matt Hoosier <matt.hoosier@gmail.com>
wrote:

> In order to support a use-case that embeds information about the Git
> revision of Yocto itself that was used to make a build, I would like to run
> some arbitrary Python code and dump the results (Git SHA1's, tag names,
> etc) into a Bitbake variable.
>
> The idea is that the variable would get consumed in a do_install() task to
> populate some cookie-crumb file in the package payload.
>
> Something like:
>
>   DEPENDS = "git-native"
>
>   python () {
>     # This pseudocode isn't strictly functional for invoking Git, but you
> get the idea
>     d.setVar('GIT_INFO', subprocess.Popen(['git', 'rev-list',
> ...]).communicate().stdout)
>   }
>
>   do_install () {
>     install -d ${D}/etc
>     echo "${GIT_INFO}" > ${D}/etc/git-info.txt
>   }
>
> This all works on a fresh run, but Bitbake appears not to be evaluating
> the anonymous Python function on each execution. This leads it to have
> out-of-date information about the Git working copy when global state
> changes but happens not to impact the particular recipe holding this logic.
>
>
The replies given at the time were very helpful in letting me accomplish my
immediate goals, but I never really did get to the bottom of the real
question:


> Is there any trick available to cause the Python function to execute (and
> hence update the value of ${GIT_INFO} each Bitbake execution so that the
> up-to-the-moment contents of it filter into the calculation of the
> signature for do_install()? Or am I just trying a wrong-headed approach and
> doing something illegitimate?
>

Some build systems I know of [1] that are based on hashes rather than
timestamps have a way that you can inform the task execution engine to
always poison the inputs to a certain task's up-to-dateness check. Is there
anything in Bitbake that would allow a declaration to force such-and-such
variable in a recipe always to be re-evaluated:

  EXTERNALLY_INFLUENCED_VARIABLE = "${@int(random.random() * 10)}"
  do_install[vardepsalwaysdirty] = " EXTERNALLY_INFLUENCED_VARIABLE "

  do_install() {
    echo '${ EXTERNALLY_INFLUENCED_VARIABLE }' > ${D}/etc/stuff.txt
  }

Don't read too much into the example calling random() here. That's not
really what I want to do; the point is just that the variable's value
(though deterministic) isn't computed strictly from Bitbake metadata. So
I'm searching for a way to get the value of EXTERNALLY_INFLUENCED_VARIABLE
to be re-computed each time Bitbake starts. If the computed value ends up
matching what was seen on the last execution, then any dependent tasks
wouldn't need re-run.

Any ideas?

[1] I'm thinking particularly of Waf's hash-based task graph, which
supports annotations that can be used to always cause a task to be re-run
even if all the inputs feeding into it appear up-to-date.

Thanks,
Matt

--000000000000be0a9f0571d31f47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div>(Cross-posting to bitbake-=
devel.)</div><div dir=3D"ltr"><span style=3D"font-size:small;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline"><br></span></div><div dir=3D"ltr">

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">Quite a while ago I wrote the following message:</span><br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">On Tue, Jan 24, 2017 at 11:55 AM Matt H=
oosier &lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt=
.hoosier@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr">In order to support a use-case that embeds information abou=
t the Git revision of Yocto itself that was used to make a build, I would l=
ike to run some arbitrary Python code and dump the results (Git SHA1&#39;s,=
 tag names, etc) into a Bitbake variable.<div><br></div><div>The idea is th=
at the variable would get consumed in a do_install() task to populate some =
cookie-crumb file in the package payload.</div><div><br></div><div>Somethin=
g like:</div><div><br></div><div>=C2=A0 DEPENDS =3D &quot;git-native&quot;<=
/div><div><br></div><div>=C2=A0 python () {</div><div>=C2=A0 =C2=A0 # This =
pseudocode isn&#39;t strictly functional for invoking Git, but you get the =
idea</div><div>=C2=A0 =C2=A0 d.setVar(&#39;GIT_INFO&#39;, subprocess.Popen(=
[&#39;git&#39;, &#39;rev-list&#39;, ...]).communicate().stdout)</div><div>=
=C2=A0 }</div><div><br></div><div>=C2=A0 do_install () {</div><div>=C2=A0 =
=C2=A0 install -d ${D}/etc</div><div>=C2=A0 =C2=A0 echo &quot;${GIT_INFO}&q=
uot; &gt; ${D}/etc/git-info.txt</div><div>=C2=A0 }</div><div><br></div><div=
>This all works on a fresh run, but Bitbake appears not to be evaluating th=
e anonymous Python function on each execution. This leads it to have out-of=
-date information about the Git working copy when global state changes but =
happens not to impact the particular recipe holding this logic.</div><div><=
br></div></div></blockquote><div><br></div><div>The replies given at the ti=
me were very helpful in letting me accomplish my immediate goals, but I nev=
er really did get to the bottom of the real question:</div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div></div><div>Is there a=
ny trick available to cause the Python function to execute (and hence updat=
e the value of ${GIT_INFO} each Bitbake execution so that the up-to-the-mom=
ent contents of it filter into the calculation of the signature for do_inst=
all()? Or am I just trying a wrong-headed approach and doing something ille=
gitimate?=C2=A0</div></div></blockquote><div><br></div><div>Some build syst=
ems I know of [1] that are based on hashes rather than timestamps have a wa=
y that you can inform the task execution engine to always poison the inputs=
 to a certain task&#39;s up-to-dateness check. Is there anything in Bitbake=
 that would allow a declaration to force such-and-such variable in a recipe=
 always to be re-evaluated:</div><div><br></div><div>=C2=A0 EXTERNALLY_INFL=
UENCED_VARIABLE =3D &quot;${@int(random.random() * 10)}&quot;</div><div>=C2=
=A0 do_install[vardepsalwaysdirty] =3D &quot;

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">EXTERNALLY_INFLUENCED_VARIABLE</span>

&quot;<br><br></div><div>=C2=A0 do_install() {</div><div>=C2=A0 =C2=A0 echo=
 &#39;${

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">EXTERNALLY_INFLUENCED_VARIABLE</span>

}&#39; &gt; ${D}/etc/stuff.txt</div><div>=C2=A0 }</div><div><br></div><div>=
Don&#39;t read too much into the example calling random() here. That&#39;s =
not really what I want to do; the point is just that the variable&#39;s val=
ue (though deterministic) isn&#39;t computed strictly from Bitbake metadata=
. So I&#39;m searching for a way to get the value of=20

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">EXTERNALLY_INFLUENCED_VARIABLE</span>

 to be re-computed each time Bitbake starts. If the computed value ends up =
matching what was seen on the last execution, then any dependent tasks woul=
dn&#39;t need re-run.</div><div><br></div><div>Any ideas?</div><div><br></d=
iv><div>[1] I&#39;m thinking particularly of Waf&#39;s hash-based task grap=
h, which supports annotations that can be used to always cause a task to be=
 re-run even if all the inputs feeding into it appear up-to-date.</div><div=
><br></div><div>Thanks,</div><div>Matt</div></div></div>

--000000000000be0a9f0571d31f47--
