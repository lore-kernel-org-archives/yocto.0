Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25DAEE0097C; Fri, 24 Mar 2017 09:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F8C2E0095F
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 09:06:01 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id l203so3618088oia.0
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 09:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pEXMgfRFeHgNazllQ/Hbi//QX+gwXQx93SSI6a8bNtI=;
	b=PEVghIK8j2U9oDL9PChYh3BA4QZx7z78Dzx1wCy8q2/649I5qnw0JhtsDDsGLqG+v+
	uSJkSbYH8IIWifLIOEbLZs7dhhTwSezUI3d7t46ME4x1lCGRs1dYTL5q7rTOJuOrA4Y/
	JF7l0qe4fp82OIlsNxlvvTFJcmrpfkg+1+Fl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pEXMgfRFeHgNazllQ/Hbi//QX+gwXQx93SSI6a8bNtI=;
	b=YCR81PVDUxQP+zAlKAeSzOUaTlSlyGJceD3GWgq0uCPTlDwwHf1PRfCyzXyQvUwu/Q
	MHzwn1BfhF839eroLxtK7soysjcd0d8C+FoojYkX21lELFxdvUqHQSNKFvo7FJCz7Bu+
	E2DVv7kXea1LeVm5ljL796M1JDsFYCLy/BBUYMiBnlIW3KaPzSEepA66I9xFyMlxOTSU
	CpgBZeelLnTozjYa1fBBsBUocDXRMpDH3OC1xyfVeAb9vWNLgmCCxMLSYR/hPp1DrwVZ
	4FL7ujmHZLXbrpftyjbP5uyBOWEdNn5V9T85eZ9rXYT2U3vWZTTY4eYJF1qabFs4TQjk
	9+LQ==
X-Gm-Message-State: AFeK/H1Pfv0PO29mOWFMFGy1sSqdPvtjf8ZB1QWKBWRwjeq2o150eim3v51EKtmTfElZsLItrakrvyKbleLotRam
X-Received: by 10.202.87.81 with SMTP id l78mr5001733oib.1.1490371560386; Fri,
	24 Mar 2017 09:06:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.21 with HTTP; Fri, 24 Mar 2017 09:05:19 -0700 (PDT)
In-Reply-To: <1490352299.3439.3.camel@linux.intel.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
	<CA+n--H9FzfDocWHVemzRj49GpAFcQ=jCAfOyP7eJhikYw+H9nw@mail.gmail.com>
	<CAGkf0HCdi=Y00Aa=b=OqGVz0OL5N0cd4de6tK9CoDNv7P=Ee7A@mail.gmail.com>
	<1490352299.3439.3.camel@linux.intel.com>
From: Alain Achkar <alain.achkar@triacta.com>
Date: Fri, 24 Mar 2017 12:05:19 -0400
Message-ID: <CAGkf0HD+DFC0hN0PXah9z0PhtCp-s_dw5QKBL1SGpuG0yympUQ@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@linux.intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 24 Mar 2017 16:06:04 -0000
Content-Type: multipart/alternative; boundary=001a1147ce8c70c940054b7c2bf0

--001a1147ce8c70c940054b7c2bf0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Joshua! This fix worked.

On Fri, Mar 24, 2017 at 6:44 AM, Joshua Lock <joshua.g.lock@linux.intel.com=
>
wrote:

> Hi Alain,
>
> On Thu, 2017-03-23 at 17:40 -0400, Alain Achkar wrote:
>
> I followed http://git.yoctoproject.org/cgit.cgi/
> yocto-autobuilder/tree/README-QUICKSTART
> and got:
>
>
> <snip>
>
> checking controller.cfg
> LOADING CONFIG FILE
> *error while parsing config file:*
> Traceback (most recent call last):
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/Twisted-12.2.0-py2.7-linux-x86_64.egg/twisted/internet/defe=
r.py",
> line 1187, in unwindGenerator
>     return _inlineCallbacks(None, gen, Deferred())
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/Twisted-12.2.0-py2.7-linux-x86_64.egg/twisted/internet/defe=
r.py",
> line 1045, in _inlineCallbacks
>     result =3D g.send(result)
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/buildbot-0.8.8-py2.7.egg/buildbot/scripts/upgrade_master.py=
",
> line 169, in upgradeMaster
>     master_cfg =3D loadConfig(config, configFile)
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/buildbot-0.8.8-py2.7.egg/buildbot/scripts/upgrade_master.py=
",
> line 53, in loadConfig
>     config['basedir'], configFileName)
> --- <exception caught here> ---
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/buildbot-0.8.8-py2.7.egg/buildbot/config.py", line 149, in
> loadConfig
>     exec f in localDict
>   File "/media/data/yocto-autobuilder/yocto-controller/controller.cfg",
> line 94, in <module>
>     yocto_buildsets.createBuildsets()
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/autobuilder/Autobuilder.py", line 65, in createBuildsets
>     self.parseBuildSet(buildset)
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/autobuilder/Autobuilder.py", line 102, in parseBuildSet
>     self.parseRepos(buildset)
>   File "/media/data/yocto-autobuilder/lib/python2.7/
> site-packages/autobuilder/Autobuilder.py", line 127, in parseRepos
>     if layer.iterkeys().next() not in self.repos:
> *exceptions.AttributeError: 'list' object has no attribute 'iterkeys'*
>
>
> I appear to have left a stray comma in buildset-config.controller/nightly=
.conf
> which causes the parser to choke. I've fixed this in the master branch of
> yocto-autobuilder: http://git.yoctoproject.org/clean/cgit.cgi/yocto-
> autobuilder/commit/?id=3D239eeaa1e2cf3a985e75f8b75dedfe704a7d6991
>
>
> You'll need to edit buildset-config/nightly.conf on your local instance
> similarly to remove the comma at the end of the repos list, around line 3=
8.
>
> Thanks for reporting this error!
>
> Joshua
>
> Errors loading configuration:
>   error while parsing config file: 'list' object has no attribute
> 'iterkeys' (traceback in logfile)
>  To start the autobuilder:
>  ./yocto-start-autobuilder <worker|controller|both>
>
>  To stop the autobuilder:
>  ./yocto-stop-autobuilder <worker|controller|both>
>
> >0< alain@esxi-ub1 Thu Mar 23 05:34 PM [master !?]
> /media/data/yocto-autobuilder >
>
> Any ideas on how to fix this?
>
> On Mon, Nov 14, 2016 at 1:40 PM, Bill Randle <bill.randle@gmail.com>
> wrote:
>
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
> >> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php
> ?title=3DD
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
> >> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/
> README-QUIC
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
>
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
>
>
>
>
> --
>
>
>

--001a1147ce8c70c940054b7c2bf0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Joshua! This fix worked.<div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Fri, Mar 24, 2017 at 6:44 AM, Joshua Lock=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:joshua.g.lock@linux.intel.com" tar=
get=3D"_blank">joshua.g.lock@linux.intel.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div>Hi Alain,</div><span class=3D""><div><br></d=
iv><div>On Thu, 2017-03-23 at 17:40 -0400, Alain Achkar wrote:</div><blockq=
uote type=3D"cite"><div dir=3D"ltr">I followed=C2=A0<a href=3D"http://git.y=
octoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUICKSTART" target=
=3D"_blank">http://git.<wbr>yoctoproject.org/cgit.cgi/<wbr>yocto-autobuilde=
r/tree/README-<wbr>QUICKSTART</a><div>and got:</div></div></blockquote><div=
><br></div></span><div>&lt;snip&gt;</div><span class=3D""><div><br></div><b=
lockquote type=3D"cite"><div dir=3D"ltr"><div><div><font face=3D"monospace,=
 monospace">checking controller.cfg</font></div><div><font face=3D"monospac=
e, monospace">LOADING CONFIG FILE</font></div><div><font face=3D"monospace,=
 monospace" color=3D"#ff0000"><b>error while parsing config file:</b></font=
></div><div><font face=3D"monospace, monospace">Traceback (most recent call=
 last):</font></div><div><font face=3D"monospace, monospace">=C2=A0 File &q=
