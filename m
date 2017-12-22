Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED7CFE00D75; Fri, 22 Dec 2017 14:28:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D37AE00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 14:28:40 -0800 (PST)
Received: by mail-yb0-f181.google.com with SMTP id z11so18489596ybm.1
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 14:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=egDl9pBZXmxBmVREh62GqBwl2x5+e1LspvYjPiv66i0=;
	b=FH9X+erF+kgP/6fRNMBLaHmdgQheFJ818MfEiPxsu4DtROiX0SHFZhSGvvAjB0hjVG
	RQ1P236iUTfzudA7Qh6Lebx3aM5y8gJw6H2GZEqaASprc76ACJQkLpQRzG/NiHnr5Z9s
	/Ql77qb8bUUrCdSa5BAPCYIQtXx0Q9wm8dqKmSag9GgLW8PGNmBfLzXspDUuDpTJtspb
	6686S8rwW0H21f6D7Vu/N2tDqyQHib3zc4Jb6YDdjP4+5FvxQ3IzSkHPGs0wpBTRx55p
	6n/2ff9P56EkYjRcaPbMtrrFKJVvCO8eJN/AQ5pwwyPhxqOC4nUF4HFd6quyCUhUSy3w
	uZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=egDl9pBZXmxBmVREh62GqBwl2x5+e1LspvYjPiv66i0=;
	b=E54gG9ff73OfKOluN+5pizX066yvVu6o59NWPMqyMEtSnDHyCIFI9gWjp4gNzT+wh2
	BWITH3lerOanJ8sBaOBFzU7tp2Yxxf54LN5jtwNr29KrjiPpbbwdFU7i9VuPqaIXIAX3
	fuaGCt16wyFqg8IOreF520DZFgP+YvwcjbdkTdsHCE7UugMZEwdLQef+pb55V2v6jTBW
	CCU9EaFKTGT0INiN5x4hys7qyIlm4ISWVfv3gDUWWILUaKyS68itq6aKgCj5IduEjJpT
	L5miICVyvXspoSm9ncJp5Eb/fd8Ht3QqHsnnNrQtOhwFc0kmYnv4O/Hk/FutR5NQxCOs
	2/lQ==
X-Gm-Message-State: AKGB3mJqXVMTuRdmVmonY7Z4h+1jzcT8Dwj/qpxbkW+tpByskTThg4MH
	T0PabHnJ6n9W5PkVr+VCSzeBB+vhs761eCM/GMk=
X-Google-Smtp-Source: ACJfBov7PMe8dY9lBxMUHrcTSrIaqWqAW0LjsMIhE0U9sgZ6UM2dz+GmC1iU86RGvafD/6x/htWnkqaUMZs+XJhBRu8=
X-Received: by 10.37.197.143 with SMTP id v137mr11236256ybe.368.1513981720145; 
	Fri, 22 Dec 2017 14:28:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.97.6 with HTTP; Fri, 22 Dec 2017 14:28:39 -0800 (PST)
In-Reply-To: <CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Fri, 22 Dec 2017 23:28:39 +0100
Message-ID: <CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Fri, 22 Dec 2017 22:28:43 -0000
Content-Type: multipart/alternative; boundary="94eb2c14757aa034460560f55675"

--94eb2c14757aa034460560f55675
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 22, 2017 at 7:57 PM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Fri, Dec 22, 2017 at 2:17 PM, Andreas M=C3=BCller <schnitzeltony@gmail=
.com>
> wrote:
> > On Fri, Dec 22, 2017 at 2:25 PM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
> >>
> >> Hi Andreas,
> >>
> >> On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller <
> schnitzeltony@gmail.com>
> >> wrote:
> >>>
> >>>
> >>> Why not simply one stable kernel with RT-patches applied if user
> decides
> >>> by an option? That is what I am doing for >1 year now and
> meta-raspi-light
> >>> is the one which caused me least efforts/headaches of all. And yes I
> know I
> >>> made life easy here by removing userland completely and taking care f=
or
> >>> RPi2/3 only.
> >>>
> >>
> >> I will always advocate against forks but definitely that is an option
> too.
> >> What I want to understand is why maintaining it in meta-raspberrypi wa=
s
> >> painful. Basically, the question is how do you currently maintain,
> rebase
> >> etc the rt patch? I would expect it to happen in a git tree as well.
> Isn't
> >> that the case?
> >>
> > I maintained it this way:
> >
> > * Set new kernel version
> > * Check if there is an update at RT-Kernel. If so update the patch.
> > * Rebuild the kernel. In case a patch does not apply cleanly, I use git
> > inside of oe work-shared folder, check/align for hunks failing and inse=
rt
> > them manually into original patch. From my experience there are usually
> very
> > few hunks to touch so this is no rocket science.
> >
> > What do you think?
> >
>
> So, my thinking was that if you're going through the effort of getting
> the -rt patches to apply to the rpi kernel, I'd like to see that
> available to non-OpenEmbedded users. I think a linux-raspberrypi-rt
> kernel tree would be a useful think to make available as a standalone
> project, which we can then pull into meta-raspberrypi as a simple
> recipe.
>
> My complaint with having the entire -rt patch in the meta-raspberrypi
> repo was that it's a huge, un-reviewable blob. Multi-thousand line
> patches are now less painful with review happening on GitHub now
> though - they at least don't upset my email workflow anymore :)
>
> Could you try handling this in git by merging the -rt kernel branch
> (https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-st
> able-rt.git/log/?h=3Dv4.9-rt)
> into the linux-raspberrypi branch regularly instead of by applying the
> -rt patch manually? Any merge conflicts could be handled cleanly that
> way and it would give us something we could bisect properly in case of
> any bugs. The resulting git repository could be published online as
> something like 'linux-raspberrypi-rt' if this works.
>
> This is basically my opinion though, there is no one true Right Way
> (TM) to do this. If you decide it's still easier for you to handle
> this as a patch in the meta-raspberrypi layer then I'm happy to
> support that.
>
> Good suggestion - but:

1. you overestimate the RT-patching process / errors caused by RT
2. I would like to keep RT and non-RT kernel versions in sync
3. I see more efforts which don't buy me anything personally

My dislike (3.) might be increased by the fact that I

* (try to) maintain >400 recipes and contribute to others more or less for
'fun' and due to that I am not keen on some extra duty
* am an old man afraid of changing bad habits :)

However: there is no time pressure on this matter and I am looking forward
to discuss this with you (and others) at FOSDEM. I am sure we'll find a
solution/compromise there.

Andreas

--94eb2c14757aa034460560f55675
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Dec 22, 2017 at 7:57 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span =
class=3D"m_8957562726677992867gmail-">On Fri, Dec 22, 2017 at 2:17 PM, Andr=
eas M=C3=BCller &lt;<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_b=
lank">schnitzeltony@gmail.com</a>&gt; wrote:<br>
&gt; On Fri, Dec 22, 2017 at 2:25 PM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Andreas,<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller &lt;<a href=
=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmail.c=
om</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
</span><span class=3D"m_8957562726677992867gmail-">&gt;&gt;&gt; Why not sim=
ply one stable kernel with RT-patches applied if user decides<br>
&gt;&gt;&gt; by an option? That is what I am doing for &gt;1 year now and m=
eta-raspi-light<br>
&gt;&gt;&gt; is the one which caused me least efforts/headaches of all. And=
 yes I know I<br>
&gt;&gt;&gt; made life easy here by removing userland completely and taking=
 care for<br>
&gt;&gt;&gt; RPi2/3 only.<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I will always advocate against forks but definitely that is an opt=
ion too.<br>
&gt;&gt; What I want to understand is why maintaining it in meta-raspberryp=
i was<br>
&gt;&gt; painful. Basically, the question is how do you currently maintain,=
 rebase<br>
&gt;&gt; etc the rt patch? I would expect it to happen in a git tree as wel=
l. Isn&#39;t<br>
&gt;&gt; that the case?<br>
&gt;&gt;<br>
&gt; I maintained it this way:<br>
&gt;<br>
&gt; * Set new kernel version<br>
&gt; * Check if there is an update at RT-Kernel. If so update the patch.<br=
>
&gt; * Rebuild the kernel. In case a patch does not apply cleanly, I use gi=
t<br>
&gt; inside of oe work-shared folder, check/align for hunks failing and ins=
ert<br>
&gt; them manually into original patch. From my experience there are usuall=
y very<br>
&gt; few hunks to touch so this is no rocket science.<br>
&gt;<br>
&gt; What do you think?<br>
&gt;<br>
<br>
</span>So, my thinking was that if you&#39;re going through the effort of g=
etting<br>
the -rt patches to apply to the rpi kernel, I&#39;d like to see that<br>
available to non-OpenEmbedded users. I think a linux-raspberrypi-rt<br>
kernel tree would be a useful think to make available as a standalone<br>
project, which we can then pull into meta-raspberrypi as a simple<br>
recipe.<br>
<br>
My complaint with having the entire -rt patch in the meta-raspberrypi<br>
repo was that it&#39;s a huge, un-reviewable blob. Multi-thousand line<br>
patches are now less painful with review happening on GitHub now<br>
though - they at least don&#39;t upset my email workflow anymore :)<br>
<br>
Could you try handling this in git by merging the -rt kernel branch<br>
(<a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-stable=
-rt.git/log/?h=3Dv4.9-rt" rel=3D"noreferrer" target=3D"_blank">https://git.=
kernel.org/pub/sc<wbr>m/linux/kernel/git/rt/linux-st<wbr>able-rt.git/log/?h=
=3Dv4.9-rt</a>)<br>
into the linux-raspberrypi branch regularly instead of by applying the<br>
-rt patch manually? Any merge conflicts could be handled cleanly that<br>
way and it would give us something we could bisect properly in case of<br>
any bugs. The resulting git repository could be published online as<br>
something like &#39;linux-raspberrypi-rt&#39; if this works.<br>
<br>
This is basically my opinion though, there is no one true Right Way<br>
(TM) to do this. If you decide it&#39;s still easier for you to handle<br>
this as a patch in the meta-raspberrypi layer then I&#39;m happy to<br>
support that.<br>
<div class=3D"m_8957562726677992867gmail-HOEnZb"><div class=3D"m_8957562726=
677992867gmail-h5"><br></div></div></blockquote></div>Good suggestion - but=
:<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
1. you overestimate the RT-patching process / errors caused by RT<br></div>=
<div class=3D"gmail_extra">2. I would like to keep RT and non-RT kernel ver=
sions in sync</div><div class=3D"gmail_extra">3. I see more efforts which d=
on&#39;t buy me anything personally<br></div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">My dislike (3.) might be increased by the=
 fact that I <br></div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">* (try to) maintain &gt;400 recipes and contribute to others mo=
re or less for &#39;fun&#39; and due to that I am not keen on some extra du=
ty</div><div class=3D"gmail_extra">*  am an old man afraid of changing bad =
habits :)<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">However: there is no time pressure on this matter and I am looking =
forward to discuss this with you (and others) at FOSDEM. I am sure we&#39;l=
l find a solution/compromise there.<br></div><div class=3D"gmail_extra"><br=
></div>Andreas<br></div>

--94eb2c14757aa034460560f55675--
