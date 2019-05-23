Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E2DE00B8F; Thu, 23 May 2019 07:49:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA93BE00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:49:02 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id h11so5769265ljb.2
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OtUS73P750+veQiKOjjooFtKhyxlKrKbcsW41sErLCk=;
	b=LsPYmdmSRAfi81VTy4MS37yHmuvG6zXmjEEj8gXxeRp3C5gI1Tirxy3v7rwi8Hk8dT
	ZpsCl4wxtJ1TEjLqsfgC81sLtr6/ka2dEhdAqAsYEAVDCHGOKTNwoj/fdpBKVvUxR/Nl
	RpK/WEYwwcIfmajJZgojLis7IZ2EmPfgN1VRp1Xzs9zvGhhGd9YJVzxzNzwEIXNlPUnr
	hmx/Gag1bWjML/q2hYG/+oE0HP0Zl/Awrx1UKFJ+ccZmPsz1UQ/P/HCtG1OK7H05aWcj
	oIrZ+kZ1yhdA/Iuehst0amu7bkn4/vKATqlsM/Ye/TwwqaRnoD70qCI+et6F7Sq5O1D8
	I04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OtUS73P750+veQiKOjjooFtKhyxlKrKbcsW41sErLCk=;
	b=UCEOtsp/iFkBqxdWw5bXebiP6QH+FHWTDeKUxlkSoNNy2/6zETknODRAG/8axEUTDy
	a1zmlHNiHz4SdTaCBD059e0QkQRtVmDtFLar0Xz+wBp2/byPXPkudWR+WTIX+nIKtkaM
	f3kF2sklH/bd5/tVXgfoR0OAOH58yWOArcwSbdjSGptxQi/cj9DC03ommLqAEHeFEwEr
	kS/E9rdPin0Wx6X1i98da64wiqod+D5pVV3sm8wakawEoWFY6m7tDb2Qc4zxVs8lXmrg
	vZx5NeClwwtM7vMdnlhYnYAz0aGgjTsvJlzinN357NoxC4F6AZOZoMl6EwUIFX/1tUSq
	dZ6A==
X-Gm-Message-State: APjAAAU1qYGmNMq+Ftp/h15QmmLUktyui58ANhek+pm43ZaNAmsV8Mm7
	MyMuQd+vyCf7dIRqat88Dao5RqkkZ/Om9kuDtnY9JIHFJdo=
X-Google-Smtp-Source: APXvYqw1MXzYgvJYRmz68CYCtMR+8Ft/W5YwR3tbj3SLsr6qbigXfu3ovdRs41TVTkr8GY3tIJjgAEC04VGk2XrXB6c=
X-Received: by 2002:a2e:9310:: with SMTP id e16mr24041007ljh.36.1558622941697; 
	Thu, 23 May 2019 07:49:01 -0700 (PDT)
MIME-Version: 1.0
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
	<4df12974-8aef-0ae7-66d4-bc5dd2167100@gherzan.ro>
In-Reply-To: <4df12974-8aef-0ae7-66d4-bc5dd2167100@gherzan.ro>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 May 2019 10:48:50 -0400
Message-ID: <CADkTA4P_OExckh6SuapsbTFHaTPVx7NSPT8TfR=4=vXnkSrF5w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: zubair@balena.io, Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-devsrc used to be full source - not the case since thud
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
X-List-Received-Date: Thu, 23 May 2019 14:49:04 -0000
Content-Type: multipart/alternative; boundary="000000000000c75c3105898f2e81"

--000000000000c75c3105898f2e81
Content-Type: text/plain; charset="UTF-8"

On Thu, May 23, 2019 at 10:39 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

