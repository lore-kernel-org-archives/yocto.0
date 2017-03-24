Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3D85E00A5C; Fri, 24 Mar 2017 03:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54702E009B9
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 03:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490352304; x=1521888304;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version;
	bh=8vehMsVyhBCPJWOzfDY9D5tt3wLhHpkyhB+26LhdUtk=;
	b=OmjxlPaKpVAh4VS5qVOZslkgmyvjBc3iIw+jGqKilL0abaNL8hQ1m60y
	iOWaG/HhEJKpuS0aUSKhIh2pe57Mgg==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Mar 2017 03:45:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,214,1486454400"; 
	d="scan'208,217";a="239877313"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.28.195])
	by fmsmga004.fm.intel.com with ESMTP; 24 Mar 2017 03:45:00 -0700
Message-ID: <1490352299.3439.3.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Alain Achkar <alain.achkar@triacta.com>, yocto@yoctoproject.org
Date: Fri, 24 Mar 2017 10:44:59 +0000
In-Reply-To: <CAGkf0HCdi=Y00Aa=b=OqGVz0OL5N0cd4de6tK9CoDNv7P=Ee7A@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
	<CA+n--H9FzfDocWHVemzRj49GpAFcQ=jCAfOyP7eJhikYw+H9nw@mail.gmail.com>
	<CAGkf0HCdi=Y00Aa=b=OqGVz0OL5N0cd4de6tK9CoDNv7P=Ee7A@mail.gmail.com>
X-Mailer: Evolution 3.22.6 (3.22.6-1.fc25) 
Mime-Version: 1.0
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
X-List-Received-Date: Fri, 24 Mar 2017 10:45:07 -0000
Content-Type: multipart/alternative; boundary="=-m+Myivc2gRvcz7MexmC7"

--=-m+Myivc2gRvcz7MexmC7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Alain,
On Thu, 2017-03-23 at 17:40 -0400, Alain Achkar wrote:
> I followed http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tre
> e/README-QUICKSTARTand got:

<snip>
> checking controller.cfg
> LOADING CONFIG FILE
> error while parsing config file:
> Traceback (most recent call last):
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/Twisted-12.2.0-py2.7-linux-
> x86_64.egg/twisted/internet/defer.py", line 1187, in unwindGenerator
>     return _inlineCallbacks(None, gen, Deferred())
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/Twisted-12.2.0-py2.7-linux-
> x86_64.egg/twisted/internet/defer.py", line 1045, in _inlineCallbacks
>     result = g.send(result)
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/buildbot-0.8.8-
> py2.7.egg/buildbot/scripts/upgrade_master.py", line 169, in
> upgradeMaster
>     master_cfg = loadConfig(config, configFile)
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/buildbot-0.8.8-
> py2.7.egg/buildbot/scripts/upgrade_master.py", line 53, in loadConfig
>     config['basedir'], configFileName)
> --- <exception caught here> ---
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/buildbot-0.8.8-py2.7.egg/buildbot/config.py", line 149, in
> loadConfig
>     exec f in localDict
>   File "/media/data/yocto-autobuilder/yocto-
> controller/controller.cfg", line 94, in <module>
>     yocto_buildsets.createBuildsets()
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/autobuilder/Autobuilder.py", line 65, in createBuildsets
>     self.parseBuildSet(buildset)
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/autobuilder/Autobuilder.py", line 102, in parseBuildSet
>     self.parseRepos(buildset)
>   File "/media/data/yocto-autobuilder/lib/python2.7/site-
> packages/autobuilder/Autobuilder.py", line 127, in parseRepos
>     if layer.iterkeys().next() not in self.repos:
> exceptions.AttributeError: 'list' object has no attribute 'iterkeys'

I appear to have left a stray comma in buildset-
config.controller/nightly.conf which causes the parser to choke. I've
fixed this in the master branch of yocto-autobuilder: http://git.yoctop
roject.org/clean/cgit.cgi/yocto-
autobuilder/commit/?id=239eeaa1e2cf3a985e75f8b75dedfe704a7d6991

