Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E779E0086B; Fri, 10 Aug 2018 12:21:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94E5DE006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 12:21:30 -0700 (PDT)
Received: by mail-ed1-f41.google.com with SMTP id o8-v6so5285645edt.13
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 12:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3SkcyPvxyxR67vkh/PoTIRUrzeI4YD86KH8YaNq3gZw=;
	b=sA/kyvsN+WNhZtbenwwyjB7sXP6j1c0hH9yeBQe+iZShNqgEdeRZm9ieUEv37j4QcT
	fOTaFqBtSRe35+piT3gOxkHBVFW76Qd7dVnodiuhWxcrF/XIptLpyazAH1lKcRnN9Fj1
	c8VQ77Ut6eVoLtFb/xhGekbIqY9XTSIceuaq8tfEM/NE5a4q6wk3nqKz7GbdinmuK8Mv
	8XlL4WH4WJ5dH52gjTQBeUIzn8v+26pBASXU8SX5dS+OHXpVYqiZXaP2eWIBkIg2N3Bu
	YtwhrKg3garjdeTcUYhi+YTip3wxSwqz3VytChaAUCivN0MqHq/lrdxGHsXj34+RJ1C/
	/c5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3SkcyPvxyxR67vkh/PoTIRUrzeI4YD86KH8YaNq3gZw=;
	b=Ytejvq+ujZ5ifySS3M3oRSwC3U9OOAl2X1YqmHKuNeGnj/tPOfR/iuDHR2FRbN8zvq
	uTvTh0p0gkJTSjBD8bvAwNM2ZO9nTihugP6yPch0OaiWr1ZeH9viH123D5jqV7Hcq403
	CTjTPIDxXVekmBEaIx05cYM62SYIA7HnZ2+9D1fca5UMwRnvRaK+Qc+XUM9nwIowXtsW
	UiXRvkZbVr1LKUHofJSVrGmkd+jlCz3YSAqJBel9z9tVjwh7yNba+PSIQ3Vrdc867/jK
	Aa+JdAAOcsivXRWCnUHicaCAtBFcFstSYO7NLvwKLdf/c9LQw9pVlE6vUQVklh8pXDVO
	m7DQ==
X-Gm-Message-State: AOUpUlFxqNP0zw/B+I8bEJwUKkUQa2B/cDQBwjti6qgwxsT9hT73Gc/K
	9214OTm0soF1aWoCm1ZIHWy0fZVzJiElvsviL4vAtR78
X-Google-Smtp-Source: AA+uWPxVVGbcoBwcIsGwuj6vr6UJxJ+Jfv+u65zIzcdJ2yrmZRm7+l4kwmMpEClcTIEtimyzfMPhG1Y/iBoWSON6F4A=
X-Received: by 2002:a50:93a6:: with SMTP id
	o35-v6mr10146456eda.300.1533928889673; 
	Fri, 10 Aug 2018 12:21:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:3e93:0:0:0:0 with HTTP; Fri, 10 Aug 2018 12:21:29
	-0700 (PDT)
In-Reply-To: <CAJO0J4jk-ZtY_t41qb9cJ4L+sPguSFkumRoVS5EvpMU69o2zgA@mail.gmail.com>
References: <1533555294-11187-1-git-send-email-ptsneves@gmail.com>
	<CAFNP8OvEmH364jxPfASjE+4xR-RyZvozPWKTu1hr+KVE-xRh7g@mail.gmail.com>
	<CAJO0J4jk-ZtY_t41qb9cJ4L+sPguSFkumRoVS5EvpMU69o2zgA@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 10 Aug 2018 12:21:29 -0700
Message-ID: <CAFNP8OvRKPGib870GN=szXHC8XOJHZG7TCbDHp2ivyto2CJS8g@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-docs] documentation: Updated testimage targets.
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
X-List-Received-Date: Fri, 10 Aug 2018 19:21:32 -0000
Content-Type: multipart/alternative; boundary="0000000000009469e9057319a67d"

--0000000000009469e9057319a67d
Content-Type: text/plain; charset="UTF-8"

Paulo,

No problems... I made the changes already in the 2.6 version of the YP Ref
Manual (see
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-TEST_TARGET).
You can review that for me and let me know what further changes I need.
You can just respond via email if you like in this thread to tell me of any
changes.  You do not have to submit a formal patch.

