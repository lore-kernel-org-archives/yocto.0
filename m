Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EDE2E00953; Mon, 29 May 2017 14:02:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C147FE0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:02:37 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id l18so89915439oig.2
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mT2rldphwPtqZDDhUd92mEeGftm2F3twRLycT1gjGQg=;
	b=q0msdS+Zf0XQJcY1ILToEJOuj1+ppqbm4YZecFYUDqVJWUshDk4KH4+kM//cng4qci
	Ft3sONjbpQB0lfu/Sqd5mHdxd82kGjzbJn0du+LxUY/LdLE4jcEYX/ZEAjhynD8qPwic
	sBzouvmWdCucUrZSHxJhMEyM8TI2KDzDioB9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mT2rldphwPtqZDDhUd92mEeGftm2F3twRLycT1gjGQg=;
	b=khJrW83tupORHlydTeEmIRA4zNmdtIhOM7CFgfuJZiboTcGnMBrJ0FlijTULdkzY8b
	gXeBsvo+qFMonjNXy3WlxHMNAhuu7O5p0/+NwM4icY6tveT3cXR8RGfeWeUYkl7tnPy6
	njcN6amAGsk1Xf8COXlLtREN0IUT8x6ggd3LxngvOESoCFUflhibI5+ITucrJQ/lumHh
	AD8jGVQuFY2Va6LuAdblgDLs9E1+P7z8kljPjyrhy7IjYyOxOZ4KIhJN+VaGhO48Rd8R
	JgjDSGZq1qxDYLCO4R6nEpwpQMsJFdUZDmsKUj5yXwtIp2t97u08d2tDc1afDeHgQnRb
	y88Q==
X-Gm-Message-State: AODbwcAWBzoHfTB4AqO+sbDF7CDmPIGebuLy34Wx5YyRa3SmWQJmCSOL
	Nkl9n2Sxpy5ZU8/L2CCu4pc8mUXGh3M18Ys=
X-Received: by 10.202.84.205 with SMTP id i196mr8010036oib.145.1496091756514; 
	Mon, 29 May 2017 14:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.29.144 with HTTP; Mon, 29 May 2017 14:01:56 -0700 (PDT)
In-Reply-To: <CAGkf0HDOma+8W9hw9nOnXt-WC_7BuFD6-d7EN50Oz7-Oghz-3Q@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
	<CABcw_OkUq_YX939GrV+SXFAcuKb4c+aHzKOK4Y5pOK+LTOMLWg@mail.gmail.com>
	<CAGkf0HCOzd-_wPbCR9MREADq29vKFWK0jynqLYO5qMezi+txYw@mail.gmail.com>
	<CAGkf0HCjCxFcaNqqsnnTrnQ5kjtCzTc8p4h4T=bbbpFL0JRqeQ@mail.gmail.com>
	<CAGkf0HDOma+8W9hw9nOnXt-WC_7BuFD6-d7EN50Oz7-Oghz-3Q@mail.gmail.com>
From: Alain Achkar <alain.achkar@triacta.com>
Date: Mon, 29 May 2017 17:01:56 -0400
Message-ID: <CAGkf0HCVTqLsPW_nDFqm86_OeXQPCw0h3wXgVErAG1DsNck-Jw@mail.gmail.com>
To: pidge@toganlabs.com, Joshua Lock <joshua.g.lock@linux.intel.com>
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
X-List-Received-Date: Mon, 29 May 2017 21:02:41 -0000
Content-Type: multipart/alternative; boundary="001a113d3594b2e2f60550b001cd"

--001a113d3594b2e2f60550b001cd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Beth and/or Joshua,

I would really appreciate some pointers on how to get the Variscite builds
to work with Autobuilder.

Since my last email, I was able to setup the Yocto Autobuilder, add the
sample hello.conf and run it.
I was also able to add another file, nightly-variscite-x11.conf and I can
see it in the Waterfall view. Initially, I started by filling it with
content similar to hello.conf and this worked. Now, I need to be able to
add the Variscite build.

Since my last email, Variscite have moved to the morty branch, since
Freescale/NXP have moved to the morty branch. So, the wiki instructions
here
http://variwiki.com/index.php?title=3DYocto_Build_Release&release=3DRELEASE=
_MORTY_BETA_DART-6UL
are now simpler:

1) Checkout the source code

$ mkdir ~/var-fslc-yocto
$ cd ~/var-fslc-yocto
$ repo init -u https://github.com/varigit/variscite-bsp-platform.git -b mor=
ty
$ repo sync -j4


2) Run the setup script (which calls oe-init-environment)

