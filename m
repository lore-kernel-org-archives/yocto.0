Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 696FCE00BAB; Mon,  3 Apr 2017 18:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36BCDE00B76
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 18:44:03 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id r203so147280775oib.3
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 18:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=uUTUTQnJ8zS/l8ngwn+DfuEJ00h+2i8IJUIfe7xxADg=;
	b=NwXsh9hV7st5c+EL9n9H4wloBCc3VICfjx7mVnaAihxb5/itGzREKQ0OIrcH1UxxES
	Oej37Y4Q0vISqiA1lIte1ikHzRs9aRxIIvpmox4XlUMc09kkG1/OBJU0arkHXZkj2vlR
	i95TVbqSTRE5JZiU5UoyF9ZWq3J/Ts5x4/KJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=uUTUTQnJ8zS/l8ngwn+DfuEJ00h+2i8IJUIfe7xxADg=;
	b=nyOaA5qfsaf4o+brDJxAwU60xARZmjf3yh4t5i+8tkg9QU4+4u0rfYZB/6eOjIUVB8
	cPgAlHw/kIMpq5wH1b9cGJ2mQhaISGPwiGemBU/863F8OX84TiLvLHYEgXF2rFolQvPf
	0XcbUGFdSRvcDTK+JGUMrpVVeEwbU2bADUWxXvnXDQ83M3Pc3YRZRIkvfDLKp8Z95KFn
	xswfO3UC1TAaeZULxRQqLny2e1WCdB/Y/EdHjQWP2eoKSslyPyZGWkoerOjkhPHLxyFi
	W7CNjyNvJ8SLzVHAcbExBvOlDw+VXrF8assEzUMC3Vw8Fv7DQrOCyPk2h2X/2VMajzTk
	oMiA==
X-Gm-Message-State: AFeK/H06i/7BbCPgymJTR8R69vViSztqim3sheUIeQI4gFPk9TB09aflVIx7KPxdN5nHzjFRetdsE4MSwjWVZiYM
X-Received: by 10.202.79.13 with SMTP id d13mr10672045oib.1.1491270242536;
	Mon, 03 Apr 2017 18:44:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.45 with HTTP; Mon, 3 Apr 2017 18:43:22 -0700 (PDT)
In-Reply-To: <CAGkf0HCOzd-_wPbCR9MREADq29vKFWK0jynqLYO5qMezi+txYw@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
	<CABcw_OkUq_YX939GrV+SXFAcuKb4c+aHzKOK4Y5pOK+LTOMLWg@mail.gmail.com>
	<CAGkf0HCOzd-_wPbCR9MREADq29vKFWK0jynqLYO5qMezi+txYw@mail.gmail.com>
From: Alain Achkar <alain.achkar@triacta.com>
Date: Mon, 3 Apr 2017 21:43:22 -0400
Message-ID: <CAGkf0HCjCxFcaNqqsnnTrnQ5kjtCzTc8p4h4T=bbbpFL0JRqeQ@mail.gmail.com>
To: Chris Whittenburg <whittenburg@gmail.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 04 Apr 2017 01:44:07 -0000
Content-Type: multipart/alternative; boundary=001a113d809812241f054c4d699f

--001a113d809812241f054c4d699f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Chris!

I had to put this task on hold and I am re-visiting it now. I followed the
instructions here:  http://git.yoctoproject.org/cgit.cgi/
yocto-autobuilder/tree/README-QUICKSTART and managed to force one of the
builds that comes with Yocto. I got errors but I'm not interested in the
Yocto-provided nightly builds anyway. (The errors are related to
buildhistory - it seems that some builds set Buildhistory=3DTrue but I
haven't set up a git repo for build history)

Now, I am still confused how to build the Variscite image for the i.MX6UL.
We are still at Jethro but don't mind upgrading to Krogoth.

I would appreciate some general guidelines on how to take the instructions
in here:
http://variwiki.com/index.php?title=3DDART-6UL_Yocto_Jethro_R1_build
and transform them to the config format that Autobuilder understands.

Mainly, I understand that I have to:

1) checkout the source code