uot;/media/data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>site-packages/Twi=
sted-12.2.0-<wbr>py2.7-linux-x86_64.egg/<wbr>twisted/internet/defer.py&quot=
;, line 1187, in unwindGenerator</font></div><div><font face=3D"monospace, =
monospace">=C2=A0 =C2=A0 return _inlineCallbacks(None, gen, Deferred())</fo=
nt></div><div><font face=3D"monospace, monospace">=C2=A0 File &quot;/media/=
data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>site-packages/Twisted-12.2.0=
-<wbr>py2.7-linux-x86_64.egg/<wbr>twisted/internet/defer.py&quot;, line 104=
5, in _inlineCallbacks</font></div><div><font face=3D"monospace, monospace"=
>=C2=A0 =C2=A0 result =3D g.send(result)</font></div><div><font face=3D"mon=
ospace, monospace">=C2=A0 File &quot;/media/data/yocto-<wbr>autobuilder/lib=
/python2.7/<wbr>site-packages/buildbot-0.8.8-<wbr>py2.7.egg/buildbot/script=
s/<wbr>upgrade_master.py&quot;, line 169, in upgradeMaster</font></div><div=
><font face=3D"monospace, monospace">=C2=A0 =C2=A0 master_cfg =3D loadConfi=
g(config, configFile)</font></div><div><font face=3D"monospace, monospace">=
=C2=A0 File &quot;/media/data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>sit=
e-packages/buildbot-0.8.8-<wbr>py2.7.egg/buildbot/scripts/<wbr>upgrade_mast=
er.py&quot;, line 53, in loadConfig</font></div><div><font face=3D"monospac=
e, monospace">=C2=A0 =C2=A0 config[&#39;basedir&#39;], configFileName)</fon=
t></div><div><font face=3D"monospace, monospace">--- &lt;exception caught h=
ere&gt; ---</font></div><div><font face=3D"monospace, monospace">=C2=A0 Fil=
e &quot;/media/data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>site-packages=
/buildbot-0.8.8-<wbr>py2.7.egg/buildbot/config.py&quot;, line 149, in loadC=
onfig</font></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 ex=
ec f in localDict</font></div><div><font face=3D"monospace, monospace">=C2=
=A0 File &quot;/media/data/yocto-<wbr>autobuilder/yocto-controller/<wbr>con=
troller.cfg&quot;, line 94, in &lt;module&gt;</font></div><div><font face=
=3D"monospace, monospace">=C2=A0 =C2=A0 yocto_buildsets.<wbr>createBuildset=
s()</font></div><div><font face=3D"monospace, monospace">=C2=A0 File &quot;=
/media/data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>site-packages/autobui=
lder/<wbr>Autobuilder.py&quot;, line 65, in createBuildsets</font></div><di=
v><font face=3D"monospace, monospace">=C2=A0 =C2=A0 self.parseBuildSet(buil=
dset)</font></div><div><font face=3D"monospace, monospace">=C2=A0 File &quo=
t;/media/data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>site-packages/autob=
uilder/<wbr>Autobuilder.py&quot;, line 102, in parseBuildSet</font></div><d=
iv><font face=3D"monospace, monospace">=C2=A0 =C2=A0 self.parseRepos(builds=
et)</font></div><div><font face=3D"monospace, monospace">=C2=A0 File &quot;=
/media/data/yocto-<wbr>autobuilder/lib/python2.7/<wbr>site-packages/autobui=
lder/<wbr>Autobuilder.py&quot;, line 127, in parseRepos</font></div><div><f=
ont face=3D"monospace, monospace">=C2=A0 =C2=A0 if layer.iterkeys().next() =
not in self.repos:</font></div><div><font face=3D"monospace, monospace" col=
or=3D"#ff0000"><b>exceptions.AttributeError: &#39;list&#39; object has no a=
ttribute &#39;iterkeys&#39;</b></font></div></div></div></blockquote><div><=
br></div></span><div>I appear to have left a stray comma in buildset-config=
.controller/<wbr>nightly.conf which causes the parser to choke. I&#39;ve fi=
xed this in the master branch of yocto-autobuilder: <a href=3D"http://git.y=
octoproject.org/clean/cgit.cgi/yocto-autobuilder/commit/?id=3D239eeaa1e2cf3=
a985e75f8b75dedfe704a7d6991" target=3D"_blank">http://git.yoctoproject.org/=
<wbr>clean/cgit.cgi/yocto-<wbr>autobuilder/commit/?id=3D<wbr>239eeaa1e2cf3a=
985e75f8b75dedfe<wbr>704a7d6991</a></div><div><br></div><div><br></div><div=
>You&#39;ll need to edit buildset-config/nightly.conf on your local instanc=
e similarly to remove the comma at the end of the repos list, around line 3=
8.</div><div><br></div><div>Thanks for reporting this error!</div><span cla=
ss=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Joshua</div></fon=
t></span><div><div class=3D"h5"><div><br></div><blockquote type=3D"cite"><d=
iv dir=3D"ltr"><div><div><font face=3D"monospace, monospace">Errors loading=
 configuration:</font></div><div><font face=3D"monospace, monospace">=C2=A0=
 error while parsing config file: &#39;list&#39; object has no attribute &#=