$ cd ~/var-fslc-yocto
$ MACHINE=3Dimx6ul-var-dart DISTRO=3Dfslc-x11 . setup-environment build_x11


3) Build X11 demo images

# Without Qt content:
$ bitbake fsl-image-gui

# Or with Qt content:
$ bitbake fsl-image-qt5


The 'repo' command reads the file default.xml which has the following
contents:

<?xml version=3D"1.0" encoding=3D"UTF-8"?>
<manifest>

  <default sync-j=3D"4" revision=3D"morty"/>

  <remote fetch=3D"https://git.yoctoproject.org/git" name=3D"yocto"/>
  <remote fetch=3D"https://github.com/Freescale"     name=3D"freescale"/>
  <remote fetch=3D"https://github.com/openembedded"  name=3D"oe"/>
  <remote fetch=3D"https://github.com/varigit"       name=3D"variscite"/>
  <remote fetch=3D"https://github.com/OSSystems"     name=3D"OSSystems"/>
  <remote fetch=3D"git://github.com/meta-qt5"        name=3D"QT5"/>

  <project remote=3D"yocto"
revision=3D"6a1f33cc40bfac33cf030fe41e1a8efd1e5fad6f" upstream=3D"morty"
name=3D"poky" path=3D"sources/poky"/>
  <project remote=3D"yocto"
revision=3D"56a1460777d1e24b1dfb426cad2b103740936a83" upstream=3D"morty"
name=3D"meta-freescale" path=3D"sources/meta-freescale" />

  <project remote=3D"oe"
revision=3D"fe5c83312de11e80b85680ef237f8acb04b4b26e" upstream=3D"morty"
name=3D"meta-openembedded" path=3D"sources/meta-openembedded" />

  <project remote=3D"variscite" revision=3D"morty"
name=3D"variscite-bsp-base" path=3D"sources/base">
	<copyfile dest=3D"README" src=3D"README"/>
	<copyfile dest=3D"setup-environment" src=3D"setup-environment"/>
  </project>

  <project remote=3D"freescale"
revision=3D"4be3db25959e741ac9164a32c82b8c09b59213ad" upstream=3D"morty"
name=3D"meta-freescale-3rdparty"
path=3D"sources/meta-freescale-3rdparty"/>
  <project remote=3D"freescale"
revision=3D"dd482aeb7913c099c69f82362776bd92b584553c" upstream=3D"morty"
name=3D"meta-freescale-distro" path=3D"sources/meta-freescale-distro"/>
  <project remote=3D"QT5"
revision=3D"3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1" upstream=3D"morty"
name=3D"meta-qt5" path=3D"sources/meta-qt5"/>
  <project remote=3D"OSSystems"
revision=3D"7d37ae2adec5cc5ea27367ce125bc7bce2310ca1" upstream=3D"morty"
name=3D"meta-browser" path=3D"sources/meta-browser"/>
  <project remote=3D"variscite"
revision=3D"7a214e7579869be810aa8992c59627ba064db076" upstream=3D"morty"
name=3D"meta-variscite-fslc" path=3D"sources/meta-variscite-fslc"  />

</manifest>


So, AFAIK, I need to either (a) translate these into the 'repos' property
in my buildset, or write a custom buildstep that can use the 'repo' tool to
clone the needed repositories.

Any help would be greatly appreciated.
Thanks!


On Fri, Apr 21, 2017 at 11:39 AM, Alain Achkar <alain.achkar@triacta.com>
wrote:

> Kindly requesting help again, please.
> I understand that Variscite might not be following the "Yocto way" 100%
> but surely we can run custom commands using Autobuilder?
>
> Please see detailed description in my last post.
> Thanks!
>
> On Mon, Apr 3, 2017 at 9:43 PM, Alain Achkar <alain.achkar@triacta.com>
> wrote:
>
>> Hi Chris!
>>
>> I had to put this task on hold and I am re-visiting it now. I followed
>> the instructions here:  http://git.yoctoproject
>> .org/cgit.cgi/yocto-autobuilder/tree/README-QUICKSTART and managed to
>> force one of the builds that comes with Yocto. I got errors but I'm not
>> interested in the Yocto-provided nightly builds anyway. (The errors are
>> related to buildhistory - it seems that some builds set Buildhistory=3DT=
rue
>> but I haven't set up a git repo for build history)
>>
>> Now, I am still confused how to build the Variscite image for the
>> i.MX6UL. We are still at Jethro but don't mind upgrading to Krogoth.
>>
>> I would appreciate some general guidelines on how to take the
>> instructions in here:
>> http://variwiki.com/index.php?title=3DDART-6UL_Yocto_Jethro_R1_build
>> and transform them to the config format that Autobuilder understands.
>>
>> Mainly, I understand that I have to:
>>
>> 1) checkout the source code
>>
>> $ mkdir ~/var-mx6ul-mx7-yocto-jethro
>> $ cd ~/var-mx6ul-mx7-yocto-jethro
>> $ repo init -u git://git.freescale.com/imx/fsl-arm-yocto-bsp.git -b imx-=
4.1.15-1.0.0_ga
>> $ repo sync
>>
>> $ cd ~/var-mx6ul-mx7-yocto-jethro/sources
>> $ git clone https://github.com/varigit/meta-variscite-mx6ul-mx7.git -b i=
mx_4.1.15_ga-var01
>>
>>
>> 2) copy and patch
>>
>> $ cp meta-variscite-mx6ul-mx7/scripts/var-setup-release.sh ../
>> $ patch -p1 < meta-variscite-mx6ul-mx7/patch/Fix-FSL-multi-patch-append-=
bugs.patch
>>
>>
>> 3) setup a download directory
>>
>> $ sudo mkdir /opt/yocto_downloads
>> $ sudo chmod 777 /opt/yocto_downloads/
>> $ sed -i 's/DL_DIR ?=3D "${BSPDIR}\/downloads/DL_DIR =3D "\/opt\/yocto_d=
ownloads/g' conf/local.conf
>>
>>
>> 4) setup the environment
>>
>> $ cd ~/var-mx6ul-mx7-yocto-jethro
>> $ MACHINE=3Dimx6ul-var-dart DISTRO=3Dfsl-imx-x11 source var-setup-releas=
e.sh -b build_x11
>>
>>
>> 5) build
>>
>> $ bitbake fsl-image-gui
>>
>>
>> I looked at some nightly-*.conf files, for example nightly-x86-64.conf t=
o
>> try to guess what to do.
>>
>> I know I have to create a file like nightly-var-mx6ul.conf but given tha=
t
>> Variscite is not using the 'repo' command that Freescale is using (they =
do
>> a git clone) and given step (2) of copying their own setup script and
>> patching the whole freescale meta- layers, I am not sure about what to p=
ut
>> instead of the line:
>>
>>         {'CheckOutLayers': {}},
>>
>>
>> I also can't figure out how the info in Variscite's build-x11/local.conf
>> can be translated to the Autobuilder format, i.e. where to specify all
>> these config parameters.
>>
>> Any help would be greatly appreciated.
>>
>>
>> On Mon, Nov 14, 2016 at 12:35 PM, Alain Achkar <alain.achkar@triacta.com=
>
>> wrote:
>>
>>> Thanks Chris!
>>>
>>> This is the answer I was looking for.
>>>
>>> On Mon, Nov 14, 2016 at 11:58 AM, Chris Whittenburg <
>>> whittenburg@gmail.com> wrote:
>>>
>>>>
>>>> Hi Alain,
>>>>
>>>> We use the same module-- Variscite DART MX6, and I was able to hack th=
e
>>>> yocto autobuilder to build our image nightly.  I host it all on a sing=
le
>>>> machine.
>>>>
>>>> -chris
>>>>
>>>>
>>>> On Mon, Nov 14, 2016 at 10:13 AM, Alain Achkar <
>>>> alain.achkar@triacta.com> wrote:
>>>>
>>>>> Thanks for your answers! From reading these links, it is still not
>>>>> clear to me if this might be overkill for my requirements. AB Cluster=
 Setup
