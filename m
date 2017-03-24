Return-Path: <1baldgeek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 430D6E00AB6; Fri, 24 Mar 2017 06:08:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (1baldgeek[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 112C0E009C2
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:08:55 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id z70so222954itb.1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=MGzZMfEGEQhizhk3ja8wMHmuyGIijgN2oelDex4o8Qo=;
	b=KLklxPvfwoOsKS9qfaYljRURt2mb3z+zV+fk5CD6Ujnp5ID8wUeXBsZ1yPtxdfc2hW
	BgS0yo/9agSjb9Ed4NmBvzKdvAyJZvRpph1r967Fnf4QHIThB2kxmuV2wPqrvTo2Yl0b
	8GyW21ONQVDn3kHY21Hja7UchJqyzrLcjHSV8Kk2ya28Cfd5IJfi7cPw/hB3IAZaWvxn
	+JdRXV9zQEP4Eo1YP8Ot2DEtVVYbGq7a6gmHJGnCHGWplbQSFwtQ9n0NMaypuiyxCDbu
	a8MImf4rd387qKFtfbK+/CZYYdZKn7wG0SoCAPdIxqr3k+UuEfnXl1B+r3x4vgqW9qly
	V/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=MGzZMfEGEQhizhk3ja8wMHmuyGIijgN2oelDex4o8Qo=;
	b=NyC+pIAlBP8t+Az5CeYbFBMna0GylcebP82jJ3WYO7JG2jPEKM18Dt6PBg/+4f6Pmb
	4tUXmN9yI/t0L84YLDulxhAWGJRIPyos6mZ7/2ghDOyILyGKOHi4PFMtiutJ7KyN2yUp
	zN8kJvhSLFGDeGnhqWpaprHEK1VmUdflh0EbkrsiFJSUVRq/5QxLf1fnE0pwH48QTBAA
	hVazryWaBhajxBNSlJlfNYmkGqjAhcNp3uaw/05K5PQDhiwPQsjT38KE7LTqcXQccLe4
	dromwo1DLBp4ZZVNI1bqQz0CFH9K+27hAEKZZbx/5sfsACZggek3u3HzEfS3U+p0CAkj
	ugRw==
X-Gm-Message-State: AFeK/H3Y1cbWLYL0fyZSeu4VU+ZpPNKr2ShNioKpWq+rMQ/SArphEA8ov9cmYNmfyg2cEg==
X-Received: by 10.36.41.7 with SMTP id p7mr2871503itp.92.1490360934731;
	Fri, 24 Mar 2017 06:08:54 -0700 (PDT)
Received: from [192.168.1.82] (cpe-98-30-171-138.columbus.res.rr.com.
	[98.30.171.138])
	by smtp.gmail.com with ESMTPSA id 188sm957737itm.3.2017.03.24.06.08.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Mar 2017 06:08:53 -0700 (PDT)
From: Dan Riegsecker <1baldgeek@gmail.com>
Message-Id: <88C598EA-E8B2-43DB-8B5D-6DD6DCC2E4C4@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Fri, 24 Mar 2017 09:08:51 -0400
In-Reply-To: <CAHiDW_HONGM4RjSXSn3SYT4cRG+9mbj5giPhrYVe4cSgup=Yxw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
	<6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
	<13191224.qIYrFqvWFr@peggleto-mobl.ger.corp.intel.com>
	<6ffd54ff-01dd-c263-5e44-ca26be3cb9c0@mvista.com>
	<377dbeeeb1774e2883147b2b12a05e6d@SFA-EX01.SAKURAUS.LOCAL>
	<CAHiDW_HONGM4RjSXSn3SYT4cRG+9mbj5giPhrYVe4cSgup=Yxw@mail.gmail.com>
X-Mailer: Apple Mail (2.3259)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Fri, 24 Mar 2017 13:08:59 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BDD51DF6-D9EA-4875-8323-05C00DE9531B"

--Apple-Mail=_BDD51DF6-D9EA-4875-8323-05C00DE9531B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

For whatever it is worth, I am experiencing the same issue. I=E2=80=99m =
running a Lenovo ThinkStation P910 with two Intel Xeon E5-2630 v4 CPUs =
and 64 GB of RAM. I=E2=80=99m running Ubuntu 16.04. I also have been =
unable to find much useful information in the logs, but when running =
bitbake, lightdm just restarts and I end up at a log in screen with all =
running programs halted.

Thanks,
Dan
> On Mar 24, 2017, at 4:17 AM, Jussi Kukkonen <jussi.kukkonen@intel.com> =
wrote:
>=20
> On 23 March 2017 at 22:11, Greg Wilson-Lindberg <GWilson@sakuraus.com =
<mailto:GWilson@sakuraus.com>> wrote:
> Hi Armin & Paul,
>=20
> First there is nothing in the X log files.
> I'm building on a desktop machine with 12GB of memory and an 8 core =
processor running Kubuntu 14.04.
> I added the PARALLEL_MAKE parameter set to 4, no effect, still built =
with 8 threads, crashed.
> Set BB_NUMBER_THREADS to 4, built with 4 threads, still crashed.
>=20
> Getting thrown out of your desktop environment probably indicates the =
core problem is outside of Yocto -- this is still a fine place to =
discuss the issue, just pointing it out. You could keep an eye on 'top' =
sorted by %MEM while doing a build: my theory here is that something =
(like the monstrous amount of IO) that the build does could trigger a =
desktop component to do something stupid that cascades into your desktop =
shell exiting/crashing. This could show up as something using more and =
more memory at some point during the build.
>=20
> Hope this helps, sorry for lack of definitive answers,
>   Jussi
>=20
> =20
>=20
> Regards,
> Greg
>=20
> > -----Original Message-----
> > From: akuster [mailto:akuster@mvista.com =
<mailto:akuster@mvista.com>]
> > Sent: Thursday, March 23, 2017 12:33 PM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com =
<mailto:GWilson@sakuraus.com>>
> > Cc: Paul Eggleton <paul.eggleton@linux.intel.com =
<mailto:paul.eggleton@linux.intel.com>>; yocto@yoctoproject.org =
<mailto:yocto@yoctoproject.org>
> > Subject: Re: [yocto] Morty 2.2.1 build failure
> >
> >
> >
> > On 03/23/2017 12:25 PM, Paul Eggleton wrote:
> > > That's really bizarre. There shouldn't be anything in a bitbake =
build
> > > that could cause anything like this (other than possibly how =
intensive
> > > it is, which might trigger out-of-memory or an underlying
> > hardware/software failure).
> >
> > I usually get my builds to reboot my system when I build on a =
loptop. I have
> > not seen this on a tower style work station. You may want to play =
with the
> > BB_NUMBER_THREADS=3D# and PARALLEL_MAKE =3D "-j #" settings in your
> > local.conf.
> >
> > - armin
> > >
> > > Assuming the X session is ending is there anything in your
> > > ~/.xsession-errors or /var/log/Xorg.*.log?
> > >
> > > Cheers,
> > > Paul
> > >
> > > On Friday, 24 March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg =
wrote:
> > >> Hi Paul,
> > >>
> > >> I looked in the logs from the failure yesterday and couldn't find
> > >> anything, so I restarted the build and it ran for about another =
1000
> > >> steps before crashing again. I still can't find anything in any =
of
> > >> the logs, syslog, kern.log, auth.log, etc.
> > >>
> > >> Cheers,
> > >> Greg
> > >>
> > >>> -----Original Message-----
> > >>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com =
<mailto:paul.eggleton@linux.intel.com>]
> > >>> Sent: Thursday, March 23, 2017 2:49 AM
> > >>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com =
<mailto:GWilson@sakuraus.com>>
> > >>> Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>; =
akuster808 <akuster808@gmail.com <mailto:akuster808@gmail.com>>
> > >>> Subject: Re: [yocto] Morty 2.2.1 build failure
> > >>>
> > >>> On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg
> > wrote:
> > >>>> I tried it again this morning and it did get past the file not
> > >>>> found error.
> > >>>> But when it gets above step 4000 somewhere it gets an error =
that
> > >>>> kills not just the yocto build but the full login session. I'm =
left
> > >>>> staring at the Linux Login screen.
> > >>> Your machine isn't running out of RAM by any chance, triggering =
the
> > >>> OOM killer? Anything indicative in your system logs?
> > >>>
> > >>> Cheers,
> > >>> Paul
> > >>>
> > >>> --
> > >>>
> > >>> Paul Eggleton
> > >>> Intel Open Source Technology Centre
> > >
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_BDD51DF6-D9EA-4875-8323-05C00DE9531B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">For whatever it is worth, I am experiencing the same issue. =
I=E2=80=99m running a Lenovo ThinkStation P910 with two Intel Xeon =
E5-2630 v4 CPUs and 64 GB of RAM. I=E2=80=99m running Ubuntu 16.04. I =
also have been unable to find much useful information in the logs, but =
when running bitbake, lightdm just restarts and I end up at a log in =
screen with all running programs halted.<div class=3D""><br =
class=3D""></div><div class=3D"">Thanks,</div><div class=3D"">Dan<br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Mar 24, 2017, at 4:17 AM, Jussi Kukkonen &lt;<a =
href=3D"mailto:jussi.kukkonen@intel.com" =
class=3D"">jussi.kukkonen@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><div =
class=3D"gmail_extra"><div class=3D"gmail_quote">On 23 March 2017 at =
22:11, Greg Wilson-Lindberg<span =
class=3D"Apple-converted-space">&nbsp;</span><span dir=3D"ltr" =
class=3D"">&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank" =
class=3D"">GWilson@sakuraus.com</a>&gt;</span><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px =
0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, =
204); border-left-style: solid; padding-left: 1ex;">Hi Armin &amp; =
Paul,<br class=3D""><br class=3D"">First there is nothing in the X log =
files.<br class=3D"">I'm building on a desktop machine with 12GB of =
memory and an 8 core processor running Kubuntu 14.04.<br class=3D"">I =
added the PARALLEL_MAKE parameter set to 4, no effect, still built with =
8 threads, crashed.<br class=3D"">Set BB_NUMBER_THREADS to 4, built with =
4 threads, still crashed.<br class=3D""></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Getting thrown out of your desktop =
environment probably indicates the core problem is outside of Yocto -- =
this is still a fine place to discuss the issue, just pointing it out. =
You could keep an eye on 'top' sorted by %MEM while doing a build: my =
theory here is that something (like the monstrous amount of IO) that the =
build does could trigger a desktop component to do something stupid that =
cascades into your desktop shell exiting/crashing. This could show up as =
something using more and more memory at some point during the =
build.</div><div class=3D""><br class=3D""></div><div class=3D"">Hope =
this helps, sorry for lack of definitive answers,</div><div =
class=3D"">&nbsp; Jussi</div><div class=3D""><br class=3D""></div><div =
class=3D"">&nbsp;</div><blockquote class=3D"gmail_quote" style=3D"margin: =
0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, =
204, 204); border-left-style: solid; padding-left: 1ex;"><br =
class=3D"">Regards,<br class=3D"">Greg<br class=3D""><span class=3D"im =
HOEnZb"><br class=3D"">&gt; -----Original Message-----<br class=3D"">&gt; =
From: akuster [mailto:<a href=3D"mailto:akuster@mvista.com" =
class=3D"">akuster@mvista.com</a>]<br class=3D"">&gt; Sent: Thursday, =
March 23, 2017 12:33 PM<br class=3D"">&gt; To: Greg Wilson-Lindberg =
&lt;<a href=3D"mailto:GWilson@sakuraus.com" =
class=3D"">GWilson@sakuraus.com</a>&gt;<br class=3D""></span><div =
class=3D"HOEnZb"><div class=3D"h5">&gt; Cc: Paul Eggleton &lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" =
class=3D"">paul.eggleton@linux.intel.com</a><wbr class=3D"">&gt;;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">&gt; Subject: Re: =
[yocto] Morty 2.2.1 build failure<br class=3D"">&gt;<br class=3D"">&gt;<br=
 class=3D"">&gt;<br class=3D"">&gt; On 03/23/2017 12:25 PM, Paul =