> On 23/05/2019 15.32, Bruce Ashfield wrote:
>
>
>
> On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> Hello,
>>
>> This might have been discussed before. I couldn't find a relevant
>> thread, but if it is so, just link me to it.
>>
>> Since thud, more specific since
>>
>> commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>> Date:   Sat Aug 18 22:50:44 2018 -0400
>>     kernel-devsrc: restructure for out of tree (and on target) module
>> builds
>>
>> ... we switched from a recipe that was deploying the entire source code
>> to one that provides mainly the kernel headers (but not only). This
>> change broke people expectations of this recipe while the description is
>> also confusing: "Development source linux kernel. When built, this
>> recipe packages the \source of the preferred virtual/kernel provider and
>> makes it available for full kernel \development or external module
>> builds".
>>
>> If size is not a problem (which can be the case when you compile on a
>> builder for example and deploy only a OOT kernel module through other
>> means), the full kernel source was a painless experience where things like
>>
>> commit a9471601fedd1f5087304eaa5fd39b98ae220313
>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>> Date:   Thu Aug 30 09:45:41 2018 -0400
>>     kernel-devsrc: fix arm/arm64 target module build
>>
>> ... would not appear. I understand the size impact on target and for
>> those cases, continuously maintaining this recipe with new
>> files/resources needed from the kernel, makes sense. So my proposal is
>> to have two recipes, for example kernel-devsrc and kernel-fullsrc
>> (kernel-src etc.) so people can choose what they need/want
>> deploying/using. Or even have another devsrc provider. I'm open to any
>> implementation detail. I'd just want to have an option for a full kernel
>> source recipe.
>>
>
> This is already planned, and hidden in bugzilla somewhere. I'll have some
> new kernel packaging
> options available for the fall release.
>
> Nice to hear that. Can you share more details on that because we plan to
> implement it for BalenaOS and would be a waste to redo what you already
> have or do it in different ways and reset afterwards.
>

The best place for that is in the bugzilla, I (re)created bug 13360 and
will start moving the details into that (they are scattered around).

Can you elaborate on the use case that is broken with devsrc ? I'd also
like to make changes to that package to support more common workflows if
we've missed them. Feel free to add them to the bug, that way I won't lose
track of them again.

Bruce



> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>
>

-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000c75c3105898f2e81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 23, 2019 at 10:39 AM Andrei Gherzan &lt=
;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-6105383404917638635moz-cite-prefix">On 23/05/201=
9 15.32, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div style=3D"font-size:small"><br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 23, 2019 at 9:5=
6
            AM Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" targ=
et=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
            <br>
            This might have been discussed before. I couldn&#39;t find a
            relevant<br>
            thread, but if it is so, just link me to it.<br>
            <br>
            Since thud, more specific since<br>
            <br>
            commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
            Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
            Date:=C2=A0=C2=A0 Sat Aug 18 22:50:44 2018 -0400<br>
            =C2=A0=C2=A0=C2=A0 kernel-devsrc: restructure for out of tree (=
and on
            target) module builds<br>
            <br>
            ... we switched from a recipe that was deploying the entire
            source code<br>
            to one that provides mainly the kernel headers (but not
            only). This<br>
            change broke people expectations of this recipe while the
            description is<br>
            also confusing: &quot;Development source linux kernel. When
            built, this<br>
            recipe packages the \source of the preferred virtual/kernel
            provider and<br>
            makes it available for full kernel \development or external
            module builds&quot;.<br>
            <br>
            If size is not a problem (which can be the case when you
            compile on a<br>
            builder for example and deploy only a OOT kernel module
            through other<br>
            means), the full kernel source was a painless experience
            where things like<br>
            <br>
            commit a9471601fedd1f5087304eaa5fd39b98ae220313<br>
            Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
            Date:=C2=A0=C2=A0 Thu Aug 30 09:45:41 2018 -0400<br>
            =C2=A0=C2=A0=C2=A0 kernel-devsrc: fix arm/arm64 target module b=
uild<br>
            <br>
            ... would not appear. I understand the size impact on target
            and for<br>
            those cases, continuously maintaining this recipe with new<br>
            files/resources needed from the kernel, makes sense. So my
            proposal is<br>
            to have two recipes, for example kernel-devsrc and
            kernel-fullsrc<br>
            (kernel-src etc.) so people can choose what they need/want<br>
            deploying/using. Or even have another devsrc provider. I&#39;m
            open to any<br>
            implementation detail. I&#39;d just want to have an option for =
a
            full kernel<br>
            source recipe.<br>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div style=3D"font-size:small">This is
              already planned, and hidden in bugzilla somewhere. I&#39;ll
              have some new kernel packaging</div>
            <div style=3D"font-size:small">options
              available for the fall release.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Nice to hear that. Can you share more details on that because we
    plan to implement it for BalenaOS and would be a waste to redo what
    you already have or do it in different ways and reset afterwards. <br><=
/div></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D=
"font-size:small">The best place for that is in the bugzilla, I (re)created=
 bug 13360 and will start moving the details into that (they are scattered =
around).</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">Can you elaborat=
e on the use case that is broken with devsrc ? I&#39;d also like to make ch=
anges to that package to support more common workflows if we&#39;ve missed =
them. Feel free to add them to the bug, that way I won&#39;t lose track of =
them again.</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div bgcolor=
=3D"#FFFFFF">
    <pre class=3D"gmail-m_-6105383404917638635moz-signature" cols=3D"72">--=
=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</pre>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000c75c3105898f2e81--