>>>>> talks about "*the worker requires 2+ TB to hold all the build temp
>>>>> files and git repos. If build artifacts and a local sstate mirror are
>>>>> included, additional worker space is required.*"
>>>>>
>>>>> Currently, my build only takes 35GB, so I think what these links are
>>>>> talking about is how to replicate what the Autobuilder project
>>>>> https://autobuilder.yoctoproject.org/ already does.
>>>>>
>>>>> To clarify, I am not interested in running builds and tests for
>>>>> everything that Yocto already builds and tests (i.e. all the processo=
r
>>>>> architectures, all the machine types, etc.).  I am interested in runn=
ing
>>>>> one build for one machine type (the Variscite DART-6UL i.MX6UL arm-ba=
sed
>>>>> processor, for which NXP/Freescale and Variscite have provided recipe=
s and
>>>>> layers for).
>>>>>
>>>>> I know that autobuilder includes BuildBot (this is why I specified it
>>>>> in parentheses) but my question remains: do I only install BuildBot a=
nd try
>>>>> to build my machine type with it, or do I install Autobuilder?
>>>>>
>>>>> On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <bill.randle@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Also, be sure to check the Yocto Project wiki pages:
>>>>>>     https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
>>>>>> in particular, the AB cluster setup and AB maintenance links. Even
>>>>>> though the one link refers to setting up an entire cluster, I've use=
d
>>>>>> that procedure to setup a single autobuilder, as well.
>>>>>>
>>>>>>     -Bill
>>>>>>
>>>>>> On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
>>>>>> <pidge@toganlabs.com> wrote:
>>>>>> > On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
>>>>>> >> Hello Joshua!
>>>>>> >>
>>>>>> >> We are using Yocto to build for the Variscite DART-6UL SoM which =
is
>>>>>> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php
>>>>>> ?title=3DD
>>>>>> >> ART-6UL_Yocto_Jethro_R1_build).
>>>>>> >>
>>>>>> >> Currently, developers run builds manually on their desktops. We a=
re
>>>>>> >> considering using a continuous integration server. I found out th=
at
>>>>>> >> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
>>>>>> >> read most of the introductory documentation.
>>>>>> >>
>>>>>> >> Would you recommend that we install only BuildBot and configure i=
t
>>>>>> to
>>>>>> >> build what we need?
>>>>>> >>
>>>>>> >> OR
>>>>>> >>
>>>>>> >> Would you recommend that we install Autobuilder (and BuildBot) an=
d
>>>>>> >> configure it to build what we need?
>>>>>> >
>>>>>> > Actually, the yocto-autobuilder already contains buildbot so no ne=
ed
>>>>>> > for both.
>>>>>> >
>>>>>> > If you read:
>>>>>> >
>>>>>> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/
>>>>>> README-QUIC
>>>>>> > KSTART
>>>>>> >
>>>>>> > and probably some of the other READMEs and the documentation in th=
e
>>>>>> > docs directory of the yocto-autobuilder directory, it should get y=
ou
>>>>>> > started in the right direction.
>>>>>> >
>>>>>> > Feel free to ask questions if you need help.
>>>>>> >
>>>>>> > -b
>>>>>> >
>>>>>> > Elizabeth 'pidge' Flanagan
>>>>>> > Founder/CTO Tog=C3=A1n Labs
>>>>>> > www.toganlabs.com
>>>>>> >
>>>>>> >>
>>>>>> >> What is the faster path to get up and running?
>>>>>> >>
>>>>>> >> Thanks!
>>>>>> >> Alain.
>>>>>> >>
>>>>>>
>>>>>
>>>>>
>
>
>
>

--001a113d3594b2e2f60550b001cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Beth and/or Joshua,<div><br></div><div>I would reall=
y appreciate some pointers on how to get the Variscite builds to work with =
Autobuilder.</div><div><br></div><div>Since my last email, I was able to se=
tup the Yocto Autobuilder, add the sample hello.conf and run it.</div><div>=
I was also able to add another file, nightly-variscite-x11.conf and I can s=
ee it in the Waterfall view. Initially, I started by filling it with conten=
t similar to hello.conf and this worked. Now, I need to be able to add the =
Variscite build.</div><div><br></div><div>Since my last email, Variscite ha=
ve moved to the morty branch, since Freescale/NXP have moved to the morty b=
ranch. So, the wiki instructions here <a href=3D"http://variwiki.com/index.=
php?title=3DYocto_Build_Release&amp;release=3DRELEASE_MORTY_BETA_DART-6UL">=
http://variwiki.com/index.php?title=3DYocto_Build_Release&amp;release=3DREL=
EASE_MORTY_BETA_DART-6UL</a> are now simpler:</div><div><br></div><div>1) C=
heckout the source code</div><div><pre style=3D"font-size:12.6667px;overflo=
w-x:auto;overflow-y:hidden;font-family:Menlo,Monaco,&quot;Courier New&quot;=
,&quot;Nimbus Mono L&quot;,monospace,sans-serif;border:1px dashed rgb(47,11=
1,171);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em=
;padding:15px 20px;border-radius:6px">$ mkdir ~/var-fslc-yocto
$ cd ~/var-fslc-yocto
$ repo init -u <a rel=3D"nofollow" class=3D"external gmail-free" href=3D"ht=
tps://github.com/varigit/variscite-bsp-platform.git" style=3D"text-decorati=
on-line:none;color:rgb(51,102,187);background:url(&quot;locked.png&quot;) 1=
00% 50%/12px 12px no-repeat;padding-right:16px;padding-left:0px">https://gi=
thub.com/varigit/variscite-bsp-platform.git</a> -b morty
$ repo sync -j4</pre></div><div><br></div><div>2) Run the setup script (whi=
ch calls oe-init-environment)</div><div><pre style=3D"font-size:12.6667px;o=
verflow-x:auto;overflow-y:hidden;font-family:Menlo,Monaco,&quot;Courier New=
&quot;,&quot;Nimbus Mono L&quot;,monospace,sans-serif;border:1px dashed rgb=
(47,111,171);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height=
:1.1em;padding:15px 20px;border-radius:6px">$ cd ~/var-fslc-yocto
$ MACHINE=3Dimx6ul-var-dart DISTRO=3Dfslc-x11 . setup-environment build_x11=
</pre></div><div><br></div><div>3) Build X11 demo images</div><div><pre sty=
le=3D"font-size:12.6667px;overflow-x:auto;overflow-y:hidden;font-family:Men=
lo,Monaco,&quot;Courier New&quot;,&quot;Nimbus Mono L&quot;,monospace,sans-=
serif;border:1px dashed rgb(47,111,171);color:rgb(0,0,0);background-color:r=
gb(249,249,249);line-height:1.1em;padding:15px 20px;border-radius:6px"># Wi=
thout Qt content:
$ bitbake fsl-image-gui