$ mkdir ~/var-mx6ul-mx7-yocto-jethro
$ cd ~/var-mx6ul-mx7-yocto-jethro
$ repo init -u git://git.freescale.com/imx/fsl-arm-yocto-bsp.git -b
imx-4.1.15-1.0.0_ga
$ repo sync

$ cd ~/var-mx6ul-mx7-yocto-jethro/sources
$ git clone https://github.com/varigit/meta-variscite-mx6ul-mx7.git -b
imx_4.1.15_ga-var01


2) copy and patch

$ cp meta-variscite-mx6ul-mx7/scripts/var-setup-release.sh ../
$ patch -p1 < meta-variscite-mx6ul-mx7/patch/Fix-FSL-multi-patch-append-bug=
s.patch


3) setup a download directory

$ sudo mkdir /opt/yocto_downloads
$ sudo chmod 777 /opt/yocto_downloads/
$ sed -i 's/DL_DIR ?=3D "${BSPDIR}\/downloads/DL_DIR =3D
"\/opt\/yocto_downloads/g' conf/local.conf


4) setup the environment

$ cd ~/var-mx6ul-mx7-yocto-jethro
$ MACHINE=3Dimx6ul-var-dart DISTRO=3Dfsl-imx-x11 source
var-setup-release.sh -b build_x11


5) build

$ bitbake fsl-image-gui


I looked at some nightly-*.conf files, for example nightly-x86-64.conf to
try to guess what to do.

I know I have to create a file like nightly-var-mx6ul.conf but given that
Variscite is not using the 'repo' command that Freescale is using (they do
a git clone) and given step (2) of copying their own setup script and
patching the whole freescale meta- layers, I am not sure about what to put
instead of the line:

        {'CheckOutLayers': {}},


I also can't figure out how the info in Variscite's build-x11/local.conf
can be translated to the Autobuilder format, i.e. where to specify all
these config parameters.

Any help would be greatly appreciated.


On Mon, Nov 14, 2016 at 12:35 PM, Alain Achkar <alain.achkar@triacta.com>
wrote:

> Thanks Chris!
>
> This is the answer I was looking for.
>
> On Mon, Nov 14, 2016 at 11:58 AM, Chris Whittenburg <whittenburg@gmail.co=
m
> > wrote:
>
>>
>> Hi Alain,
>>
>> We use the same module-- Variscite DART MX6, and I was able to hack the
>> yocto autobuilder to build our image nightly.  I host it all on a single
>> machine.
>>
>> -chris
>>
>>
>> On Mon, Nov 14, 2016 at 10:13 AM, Alain Achkar <alain.achkar@triacta.com=
>
>> wrote:
>>
>>> Thanks for your answers! From reading these links, it is still not clea=
r
>>> to me if this might be overkill for my requirements. AB Cluster Setup t=
alks
>>> about "*the worker requires 2+ TB to hold all the build temp files and
>>> git repos. If build artifacts and a local sstate mirror are included,
>>> additional worker space is required.*"
>>>
>>> Currently, my build only takes 35GB, so I think what these links are
>>> talking about is how to replicate what the Autobuilder project
>>> https://autobuilder.yoctoproject.org/ already does.
>>>
>>> To clarify, I am not interested in running builds and tests for
>>> everything that Yocto already builds and tests (i.e. all the processor
>>> architectures, all the machine types, etc.).  I am interested in runnin=
g
>>> one build for one machine type (the Variscite DART-6UL i.MX6UL arm-base=
d
>>> processor, for which NXP/Freescale and Variscite have provided recipes =
and
>>> layers for).
>>>
>>> I know that autobuilder includes BuildBot (this is why I specified it i=
n
>>> parentheses) but my question remains: do I only install BuildBot and tr=
y to
>>> build my machine type with it, or do I install Autobuilder?
>>>
>>> On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <bill.randle@gmail.com>
>>> wrote:
>>>
>>>> Also, be sure to check the Yocto Project wiki pages:
>>>>     https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
>>>> in particular, the AB cluster setup and AB maintenance links. Even
>>>> though the one link refers to setting up an entire cluster, I've used
>>>> that procedure to setup a single autobuilder, as well.
>>>>
>>>>     -Bill
>>>>
>>>> On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
>>>> <pidge@toganlabs.com> wrote:
>>>> > On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
>>>> >> Hello Joshua!
>>>> >>
>>>> >> We are using Yocto to build for the Variscite DART-6UL SoM which is
>>>> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php
>>>> ?title=3DD
>>>> >> ART-6UL_Yocto_Jethro_R1_build).
>>>> >>
>>>> >> Currently, developers run builds manually on their desktops. We are
>>>> >> considering using a continuous integration server. I found out that
>>>> >> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
>>>> >> read most of the introductory documentation.
>>>> >>
>>>> >> Would you recommend that we install only BuildBot and configure it =
to
>>>> >> build what we need?
>>>> >>
>>>> >> OR
>>>> >>
>>>> >> Would you recommend that we install Autobuilder (and BuildBot) and
>>>> >> configure it to build what we need?
>>>> >
>>>> > Actually, the yocto-autobuilder already contains buildbot so no need
>>>> > for both.
>>>> >
>>>> > If you read:
>>>> >
>>>> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/
>>>> README-QUIC
>>>> > KSTART
>>>> >
>>>> > and probably some of the other READMEs and the documentation in the
>>>> > docs directory of the yocto-autobuilder directory, it should get you
>>>> > started in the right direction.
>>>> >
>>>> > Feel free to ask questions if you need help.
>>>> >
>>>> > -b
>>>> >
>>>> > Elizabeth 'pidge' Flanagan
>>>> > Founder/CTO Tog=C3=A1n Labs
>>>> > www.toganlabs.com
>>>> >
>>>> >>
>>>> >> What is the faster path to get up and running?
>>>> >>
>>>> >> Thanks!
>>>> >> Alain.
>>>> >>
>>>>
>>>
>>>

--001a113d809812241f054c4d699f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Chris!<div><br></div><div>I had to put this task on hol=
d and I am re-visiting it now. I followed the instructions here:=C2=A0<span=
 style=3D"font-size:12.8px">=C2=A0</span><a href=3D"http://git.yoctoproject=
.org/cgit.cgi/yocto-autobuilder/tree/README-QUICKSTART" target=3D"_blank" s=
tyle=3D"font-size:12.8px">http://git.<wbr>yoctoproject.org/cgit.cgi/<wbr>yo=
cto-autobuilder/tree/README-<wbr>QUICKSTART</a>=C2=A0and managed to force o=
ne of the builds that comes with Yocto. I got errors but I&#39;m not intere=
sted in the Yocto-provided nightly builds anyway. (The errors are related t=
o buildhistory - it seems that some builds set Buildhistory=3DTrue but I ha=
ven&#39;t set up a git repo for build history)</div><div><br></div><div>Now=
, I am still confused how to build the Variscite image for the i.MX6UL. We =
are still at Jethro but don&#39;t mind upgrading to Krogoth.</div><div><br>=
</div><div>I would appreciate some general guidelines on how to take the in=
structions in here:</div><div><a href=3D"http://variwiki.com/index.php?titl=
e=3DDART-6UL_Yocto_Jethro_R1_build">http://variwiki.com/index.php?title=3DD=
ART-6UL_Yocto_Jethro_R1_build</a><br></div><div>and transform them to the c=
onfig format that Autobuilder understands.</div><div><br></div><div>Mainly,=
 I understand that I have to:</div><div><br></div><div>1) checkout the sour=
