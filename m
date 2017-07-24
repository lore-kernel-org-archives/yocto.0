Return-Path: <marco@ostini.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3571E00BF8; Mon, 24 Jul 2017 00:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED1DFE00BE9
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 00:45:06 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id q130so6240341qka.4
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 00:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ostini-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3nAOQ8bDmnjLnyCJ4QZtNg1FOLf3Yv1zlu7WuIjmlD8=;
	b=HceNeuJM/PuO3mtlFq4Osfjn8ABcm0eof7dxqUozfrvRHIQZqqcQPlg+VhRheYpEdI
	/QttAq1k2cUOFbYYS96rACgQW7DTcaDP4ZC/IxBq8ymPRUwfPdekOJ809Dvf+47RpI1W
	DfdMO3tjy153+chTTK/l6rXZmWtb8tVqPbHbeDpCpA6rsATOOLX75YL8gdekKm2ldKzl
	XsAlDxe1wwd65Ukut1llQJMOWQHmrrXxbmsaSwp+J3dWx7e2zlZ6W2lWg26jCtL24HDs
	3JT6hAWUOCAgme4wKPZk5N5rbOyG3MHrZ7Iqub7uNiLlaolkWBNN3cGIEz1B7dXV3k/D
	zPIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3nAOQ8bDmnjLnyCJ4QZtNg1FOLf3Yv1zlu7WuIjmlD8=;
	b=knQe0b8JlBWZe+uPgdW5LZRFZGvXARcnB67AdaxsYcipWxvg+JlHWzLFpdLFYKKyMw
	FnCWAfa8SelslqcxdyUA+KzQeP5eO5ihVN4mFFikpHbe8n9+IVbmTxdZr0HJWHnjc9fC
	PGlT6nZmwaZhiL8ERL6zAmyjc/IORE6pFGoyCqMQnBKtH4BQS45/h/c5uunOGkdFodvT
	wwp4lIhPbFlCpw8MWWPTAu85SGHWYKiyHHGfg41Yxib7iY8Twwy2d6JxLsuq+3V+zUhw
	t1u9a0XV3Es9vgonnnIsTKk0tV6eFrK3TKqWSQcdtkKyTweHilbS2vz7X2HldO+eWI5u
	AQiw==
X-Gm-Message-State: AIVw112KLZb6NHES3QtAp/F+JAPPzTAEDpVZm1fCnEyoruzy0Zay4QST
	sSVsJIm8Uxx95RiClcN/BLpqPVn2nFfE
X-Received: by 10.55.103.23 with SMTP id b23mr20135075qkc.55.1500882305680;
	Mon, 24 Jul 2017 00:45:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.71.20 with HTTP; Mon, 24 Jul 2017 00:45:04 -0700 (PDT)
X-Originating-IP: [2402:c00:1:26:82fa:5bff:fe40:b9bb]
In-Reply-To: <20170721194652.v7xh3culqr2r2h6v@mentor.com>
References: <CAGb_=SVC0Z_-ZKD2+VAt9HMG+ejYm0VcrECyn6cLRVtDFWYcfQ@mail.gmail.com>
	<CAGb_=SXgdg=Za2JbeYadJi-kOA5EtKLmw+jdDcn_Fzn+iRa2tw@mail.gmail.com>
	<9F567B9C-65EE-4852-A3E9-37DD09A7A7C0@redfish.com.au>
	<20170721194652.v7xh3culqr2r2h6v@mentor.com>
From: Marco Ostini <marco@ostini.org>
Date: Mon, 24 Jul 2017 17:45:04 +1000
Message-ID: <CAGb_=SX2rO_o6aCu2CVQo56zsmFiqWpPJ-sLU5TkHpdjCw7Ppg@mail.gmail.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Cc: yocto@yoctoproject.org, Shrikant_Bobade@mentor.com
Subject: Re: SELinux with Busybox on morty
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
X-List-Received-Date: Mon, 24 Jul 2017 07:45:08 -0000
Content-Type: multipart/alternative; boundary="94eb2c059c70ae1f0505550b6476"

--94eb2c059c70ae1f0505550b6476
Content-Type: text/plain; charset="UTF-8"

Hi Joe & Shrikant,

Many thanks for your response. It was good to know that busybox can
function with SELinux enforcing enabled.

Sorry not to mention the policy we're currently using. It's:
   refpolicy-targeted