# Or with Qt content:
$ bitbake fsl-image-qt5</pre></div><div><br></div><div>The &#39;repo&#39; c=
ommand reads the file default.xml which has the following contents:</div><d=
iv><div><br></div><div><div><pre style=3D"font-size:12.6667px;overflow-x:au=
to;overflow-y:hidden;border:1px dashed rgb(47,111,171);color:rgb(0,0,0);bac=
kground-color:rgb(249,249,249);line-height:1.1em;padding:15px 20px;border-r=
adius:6px"><div style=3D"color:rgb(34,34,34);font-size:small;white-space:no=
rmal"><div><font face=3D"monospace, monospace">&lt;?xml version=3D&quot;1.0=
&quot; encoding=3D&quot;UTF-8&quot;?&gt;</font></div><div><font face=3D"mon=
ospace, monospace">&lt;manifest&gt;</font></div><div><font face=3D"monospac=
e, monospace"><br></font></div><div><font face=3D"monospace, monospace">=C2=
=A0 &lt;default sync-j=3D&quot;4&quot; revision=3D&quot;morty&quot;/&gt;</f=
ont></div><div><font face=3D"monospace, monospace"><br></font></div><div><f=
ont face=3D"monospace, monospace">=C2=A0 &lt;remote fetch=3D&quot;<a href=
=3D"https://git.yoctoproject.org/git">https://git.yoctoproject.org/git</a>&=
quot; name=3D&quot;yocto&quot;/&gt;</font></div><div><font face=3D"monospac=
e, monospace">=C2=A0 &lt;remote fetch=3D&quot;<a href=3D"https://github.com=
/Freescale">https://github.com/Freescale</a>&quot; =C2=A0 =C2=A0 name=3D&qu=
ot;freescale&quot;/&gt;</font></div><div><font face=3D"monospace, monospace=
">=C2=A0 &lt;remote fetch=3D&quot;<a href=3D"https://github.com/openembedde=
d">https://github.com/openembedded</a>&quot; =C2=A0name=3D&quot;oe&quot;/&g=
t;</font></div><div><font face=3D"monospace, monospace">=C2=A0 &lt;remote f=
etch=3D&quot;<a href=3D"https://github.com/varigit">https://github.com/vari=
git</a>&quot; =C2=A0 =C2=A0 =C2=A0 name=3D&quot;variscite&quot;/&gt;</font>=
</div><div><font face=3D"monospace, monospace">=C2=A0 &lt;remote fetch=3D&q=
uot;<a href=3D"https://github.com/OSSystems">https://github.com/OSSystems</=
a>&quot; =C2=A0 =C2=A0 name=3D&quot;OSSystems&quot;/&gt;</font></div><div><=
font face=3D"monospace, monospace">=C2=A0 &lt;remote fetch=3D&quot;git://<a=
 href=3D"http://github.com/meta-qt5">github.com/meta-qt5</a>&quot; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0name=3D&quot;QT5&quot;/&gt;</font></div><div><font face=