You'll need to edit buildset-config/nightly.conf on your local instance
similarly to remove the comma at the end of the repos list, around line
38.
Thanks for reporting this error!
Joshua
> Errors loading configuration:
>   error while parsing config file: 'list' object has no attribute
> 'iterkeys' (traceback in logfile)
>  To start the autobuilder:
>  ./yocto-start-autobuilder <worker|controller|both>
> 
> 
>  To stop the autobuilder:
>  ./yocto-stop-autobuilder <worker|controller|both>
> 
> 
> >0< alain@esxi-ub1 Thu Mar 23 05:34 PM [master !?] /media/data/yocto-
> autobuilder >
> 
> 
> Any ideas on how to fix this?
> On Mon, Nov 14, 2016 at 1:40 PM, Bill Randle <bill.randle@gmail.com>
> wrote:
> > Yes, the 2 TB is for everything you might do with an AutoBuilder.
> > The
> > 
> > actual space used will be closer to your 35 GB, since you're
> > building
> > 
> > only a single image / work product. People have used BuilBot
> > directly
> > 
> > for automated builds, but using the AutoBuilder code (which runs
> > 
> > BuildBot underneath) gives you added flexibility and capability
> > 
> > without much additional overhead.
> > 
> > 
> > 
> >     -Bill
> > 
> > 
> > 
> > On Mon, Nov 14, 2016 at 8:13 AM, Alain Achkar <alain.achkar@triacta
> > .com> wrote:
> > 
> > > Thanks for your answers! From reading these links, it is still
> > not clear to
> > 
> > > me if this might be overkill for my requirements. AB Cluster
> > Setup talks
> > 
> > > about "the worker requires 2+ TB to hold all the build temp files
> > and git
> > 
> > > repos. If build artifacts and a local sstate mirror are included,
> > additional
> > 
> > > worker space is required."
> > 
> > >
> > 
> > > Currently, my build only takes 35GB, so I think what these links
> > are talking
> > 
> > > about is how to replicate what the Autobuilder project
> > 
> > > https://autobuilder.yoctoproject.org/ already does.
> > 
> > >
> > 
> > > To clarify, I am not interested in running builds and tests for
> > everything
> > 
> > > that Yocto already builds and tests (i.e. all the processor
> > architectures,
> > 
> > > all the machine types, etc.).  I am interested in running one
> > build for one
> > 
> > > machine type (the Variscite DART-6UL i.MX6UL arm-based processor,
> > for which
> > 
> > > NXP/Freescale and Variscite have provided recipes and layers
> > for).
> > 
> > >
> > 
> > > I know that autobuilder includes BuildBot (this is why I
> > specified it in
> > 
> > > parentheses) but my question remains: do I only install BuildBot
> > and try to
> > 
> > > build my machine type with it, or do I install Autobuilder?
> > 
> > >
> > 
> > > On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <bill.randle@gmail.
> > com> wrote:
> > 
> > >>
> > 
> > >> Also, be sure to check the Yocto Project wiki pages:
> > 
> > >>     https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
> > 
> > >> in particular, the AB cluster setup and AB maintenance links.
> > Even
> > 
> > >> though the one link refers to setting up an entire cluster, I've
> > used
> > 
> > >> that procedure to setup a single autobuilder, as well.
> > 
> > >>
> > 
> > >>     -Bill
> > 
> > >>
> > 
> > >> On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
> > 
> > >> <pidge@toganlabs.com> wrote:
> > 
> > >> > On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
> > 
> > >> >> Hello Joshua!
> > 
> > >> >>
> > 
> > >> >> We are using Yocto to build for the Variscite DART-6UL SoM
> > which is
> > 
> > >> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php
> > ?title=D
> > 
> > >> >> ART-6UL_Yocto_Jethro_R1_build).
> > 
> > >> >>
> > 
> > >> >> Currently, developers run builds manually on their desktops.
> > We are
> > 
> > >> >> considering using a continuous integration server. I found
> > out that
> > 
> > >> >> The Yocto Project uses Autobuilder which in turn uses
> > BuildBot. I
> > 
> > >> >> read most of the introductory documentation.
> > 
> > >> >>
> > 
> > >> >> Would you recommend that we install only BuildBot and
> > configure it to
> > 
> > >> >> build what we need?
> > 
> > >> >>
> > 
> > >> >> OR
> > 
> > >> >>
> > 
> > >> >> Would you recommend that we install Autobuilder (and
> > BuildBot) and
> > 
> > >> >> configure it to build what we need?
> > 
> > >> >
> > 
> > >> > Actually, the yocto-autobuilder already contains buildbot so
> > no need
> > 
> > >> > for both.
> > 
> > >> >
> > 
> > >> > If you read:
> > 
> > >> >
> > 
> > >> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/RE
> > ADME-QUIC
> > 
> > >> > KSTART
> > 
> > >> >
> > 
> > >> > and probably some of the other READMEs and the documentation
> > in the
> > 
> > >> > docs directory of the yocto-autobuilder directory, it should
> > get you
> > 
> > >> > started in the right direction.
> > 
> > >> >
> > 
> > >> > Feel free to ask questions if you need help.
> > 
> > >> >
> > 
> > >> > -b
> > 
> > >> >
> > 
> > >> > Elizabeth 'pidge' Flanagan
> > 
> > >> > Founder/CTO Togán Labs
> > 
> > >> > www.toganlabs.com
> > 
> > >> >
> > 
> > >> >>
> > 
> > >> >> What is the faster path to get up and running?
> > 
> > >> >>
> > 
> > >> >> Thanks!
> > 
> > >> >> Alain.
> > 
> > >> >>
> > 
> > >> >> --
> > 
> > >> >> Alain Achkar, M.Eng. | Software Engineer
> > 
> > >> >> Triacta Power Solutions
> > 
> > >> >> (O) 613.256.2868 (C) 613.406.6520
> > 
> > >> >> www.triacta.com
> > 
> > >> >
> > 
> > >> >
> > 
> > >> >
> > 
> > >> > --
> > 
> > >> > _______________________________________________
> > 
> > >> > yocto mailing list
> > 
> > >> > yocto@yoctoproject.org
> > 
> > >> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > >
> > 
> > >
> > 
> > >
> > 
> > >
> > 
> > > --
> > 
> > >
> > 
> > > Alain Achkar, M.Eng. | Software Engineer
> > 
> > >
> > 
> > > Triacta Power Solutions
> > 
> > >
> > 
> > > (O) 613.256.2868 (C) 613.406.6520
> > 
> > >
> > 
> > > www.triacta.com
> > 
> > 
> 
> 
> -- 
> Alain Achkar, M.Eng. | Software Engineer
> Triacta Power Solutions
> (O) 613.256.2868 (C) 613.406.6520
> 
> www.triacta.com  
> 

