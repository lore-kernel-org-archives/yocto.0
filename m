Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53259E009A0; Thu, 23 Mar 2017 14:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DBB1E00546
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 14:41:27 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id r203so67517164oib.3
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 14:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3jFiQbhE04zkuqymbYXoygIczABpGtyvJ9kMZwQCeag=;
	b=gRPvicLtD5+VvolqxdRAzHZG7u0WEp649nfRtTYBESs9Hfm4vb06cEz7L2zuzCout1
	pEl47bgl541cHU1eG0znfTQJUeR6aL92bHsTm0kFrsUlx2YHzrMh0XH3T+QDNoIQU4iO
	/lxswK8I5DA2VbEDKEmFJyuMNXw6sueZ1VJKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3jFiQbhE04zkuqymbYXoygIczABpGtyvJ9kMZwQCeag=;
	b=pV2sEC2Qa4MnSM3x327Y+sTluZAp6FNgptXcOH0hCsHiqGTR29Yg34YdHSjiuhuGKo
	/YSJZdcV0m6oeJe44CIIvc37H1dKkuztZVMawCOcupsUao2/Y6t7shpZnOGLkkz+amwH
	LP4PZiyuYUf66+D/He5oVmerUVYkCsSs+mRXYkFeEh+934FtTG81uhdwmze2m/Dh8FXc
	OhJDat7/G8l3i1MMmTT0Y2/yTlqOV8+3R4ToVS+BJl987T3B3DOe1E6bxWyA1924rrGh
	UPDLFAPT2sEne7AkRMJ51hoNa8hSkO0siJDbvHmKVOFZOWDLxwqtmIAyuZrtZ6mzOgJh
	NBVA==
X-Gm-Message-State: AFeK/H0sQAZZsXpF2I/cbBkvt4vQC+sn2Fv1wm0iEqa+3FXBWljwSUXMprbGx9BFAfh1dKrt5ZxcIRBoiukLOjpz
X-Received: by 10.202.170.15 with SMTP id t15mr2535537oie.127.1490305286269;
	Thu, 23 Mar 2017 14:41:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.21 with HTTP; Thu, 23 Mar 2017 14:40:45 -0700 (PDT)
In-Reply-To: <CA+n--H9FzfDocWHVemzRj49GpAFcQ=jCAfOyP7eJhikYw+H9nw@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
	<CA+n--H9FzfDocWHVemzRj49GpAFcQ=jCAfOyP7eJhikYw+H9nw@mail.gmail.com>
From: Alain Achkar <alain.achkar@triacta.com>
Date: Thu, 23 Mar 2017 17:40:45 -0400
Message-ID: <CAGkf0HCdi=Y00Aa=b=OqGVz0OL5N0cd4de6tK9CoDNv7P=Ee7A@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: joshua.g.lock@intel.com
Subject: Re: Buildbot / Autobuilder / custom?
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
X-List-Received-Date: Thu, 23 Mar 2017 21:41:35 -0000
Content-Type: multipart/alternative; boundary=001a113cff38321fe2054b6cbd73

--001a113cff38321fe2054b6cbd73
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I followed
http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUICKSTA=
RT
and got:

>0< alain@esxi-ub1 Thu Mar 23 05:34 PM [master]
/media/data/yocto-autobuilder >  *. ./yocto-autobuilder-setup*

Creating yocto-controller/buildbot.tac from an example buildbot.tac


Creating yocto-worker/buildbot.tac from an example buildbot.tac


Creating yocto-controller/controller.cfg from an example controller.cfg

#########################################################################
 Setting envvars.
 In the future though please add the following to your shell environment:
 PYTHONPATH=3D/media/data/yocto-autobuilder/lib/python2.7/site-packages/:/m=
edia/data/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/:/media=
/data/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/buildsteps:=
$PYTHONPATH
 PATH=3D/media/data/yocto-autobuilder/bin:/media/data/yocto-autobuilder/yoc=