=3D"monospace, monospace"><br></font></div><div><font face=3D"monospace, mo=
nospace">=C2=A0 &lt;project remote=3D&quot;yocto&quot; revision=3D&quot;6a1=
f33cc40bfac33cf030fe41e1a8efd1e5fad6f&quot; upstream=3D&quot;morty&quot; =
=C2=A0name=3D&quot;poky&quot; path=3D&quot;sources/poky&quot;/&gt;</font></=
div><div><font face=3D"monospace, monospace">=C2=A0 &lt;project remote=3D&q=
uot;yocto&quot; revision=3D&quot;56a1460777d1e24b1dfb426cad2b103740936a83&q=
uot; upstream=3D&quot;morty&quot; =C2=A0name=3D&quot;meta-freescale&quot; p=
ath=3D&quot;sources/meta-freescale&quot; /&gt;</font></div><div><font face=
=3D"monospace, monospace"><br></font></div><div><font face=3D"monospace, mo=
nospace">=C2=A0 &lt;project remote=3D&quot;oe&quot; revision=3D&quot;fe5c83=
312de11e80b85680ef237f8acb04b4b26e&quot; upstream=3D&quot;morty&quot; name=
=3D&quot;meta-openembedded&quot; path=3D&quot;sources/meta-openembedded&quo=
t; /&gt;</font></div><div><font face=3D"monospace, monospace"><br></font></=
div><div><font face=3D"monospace, monospace">=C2=A0 &lt;project remote=3D&q=
uot;variscite&quot; revision=3D&quot;morty&quot; name=3D&quot;variscite-bsp=
-base&quot; path=3D&quot;sources/base&quot;&gt;</font></div><div><font face=
=3D"monospace, monospace"><span class=3D"gmail-Apple-tab-span" style=3D"whi=
te-space:pre">	</span>&lt;copyfile dest=3D&quot;README&quot; src=3D&quot;RE=
ADME&quot;/&gt;</font></div><div><font face=3D"monospace, monospace"><span =
class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>&lt;copyfi=
le dest=3D&quot;setup-environment&quot; src=3D&quot;setup-environment&quot;=
/&gt;</font></div><div><font face=3D"monospace, monospace">=C2=A0 &lt;/proj=
ect&gt;</font></div><div><font face=3D"monospace, monospace"><br></font></d=
iv><div><font face=3D"monospace, monospace">=C2=A0 &lt;project remote=3D&qu=
ot;freescale&quot; revision=3D&quot;4be3db25959e741ac9164a32c82b8c09b59213a=
d&quot; upstream=3D&quot;morty&quot; name=3D&quot;meta-freescale-3rdparty&q=
uot; path=3D&quot;sources/meta-freescale-3rdparty&quot;/&gt;</font></div><d=
iv><font face=3D"monospace, monospace">=C2=A0 &lt;project remote=3D&quot;fr=
eescale&quot; revision=3D&quot;dd482aeb7913c099c69f82362776bd92b584553c&quo=
t; upstream=3D&quot;morty&quot; name=3D&quot;meta-freescale-distro&quot; pa=
th=3D&quot;sources/meta-freescale-distro&quot;/&gt;</font></div><div><font =
face=3D"monospace, monospace">=C2=A0 &lt;project remote=3D&quot;QT5&quot; r=
evision=3D&quot;3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1&quot; upstream=3D&=
quot;morty&quot; name=3D&quot;meta-qt5&quot; path=3D&quot;sources/meta-qt5&=
quot;/&gt;</font></div><div><font face=3D"monospace, monospace">=C2=A0 &lt;=
project remote=3D&quot;OSSystems&quot; revision=3D&quot;7d37ae2adec5cc5ea27=
367ce125bc7bce2310ca1&quot; upstream=3D&quot;morty&quot; name=3D&quot;meta-=
browser&quot; path=3D&quot;sources/meta-browser&quot;/&gt;</font></div><div=
><font face=3D"monospace, monospace">=C2=A0 &lt;project remote=3D&quot;vari=
scite&quot; revision=3D&quot;7a214e7579869be810aa8992c59627ba064db076&quot;=
 upstream=3D&quot;morty&quot; name=3D&quot;meta-variscite-fslc&quot; path=
=3D&quot;sources/meta-variscite-fslc&quot; =C2=A0/&gt;</font></div><div><fo=
nt face=3D"monospace, monospace"><br></font></div><div><font face=3D"monosp=
ace, monospace">&lt;/manifest&gt;</font></div></div><div style=3D"font-fami=
ly:arial,sans-serif;color:rgb(34,34,34);font-size:small;white-space:normal"=
><br></div></pre></div></div><div><br></div><div>So, AFAIK, I need to eithe=
r (a) translate these into the &#39;repos&#39; property in my buildset, or =
write a custom buildstep that can use the &#39;repo&#39; tool to clone the =
needed repositories.<br></div></div><div><br></div><div>Any help would be g=
reatly appreciated.</div><div>Thanks!</div><div><br></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Fri, Apr 21, 2017 at 11:39 AM, =
Alain Achkar <span dir=3D"ltr">&lt;<a href=3D"mailto:alain.achkar@triacta.c=
om" target=3D"_blank">alain.achkar@triacta.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Kindly requ=
esting help again, please.<div>I understand that Variscite might not be fol=
lowing the &quot;Yocto way&quot; 100% but surely we can run custom commands=
 using Autobuilder?</div><div><br></div><div>Please see detailed descriptio=