ce code</div><div><div><pre style=3D"font-size:12.6667px;overflow-x:auto;ov=
erflow-y:hidden;font-family:menlo,monaco,&quot;courier new&quot;,&quot;nimb=
us mono l&quot;,monospace,sans-serif;border:1px dashed rgb(47,111,171);colo=
r:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em;padding:15=
px 20px;border-radius:6px">$ mkdir ~/var-mx6ul-mx7-yocto-jethro
$ cd ~/var-mx6ul-mx7-yocto-jethro
$ repo init -u git://<a href=3D"http://git.freescale.com/imx/fsl-arm-yocto-=
bsp.git">git.freescale.com/imx/fsl-arm-yocto-bsp.git</a> -b imx-4.1.15-1.0.=
0_ga
$ repo sync</pre></div><div><pre style=3D"font-size:12.6667px;overflow-x:au=
to;overflow-y:hidden;font-family:menlo,monaco,&quot;courier new&quot;,&quot=
;nimbus mono l&quot;,monospace,sans-serif;border:1px dashed rgb(47,111,171)=
;color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em;paddi=
ng:15px 20px;border-radius:6px">$ cd ~/var-mx6ul-mx7-yocto-jethro/sources
$ git clone <a href=3D"https://github.com/varigit/meta-variscite-mx6ul-mx7.=
git">https://github.com/varigit/meta-variscite-mx6ul-mx7.git</a> -b imx_4.1=
.15_ga-var01<br></pre></div></div><div><br></div><div>2) copy and patch</di=
v><div><div><pre style=3D"font-size:12.6667px;overflow-x:auto;overflow-y:hi=
dden;font-family:menlo,monaco,&quot;courier new&quot;,&quot;nimbus mono l&q=
uot;,monospace,sans-serif;border:1px dashed rgb(47,111,171);color:rgb(0,0,0=
);background-color:rgb(249,249,249);line-height:1.1em;padding:15px 20px;bor=
der-radius:6px">$ cp meta-variscite-mx6ul-mx7/scripts/var-setup-release.sh =
../
$ patch -p1 &lt; meta-variscite-mx6ul-mx7/patch/Fix-FSL-multi-patch-append-=
bugs.patch
</pre></div><div></div></div><div><br></div><div>3) setup a download direct=
ory</div><div><pre style=3D"font-size:12.6667px;overflow-x:auto;overflow-y:=
hidden;font-family:menlo,monaco,&quot;courier new&quot;,&quot;nimbus mono l=
&quot;,monospace,sans-serif;border:1px dashed rgb(47,111,171);color:rgb(0,0=
,0);background-color:rgb(249,249,249);line-height:1.1em;padding:15px 20px;b=
order-radius:6px">$ sudo mkdir /opt/yocto_downloads
$ sudo chmod 777 /opt/yocto_downloads/
$ sed -i &#39;s/DL_DIR=C2=A0?=3D &quot;${BSPDIR}\/downloads/DL_DIR =3D &quo=
t;\/opt\/yocto_downloads/g&#39; conf/local.conf</pre></div><div><br></div><=
div>4) setup the environment</div><div><pre style=3D"font-size:12.6667px;ov=
erflow-x:auto;overflow-y:hidden;font-family:menlo,monaco,&quot;courier new&=
quot;,&quot;nimbus mono l&quot;,monospace,sans-serif;border:1px dashed rgb(=
47,111,171);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:=
1.1em;padding:15px 20px;border-radius:6px">$ cd ~/var-mx6ul-mx7-yocto-jethr=
o
$ MACHINE=3Dimx6ul-var-dart DISTRO=3Dfsl-imx-x11 source var-setup-release.s=
h -b build_x11</pre></div><div><br></div><div>5) build</div><div><div><pre =
style=3D"font-size:12.6667px;overflow-x:auto;overflow-y:hidden;font-family:=
menlo,monaco,&quot;courier new&quot;,&quot;nimbus mono l&quot;,monospace,sa=
ns-serif;border:1px dashed rgb(47,111,171);color:rgb(0,0,0);background-colo=
r:rgb(249,249,249);line-height:1.1em;padding:15px 20px;border-radius:6px">$=
 bitbake fsl-image-gui</pre></div></div><div><br></div><div>I looked at som=