to-autobuilder/scripts:$PATH
 YOCTO_AB_CONFIG=3D/media/data/yocto-autobuilder/buildset-config/yoctoAB.co=
nf

 If you don't, you should source this script everytime you want start the
 autobuilder.

Creating config/autobuilder.conf from an example autobuilder.conf


Creating buildset-config from buildset-config.controller


 You've not setup the autobuilder before. Generating a server/client
password
 combo for you.
 Client/Server Password =3D (deleted, on purpose)

 Modifying the following files with this password:

 /media/data/yocto-autobuilder/yocto-controller/controller.cfg
 /media/data/yocto-autobuilder/yocto-controller/buildbot.tac
 /media/data/yocto-autobuilder/yocto-worker/buildbot.tac

 Updating worker-init script used for google cloud building.

 If you wish to use your own generated username and password please
 modify the above files as needed. Please see the README for more
 information.

 Generating an .htpasswd file using your current username and (deleted, on
purpose) at /media/data/yocto-autobuilder/.htpasswd
#########################################################################

 Please modify /media/data/yocto-autobuilder/config/autobuilder.conf if you
wish to specify
 a different location in which to publish build artifacts, etc.

#########################################################################

 Ready to start the yocto autobuilder.

 The yocto-autobuilder runs buildbot 0.8.8 with some modifications and
 a different git fetcher (yoctogit.py)

#########################################################################
checking basedir
checking for running master
checking controller.cfg
LOADING CONFIG FILE
*error while parsing config file:*
Traceback (most recent call last):
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/Twisted-12.2.0-p=
y2.7-linux-x86_64.egg/twisted/internet/defer.py",
line 1187, in unwindGenerator
    return _inlineCallbacks(None, gen, Deferred())
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/Twisted-12.2.0-p=
y2.7-linux-x86_64.egg/twisted/internet/defer.py",
line 1045, in _inlineCallbacks
    result =3D g.send(result)
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/buildbot-0.8.8-p=
y2.7.egg/buildbot/scripts/upgrade_master.py",
line 169, in upgradeMaster
    master_cfg =3D loadConfig(config, configFile)
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/buildbot-0.8.8-p=
y2.7.egg/buildbot/scripts/upgrade_master.py",
line 53, in loadConfig
    config['basedir'], configFileName)
--- <exception caught here> ---
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/buildbot-0.8.8-p=
y2.7.egg/buildbot/config.py",
line 149, in loadConfig
    exec f in localDict
  File "/media/data/yocto-autobuilder/yocto-controller/controller.cfg",
line 94, in <module>
    yocto_buildsets.createBuildsets()
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/Auto=
builder.py",
line 65, in createBuildsets
    self.parseBuildSet(buildset)
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/Auto=
builder.py",
line 102, in parseBuildSet
    self.parseRepos(buildset)
  File
"/media/data/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/Auto=
builder.py",
line 127, in parseRepos
    if layer.iterkeys().next() not in self.repos:
*exceptions.AttributeError: 'list' object has no attribute 'iterkeys'*
Errors loading configuration:
  error while parsing config file: 'list' object has no attribute
'iterkeys' (traceback in logfile)
 To start the autobuilder:
 ./yocto-start-autobuilder <worker|controller|both>

 To stop the autobuilder:
 ./yocto-stop-autobuilder <worker|controller|both>

>0< alain@esxi-ub1 Thu Mar 23 05:34 PM [master !?]
/media/data/yocto-autobuilder >

Any ideas on how to fix this?

On Mon, Nov 14, 2016 at 1:40 PM, Bill Randle <bill.randle@gmail.com> wrote:

> Yes, the 2 TB is for everything you might do with an AutoBuilder. The
> actual space used will be closer to your 35 GB, since you're building
> only a single image / work product. People have used BuilBot directly
> for automated builds, but using the AutoBuilder code (which runs
> BuildBot underneath) gives you added flexibility and capability
> without much additional overhead.
>
>     -Bill
>
> On Mon, Nov 14, 2016 at 8:13 AM, Alain Achkar <alain.achkar@triacta.com>
> wrote:
> > Thanks for your answers! From reading these links, it is still not clea=
r
> to
> > me if this might be overkill for my requirements. AB Cluster Setup talk=
s
> > about "the worker requires 2+ TB to hold all the build temp files and g=
it
> > repos. If build artifacts and a local sstate mirror are included,
> additional
> > worker space is required."
> >
> > Currently, my build only takes 35GB, so I think what these links are
> talking
> > about is how to replicate what the Autobuilder project
> > https://autobuilder.yoctoproject.org/ already does.
> >
> > To clarify, I am not interested in running builds and tests for
> everything
> > that Yocto already builds and tests (i.e. all the processor
> architectures,
> > all the machine types, etc.).  I am interested in running one build for
> one
> > machine type (the Variscite DART-6UL i.MX6UL arm-based processor, for
> which
> > NXP/Freescale and Variscite have provided recipes and layers for).
> >
> > I know that autobuilder includes BuildBot (this is why I specified it i=
n
> > parentheses) but my question remains: do I only install BuildBot and tr=
y
> to
> > build my machine type with it, or do I install Autobuilder?
> >
> > On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <bill.randle@gmail.com>
> wrote:
> >>
> >> Also, be sure to check the Yocto Project wiki pages:
> >>     https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
> >> in particular, the AB cluster setup and AB maintenance links. Even
> >> though the one link refers to setting up an entire cluster, I've used
> >> that procedure to setup a single autobuilder, as well.
> >>
> >>     -Bill
> >>
> >> On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
> >> <pidge@toganlabs.com> wrote:
> >> > On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
> >> >> Hello Joshua!
> >> >>
> >> >> We are using Yocto to build for the Variscite DART-6UL SoM which is
> >> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.
> php?title=3DD
> >> >> ART-6UL_Yocto_Jethro_R1_build).
> >> >>
> >> >> Currently, developers run builds manually on their desktops. We are
> >> >> considering using a continuous integration server. I found out that
> >> >> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
> >> >> read most of the introductory documentation.
> >> >>
> >> >> Would you recommend that we install only BuildBot and configure it =
to
> >> >> build what we need?
> >> >>
> >> >> OR
> >> >>
> >> >> Would you recommend that we install Autobuilder (and BuildBot) and
> >> >> configure it to build what we need?
> >> >
> >> > Actually, the yocto-autobuilder already contains buildbot so no need
> >> > for both.
> >> >
> >> > If you read:
> >> >
> >> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/
> tree/README-QUIC
> >> > KSTART
> >> >
> >> > and probably some of the other READMEs and the documentation in the
> >> > docs directory of the yocto-autobuilder directory, it should get you
> >> > started in the right direction.
> >> >
> >> > Feel free to ask questions if you need help.
> >> >
> >> > -b
> >> >
> >> > Elizabeth 'pidge' Flanagan
> >> > Founder/CTO Tog=C3=A1n Labs
> >> > www.toganlabs.com
> >> >
> >> >>
> >> >> What is the faster path to get up and running?
> >> >>
> >> >> Thanks!
> >> >> Alain.
> >> >>
> >> >> --
> >> >> Alain Achkar, M.Eng. | Software Engineer
> >> >> Triacta Power Solutions
> >> >> (O) 613.256.2868 (C) 613.406.6520
> >> >> www.triacta.com
> >> >
> >> >
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> >
> > --
> >
> > Alain Achkar, M.Eng. | Software Engineer
> >
> > Triacta Power Solutions
> >
> > (O) 613.256.2868 (C) 613.406.6520
> >
> > www.triacta.com
>



--=20

Alain Achkar, M.Eng. | Software Engineer

*Triacta Power Solutions*

(O) 613.256.2868 (C) 613.406.6520

*www.triacta.com  <http://www.triacta.com/>*