--=-m+Myivc2gRvcz7MexmC7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body><div>Hi Alain,</div><div><br></div><div>On Thu, 2017=
-03-23 at 17:40 -0400, Alain Achkar wrote:</div><blockquote type=3D"cite"><=
div dir=3D"ltr">I followed&nbsp;<a href=3D"http://git.yoctoproject.org/cgit=
.cgi/yocto-autobuilder/tree/README-QUICKSTART">http://git.yoctoproject.org/=
cgit.cgi/yocto-autobuilder/tree/README-QUICKSTART</a><div>and got:</div></d=
iv></blockquote><div><br></div><div>&lt;snip&gt;</div><div><br></div><block=
quote type=3D"cite"><div dir=3D"ltr"><div><div><font face=3D"monospace, mon=
ospace">checking controller.cfg</font></div><div><font face=3D"monospace, m=
onospace">LOADING CONFIG FILE</font></div><div><font face=3D"monospace, mon=
ospace" color=3D"#ff0000"><b>error while parsing config file:</b></font></d=
iv><div><font face=3D"monospace, monospace">Traceback (most recent call las=
t):</font></div><div><font face=3D"monospace, monospace">&nbsp; File "/medi=
a/data/yocto-autobuilder/lib/python2.7/site-packages/Twisted-12.2.0-py2.7-l=
inux-x86_64.egg/twisted/internet/defer.py", line 1187, in unwindGenerator</=
font></div><div><font face=3D"monospace, monospace">&nbsp; &nbsp; return _i=
nlineCallbacks(None, gen, Deferred())</font></div><div><font face=3D"monosp=
ace, monospace">&nbsp; File "/media/data/yocto-autobuilder/lib/python2.7/si=
te-packages/Twisted-12.2.0-py2.7-linux-x86_64.egg/twisted/internet/defer.py=
", line 1045, in _inlineCallbacks</font></div><div><font face=3D"monospace,=
 monospace">&nbsp; &nbsp; result =3D g.send(result)</font></div><div><font =