||/ Name                            Version              Architecture
  Description
+++-===============================-====================-====================-====================================================================
ii  refpolicy-targeted              git-r0               amd64
   SELinux targeted policy

We'll build policy based on 2.20151208 and give it a try to see how it
behaves.

It appears to me that policy itself is responsible for semanage not
functioning. When I try:

   semanage -v port -l

I see errors like this:

1088. 07/24/17 07:29:46 semanage
unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 2 dir write
system_u:object_r:lib_t:s0 denied 1095
1089. 07/24/17 07:29:46 semanage
unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 2 dir write
system_u:object_r:lib_t:s0 denied 1096

or

time->Mon Jul 24 07:29:46 2017
type=PROCTITLE msg=audit(1500881386.907:1101):
proctitle=2F7573722F62696E2F707974686F6E002D4573002F7573722F7362696E2F73656D616E616765002D7600706F7274002D6C
type=SYSCALL msg=audit(1500881386.907:1101): arch=c000003e syscall=2
success=no exit=-13 a0=7ddf20 a1=2c1 a2=81a4 a3=5640003640100 items=0
ppid=496 pid=1201 auid=0 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0
fsgid=0 tty=pts0 ses=1 comm="semanage" exe="/usr/bin/python2.7"
subj=unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 key=(null)
type=AVC msg=audit(1500881386.907:1101): avc:  denied  { write } for
 pid=1201 comm="semanage" name="sepolgen" dev="vda" ino=6091
scontext=unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023
tcontext=system_u:object_r:lib_t:s0 tclass=dir permissive=0

The majority of the errors however are related to start_getty:

142. 07/24/17 06:14:04 start_getty system_u:system_r:getty_t:s0 4 dir
search system_u:object_r:default_t:s0 denied 149

time->Mon Jul 24 07:34:21 2017
type=PROCTITLE msg=audit(1500881661.906:1160):
proctitle=2F62696E2F7368002F62696E2F73746172745F676574747900313135323030007474795330
type=SYSCALL msg=audit(1500881661.906:1160): arch=c000003e syscall=59
success=no exit=-13 a0=6fca60 a1=6fcc40 a2=6faf90 a3=59a items=0 ppid=1244
pid=1246 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0
fsgid=0 tty=(none) ses=4294967295 comm="start_getty" exe="/bin/bash"
subj=system_u:system_r:getty_t:s0 key=(null)
type=AVC msg=audit(1500881661.906:1160): avc:  denied  { search } for
 pid=1246 comm="start_getty" name="sbin" dev="vda" ino=7236
scontext=system_u:system_r:getty_t:s0
tcontext=system_u:object_r:default_t:s0 tclass=dir permissive=0

I've applied an appropriate context to start_getty, but that didn't prevent
the errors:

ls -alZ /bin/start_getty
-rwxr-xr-x. 1 root root system_u:object_r:getty_exec_t:s0 99 Jul 21 02:55
/bin/start_getty

start_getty is a shell script that points back to /sbin/getty which is a
symlink to /usr/lib/busybox/sbin/getty

So I applied a context to  /usr/lib/busybox/sbin/getty without it
preventing the above mentioned errors:

ls -alZ /usr/lib/busybox/sbin/getty
-rwxr-xr-x. 1 root root system_u:object_r:getty_exec_t:s0 21 Jun  9 03:39
/usr/lib/busybox/sbin/getty

I'm keen to see how policy based on 2.20151208 will look.

Additional to trying 2.20151208 if you have any suggestions or advice I'd
be grateful to hear it.

Cheers,
Marco



On 22 July 2017 at 05:46, Joe MacDonald <Joe_MacDonald@mentor.com> wrote:

> Hi Justin / Marco,
>
> [Re: SELinux with Busybox on morty] On 17.07.19 (Wed 16:05) Justin
> Clacherty wrote:
>
> > Hi Joe,
> >
> > Is this something you or one of the other meta-selinux devs are able
> > to help out with or is it more of an upstream question?
>
> I'll see if I can give this a shot.  :-)
>
> >
> > Cheers,
> > Justin.
> >
> >
> > > On 17 Jul 2017, at 4:57 pm, Marco Ostini <marco@ostini.org> wrote:
> > >
> > >
> > > Hi All,
> > >
> > > At the moment I'm attempting to prepare a VM of morty with SELinux
> > > running well in enforcing mode. Once bedded down this will be
> > > running on an embedded system.
> > >
> > > We use Busybox to keep the environment slim.
> > >
> > > As you may be aware the file contexts of
> > > /etc/selinux/targeted/contexts/files/file_contexts don't include
> > > appropriate paths (/sbin + /usr/lib/busybox/sbin/) and relative file
> > > contexts for commands provided by Busybox. The /sbin files provided
> > > by Busybox are symlinks to their counterparts in
> > > /usr/lib/busybox/sbin/.
> > >
> > > I've attempted to use semanage to apply file contexts and look up
> > > login contexts. Any time I use semanage I receive this message:
> > >
> > >    Error: Failed to read //etc/selinux/targeted/policy/policy.30
> policy file
> > >
> > > In an attempt to mitigate this error I ran semodule --build and
> > > while it did rebuild the policy file, it didn't mitigate the error
> > > message generated by semanage. At the moment I'm applying temporary
> > > file contexts with chcon.
> > >
> > > My questions are:
> > >
> > > 1. Is it possible to run Busybox (providing init, getty, syslog ...)
> > > in SELinux enforcing. If so, where's the policy files?
>
> You haven't mentioned which policy you're currently using so I'm
> guessing it is the default you get from meta-selinux, that is
> refpolicy-git.  I've been debugging some (I think) unrelated issues with
> refpolicy-git this week, so my advice would first to be try out
> 2.20151208, the current release version we have in tree.  That's
> obviously also out of date, but it is currently better tested than the
> git recipe.
>
> All that said, yes, we have been, in the past, able to use busybox with
> SELinux enforcing enabled, though as you can see from the layer, we've
> had to tweak refpolicy to make it work well.  I'm adding a colleague of
> mine here, Shrikant, who has done a fair bit of recent work with
> meta-selinux as well, he might have some additional insight into the
> current status of busybox-based systems.
>
> > > 2. Is there some documentation somewhere on reference builds of
> > > Morty with SELinux enforcing ?
>
> There is not at the moment, as far as I know.  It's possible that
> someone else currently using that combination can help out with some
> guidance, but we haven't done any Morty+SELinux specific documentation.
> Since I'm investigating some other issues right now in a slightly
> different area, though, I may get some time next week to write up
> something quick for this for you, though. If I do, I'll be sure to share
> it here.
>
> --
> -Joe MacDonald.
> :wq
>

--94eb2c059c70ae1f0505550b6476
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe &amp;=C2=A0Shrikant,<div><br></div><div>Many thanks=
 for your response. It was good to know that busybox can function with SELi=
nux enforcing enabled.</div><div><br></div><div>Sorry not to mention the=C2=
=A0policy we&#39;re currently using. It&#39;s:</div><div>=C2=A0 =C2=A0refpo=
licy-targeted</div><div><br></div><div>||/ Name =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Versi=
on =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Architecture =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Description</div><div>+++-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</div><div>ii =C2=A0refpolicy-targeted =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0SELinux targeted policy</div><div><br></div><div>We&#39;ll build policy =
based on=C2=A02.20151208 and give it a try to see how it behaves.</div><div=
><br></div><div>It appears to me that policy itself is responsible for sema=
nage not functioning. When I try:</div><div><br></div><div>=C2=A0 =C2=A0sem=
anage -v port -l</div><div><br></div><div>I see errors like this:</div><div=
><br></div><div><div>1088. 07/24/17 07:29:46 semanage unconfined_u:unconfin=
ed_r:semanage_t:s0-s0:c0.c1023 2 dir write system_u:object_r:lib_t:s0 denie=
d 1095</div><div>1089. 07/24/17 07:29:46 semanage unconfined_u:unconfined_r=
:semanage_t:s0-s0:c0.c1023 2 dir write system_u:object_r:lib_t:s0 denied 10=
96</div></div><div><br></div><div>or=C2=A0</div><div><br></div><div><div>ti=
me-&gt;Mon Jul 24 07:29:46 2017</div><div>type=3DPROCTITLE msg=3Daudit(1500=
881386.907:1101): proctitle=3D2F7573722F62696E2F707974686F6E002D4573002F757=
3722F7362696E2F73656D616E616765002D7600706F7274002D6C</div><div>type=3DSYSC=
ALL msg=3Daudit(1500881386.907:1101): arch=3Dc000003e syscall=3D2 success=
=3Dno exit=3D-13 a0=3D7ddf20 a1=3D2c1 a2=3D81a4 a3=3D5640003640100 items=3D=
0 ppid=3D496 pid=3D1201 auid=3D0 uid=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=3D=
0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3Dpts0 ses=3D1 comm=3D&quot;semanage&quot=
; exe=3D&quot;/usr/bin/python2.7&quot; subj=3Dunconfined_u:unconfined_r:sem=
anage_t:s0-s0:c0.c1023 key=3D(null)</div><div>type=3DAVC msg=3Daudit(150088=
1386.907:1101): avc: =C2=A0denied =C2=A0{ write } for =C2=A0pid=3D1201 comm=
=3D&quot;semanage&quot; name=3D&quot;sepolgen&quot; dev=3D&quot;vda&quot; i=
no=3D6091 scontext=3Dunconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 tc=
ontext=3Dsystem_u:object_r:lib_t:s0 tclass=3Ddir permissive=3D0</div></div>=
<div><br></div><div>The majority of the errors however are related to=C2=A0=
start_getty:</div><div><br></div><div><div>142. 07/24/17 06:14:04 start_get=
ty system_u:system_r:getty_t:s0 4 dir search system_u:object_r:default_t:s0=
 denied 149</div></div><div><br></div><div><div>time-&gt;Mon Jul 24 07:34:2=
