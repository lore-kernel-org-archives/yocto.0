Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2B0E00B47; Thu,  1 Jun 2017 00:08:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B649BE00ADD
	for <yocto@lists.yoctoproject.org>;
	Thu,  1 Jun 2017 00:08:51 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id p144so2258408ywp.2
	for <yocto@lists.yoctoproject.org>;
	Thu, 01 Jun 2017 00:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lynd9oGqo6okUylHd/xzoap2ilSlmUWmLTrKNOrkXLc=;
	b=IbpaXGsdVkDP8nDUlu/eIbj7zMGX2BWyRa+kxSXQVV7LAUbn9CYthwOHp+Hrzif0bg
	Q6mSIdMeYsHrtI+n8RtGCuPlxfjw021jvfsLyDty9Y283tB+3/v86GOg75vxaESuEeYo
	pBgoN/5Ee2I7lcfLGVeq37BZ4OqK9b7bOk9JJBeuTkW4tCwjNingID6McinQYVCEjvIZ
	WJAy7LYKd55enIyio6qvJfWvXug8P615J5MwaCvmLzwFRkXnHv+TF+ULVUsDcmwmrXWY
	/Egv5npDd+JCmo1sjoHjFWh5GmuyxWnclpteFtF3/PAi3uBk/LEkTRNDt5NUwUJ1F9wU
	W6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lynd9oGqo6okUylHd/xzoap2ilSlmUWmLTrKNOrkXLc=;
	b=YyQVYkwXmWZQAW/SNjus/sHKuhxTuafZz5iE1cK5d1OoE84B2YICHX6Nw/gpNmUTB5
	sgiZiUGqAHZAQxyhfXbUm5MZdH0UWUc9+X30JQZfe99rPYRP9l87LNYtJf4TLZWwYU7r
	zBduPIhkJtWkMQ7Fjq+GMN5pNdsLn21CIts9HNB/0v9Jw1MY0LRjFuVn0NwUCOfRprFn
	9HLyOgL6C9kWNeHvy1+QNMehSLF/bejaN3O6HxreBesJ3xmgP64ENCdAALYvS+g+tR+S
	/ARA/3R1lyyuQpCfJ1S1MAGOFgWRUTlPNKHJRaghxcONkIe5TRFilNpEncwamV7qBMUX
	07RA==
X-Gm-Message-State: AODbwcBj56ZBxRbQ/KVHSF3qbsw152eReHjJr8X8z8IU0T7dza7dorKy
	0MJUa5xI4oCDM0PhEAvutdPWgjcPJQ==
X-Received: by 10.129.94.135 with SMTP id s129mr32668ywb.130.1496300930536;
	Thu, 01 Jun 2017 00:08:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.162.38 with HTTP; Thu, 1 Jun 2017 00:08:50 -0700 (PDT)
In-Reply-To: <CAPyrkgwGS+oheJHGudM-SiveTkdefgexcLoYfsbq+mReHXt+HQ@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
	<CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
	<CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
	<CAPyrkgwGS+oheJHGudM-SiveTkdefgexcLoYfsbq+mReHXt+HQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Jun 2017 09:08:50 +0200
Message-ID: <CA+chaQe2TbD08XjQpEfnLOfgNFcVMQH=f_FRnyAeabPAVsBndg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 07:08:53 -0000
Content-Type: multipart/alternative; boundary="001a114714ea711db00550e0b533"

--001a114714ea711db00550e0b533
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, Paul approach looks good to me, I think it was what was suggested in
first replies to my SRCREV change and I agree with that, I just haven't had
time to send updated patch.

Paul if you have the patch ready please send it, thanks!.

