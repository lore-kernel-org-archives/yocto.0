Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4D56E00CEC; Wed, 12 Oct 2016 08:37:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD0A0E00CEC
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 08:37:16 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id p136so3590511oic.1
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 08:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=JP8B4MS+GNgO9ZFadLNZG3snS/1XZBb3OYDMB8BaZm4=;
	b=wR2AStPOwkiB4xInPexaBjz2iKt1ajEeMEleLs8oKsfIwhKgUccICovzF5vVRa/llp
	x1072wLDcNinhcRKjt3Vv6nRLpQCN9NfmcQtPXiFGCXiU3DuXk+cG8q/wTMC3iT1RGan
	GiodzV0LXn4+7T9AKBSqo6AqYOOJuU2RK7aa5nT3z68UKT1PSd+oOqLUEN/rlsck8TcL
	DlwU2UiqO1OqrFoyqzmfQr5R94zt5wYhDWZ7ORtIHfSfuddgOT5y15geua2raI6mOneS
	qfN25hKytr1D79mv6/I6TNg6ELLxDGaM4ED0ZxjbjC8jUbE2f+bFjTiIq5sH2YOxVJWJ
	OoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=JP8B4MS+GNgO9ZFadLNZG3snS/1XZBb3OYDMB8BaZm4=;
	b=R+vUDJGctkX1v5QbEOP1TBI8XP9M/3xihaF2JKsjS8Jb0bXtW9bVHE2ahrUezhJR/G
	GJD3PwBxAjlwx8+3sAevQ8kv0B/Zy0ZM1Dx124t4llUi/BR5zwWsYLmu7fwnhLXiIspi
	43rc4habeSeCp+DYnOiAYl1ADYV6TyOtI6BMazr8klNIOdO8TPelnvjK5hOg3X0Dl6Tp
	oO9qHmNprEm5AQCO4LcRzUpVTumuqCTO2tbCSxPGxEtGTcZ/x26hacc8tJs71gTr3v1I
	ZH8ClHm1xxLzRHR4QTdgfVejM0gctwdBQDCYYE7RfFwRWR/oNbUR8jrNatOTvhfCd7ID
	xvkg==
X-Gm-Message-State: AA6/9RkwmzP0JuNKhb1XjDel5U7YTrkI0PqeeJamxaETqXaHFJWFXYSEoj3OHwZhoFHWmtjqmfut2ELtevkIzw==
X-Received: by 10.202.222.133 with SMTP id v127mr1111302oig.22.1476286635658; 
	Wed, 12 Oct 2016 08:37:15 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.13.194 with HTTP; Wed, 12 Oct 2016 08:36:55 -0700 (PDT)
In-Reply-To: <1476270509.2992.65.camel@intel.com>
References: <eadb5311-bebc-97fa-1bdd-e85465a6e19e@vitheia.com>
	<1476270509.2992.65.camel@intel.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 12 Oct 2016 08:36:55 -0700
X-Google-Sender-Auth: hANggqdPLwAZA0OGVDr2Q1oRgU4
Message-ID: <CABcZANkq53KZ7kn6wcy-dn=ev2y5c3LwsT9CFqUdbp_cwV2arA@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: machine specific task
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
X-List-Received-Date: Wed, 12 Oct 2016 15:37:19 -0000
Content-Type: multipart/alternative; boundary=001a11440d06815861053eacc451

--001a11440d06815861053eacc451
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 12, 2016 at 4:08 AM, Patrick Ohly <patrick.ohly@intel.com>
wrote:

> On Wed, 2016-10-12 at 12:58 +0300, Mircea Gliga wrote:
> > According to the docs here
> > http://www.yoctoproject.org/docs/2.1.1/mega-manual/mega-
> manual.html#structure-your-layers
> > one can specify variables that are machine specific, eg
> > KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb". I can't find a reference
> > on how to create a task specific only for a certain machine.
> > Is there some mechanism to add and execute a custom task just for a
> > specific machine, using *addtask* ?
> >
> > As an alternative, I could check the machine name right in the beginning
> > of the do_mycustomtask function, and execute code accordingly, something
> > like (pseudo-code):
> >
> > do_mycustomtask {
> >      if {MACHINE} != 'myMachineName'
> >          return;
> >      # code executing for all other machines
> >      [...]
> > }
> > addtask mycustomtask after do_configure before do_compile
>
> It is possible to add the task conditionally in an anonymous Python
> method:
>
> python () {
>     if '${MACHINE}' == 'myMachineName':
>         bb.build.addtask('do_mycustomtask', 'do_compile', 'do_configure',
> d)
> }
>
> I personally find that nicer than the if check in the function itself,
> because the tasks will only show up in build logs when it actually does
> something.


Good idea, but use d.getVar() :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11440d06815861053eacc451
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Oct 12, 2016 at 4:08 AM, Patrick Ohly <span dir=3D"ltr">&lt;<a href=
=3D"mailto:patrick.ohly@intel.com" target=3D"_blank">patrick.ohly@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Wed, 2016-10-12 at 12:58 +0300, Mircea Gliga wrote:<br>
&gt; According to the docs here<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/2.1.1/mega-manual/mega-man=
ual.html#structure-your-layers" rel=3D"noreferrer" target=3D"_blank">http:/=
/www.yoctoproject.org/<wbr>docs/2.1.1/mega-manual/mega-<wbr>manual.html#str=
ucture-your-<wbr>layers</a><br>
&gt; one can specify variables that are machine specific, eg<br>
&gt; KERNEL_DEVICETREE_qemuarm =3D &quot;versatile-pb.dtb&quot;. I can&#39;=
t find a reference<br>
&gt; on how to create a task specific only for a certain machine.<br>
&gt; Is there some mechanism to add and execute a custom task just for a<br=
>
&gt; specific machine, using *addtask* ?<br>
&gt;<br>
&gt; As an alternative, I could check the machine name right in the beginni=
ng<br>
&gt; of the do_mycustomtask function, and execute code accordingly, somethi=
ng<br>
&gt; like (pseudo-code):<br>
&gt;<br>
&gt; do_mycustomtask {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 if {MACHINE} !=3D &#39;myMachineName&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 # code executing for all other machines<br>
&gt;=C2=A0 =C2=A0 =C2=A0 [...]<br>
&gt; }<br>
&gt; addtask mycustomtask after do_configure before do_compile<br>
<br>
</span>It is possible to add the task conditionally in an anonymous Python<=
br>
method:<br>
<br>
python () {<br>
=C2=A0 =C2=A0 if &#39;${MACHINE}&#39; =3D=3D &#39;myMachineName&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.build.addtask(&#39;do_<wbr>mycustomtask&#39;=
, &#39;do_compile&#39;, &#39;do_configure&#39;, d)<br>
}<br>
<br>
I personally find that nicer than the if check in the function itself,<br>
because the tasks will only show up in build logs when it actually does<br>
something.</blockquote></div><br>Good idea, but use d.getVar() :)<br>-- <br=
><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Christop=
her Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded=
, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Grap=
hics</div>
</div></div>

--001a11440d06815861053eacc451--