1 2017</div><div>type=3DPROCTITLE msg=3Daudit(1500881661.906:1160): proctit=
le=3D2F62696E2F7368002F62696E2F73746172745F67657474790031313532303000747479=
5330</div><div>type=3DSYSCALL msg=3Daudit(1500881661.906:1160): arch=3Dc000=
003e syscall=3D59 success=3Dno exit=3D-13 a0=3D6fca60 a1=3D6fcc40 a2=3D6faf=
90 a3=3D59a items=3D0 ppid=3D1244 pid=3D1246 auid=3D4294967295 uid=3D0 gid=
=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) s=
es=3D4294967295 comm=3D&quot;start_getty&quot; exe=3D&quot;/bin/bash&quot; =
subj=3Dsystem_u:system_r:getty_t:s0 key=3D(null)</div><div>type=3DAVC msg=
=3Daudit(1500881661.906:1160): avc: =C2=A0denied =C2=A0{ search } for =C2=
=A0pid=3D1246 comm=3D&quot;start_getty&quot; name=3D&quot;sbin&quot; dev=3D=
&quot;vda&quot; ino=3D7236 scontext=3Dsystem_u:system_r:getty_t:s0 tcontext=
=3Dsystem_u:object_r:default_t:s0 tclass=3Ddir permissive=3D0</div></div><d=
iv><br></div><div>I&#39;ve applied an appropriate context to=C2=A0start_get=
ty, but that didn&#39;t prevent the errors:</div><div><br></div><div><div>l=
s -alZ /bin/start_getty</div><div>-rwxr-xr-x. 1 root root system_u:object_r=
:getty_exec_t:s0 99 Jul 21 02:55 /bin/start_getty</div></div><div><br></div=
><div>start_getty is a shell script that points back to=C2=A0/sbin/getty wh=
ich is a symlink to=C2=A0/usr/lib/busybox/sbin/getty<br></div><div><br></di=
v><div>So I applied a context to =C2=A0/usr/lib/busybox/sbin/getty without =
it preventing the above mentioned errors:</div><div><br></div><div><div>ls =
-alZ /usr/lib/busybox/sbin/getty</div><div>-rwxr-xr-x. 1 root root system_u=
:object_r:getty_exec_t:s0 21 Jun =C2=A09 03:39 /usr/lib/busybox/sbin/getty<=
/div></div><div><br></div><div>I&#39;m keen to see how=C2=A0policy based on=
 2.20151208 will look.</div><div><br></div><div>Additional to trying=C2=A02=
.20151208 if you have any suggestions or advice I&#39;d be grateful to hear=
 it.</div><div><br></div><div>Cheers,</div><div>Marco</div><div><br></div><=