e nightly-*.conf files, for example nightly-x86-64.conf to try to guess wha=
t to do.</div><div><br></div><div>I know I have to create a file like night=
ly-var-mx6ul.conf but given that Variscite is not using the &#39;repo&#39; =
command that Freescale is using (they do a git clone) and given step (2) of=
 copying their own setup script and patching the whole freescale meta- laye=
rs, I am not sure about what to put instead of the line:</div><div><br></di=
v><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#3=
9;CheckOutLayers&#39;: {}},</font></div><div>=C2=A0</div><div><br></div><di=
v>I also can&#39;t figure out how the info in Variscite&#39;s build-x11/loc=
al.conf can be translated to the Autobuilder format, i.e. where to specify =
all these config parameters.</div><div><br></div><div>Any help would be gre=
atly appreciated.</div><div><br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Mon, Nov 14, 2016 at 12:35 PM, Alain Achkar <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:alain.achkar@triacta.com" target=3D"_blank=
">alain.achkar@triacta.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Thanks Chris!<div><br></div><di=
v>This is the answer I was looking for.</div></div><div class=3D"gmail-HOEn=
Zb"><div class=3D"gmail-h5"><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Mon, Nov 14, 2016 at 11:58 AM, Chris Whittenburg <span dir=3D=
"ltr">&lt;<a href=3D"mailto:whittenburg@gmail.com" target=3D"_blank">whitte=
nburg@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><br><div>Hi Alain,</div><div><br></div><di=
v>We use the same module-- Variscite DART MX6, and I was able to hack the y=
octo autobuilder to build our image nightly.=C2=A0 I host it all on a singl=
e machine.</div><span class=3D"gmail-m_-8681460998205357319HOEnZb"><font co=
lor=3D"#888888"><div><br></div><div>-chris</div><div><br></div></font></spa=
n></div><div class=3D"gmail-m_-8681460998205357319HOEnZb"><div class=3D"gma=
il-m_-8681460998205357319h5"><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Mon, Nov 14, 2016 at 10:13 AM, Alain Achkar <span dir=3D"ltr=
">&lt;<a href=3D"mailto:alain.achkar@triacta.com" target=3D"_blank">alain.a=
chkar@triacta.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Thanks for your answers! From reading th=
ese links, it is still not clear to me if this might be overkill for my req=
uirements. AB Cluster Setup talks about &quot;<span style=3D"color:rgb(0,0,=
0);font-family:sans-serif;font-size:12.7px"><i>the worker requires 2+ TB to=
 hold all the build temp files and git repos. If build artifacts and a loca=