n in my last post.</div><div>Thanks!</div><div><div class=3D"gmail-h5"><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Apr 3, 2017 a=
t 9:43 PM, Alain Achkar <span dir=3D"ltr">&lt;<a href=3D"mailto:alain.achka=
r@triacta.com" target=3D"_blank">alain.achkar@triacta.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Chris!<div><br></div><div>I had to put this task on hold and I am re-vis=
iting it now. I followed the instructions here:=C2=A0<span style=3D"font-si=
ze:12.8px">=C2=A0</span><a href=3D"http://git.yoctoproject.org/cgit.cgi/yoc=
to-autobuilder/tree/README-QUICKSTART" style=3D"font-size:12.8px" target=3D=
"_blank">http://git.yoctoproject<wbr>.org/cgit.cgi/yocto-autobuilde<wbr>r/t=
ree/README-QUICKSTART</a>=C2=A0and managed to force one of the builds that =
comes with Yocto. I got errors but I&#39;m not interested in the Yocto-prov=
ided nightly builds anyway. (The errors are related to buildhistory - it se=
ems that some builds set Buildhistory=3DTrue but I haven&#39;t set up a git=
 repo for build history)</div><div><br></div><div>Now, I am still confused =
how to build the Variscite image for the i.MX6UL. We are still at Jethro bu=
t don&#39;t mind upgrading to Krogoth.</div><div><br></div><div>I would app=
reciate some general guidelines on how to take the instructions in here:</d=
iv><div><a href=3D"http://variwiki.com/index.php?title=3DDART-6UL_Yocto_Jet=
hro_R1_build" target=3D"_blank">http://variwiki.com/index.php?<wbr>title=3D=
DART-6UL_Yocto_Jethro_R1<wbr>_build</a><br></div><div>and transform them to=
 the config format that Autobuilder understands.</div><div><br></div><div>M=
ainly, I understand that I have to:</div><div><br></div><div>1) checkout th=
e source code</div><div><div><pre style=3D"font-size:12.6667px;overflow-x:a=
uto;overflow-y:hidden;font-family:menlo,monaco,&quot;courier new&quot;,&quo=
t;nimbus mono l&quot;,monospace,sans-serif;border:1px dashed rgb(47,111,171=
);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em;padd=
ing:15px 20px;border-radius:6px">$ mkdir ~/var-mx6ul-mx7-yocto-jethro
$ cd ~/var-mx6ul-mx7-yocto-jethro
$ repo init -u git://<a href=3D"http://git.freescale.com/imx/fsl-arm-yocto-=
bsp.git" target=3D"_blank">git.freescale.com/imx/fs<wbr>l-arm-yocto-bsp.git=
</a> -b imx-4.1.15-1.0.0_ga
$ repo sync</pre></div><div><pre style=3D"font-size:12.6667px;overflow-x:au=
to;overflow-y:hidden;font-family:menlo,monaco,&quot;courier new&quot;,&quot=
;nimbus mono l&quot;,monospace,sans-serif;border:1px dashed rgb(47,111,171)=
;color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em;paddi=
ng:15px 20px;border-radius:6px">$ cd ~/var-mx6ul-mx7-yocto-jethro/s<wbr>our=
ces
$ git clone <a href=3D"https://github.com/varigit/meta-variscite-mx6ul-mx7.=
git" target=3D"_blank">https://github.com/varigit/met<wbr>a-variscite-mx6ul=
-mx7.git</a> -b imx_4.1.15_ga-var01<br></pre></div></div><div><br></div><di=
v>2) copy and patch</div><div><div><pre style=3D"font-size:12.6667px;overfl=
ow-x:auto;overflow-y:hidden;font-family:menlo,monaco,&quot;courier new&quot=
;,&quot;nimbus mono l&quot;,monospace,sans-serif;border:1px dashed rgb(47,1=
11,171);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1e=
m;padding:15px 20px;border-radius:6px">$ cp meta-variscite-mx6ul-mx7/scrip<=
wbr>ts/var-setup-release.sh ../
$ patch -p1 &lt; meta-variscite-mx6ul-mx7/patch<wbr>/Fix-FSL-multi-patch-ap=
pend-<wbr>bugs.patch
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
atly appreciated.</div><div><div class=3D"gmail-m_-7034859112820983602h5"><=
div><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Mon, Nov 14, 2016 at 12:35 PM, Alain Achkar <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alain.achkar@triacta.com" target=3D"_blank">alain.achkar@triacta=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Thanks Chris!<div><br></div><div>This is the answer I=
 was looking for.</div></div><div class=3D"gmail-m_-7034859112820983602m_-6=