div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On 22 July 2017 at 05:46, Joe MacDonald <span dir=3D"ltr">&lt;<a href=3D=
"mailto:Joe_MacDonald@mentor.com" target=3D"_blank">Joe_MacDonald@mentor.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Justin / Marco=
,<br>
<span class=3D""><br>
[Re: SELinux with Busybox on morty] On 17.07.19 (Wed 16:05) Justin Clachert=
y wrote:<br>
<br>
&gt; Hi Joe,<br>
&gt;<br>
&gt; Is this something you or one of the other meta-selinux devs are able<b=
r>
&gt; to help out with or is it more of an upstream question?<br>
<br>
</span>I&#39;ll see if I can give this a shot.=C2=A0 :-)<br>
<span class=3D""><br>
&gt;<br>
&gt; Cheers,<br>
&gt; Justin.<br>
&gt;<br>
&gt;<br>
&gt; &gt; On 17 Jul 2017, at 4:57 pm, Marco Ostini &lt;<a href=3D"mailto:ma=
rco@ostini.org">marco@ostini.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Hi All,<br>
&gt; &gt;<br>
&gt; &gt; At the moment I&#39;m attempting to prepare a VM of morty with SE=
Linux<br>
&gt; &gt; running well in enforcing mode. Once bedded down this will be<br>
&gt; &gt; running on an embedded system.<br>
&gt; &gt;<br>
&gt; &gt; We use Busybox to keep the environment slim.<br>
&gt; &gt;<br>
&gt; &gt; As you may be aware the file contexts of<br>
&gt; &gt; /etc/selinux/targeted/<wbr>contexts/files/file_contexts don&#39;t=
 include<br>
&gt; &gt; appropriate paths (/sbin + /usr/lib/busybox/sbin/) and relative f=
ile<br>
&gt; &gt; contexts for commands provided by Busybox. The /sbin files provid=
ed<br>
&gt; &gt; by Busybox are symlinks to their counterparts in<br>
&gt; &gt; /usr/lib/busybox/sbin/.<br>
&gt; &gt;<br>
&gt; &gt; I&#39;ve attempted to use semanage to apply file contexts and loo=
k up<br>
&gt; &gt; login contexts. Any time I use semanage I receive this message:<b=
r>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 Error: Failed to read //etc/selinux/targeted/policy/=
<wbr>policy.30 policy file<br>
&gt; &gt;<br>
&gt; &gt; In an attempt to mitigate this error I ran semodule --build and<b=
r>
&gt; &gt; while it did rebuild the policy file, it didn&#39;t mitigate the =
error<br>
&gt; &gt; message generated by semanage. At the moment I&#39;m applying tem=
porary<br>
&gt; &gt; file contexts with chcon.<br>
&gt; &gt;<br>
&gt; &gt; My questions are:<br>
&gt; &gt;<br>
&gt; &gt; 1. Is it possible to run Busybox (providing init, getty, syslog .=
..)<br>
&gt; &gt; in SELinux enforcing. If so, where&#39;s the policy files?<br>
<br>
</span>You haven&#39;t mentioned which policy you&#39;re currently using so=
 I&#39;m<br>
guessing it is the default you get from meta-selinux, that is<br>
refpolicy-git.=C2=A0 I&#39;ve been debugging some (I think) unrelated issue=
s with<br>
refpolicy-git this week, so my advice would first to be try out<br>
2.20151208, the current release version we have in tree.=C2=A0 That&#39;s<b=
r>
obviously also out of date, but it is currently better tested than the<br>
git recipe.<br>
<br>
All that said, yes, we have been, in the past, able to use busybox with<br>
SELinux enforcing enabled, though as you can see from the layer, we&#39;ve<=
br>
had to tweak refpolicy to make it work well.=C2=A0 I&#39;m adding a colleag=
ue of<br>
mine here, Shrikant, who has done a fair bit of recent work with<br>
meta-selinux as well, he might have some additional insight into the<br>
current status of busybox-based systems.<br>
<span class=3D""><br>
&gt; &gt; 2. Is there some documentation somewhere on reference builds of<b=
r>
&gt; &gt; Morty with SELinux enforcing ?<br>
<br>
</span>There is not at the moment, as far as I know.=C2=A0 It&#39;s possibl=
e that<br>
someone else currently using that combination can help out with some<br>
guidance, but we haven&#39;t done any Morty+SELinux specific documentation.=
<br>
Since I&#39;m investigating some other issues right now in a slightly<br>
different area, though, I may get some time next week to write up<br>
something quick for this for you, though. If I do, I&#39;ll be sure to shar=
e<br>
it here.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
-Joe MacDonald.<br>
:wq<br>
</font></span></blockquote></div><br></div>

--94eb2c059c70ae1f0505550b6476--