l sstate mirror are included, additional worker space is required.</i>&quot=
;</span><div><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-si=
ze:12.7px"><br></span></div><div><span style=3D"color:rgb(0,0,0);font-famil=
y:sans-serif;font-size:12.7px">Currently, my build only takes 35GB, so I th=
ink what these links are talking about is how to replicate what the Autobui=
lder project=C2=A0</span><font color=3D"#000000" face=3D"sans-serif"><span =
style=3D"font-size:12.7px"><a href=3D"https://autobuilder.yoctoproject.org/=
" target=3D"_blank">https://autobuilder.yo<wbr>ctoproject.org/</a> already =
does.</span></font></div><div><span style=3D"color:rgb(0,0,0);font-family:s=
ans-serif;font-size:12.7px"><br></span></div><div><span style=3D"color:rgb(=
0,0,0);font-family:sans-serif;font-size:12.7px">To clarify, I am not intere=
sted in running builds and tests for everything that Yocto already builds a=
nd tests (i.e. all the processor architectures, all the machine types, etc.=
).=C2=A0 I am interested in running one build for one machine type (the Var=
iscite DART-6UL i.MX6UL arm-based processor, for which NXP/Freescale and Va=
riscite have provided recipes and layers for).</span></div><div><span style=
=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:12.7px"><br></span></=
div><div><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:1=
2.7px">I know that autobuilder includes BuildBot (this is why I specified i=
t in parentheses) but my question remains: do I only install BuildBot and t=
ry to build my machine type with it, or do I install Autobuilder?</span></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, =
Nov 14, 2016 at 10:10 AM, Bill Randle <span dir=3D"ltr">&lt;<a href=3D"mail=
to:bill.randle@gmail.com" target=3D"_blank">bill.randle@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Also, be =
sure to check the Yocto Project wiki pages:<br>
=C2=A0 =C2=A0 <a href=3D"https://wiki.yoctoproject.org/wiki/The_Yocto_Autob=
uilder" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/=
<wbr>wiki/The_Yocto_Autobuilder</a><br>
in particular, the AB cluster setup and AB maintenance links. Even<br>
though the one link refers to setting up an entire cluster, I&#39;ve used<b=
r>
that procedure to setup a single autobuilder, as well.<br>
<br>
=C2=A0 =C2=A0 -Bill<br>
<div class=3D"gmail-m_-8681460998205357319m_-4908994207652072141m_-54637757=
3499831380HOEnZb"><div class=3D"gmail-m_-8681460998205357319m_-490899420765=
2072141m_-546377573499831380h5"><br>
On Fri, Nov 11, 2016 at 10:37 AM, Beth &#39;pidge&#39; Flanagan<br>
&lt;<a href=3D"mailto:pidge@toganlabs.com" target=3D"_blank">pidge@toganlab=
s.com</a>&gt; wrote:<span><br>
&gt; On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:<br>
&gt;&gt; Hello Joshua!<br>
&gt;&gt;<br>
&gt;&gt; We are using Yocto to build for the Variscite DART-6UL SoM which i=
s<br>
&gt;&gt; based on Freescale/NXP i.MX6UL (<a href=3D"http://variwiki.com/ind=
ex.php?title=3DD" rel=3D"noreferrer" target=3D"_blank">http://variwiki.com/=
index.php<wbr>?title=3DD</a><br>
&gt;&gt; ART-6UL_Yocto_Jethro_R1_build)<wbr>.<br>
&gt;&gt;<br>
&gt;&gt; Currently, developers run builds manually on their desktops. We ar=
e<br>
&gt;&gt; considering using a continuous integration server. I found out tha=
t<br>
&gt;&gt; The Yocto Project uses Autobuilder which in turn uses BuildBot. I<=
br>
&gt;&gt; read most of the introductory documentation.<br>
&gt;&gt;<br>
&gt;&gt; Would you recommend that we install only BuildBot and configure it=
 to<br>
&gt;&gt; build what we need?<br>
&gt;&gt;<br>
&gt;&gt; OR<br>
&gt;&gt;<br>
&gt;&gt; Would you recommend that we install Autobuilder (and BuildBot) and=
<br>
&gt;&gt; configure it to build what we need?<br>
&gt;<br></span>
&gt; Actually, the yocto-autobuilder already contains buildbot so no need<b=
r>
&gt; for both.<br>
&gt;<br>
&gt; If you read:<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree=
/README-QUIC" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.=
org/cg<wbr>it.cgi/yocto-autobuilder/tree/<wbr>README-QUIC</a><br>
&gt; KSTART<br>
&gt;<br>
&gt; and probably some of the other READMEs and the documentation in the<br=
>
&gt; docs directory of the yocto-autobuilder directory, it should get you<b=
r>
&gt; started in the right direction.<br>
&gt;<br>
&gt; Feel free to ask questions if you need help.<br>
&gt;<br>
&gt; -b<br>
&gt;<br>
&gt; Elizabeth &#39;pidge&#39; Flanagan<br>
&gt; Founder/CTO Tog=C3=A1n Labs<br>
&gt; <a href=3D"http://www.toganlabs.com" rel=3D"noreferrer" target=3D"_bla=
nk">www.toganlabs.com</a><span><br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; What is the faster path to get up and running?<br>
&gt;&gt;<br>
&gt;&gt; Thanks!<br>
&gt;&gt; Alain.<br>
&gt;&gt;<br></span></div></div></blockquote></div><span><div><br></div></sp=
an></div></blockquote></div></div></div></div></blockquote></div></div></di=
v></div></blockquote></div>
</div></div>

--001a113d809812241f054c4d699f--