I searched for and think I got all the instances of "Systemd-bootTarget"
fixed.  I figured this was just an oversight in the original patch you
sent.  No problems.  Here is a link to the 2.6 version of the mega-manual
that you could search through for any term....
https://yoctoproject.org/docs/2.6/mega-manual/mega-manual.html.  That is a
handy manual to locate terms across the entire Yocto Project manual set.

In short, you don't have to send me a new patch for the docs... I think we
are 99% there.  I just will need you to review that description of
TEST_TARGET in the ref-manual (
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-TEST_TARGET)
and let me know if things are okay with that.

Best,
Scott

On Fri, Aug 10, 2018 at 11:44 AM, Paulo Neves <ptsneves@gmail.com> wrote:

> Hello Scott,
>
> Regarding the other instances of Systemd-bootTarget I will try to grep
> for them and fix them.
> Regarding the truncation It is a mistake on my part. Do you know how I
> can generate the manual to be sure that I do not have mistakes like
> that?
>
> Regarding the file, my apologies. You cannot find it because the
> changes which this manual changes relate to have not yet been
> accepted. I was a bit caught off guard by the fact that the
> documentation and open-embedded mailing lists are separate so I did
> not think that I should only submit documentation changes after the
> OE/poky and others are accepted. When I produced my changes I did it
> in the poky git repository, and split the documentation ad-hoc. I will
> submit the documentation with the fixes you proposed after my other
> commits are accepted. My apologies for the time wasted.
>
> Paulo Neves
>
>
> On Mon, Aug 6, 2018 at 11:12 PM Scott Rifenbark <srifenbark@gmail.com>
> wrote:
> >
> > Paulo,
> >
> > I have some questions on this commit for the dev-manual.
> >
> > See inline comments from me....
> >
> >
> >
> > On Mon, Aug 6, 2018 at 4:34 AM, Paulo Neves <ptsneves@gmail.com> wrote:
> >>
> >> The documentation of available names for TEST_TARGET have
> >> been updated to match the convention of using the
> >> class names of controllers.
> >>
> >> Signed-off-by: Paulo Neves <ptsneves@gmail.com>
> >> ---
> >>  documentation/dev-manual/dev-manual-common-tasks.xml |  8 ++++----
> >>  documentation/ref-manual/ref-variables.xml           | 19
> ++++---------------
> >>  2 files changed, 8 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml
> >> index 0cb967f..2fcdad0 100644
> >> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> >> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> >> @@ -11400,7 +11400,7 @@
> >>                              within a separately started QEMU or any
> >>                              other virtual machine manager.
> >>                              </para></listitem>
> >> -                        <listitem><para><emphasis>"
> Systemd-bootTarget":</emphasis>
> >> +                        <listitem><para><emphasis>"
> SystemdbootTarget":</emphasis>
> >>                              Choose "Systemd-bootTarget" if your
> hardware is
> >
> >
> > There are many instances of the term "Systemd-bootTarget" remaining in
> the manual.  I assume they also will need to convert to "SystemdbootTarget"?
> >
> >>
> >>                              an EFI-based machine with
> >>                              <filename>systemd-boot</filename> as
> bootloader and
> >> @@ -11459,10 +11459,10 @@
> >>              </section>
> >>
> >>              <section id='selecting-systemd-boottarget'>
> >> -                <title>Selecting Systemd-bootTarget</title>
> >> +                <title>Selecting SystemdbootTarget</title>
> >>
> >>                  <para>
> >> -                    If you did not set <filename>TEST_TARGET</filename>
> to
> >> +                    If you did not set <filename>TEST_TARG
> >
> >
> > Looks like an early truncation of the line that is used for the
> replacement?  Should be "If you did not set <filename>TEST_TARGET</filename>
> to"
> >
> >>                      "Systemd-bootTarget", then you do not need any
> information
> >>                      in this section.
> >>                      You can skip down to the
> >> @@ -11472,7 +11472,7 @@
> >>
> >>                  <para>
> >>                      If you did set <filename>TEST_TARGET</filename> to
> >> -                    "Systemd-bootTarget", you also need to perform a
> one-time
> >> +                    "SystemdbootTarget", you also need to perform a
> one-time
> >>                      setup of your master image by doing the following:
> >>                      <orderedlist>
> >>                          <listitem><para><emphasis>Set
> <filename>EFI_PROVIDER</filename>:</emphasis>
> >> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> >> index 2465553..a61fee6 100644
> >> --- a/documentation/ref-manual/ref-variables.xml
> >> +++ b/documentation/ref-manual/ref-variables.xml
> >> @@ -15162,35 +15162,24 @@ recipes-graphics/xorg-font/
> font-alias_1.0.3.bb:PR = "${INC_PR}.3"
> >>                      You can provide the following arguments with
> >>                      <filename>TEST_TARGET</filename>:
> >>                      <itemizedlist>
> >> -                        <listitem><para><emphasis>"qemu" and
> "QemuTarget":</emphasis>
> >> +                        <listitem><para><emphasis>"
> QemuTarget":</emphasis>
> >>                              Boots a QEMU image and runs the tests.
> >>                              See the
> >>                              "<ulink url='&YOCTO_DOCS_DEV_URL;#
> qemu-image-enabling-tests'>Enabling Runtime Tests on QEMU</ulink>"
> >>                              section in the Yocto Project Development
> Tasks
> >>                              Manual for more information.
> >>                              </para></listitem>
> >> -                        <listitem><para><emphasis>"simpleremote" and
> "SimpleRemoteTarget":</emphasis>
> >> +                        <listitem><para><emphasis>"
> SimpleRemoteTarget":</emphasis>
> >>                              Runs the tests on target hardware that is
> already
> >>                              up and running.
> >>                              The hardware can be on the network or it
> can be
> >>                              a device running an image on QEMU.
> >>                              You must also set
> >>                              <link linkend='var-TEST_TARGET_IP'><
> filename>TEST_TARGET_IP</filename></link>
> >> -                            when you use "simpleremote" or
> "SimpleRemoteTarget".
> >> +                            when you use "SimpleRemoteTarget".
> >>                              <note>
> >>                                  This argument is defined in
> >> -                                <filename>meta/lib/oeqa/
> targetcontrol.py</filename>.
> >> -                                The small caps names are kept for
> compatibility
> >> -                                reasons.
> >> -                            </note>
> >> -                            </para></listitem>
> >> -                        <listitem><para><emphasis>"
> GummibootTarget":</emphasis>
> >> -                            Automatically deploys and runs tests on an
> >> -                            EFI-enabled machine that has a master image
> >> -                            installed.
> >> -                            <note>
> >> -                                This argument is defined in
> >> -                                <filename>meta/lib/oeqa/
> controllers/masterimage.py</filename>.
> >> +                                <filename>meta/lib/oeqa/
> controllers/simpleremote.py</filename>.
> >
> >
> > I cannot find any file named "meta/lib/oeqa/controllers/simpleremote.py"
> in the poky repository.  Is this file you are specifying correct for a
> reference to the "SimpleRemoteTarget" parameter?
> >
> >>                              </note>
> >>                              </para></listitem>
> >>                      </itemizedlist>
> >> --
> >> 2.7.4
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>