--001a113cff38321fe2054b6cbd73
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I followed=C2=A0<a href=3D"http://git.yoctoproject.org/cgi=
t.cgi/yocto-autobuilder/tree/README-QUICKSTART">http://git.yoctoproject.org=
/cgit.cgi/yocto-autobuilder/tree/README-QUICKSTART</a><div>and got:</div><d=
iv><br></div><div><div><font face=3D"monospace, monospace">&gt;0&lt; alain@=
esxi-ub1 Thu Mar 23 05:34 PM [master] /media/data/yocto-autobuilder &gt; =
=C2=A0<b>. ./yocto-autobuilder-setup</b></font></div><div><font face=3D"mon=
ospace, monospace"><br></font></div><div><font face=3D"monospace, monospace=
">Creating yocto-controller/buildbot.tac from an example buildbot.tac</font=
></div><div><font face=3D"monospace, monospace"><br></font></div><div><font=
 face=3D"monospace, monospace"><br></font></div><div><font face=3D"monospac=
e, monospace">Creating yocto-worker/buildbot.tac from an example buildbot.t=
ac</font></div><div><font face=3D"monospace, monospace"><br></font></div><d=
iv><font face=3D"monospace, monospace"><br></font></div><div><font face=3D"=
monospace, monospace">Creating yocto-controller/controller.cfg from an exam=
ple controller.cfg</font></div><div><font face=3D"monospace, monospace"><br=
></font></div><div><font face=3D"monospace, monospace">####################=
#####################################################</font></div><div><fon=
t face=3D"monospace, monospace">=C2=A0Setting envvars.</font></div><div><fo=
nt face=3D"monospace, monospace">=C2=A0In the future though please add the =
following to your shell environment:</font></div><div><font face=3D"monospa=
ce, monospace">=C2=A0PYTHONPATH=3D/media/data/yocto-autobuilder/lib/python2=
.7/site-packages/:/media/data/yocto-autobuilder/lib/python2.7/site-packages=
/autobuilder/:/media/data/yocto-autobuilder/lib/python2.7/site-packages/aut=
obuilder/buildsteps:$PYTHONPATH</font></div><div><font face=3D"monospace, m=
onospace">=C2=A0PATH=3D/media/data/yocto-autobuilder/bin:/media/data/yocto-=
autobuilder/yocto-autobuilder/scripts:$PATH</font></div><div><font face=3D"=
monospace, monospace">=C2=A0YOCTO_AB_CONFIG=3D/media/data/yocto-autobuilder=
/buildset-config/yoctoAB.conf</font></div><div><font face=3D"monospace, mon=
ospace"><br></font></div><div><font face=3D"monospace, monospace">=C2=A0If =
you don&#39;t, you should source this script everytime you want start the</=
font></div><div><font face=3D"monospace, monospace">=C2=A0autobuilder.</fon=
t></div><div><font face=3D"monospace, monospace"><br></font></div><div><fon=
t face=3D"monospace, monospace">Creating config/autobuilder.conf from an ex=
ample autobuilder.conf</font></div><div><font face=3D"monospace, monospace"=
><br></font></div><div><font face=3D"monospace, monospace"><br></font></div=
><div><font face=3D"monospace, monospace">Creating buildset-config from bui=
ldset-config.controller</font></div><div><font face=3D"monospace, monospace=
"><br></font></div><div><font face=3D"monospace, monospace"><br></font></di=
v><div><font face=3D"monospace, monospace">=C2=A0You&#39;ve not setup the a=
utobuilder before. Generating a server/client password</font></div><div><fo=
nt face=3D"monospace, monospace">=C2=A0combo for you.</font></div><div><fon=
t face=3D"monospace, monospace">=C2=A0Client/Server Password =3D (deleted, =
on purpose)</font></div><div><font face=3D"monospace, monospace"><br></font=
></div><div><font face=3D"monospace, monospace">=C2=A0Modifying the followi=
ng files with this password:</font></div><div><font face=3D"monospace, mono=
space"><br></font></div><div><font face=3D"monospace, monospace">=C2=A0/med=
ia/data/yocto-autobuilder/yocto-controller/controller.cfg</font></div><div>=
<font face=3D"monospace, monospace">=C2=A0/media/data/yocto-autobuilder/yoc=
to-controller/buildbot.tac</font></div><div><font face=3D"monospace, monosp=
ace">=C2=A0/media/data/yocto-autobuilder/yocto-worker/buildbot.tac</font></=
div><div><font face=3D"monospace, monospace"><br></font></div><div><font fa=
ce=3D"monospace, monospace">=C2=A0Updating worker-init script used for goog=
le cloud building.</font></div><div><font face=3D"monospace, monospace"><br=
></font></div><div><font face=3D"monospace, monospace">=C2=A0If you wish to=
 use your own generated username and password please</font></div><div><font=
 face=3D"monospace, monospace">=C2=A0modify the above files as needed. Plea=