39;iterkeys&#39; (traceback in logfile)</font></div><div><font face=3D"mono=
space, monospace">=C2=A0To start the autobuilder:</font></div><div><font fa=
ce=3D"monospace, monospace">=C2=A0./yocto-start-autobuilder &lt;worker|cont=
roller|both&gt;</font></div><div><font face=3D"monospace, monospace"><br></=
font></div><div><font face=3D"monospace, monospace">=C2=A0To stop the autob=
uilder:</font></div><div><font face=3D"monospace, monospace">=C2=A0./yocto-=
stop-autobuilder &lt;worker|controller|both&gt;</font></div><div><font face=
=3D"monospace, monospace"><br></font></div><div><font face=3D"monospace, mo=
nospace">&gt;0&lt; alain@esxi-ub1 Thu Mar 23 05:34 PM [master !?] /media/da=
ta/yocto-autobuilder &gt;</font></div><div><br></div></div><div>Any ideas o=
n how to fix this?</div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Mon, Nov 14, 2016 at 1:40 PM, Bill Randle <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:bill.randle@gmail.com" target=3D"_blank">bill.randle=
@gmail.com</a>&gt;</span> wrote:<br><blockquote type=3D"cite">Yes, the 2 TB=
 is for everything you might do with an AutoBuilder. The<br>
actual space used will be closer to your 35 GB, since you&#39;re building<b=
r>
only a single image / work product. People have used BuilBot directly<br>
for automated builds, but using the AutoBuilder code (which runs<br>
BuildBot underneath) gives you added flexibility and capability<br>
without much additional overhead.<br>
<span class=3D"m_-4114694630079938636HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 -Bill<br>
</font></span><div class=3D"m_-4114694630079938636HOEnZb"><div class=3D"m_-=
4114694630079938636h5"><br>
On Mon, Nov 14, 2016 at 8:13 AM, Alain Achkar &lt;<a href=3D"mailto:alain.a=
chkar@triacta.com" target=3D"_blank">alain.achkar@triacta.com</a>&gt; wrote=
:<br>
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
arget=3D"_blank">https://autobuilder.yoctoproje<wbr>ct.org/</a> already doe=
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
ll.randle@gmail.com" target=3D"_blank">bill.randle@gmail.com</a>&gt; wrote:=
<br>
&gt;&gt;<br>
&gt;&gt; Also, be sure to check the Yocto Project wiki pages:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/T=
he_Yocto_Autobuilder" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoc=
toproject.<wbr>org/wiki/The_Yocto_Autobuilder</a><br>
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
&gt;&gt; &lt;<a href=3D"mailto:pidge@toganlabs.com" target=3D"_blank">pidge=
@toganlabs.com</a>&gt; wrote:<br>
&gt;&gt; &gt; On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:<br>
&gt;&gt; &gt;&gt; Hello Joshua!<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; We are using Yocto to build for the Variscite DART-6UL So=
M which is<br>
&gt;&gt; &gt;&gt; based on Freescale/NXP i.MX6UL (<a href=3D"http://variwik=
i.com/index.php?title=3DD" rel=3D"noreferrer" target=3D"_blank">http://vari=
wiki.com/index.php<wbr>?title=3DD</a><br>
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
oproject.org/cg<wbr>it.cgi/yocto-autobuilder/tree/<wbr>README-QUIC</a><br>
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
&gt;&gt; &gt;&gt; --<br><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listi=
nfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br></div></div></blockquote></div><br><br clear=3D"all"><div><br></=
div>-- <br><div class=3D"m_-4114694630079938636gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><p style=3D"color:rgb(136,136,136)=
;font-size:12.8px"><br></p></div></div></div></blockquote></div></div></blo=
ckquote></div>
</div></div>

--001a1147ce8c70c940054b7c2bf0--