583819349976456875gmail-HOEnZb"><div class=3D"gmail-m_-7034859112820983602m=
_-6583819349976456875gmail-h5"><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Mon, Nov 14, 2016 at 11:58 AM, Chris Whittenburg <span dir=
=3D"ltr">&lt;<a href=3D"mailto:whittenburg@gmail.com" target=3D"_blank">whi=
ttenburg@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><br><div>Hi Alain,</div><div><br></div>=
<div>We use the same module-- Variscite DART MX6, and I was able to hack th=
e yocto autobuilder to build our image nightly.=C2=A0 I host it all on a si=
ngle machine.</div><span class=3D"gmail-m_-7034859112820983602m_-6583819349=
976456875gmail-m_-8681460998205357319HOEnZb"><font color=3D"#888888"><div><=
br></div><div>-chris</div><div><br></div></font></span></div><div class=3D"=
gmail-m_-7034859112820983602m_-6583819349976456875gmail-m_-8681460998205357=
319HOEnZb"><div class=3D"gmail-m_-7034859112820983602m_-6583819349976456875=
gmail-m_-8681460998205357319h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mon, Nov 14, 2016 at 10:13 AM, Alain Achkar <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alain.achkar@triacta.com" target=3D"_blank">=
alain.achkar@triacta.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Thanks for your answers! From rea=
ding these links, it is still not clear to me if this might be overkill for=
 my requirements. AB Cluster Setup talks about &quot;<span style=3D"color:r=
gb(0,0,0);font-family:sans-serif;font-size:12.7px"><i>the worker requires 2=
+ TB to hold all the build temp files and git repos. If build artifacts and=
 a local sstate mirror are included, additional worker space is required.</=
i>&quot;</span><div><span style=3D"color:rgb(0,0,0);font-family:sans-serif;=
font-size:12.7px"><br></span></div><div><span style=3D"color:rgb(0,0,0);fon=
t-family:sans-serif;font-size:12.7px">Currently, my build only takes 35GB, =
so I think what these links are talking about is how to replicate what the =
Autobuilder project=C2=A0</span><font color=3D"#000000" face=3D"sans-serif"=
><span style=3D"font-size:12.7px"><a href=3D"https://autobuilder.yoctoproje=
ct.org/" target=3D"_blank">https://autobuilder.yo<wbr>ctoproject.org/</a> a=
lready does.</span></font></div><div><span style=3D"color:rgb(0,0,0);font-f=
amily:sans-serif;font-size:12.7px"><br></span></div><div><span style=3D"col=
or:rgb(0,0,0);font-family:sans-serif;font-size:12.7px">To clarify, I am not=
 interested in running builds and tests for everything that Yocto already b=
uilds and tests (i.e. all the processor architectures, all the machine type=
s, etc.).=C2=A0 I am interested in running one build for one machine type (=
the Variscite DART-6UL i.MX6UL arm-based processor, for which NXP/Freescale=
 and Variscite have provided recipes and layers for).</span></div><div><spa=
n style=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:12.7px"><br></=
span></div><div><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font=
-size:12.7px">I know that autobuilder includes BuildBot (this is why I spec=
ified it in parentheses) but my question remains: do I only install BuildBo=
t and try to build my machine type with it, or do I install Autobuilder?</s=
pan></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <span dir=3D"ltr">&lt;<a href=
=3D"mailto:bill.randle@gmail.com" target=3D"_blank">bill.randle@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">A=
lso, be sure to check the Yocto Project wiki pages:<br>
=C2=A0 =C2=A0 <a href=3D"https://wiki.yoctoproject.org/wiki/The_Yocto_Autob=
uilder" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/=
<wbr>wiki/The_Yocto_Autobuilder</a><br>
in particular, the AB cluster setup and AB maintenance links. Even<br>
though the one link refers to setting up an entire cluster, I&#39;ve used<b=
r>
that procedure to setup a single autobuilder, as well.<br>
<br>
=C2=A0 =C2=A0 -Bill<br>
<div class=3D"gmail-m_-7034859112820983602m_-6583819349976456875gmail-m_-86=
81460998205357319m_-4908994207652072141m_-546377573499831380HOEnZb"><div cl=
ass=3D"gmail-m_-7034859112820983602m_-6583819349976456875gmail-m_-868146099=
8205357319m_-4908994207652072141m_-546377573499831380h5"><br>
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
</div></div></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div><br>
</div></div></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div>

--001a113d3594b2e2f60550b001cd--