--0000000000009469e9057319a67d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Paulo, <br></div><div><br></div><div>No problems... I=
 made the changes already in the 2.6 version of the YP Ref Manual (see <a h=
ref=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-TES=
T_TARGET">https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-=
TEST_TARGET</a>).=C2=A0 You can review that for me and let me know what fur=
ther changes I need.=C2=A0 You can just respond via email if you like in th=
is thread to tell me of any changes.=C2=A0 You do not have to submit a form=
al patch.</div><div><br></div><div>I searched for and think I got all the i=
nstances of &quot;Systemd-bootTarget&quot; fixed.=C2=A0 I figured this was =
just an oversight in the original patch you sent.=C2=A0 No problems.=C2=A0 =
Here is a link to the 2.6 version of the mega-manual that you could search =
through for any term.... <a href=3D"https://yoctoproject.org/docs/2.6/mega-=
manual/mega-manual.html">https://yoctoproject.org/docs/2.6/mega-manual/mega=
-manual.html</a>.=C2=A0 That is a handy manual to locate terms across the e=
ntire Yocto Project manual set.</div><div><br></div><div>In short, you don&=
#39;t have to send me a new patch for the docs... I think we are 99% there.=
=C2=A0 I just will need you to review that description of TEST_TARGET in th=
e ref-manual (<a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-m=
anual.html#var-TEST_TARGET">https://yoctoproject.org/docs/2.6/ref-manual/re=
f-manual.html#var-TEST_TARGET</a>) and let me know if things are okay with =
that. <br></div><div><br></div><div>Best, <br></div><div>Scott<br></div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Aug 10=
, 2018 at 11:44 AM, Paulo Neves <span dir=3D"ltr">&lt;<a href=3D"mailto:pts=
neves@gmail.com" target=3D"_blank">ptsneves@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Hello Scott,<br>
<br>
Regarding the other instances of Systemd-bootTarget I will try to grep<br>
for them and fix them.<br>
Regarding the truncation It is a mistake on my part. Do you know how I<br>
can generate the manual to be sure that I do not have mistakes like<br>
that?<br>
<br>
Regarding the file, my apologies. You cannot find it because the<br>
changes which this manual changes relate to have not yet been<br>
accepted. I was a bit caught off guard by the fact that the<br>
documentation and open-embedded mailing lists are separate so I did<br>
not think that I should only submit documentation changes after the<br>
OE/poky and others are accepted. When I produced my changes I did it<br>
in the poky git repository, and split the documentation ad-hoc. I will<br>
submit the documentation with the fixes you proposed after my other<br>
commits are accepted. My apologies for the time wasted.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Paulo Neves<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On Mon, Aug 6, 2018 at 11:12 PM Scott Rifenbark &lt;<a href=3D"mailto:srife=
nbark@gmail.com">srifenbark@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Paulo,<br>
&gt;<br>
&gt; I have some questions on this commit for the dev-manual.<br>
&gt;<br>
&gt; See inline comments from me....<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Aug 6, 2018 at 4:34 AM, Paulo Neves &lt;<a href=3D"mailto:ptsn=
eves@gmail.com">ptsneves@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; The documentation of available names for TEST_TARGET have<br>
&gt;&gt; been updated to match the convention of using the<br>
&gt;&gt; class names of controllers.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Paulo Neves &lt;<a href=3D"mailto:ptsneves@gmail.co=
m">ptsneves@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 documentation/dev-manual/dev-<wbr>manual-common-tasks.xml |=
=C2=A0 8 ++++----<br>
&gt;&gt;=C2=A0 documentation/ref-manual/ref-<wbr>variables.xml=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 19 ++++---------------<br>
&gt;&gt;=C2=A0 2 files changed, 8 insertions(+), 19 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/documentation/dev-manual/<wbr>dev-manual-common-tasks=
.xml b/documentation/dev-manual/<wbr>dev-manual-common-tasks.xml<br>
&gt;&gt; index 0cb967f..2fcdad0 100644<br>
&gt;&gt; --- a/documentation/dev-manual/<wbr>dev-manual-common-tasks.xml<br=
>
&gt;&gt; +++ b/documentation/dev-manual/<wbr>dev-manual-common-tasks.xml<br=
>
&gt;&gt; @@ -11400,7 +11400,7 @@<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within a separately started QEMU or =
any<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 other virtual machine manager.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>Systemd-bootTarget&quot;:&lt;/<wbr>emphasis&gt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>SystemdbootTarget&quot;:&lt;/emphasis&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Choose &quot;Systemd-bootTarget&quot=
; if your hardware is<br>
&gt;<br>
&gt;<br>
&gt; There are many instances of the term &quot;Systemd-bootTarget&quot; re=
maining in the manual.=C2=A0 I assume they also will need to convert to &qu=
ot;SystemdbootTarget&quot;?<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 an EFI-based machine with<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;systemd-boot&lt;/<wb=
r>filename&gt; as bootloader and<br>
&gt;&gt; @@ -11459,10 +11459,10 @@<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/section&gt;<b=
r>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;section id=3D&=
#39;selecting-systemd-<wbr>boottarget&#39;&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;title=
&gt;Selecting Systemd-bootTarget&lt;/title&gt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;title=
&gt;Selecting SystemdbootTarget&lt;/title&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
para&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 If you did not set &lt;filename&gt;TEST_TARGET&lt;/<wbr>filename&gt;=
 to<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 If you did not set &lt;filename&gt;TEST_TARG<br>
&gt;<br>
&gt;<br>
&gt; Looks like an early truncation of the line that is used for the replac=
ement?=C2=A0 Should be &quot;If you did not set &lt;filename&gt;TEST_TARGET=
&lt;/<wbr>filename&gt; to&quot;<br>
&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;Systemd-bootTarget&quot;, then you do not need any informa=
tion<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 in this section.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 You can skip down to the<br>
&gt;&gt; @@ -11472,7 +11472,7 @@<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
para&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 If you did set &lt;filename&gt;TEST_TARGET&lt;/<wbr>filename&gt;=
 to<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;Systemd-bootTarget&quot;, you also need to perform a one-time<=
br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;SystemdbootTarget&quot;, you also need to perform a one-time<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 setup of your master image by doing the following:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;orderedlist&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;Set &l=
t;filename&gt;EFI_PROVIDER&lt;/<wbr>filename&gt;:&lt;/emphasis&gt;<br>
&gt;&gt; diff --git a/documentation/ref-manual/<wbr>ref-variables.xml b/doc=
umentation/ref-manual/<wbr>ref-variables.xml<br>
&gt;&gt; index 2465553..a61fee6 100644<br>
&gt;&gt; --- a/documentation/ref-manual/<wbr>ref-variables.xml<br>
&gt;&gt; +++ b/documentation/ref-manual/<wbr>ref-variables.xml<br>
&gt;&gt; @@ -15162,35 +15162,24 @@ recipes-graphics/xorg-font/<wbr>font-ali=
as_1.0.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 You can provide the following arguments with<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;filename&gt;TEST_TARGET&lt;/<wbr>filename&gt;:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;itemizedlist&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>qemu&quot; and &quot;QemuTarget&quot;:&lt;/emphasis&gt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>QemuTarget&quot;:&lt;/emphasis&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Boots a QEMU image and runs the test=
s.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 See the<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&lt;ulink url=3D&#39;&amp;YOCT=
O_DOCS_DEV_URL;#<wbr>qemu-image-enabling-tests&#39;&gt;<wbr>Enabling Runtim=
e Tests on QEMU&lt;/ulink&gt;&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 section in the Yocto Project Develop=
ment Tasks<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Manual for more information.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>simpleremote&quot; and &quot;SimpleRemoteTarget&quot;:&lt;/<wbr>emphasis&g=
t;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>SimpleRemoteTarget&quot;:&lt;/<wbr>emphasis&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Runs the tests on target hardware th=
at is already<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 up and running.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The hardware can be on the network o=
r it can be<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a device running an image on QEMU.<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You must also set<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;link linkend=3D&#39;var-TEST_TAR=
GET_IP&#39;&gt;&lt;<wbr>filename&gt;TEST_TARGET_IP&lt;/<wbr>filename&gt;&lt=
;/link&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 when you use &quot;simpleremote&quot; or=
 &quot;SimpleRemoteTarget&quot;.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 when you use &quot;SimpleRemoteTarget&qu=
ot;.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;note&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 This argument is defin=
ed in<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta/lib/o=
eqa/<wbr>targetcontrol.py&lt;/filename&gt;.<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The small caps names are k=
ept for compatibility<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reasons.<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/note&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&quot;<wbr=
>GummibootTarget&quot;:&lt;/emphasis&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Automatically deploys and runs tests on =
an<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 EFI-enabled machine that has a master im=
age<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 installed.<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;note&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 This argument is defined i=
n<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta/lib/o=
eqa/<wbr>controllers/masterimage.py&lt;/<wbr>filename&gt;.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta/lib/o=
eqa/<wbr>controllers/simpleremote.py&lt;/<wbr>filename&gt;.<br>
&gt;<br>
&gt;<br>
&gt; I cannot find any file named &quot;meta/lib/oeqa/controllers/<wbr>simp=
leremote.py&quot; in the poky repository.=C2=A0 Is this file you are specif=
ying correct for a reference to the &quot;SimpleRemoteTarget&quot; paramete=
r?<br>
&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/note&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;/itemizedlist&gt;<br>
&gt;&gt; --<br>
&gt;&gt; 2.7.4<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/y=
octo</a><br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--0000000000009469e9057319a67d--