face=3D"monospace, monospace">&nbsp; File "/media/data/yocto-autobuilder/li=
b/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/scripts/upgrade=
_master.py", line 169, in upgradeMaster</font></div><div><font face=3D"mono=
space, monospace">&nbsp; &nbsp; master_cfg =3D loadConfig(config, configFil=
e)</font></div><div><font face=3D"monospace, monospace">&nbsp; File "/media=
/data/yocto-autobuilder/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.eg=
g/buildbot/scripts/upgrade_master.py", line 53, in loadConfig</font></div><=
div><font face=3D"monospace, monospace">&nbsp; &nbsp; config['basedir'], co=
nfigFileName)</font></div><div><font face=3D"monospace, monospace">--- &lt;=
exception caught here&gt; ---</font></div><div><font face=3D"monospace, mon=
ospace">&nbsp; File "/media/data/yocto-autobuilder/lib/python2.7/site-packa=
ges/buildbot-0.8.8-py2.7.egg/buildbot/config.py", line 149, in loadConfig</=
font></div><div><font face=3D"monospace, monospace">&nbsp; &nbsp; exec f in=
 localDict</font></div><div><font face=3D"monospace, monospace">&nbsp; File=
 "/media/data/yocto-autobuilder/yocto-controller/controller.cfg", line 94, =
in &lt;module&gt;</font></div><div><font face=3D"monospace, monospace">&nbs=
p; &nbsp; yocto_buildsets.createBuildsets()</font></div><div><font face=3D"=
monospace, monospace">&nbsp; File "/media/data/yocto-autobuilder/lib/python=
2.7/site-packages/autobuilder/Autobuilder.py", line 65, in createBuildsets<=
/font></div><div><font face=3D"monospace, monospace">&nbsp; &nbsp; self.par=
seBuildSet(buildset)</font></div><div><font face=3D"monospace, monospace">&=
nbsp; File "/media/data/yocto-autobuilder/lib/python2.7/site-packages/autob=
uilder/Autobuilder.py", line 102, in parseBuildSet</font></div><div><font f=
ace=3D"monospace, monospace">&nbsp; &nbsp; self.parseRepos(buildset)</font>=
</div><div><font face=3D"monospace, monospace">&nbsp; File "/media/data/yoc=
to-autobuilder/lib/python2.7/site-packages/autobuilder/Autobuilder.py", lin=
e 127, in parseRepos</font></div><div><font face=3D"monospace, monospace">&=
nbsp; &nbsp; if layer.iterkeys().next() not in self.repos:</font></div><div=
><font face=3D"monospace, monospace" color=3D"#ff0000"><b>exceptions.Attrib=
uteError: 'list' object has no attribute 'iterkeys'</b></font></div></div><=
/div></blockquote><div><br></div><div>I appear to have left a stray comma i=
n buildset-config.controller/nightly.conf which causes the parser to choke.=
 I've fixed this in the master branch of yocto-autobuilder: <a href=3D"http=
://git.yoctoproject.org/clean/cgit.cgi/yocto-autobuilder/commit/?id=3D239ee=
aa1e2cf3a985e75f8b75dedfe704a7d6991">http://git.yoctoproject.org/clean/cgit=
.cgi/yocto-autobuilder/commit/?id=3D239eeaa1e2cf3a985e75f8b75dedfe704a7d699=
1</a></div><div><br></div><div><br></div><div>You'll need to edit buildset-=
config/nightly.conf on your local instance similarly to remove the comma at=
 the end of the repos list, around line 38.</div><div><br></div><div>Thanks=
 for reporting this error!</div><div><br></div><div>Joshua</div><div><br></=
div><blockquote type=3D"cite"><div dir=3D"ltr"><div><div><font face=3D"mono=
space, monospace">Errors loading configuration:</font></div><div><font face=
=3D"monospace, monospace">&nbsp; error while parsing config file: 'list' ob=
ject has no attribute 'iterkeys' (traceback in logfile)</font></div><div><f=
ont face=3D"monospace, monospace">&nbsp;To start the autobuilder:</font></d=
iv><div><font face=3D"monospace, monospace">&nbsp;./yocto-start-autobuilder=
 &lt;worker|controller|both&gt;</font></div><div><font face=3D"monospace, m=