se see the README for more</font></div><div><font face=3D"monospace, monosp=
ace">=C2=A0information.</font></div><div><font face=3D"monospace, monospace=
"><br></font></div><div><font face=3D"monospace, monospace">=C2=A0Generatin=
g an .htpasswd file using your current username and (</font><span style=3D"=
font-family:monospace,monospace">deleted, on purpose</span><span style=3D"f=
ont-family:monospace,monospace">) at /media/data/yocto-autobuilder/.htpassw=
d</span></div><div><font face=3D"monospace, monospace">####################=
#####################################################</font></div><div><fon=
t face=3D"monospace, monospace"><br></font></div><div><font face=3D"monospa=
ce, monospace">=C2=A0Please modify /media/data/yocto-autobuilder/config/aut=
obuilder.conf if you wish to specify</font></div><div><font face=3D"monospa=
ce, monospace">=C2=A0a different location in which to publish build artifac=
ts, etc.</font></div><div><font face=3D"monospace, monospace"><br></font></=
div><div><font face=3D"monospace, monospace">##############################=
###########################################</font></div><div><font face=3D"=
monospace, monospace"><br></font></div><div><font face=3D"monospace, monosp=
ace">=C2=A0Ready to start the yocto autobuilder.</font></div><div><font fac=
e=3D"monospace, monospace"><br></font></div><div><font face=3D"monospace, m=
onospace">=C2=A0The yocto-autobuilder runs buildbot 0.8.8 with some modific=
ations and</font></div><div><font face=3D"monospace, monospace">=C2=A0a dif=
ferent git fetcher (yoctogit.py)</font></div><div><font face=3D"monospace, =
monospace"><br></font></div><div><font face=3D"monospace, monospace">######=
###################################################################</font><=
/div><div><font face=3D"monospace, monospace">checking basedir</font></div>=
<div><font face=3D"monospace, monospace">checking for running master</font>=
</div><div><font face=3D"monospace, monospace">checking controller.cfg</fon=
t></div><div><font face=3D"monospace, monospace">LOADING CONFIG FILE</font>=
</div><div><font face=3D"monospace, monospace" color=3D"#ff0000"><b>error w=
hile parsing config file:</b></font></div><div><font face=3D"monospace, mon=
ospace">Traceback (most recent call last):</font></div><div><font face=3D"m=
onospace, monospace">=C2=A0 File &quot;/media/data/yocto-autobuilder/lib/py=
thon2.7/site-packages/Twisted-12.2.0-py2.7-linux-x86_64.egg/twisted/interne=
t/defer.py&quot;, line 1187, in unwindGenerator</font></div><div><font face=
=3D"monospace, monospace">=C2=A0 =C2=A0 return _inlineCallbacks(None, gen, =
Deferred())</font></div><div><font face=3D"monospace, monospace">=C2=A0 Fil=
e &quot;/media/data/yocto-autobuilder/lib/python2.7/site-packages/Twisted-1=
2.2.0-py2.7-linux-x86_64.egg/twisted/internet/defer.py&quot;, line 1045, in=
 _inlineCallbacks</font></div><div><font face=3D"monospace, monospace">=C2=
=A0 =C2=A0 result =3D g.send(result)</font></div><div><font face=3D"monospa=
ce, monospace">=C2=A0 File &quot;/media/data/yocto-autobuilder/lib/python2.=
7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/scripts/upgrade_master.py=
&quot;, line 169, in upgradeMaster</font></div><div><font face=3D"monospace=
, monospace">=C2=A0 =C2=A0 master_cfg =3D loadConfig(config, configFile)</f=
ont></div><div><font face=3D"monospace, monospace">=C2=A0 File &quot;/media=
/data/yocto-autobuilder/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.eg=
g/buildbot/scripts/upgrade_master.py&quot;, line 53, in loadConfig</font></=
div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 config[&#39;base=
dir&#39;], configFileName)</font></div><div><font face=3D"monospace, monosp=
ace">--- &lt;exception caught here&gt; ---</font></div><div><font face=3D"m=
onospace, monospace">=C2=A0 File &quot;/media/data/yocto-autobuilder/lib/py=
thon2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/config.py&quot;, li=
ne 149, in loadConfig</font></div><div><font face=3D"monospace, monospace">=
=C2=A0 =C2=A0 exec f in localDict</font></div><div><font face=3D"monospace,=
 monospace">=C2=A0 File &quot;/media/data/yocto-autobuilder/yocto-controlle=
r/controller.cfg&quot;, line 94, in &lt;module&gt;</font></div><div><font f=
ace=3D"monospace, monospace">=C2=A0 =C2=A0 yocto_buildsets.createBuildsets(=
)</font></div><div><font face=3D"monospace, monospace">=C2=A0 File &quot;/m=
edia/data/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/Autobui=
lder.py&quot;, line 65, in createBuildsets</font></div><div><font face=3D"m=
onospace, monospace">=C2=A0 =C2=A0 self.parseBuildSet(buildset)</font></div=
><div><font face=3D"monospace, monospace">=C2=A0 File &quot;/media/data/yoc=
to-autobuilder/lib/python2.7/site-packages/autobuilder/Autobuilder.py&quot;=
, line 102, in parseBuildSet</font></div><div><font face=3D"monospace, mono=
space">=C2=A0 =C2=A0 self.parseRepos(buildset)</font></div><div><font face=
=3D"monospace, monospace">=C2=A0 File &quot;/media/data/yocto-autobuilder/l=
ib/python2.7/site-packages/autobuilder/Autobuilder.py&quot;, line 127, in p=
arseRepos</font></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=
=A0 if layer.iterkeys().next() not in self.repos:</font></div><div><font fa=
ce=3D"monospace, monospace" color=3D"#ff0000"><b>exceptions.AttributeError:=
 &#39;list&#39; object has no attribute &#39;iterkeys&#39;</b></font></div>=
<div><font face=3D"monospace, monospace">Errors loading configuration:</fon=
t></div><div><font face=3D"monospace, monospace">=C2=A0 error while parsing=
 config file: &#39;list&#39; object has no attribute &#39;iterkeys&#39; (tr=
aceback in logfile)</font></div><div><font face=3D"monospace, monospace">=
=C2=A0To start the autobuilder:</font></div><div><font face=3D"monospace, m=
onospace">=C2=A0./yocto-start-autobuilder &lt;worker|controller|both&gt;</f=
ont></div><div><font face=3D"monospace, monospace"><br></font></div><div><f=
ont face=3D"monospace, monospace">=C2=A0To stop the autobuilder:</font></di=
v><div><font face=3D"monospace, monospace">=C2=A0./yocto-stop-autobuilder &=
lt;worker|controller|both&gt;</font></div><div><font face=3D"monospace, mon=
ospace"><br></font></div><div><font face=3D"monospace, monospace">&gt;0&lt;=
 alain@esxi-ub1 Thu Mar 23 05:34 PM [master !?] /media/data/yocto-autobuild=
er &gt;</font></div><div><br></div></div><div>Any ideas on how to fix this?=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mo=
n, Nov 14, 2016 at 1:40 PM, Bill Randle <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bill.randle@gmail.com" target=3D"_blank">bill.randle@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">Yes, the 2 TB is for every=
thing you might do with an AutoBuilder. The<br>
actual space used will be closer to your 35 GB, since you&#39;re building<b=
r>
only a single image / work product. People have used BuilBot directly<br>
for automated builds, but using the AutoBuilder code (which runs<br>
BuildBot underneath) gives you added flexibility and capability<br>
without much additional overhead.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 -Bill<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
On Mon, Nov 14, 2016 at 8:13 AM, Alain Achkar &lt;<a href=3D"mailto:alain.a=
chkar@triacta.com">alain.achkar@triacta.com</a>&gt; wrote:<br>
&gt; Thanks for your answers! From reading these links, it is still not cle=
ar to<br>
&gt; me if this might be overkill for my requirements. AB Cluster Setup tal=
ks<br>
&gt; about &quot;the worker requires 2+ TB to hold all the build temp files=
 and git<br>
&gt; repos. If build artifacts and a local sstate mirror are included, addi=
tional<br>
&gt; worker space is required.&quot;<br>
&gt;<br>
&gt; Currently, my build only takes 35GB, so I think what these links are t=
alking<br>
&gt; about is how to replicate what the Autobuilder project<br>
&gt; <a href=3D"https://autobuilder.yoctoproject.org/" rel=3D"noreferrer" t=
arget=3D"_blank">https://autobuilder.<wbr>yoctoproject.org/</a> already doe=
s.<br>
&gt;<br>
&gt; To clarify, I am not interested in running builds and tests for everyt=
hing<br>
&gt; that Yocto already builds and tests (i.e. all the processor architectu=
res,<br>
&gt; all the machine types, etc.).=C2=A0 I am interested in running one bui=
ld for one<br>
&gt; machine type (the Variscite DART-6UL i.MX6UL arm-based processor, for =
which<br>
&gt; NXP/Freescale and Variscite have provided recipes and layers for).<br>
&gt;<br>
&gt; I know that autobuilder includes BuildBot (this is why I specified it =
in<br>
&gt; parentheses) but my question remains: do I only install BuildBot and t=
ry to<br>
&gt; build my machine type with it, or do I install Autobuilder?<br>
&gt;<br>
&gt; On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle &lt;<a href=3D"mailto:bi=
ll.randle@gmail.com">bill.randle@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Also, be sure to check the Yocto Project wiki pages:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/T=
he_Yocto_Autobuilder" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoc=
toproject.org/<wbr>wiki/The_Yocto_Autobuilder</a><br>
&gt;&gt; in particular, the AB cluster setup and AB maintenance links. Even=
<br>
&gt;&gt; though the one link refers to setting up an entire cluster, I&#39;=
ve used<br>
&gt;&gt; that procedure to setup a single autobuilder, as well.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0-Bill<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Nov 11, 2016 at 10:37 AM, Beth &#39;pidge&#39; Flanagan<br=
>
&gt;&gt; &lt;<a href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</a>=
&gt; wrote:<br>
&gt;&gt; &gt; On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:<br>
&gt;&gt; &gt;&gt; Hello Joshua!<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; We are using Yocto to build for the Variscite DART-6UL So=
M which is<br>
&gt;&gt; &gt;&gt; based on Freescale/NXP i.MX6UL (<a href=3D"http://variwik=
i.com/index.php?title=3DD" rel=3D"noreferrer" target=3D"_blank">http://vari=
wiki.com/index.<wbr>php?title=3DD</a><br>
&gt;&gt; &gt;&gt; ART-6UL_Yocto_Jethro_R1_build)<wbr>.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Currently, developers run builds manually on their deskto=
ps. We are<br>
&gt;&gt; &gt;&gt; considering using a continuous integration server. I foun=
d out that<br>
&gt;&gt; &gt;&gt; The Yocto Project uses Autobuilder which in turn uses Bui=
ldBot. I<br>
&gt;&gt; &gt;&gt; read most of the introductory documentation.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Would you recommend that we install only BuildBot and con=
figure it to<br>
&gt;&gt; &gt;&gt; build what we need?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; OR<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Would you recommend that we install Autobuilder (and Buil=
dBot) and<br>
&gt;&gt; &gt;&gt; configure it to build what we need?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Actually, the yocto-autobuilder already contains buildbot so =
no need<br>
&gt;&gt; &gt; for both.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; If you read:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/yocto-autobui=
lder/tree/README-QUIC" rel=3D"noreferrer" target=3D"_blank">http://git.yoct=
oproject.org/<wbr>cgit.cgi/yocto-autobuilder/<wbr>tree/README-QUIC</a><br>
&gt;&gt; &gt; KSTART<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; and probably some of the other READMEs and the documentation =
in the<br>
&gt;&gt; &gt; docs directory of the yocto-autobuilder directory, it should =
get you<br>
&gt;&gt; &gt; started in the right direction.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Feel free to ask questions if you need help.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -b<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Elizabeth &#39;pidge&#39; Flanagan<br>
&gt;&gt; &gt; Founder/CTO Tog=C3=A1n Labs<br>
&gt;&gt; &gt; <a href=3D"http://www.toganlabs.com" rel=3D"noreferrer" targe=
t=3D"_blank">www.toganlabs.com</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; What is the faster path to get up and running?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thanks!<br>
&gt;&gt; &gt;&gt; Alain.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; Alain Achkar, M.Eng. | Software Engineer<br>
&gt;&gt; &gt;&gt; Triacta Power Solutions<br>
&gt;&gt; &gt;&gt; (O) <a href=3D"tel:613.256.2868" value=3D"+16132562868">6=
13.256.2868</a> (C) <a href=3D"tel:613.406.6520" value=3D"+16134066520">613=
.406.6520</a><br>
&gt;&gt; &gt;&gt; <a href=3D"http://www.triacta.com" rel=3D"noreferrer" tar=
get=3D"_blank">www.triacta.com</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Alain Achkar, M.Eng. | Software Engineer<br>
&gt;<br>
&gt; Triacta Power Solutions<br>
&gt;<br>
&gt; (O) <a href=3D"tel:613.256.2868" value=3D"+16132562868">613.256.2868</=
a> (C) <a href=3D"tel:613.406.6520" value=3D"+16134066520">613.406.6520</a>=
<br>
&gt;<br>
&gt; <a href=3D"http://www.triacta.com" rel=3D"noreferrer" target=3D"_blank=
">www.triacta.com</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><p style=3D"color:rgb(136,136,136);font-size:12.8px"><span style=
=3D"color:black;font-family:Helvetica,sans-serif;font-size:8.5pt">Alain Ach=
kar, M.Eng. | Software Engineer</span><br></p><p style=3D"color:rgb(136,136=
,136);font-size:12.8px"><b><span style=3D"font-size:8.5pt;font-family:Helve=
tica,sans-serif;color:black">Triacta Power Solutions</span></b><span style=
=3D"color:black"></span></p><p style=3D"color:rgb(136,136,136);font-size:12=
.8px"><span style=3D"font-size:8.5pt;font-family:Helvetica,sans-serif;color=
:black">(O)=C2=A0<a href=3D"tel:613.256.2868" value=3D"+16132562868" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">613.256.2868</a>=C2=A0(C)=C2=A0=
<a href=3D"tel:613.406.6520" value=3D"+16138782570" style=3D"color:rgb(17,8=
5,204)" target=3D"_blank">613.406.6520</a></span></p><p style=3D"color:rgb(=
136,136,136);font-size:12.8px"></p><p style=3D"color:rgb(136,136,136);font-=
size:12.8px"><u><span style=3D"font-size:8.5pt;font-family:Helvetica,sans-s=
erif;color:rgb(71,135,255)"><a href=3D"http://www.triacta.com/" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">www.triacta.com=C2=A0</a></span></u><=
span style=3D"color:rgb(31,73,125)">=C2=A0</span></p></div></div>
</div>

--001a113cff38321fe2054b6cbd73--