On Thu, Jun 1, 2017 at 8:10 AM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Thu, Jun 1, 2017 at 1:17 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Wed, May 31, 2017 at 5:00 PM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
> >>
> >> On Tue, May 30, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy <armccurdy@gmail.com>
> >>> wrote:
> >>> > On Tue, May 30, 2017 at 10:15 AM, Paul Barker <pbarker@toganlabs.co=
m
> >
> >>> > wrote:
> >>> >> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
> >>> >>
> >>> >> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <
> martin.jansa@gmail.com>
> >>> >> wrote:
> >>> >>> * use latest revision in rpi-4.11.y branch
> >>> >>> * using AUTOREV causes bitbake to run git ls-remote on the
> github.com
> >>> >>> repository in order
> >>> >>>   to convert AUTOREV to currently latest SRCREV even when you don=
't
> >>> >>> use
> >>> >>> linux-raspberrypi_dev
> >>> >>>   at all, just happen to have meta-raspberrypi layer in your
> >>> >>> bblayers.conf, that's bad for
> >>> >>>   people who want to be able to build without network access
> >>> >>> (completely
> >>> >>> from premirror)
> >>> >>>
> >>> >>
> >>> >> These branches get rebased often so locking SRCREV caused another
> >>> >> kind of problem. what we can do is.
> >>> >>
> >>> >> 1. Let user like you override the SRCREC via a bbappend or conf
> file.
> >>> >> so change the assignment to ?=3D
> >>> >> 2. Delete the recipe completely. We lose some of upstream testing.
> >>> >>
> >>> >> We should be able to skip the recipe if it isn't selected as the
> >>> >> preferred
> >>> >> version and/or provider of "virtual/kernel". I'm out at the minute
> so
> >>> >> can't
> >>> >> look at it now but will try to take a look later this week.
> >>> >
> >>> > The linux-yocto-dev.bb recipe contains an example of doing that.
> >>> >
> >>>
> >>> ah perfect. Thats what we need here
> >>>
> >>>
> >>> http://cgit.openembedded.org/openembedded-core/tree/meta/
> recipes-kernel/linux/linux-yocto-dev.bb?h=3Dmaster#n28
> >>>
> >>> please rename the recipe to be linux-raspberrypi-dev.bb and add the
> magic
> >>> above and send a v2
> >>>
> >>
> >> Using the magic above we still hardcode a revision there. So if a user
> wants
> >> to compile the recipe without setting the preferred provider it will
> fail.
> >
> > what will be the usecase ? when you have a different kernel selected bu=
t
> > woould like to compile yet another kernel
> >
> > that rev can be a well known rev like branchpoint. Moreover, I think
> > if someone wants to use the dev recipe then its expected that they
> > switch
> > to using AUTOREV or some other local mechanism for pinning if needed.
> >
>
> I was thinking of a different approach entirerly. We can add the
> following at the top of the recipe file:
>
> python __anonymous() {
>     if "linux-raspberrypi-dev" not in
> d.getVar("PREFERRED_PROVIDER_virtual/kernel"):
>         msg =3D "Skipping linux-raspberrypi-dev as it is not the preferre=
d "
> + \
>               "provider of virtual/kernel."
>         raise bb.parse.SkipRecipe(msg)
> }
>
> (Hopefully gmail won't mangle that too much)
>
> I've just tested it and it works fine as long as it's before the use
> of ${AUTOREV}. If there's no objections to this approach I'll submit a
> patch.
>
> Cheers,
>
> --
> Paul Barker
> Co-Founder & Principal Engineer
> Tog=C3=A1n Labs Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114714ea711db00550e0b533
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, Paul approach looks good to me, I think it was what w=
as suggested in first replies to my SRCREV change and I agree with that, I =
just haven&#39;t had time to send updated patch.<div><br></div><div>Paul if=
 you have the patch ready please send it, thanks!.</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jun 1, 2017 at 8:10 AM=
, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com=
" target=3D"_blank">pbarker@toganlabs.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Thu, Jun =
1, 2017 at 1:17 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt; wrote:<br>
&gt; On Wed, May 31, 2017 at 5:00 PM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, May 30, 2017 at 6:29 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy &lt;<a href=3D=
"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt; On Tue, May 30, 2017 at 10:15 AM, Paul Barker &lt;<a href=
=3D"mailto:pbarker@toganlabs.com">pbarker@toganlabs.com</a>&gt;<br>
&gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt; On 30 May 2017 5:08 p.m., &quot;Khem Raj&quot; &lt;<a=
 href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Tue, May 30, 2017 at 12:57 AM, Martin Jansa &lt;<a=
 href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; * use latest revision in rpi-4.11.y branch<br>
&gt;&gt;&gt; &gt;&gt;&gt; * using AUTOREV causes bitbake to run git ls-remo=
te on the <a href=3D"http://github.com" rel=3D"noreferrer" target=3D"_blank=
">github.com</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; repository in order<br>
&gt;&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0to convert AUTOREV to currently lates=
t SRCREV even when you don&#39;t<br>
&gt;&gt;&gt; &gt;&gt;&gt; use<br>
&gt;&gt;&gt; &gt;&gt;&gt; linux-raspberrypi_dev<br>
&gt;&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0at all, just happen to have meta-rasp=
berrypi layer in your<br>
&gt;&gt;&gt; &gt;&gt;&gt; bblayers.conf, that&#39;s bad for<br>
&gt;&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0people who want to be able to build w=
ithout network access<br>
&gt;&gt;&gt; &gt;&gt;&gt; (completely<br>
&gt;&gt;&gt; &gt;&gt;&gt; from premirror)<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; These branches get rebased often so locking SRCREV ca=
used another<br>
&gt;&gt;&gt; &gt;&gt; kind of problem. what we can do is.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; 1. Let user like you override the SRCREC via a bbappe=
nd or conf file.<br>
&gt;&gt;&gt; &gt;&gt; so change the assignment to ?=3D<br>
&gt;&gt;&gt; &gt;&gt; 2. Delete the recipe completely. We lose some of upst=
ream testing.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; We should be able to skip the recipe if it isn&#39;t =
selected as the<br>
&gt;&gt;&gt; &gt;&gt; preferred<br>
&gt;&gt;&gt; &gt;&gt; version and/or provider of &quot;virtual/kernel&quot;=
. I&#39;m out at the minute so<br>
&gt;&gt;&gt; &gt;&gt; can&#39;t<br>
&gt;&gt;&gt; &gt;&gt; look at it now but will try to take a look later this=
 week.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; The <a href=3D"http://linux-yocto-dev.bb" rel=3D"noreferr=
er" target=3D"_blank">linux-yocto-dev.bb</a> recipe contains an example of =
doing that.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ah perfect. Thats what we need here<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://cgit.openembedded.org/openembedded-core/tree=
/meta/recipes-kernel/linux/linux-yocto-dev.bb?h=3Dmaster#n28" rel=3D"norefe=
rrer" target=3D"_blank">http://cgit.openembedded.org/<wbr>openembedded-core=
/tree/meta/<wbr>recipes-kernel/linux/linux-<wbr>yocto-dev.bb?h=3Dmaster#n28=
</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; please rename the recipe to be <a href=3D"http://linux-raspber=
rypi-dev.bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb<=
/a> and add the magic<br>
&gt;&gt;&gt; above and send a v2<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Using the magic above we still hardcode a revision there. So if a =
user wants<br>
&gt;&gt; to compile the recipe without setting the preferred provider it wi=
ll fail.<br>
&gt;<br>
&gt; what will be the usecase ? when you have a different kernel selected b=
ut<br>
&gt; woould like to compile yet another kernel<br>
&gt;<br>
&gt; that rev can be a well known rev like branchpoint. Moreover, I think<b=
r>
&gt; if someone wants to use the dev recipe then its expected that they<br>
&gt; switch<br>
&gt; to using AUTOREV or some other local mechanism for pinning if needed.<=
br>
&gt;<br>
<br>
</div></div>I was thinking of a different approach entirerly. We can add th=
e<br>
following at the top of the recipe file:<br>
<br>
python __anonymous() {<br>
=C2=A0 =C2=A0 if &quot;linux-raspberrypi-dev&quot; not in<br>
d.getVar(&quot;PREFERRED_PROVIDER_<wbr>virtual/kernel&quot;):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg =3D &quot;Skipping linux-raspberrypi-dev as=
 it is not the preferred &quot; + \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;provider of virtual/=
kernel.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.parse.SkipRecipe(msg)<br>
}<br>
<br>
(Hopefully gmail won&#39;t mangle that too much)<br>
<br>
I&#39;ve just tested it and it works fine as long as it&#39;s before the us=
e<br>
of ${AUTOREV}. If there&#39;s no objections to this approach I&#39;ll submi=
t a<br>
patch.<br>
<br>
Cheers,<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
Co-Founder &amp; Principal Engineer<br>
Tog=C3=A1n Labs Ltd<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114714ea711db00550e0b533--