onospace"><br></font></div><div><font face=3D"monospace, monospace">&nbsp;T=
o stop the autobuilder:</font></div><div><font face=3D"monospace, monospace=
">&nbsp;./yocto-stop-autobuilder &lt;worker|controller|both&gt;</font></div=
><div><font face=3D"monospace, monospace"><br></font></div><div><font face=
=3D"monospace, monospace">&gt;0&lt; alain@esxi-ub1 Thu Mar 23 05:34 PM [mas=
ter !?] /media/data/yocto-autobuilder &gt;</font></div><div><br></div></div=
><div>Any ideas on how to fix this?</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Mon, Nov 14, 2016 at 1:40 PM, Bill Randle =
<span dir=3D"ltr">&lt;<a href=3D"mailto:bill.randle@gmail.com" target=3D"_b=
lank">bill.randle@gmail.com</a>&gt;</span> wrote:<br><blockquote type=3D"ci=
te">Yes, the 2 TB is for everything you might do with an AutoBuilder. The<b=
r>
actual space used will be closer to your 35 GB, since you're building<br>
only a single image / work product. People have used BuilBot directly<br>
for automated builds, but using the AutoBuilder code (which runs<br>
BuildBot underneath) gives you added flexibility and capability<br>
without much additional overhead.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
&nbsp; &nbsp; -Bill<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
On Mon, Nov 14, 2016 at 8:13 AM, Alain Achkar &lt;<a href=3D"mailto:alain.a=
chkar@triacta.com">alain.achkar@triacta.com</a>&gt; wrote:<br>
&gt; Thanks for your answers! From reading these links, it is still not cle=
ar to<br>
&gt; me if this might be overkill for my requirements. AB Cluster Setup tal=
ks<br>
&gt; about "the worker requires 2+ TB to hold all the build temp files and =
git<br>
&gt; repos. If build artifacts and a local sstate mirror are included, addi=
tional<br>
&gt; worker space is required."<br>
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
&gt; all the machine types, etc.).&nbsp; I am interested in running one bui=
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
&gt;&gt;&nbsp; &nbsp; &nbsp;<a href=3D"https://wiki.yoctoproject.org/wiki/T=
he_Yocto_Autobuilder" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoc=
toproject.org/<wbr>wiki/The_Yocto_Autobuilder</a><br>
&gt;&gt; in particular, the AB cluster setup and AB maintenance links. Even=
<br>
&gt;&gt; though the one link refers to setting up an entire cluster, I've u=
sed<br>
&gt;&gt; that procedure to setup a single autobuilder, as well.<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;-Bill<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan<br>
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
&gt;&gt; &gt; Elizabeth 'pidge' Flanagan<br>
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
</div></div><br></blockquote></div><br><br clear=3D"all"><div><br></div>-- =
<br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><p style=3D"color:rgb(136,136,136);font-size:12.8px"><span styl=
e=3D"color:black;font-family:Helvetica,sans-serif;font-size:8.5pt">Alain Ac=
hkar, M.Eng. | Software Engineer</span><br></p><p style=3D"color:rgb(136,13=
6,136);font-size:12.8px"><b><span style=3D"font-size:8.5pt;font-family:Helv=
etica,sans-serif;color:black">Triacta Power Solutions</span></b><span style=
=3D"color:black"></span></p><p style=3D"color:rgb(136,136,136);font-size:12=
.8px"><span style=3D"font-size:8.5pt;font-family:Helvetica,sans-serif;color=
:black">(O)&nbsp;<a href=3D"tel:613.256.2868" value=3D"+16132562868" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">613.256.2868</a>&nbsp;(C)&nbsp;=
<a href=3D"tel:613.406.6520" value=3D"+16138782570" style=3D"color:rgb(17,8=
5,204)" target=3D"_blank">613.406.6520</a></span></p><p style=3D"color:rgb(=
136,136,136);font-size:12.8px"></p><p style=3D"color:rgb(136,136,136);font-=
size:12.8px"><u><span style=3D"font-size:8.5pt;font-family:Helvetica,sans-s=
erif;color:rgb(71,135,255)"><a href=3D"http://www.triacta.com/" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">www.triacta.com&nbsp;</a></span></u><=
span style=3D"color:rgb(31,73,125)">&nbsp;</span></p></div></div>
</div>
</blockquote></body></html>

--=-m+Myivc2gRvcz7MexmC7--