Eggleton wrote:<br class=3D"">&gt; &gt; That's really bizarre. There =
shouldn't be anything in a bitbake build<br class=3D"">&gt; &gt; that =
could cause anything like this (other than possibly how intensive<br =
class=3D"">&gt; &gt; it is, which might trigger out-of-memory or an =
underlying<br class=3D"">&gt; hardware/software failure).<br =
class=3D"">&gt;<br class=3D"">&gt; I usually get my builds to reboot my =
system when I build on a loptop. I have<br class=3D"">&gt; not seen this =
on a tower style work station. You may want to play with the<br =
class=3D"">&gt; BB_NUMBER_THREADS=3D# and PARALLEL_MAKE =3D "-j #" =
settings in your<br class=3D"">&gt; local.conf.<br class=3D"">&gt;<br =
class=3D"">&gt; - armin<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; =
Assuming the X session is ending is there anything in your<br =
class=3D"">&gt; &gt; ~/.xsession-errors or /var/log/Xorg.*.log?<br =
class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; Cheers,<br class=3D"">&gt; =
&gt; Paul<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; On Friday, 24 =
March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg wrote:<br class=3D"">&gt; =
&gt;&gt; Hi Paul,<br class=3D"">&gt; &gt;&gt;<br class=3D"">&gt; =
&gt;&gt; I looked in the logs from the failure yesterday and couldn't =
find<br class=3D"">&gt; &gt;&gt; anything, so I restarted the build and =
it ran for about another 1000<br class=3D"">&gt; &gt;&gt; steps before =
crashing again. I still can't find anything in any of<br class=3D"">&gt; =
&gt;&gt; the logs, syslog, kern.log, auth.log, etc.<br class=3D"">&gt; =
&gt;&gt;<br class=3D"">&gt; &gt;&gt; Cheers,<br class=3D"">&gt; &gt;&gt; =
Greg<br class=3D"">&gt; &gt;&gt;<br class=3D"">&gt; &gt;&gt;&gt; =
-----Original Message-----<br class=3D"">&gt; &gt;&gt;&gt; From: Paul =
Eggleton [mailto:<a href=3D"mailto:paul.eggleton@linux.intel.com" =
class=3D"">paul.eggleton@linux.<wbr class=3D"">intel.com</a>]<br =
class=3D"">&gt; &gt;&gt;&gt; Sent: Thursday, March 23, 2017 2:49 AM<br =
class=3D"">&gt; &gt;&gt;&gt; To: Greg Wilson-Lindberg &lt;<a =
href=3D"mailto:GWilson@sakuraus.com" =
class=3D"">GWilson@sakuraus.com</a>&gt;<br class=3D"">&gt; &gt;&gt;&gt; =
Cc:<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a>; akuster808 &lt;<a =
href=3D"mailto:akuster808@gmail.com" =
class=3D"">akuster808@gmail.com</a>&gt;<br class=3D"">&gt; &gt;&gt;&gt; =
Subject: Re: [yocto] Morty 2.2.1 build failure<br class=3D"">&gt; =
&gt;&gt;&gt;<br class=3D"">&gt; &gt;&gt;&gt; On Thursday, 23 March 2017 =
9:23:24 AM NZDT Greg Wilson-Lindberg<br class=3D"">&gt; wrote:<br =
class=3D"">&gt; &gt;&gt;&gt;&gt; I tried it again this morning and it =
did get past the file not<br class=3D"">&gt; &gt;&gt;&gt;&gt; found =
error.<br class=3D"">&gt; &gt;&gt;&gt;&gt; But when it gets above step =
4000 somewhere it gets an error that<br class=3D"">&gt; &gt;&gt;&gt;&gt; =
kills not just the yocto build but the full login session. I'm left<br =
class=3D"">&gt; &gt;&gt;&gt;&gt; staring at the Linux Login screen.<br =
class=3D"">&gt; &gt;&gt;&gt; Your machine isn't running out of RAM by =
any chance, triggering the<br class=3D"">&gt; &gt;&gt;&gt; OOM killer? =
Anything indicative in your system logs?<br class=3D"">&gt; =
&gt;&gt;&gt;<br class=3D"">&gt; &gt;&gt;&gt; Cheers,<br class=3D"">&gt; =
&gt;&gt;&gt; Paul<br class=3D"">&gt; &gt;&gt;&gt;<br class=3D"">&gt; =
&gt;&gt;&gt; --<br class=3D"">&gt; &gt;&gt;&gt;<br class=3D"">&gt; =
&gt;&gt;&gt; Paul Eggleton<br class=3D"">&gt; &gt;&gt;&gt; Intel Open =
Source Technology Centre<br class=3D"">&gt; &gt;<br class=3D""><br =
class=3D"">--<br class=3D"">______________________________<wbr =
class=3D"">_________________<br class=3D"">yocto mailing list<br =
class=3D""><a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a><br =
class=3D""></div></div></blockquote></div><br class=3D""></div></div><span=
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">yocto@yoctoproject.org</a><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></body></html>=

--Apple-Mail=_BDD51DF6-D9EA-4875-8323-05C00DE9531B--
