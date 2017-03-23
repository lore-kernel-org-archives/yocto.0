Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E9DDE00A76; Thu, 23 Mar 2017 01:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E723E009A0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 01:25:57 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id i203so27421219ywc.3
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 01:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3WhPWGUyxqOpYr6g62d+52Qu0B69g+11OzbnrQ+4HCk=;
	b=jeBSeUtNVoSrAa6VpvqpJhA4HS98mh1XCiGuTIysAcSb1M410gEd6ZIPLaPo6GgR8f
	j4XQHzo6gydTgqgaplnF0k2bS1zf11le6r4ow1pStzUzo3YZsZmH2zlDfIEX9uEb9Vbb
	HnsiDHGgJyBxQjqOpaWIM7KbDNGc8ahjOzt3g37Fx9VXAA8DJ7Be2LZuISOe1UHn+4k+
	WhXXhH6GwznGuJp1mEcy1DlDpPO3FQKue92mwPtGehaeY58joyMPsiu9i35VDxBlYnsD
	08kVQ0Qu18EZ27uvz/g+BN6GBIHXiDQKolIqQBZhsrRrof8NiiX7NP1geN32MIFnmvsU
	vccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3WhPWGUyxqOpYr6g62d+52Qu0B69g+11OzbnrQ+4HCk=;
	b=gnNjBHd1GHU4ngkUDXfM686nKHrKzKvcEL24uFUu8X3xeVwdhuc6nup8xkhUVjjS36
	JddwhaFE5xCPj3l4aB43NQX5YdW7ScsSNjngW5y9YR34DzzHL7fazPnFdUMvQ/DKPSSY
	mxN6YClVa6d2f/KEke5TuiyujQaME7LCeRvZQORFSMCoX0Yn1mTVXtSqVMOiL4Rv+SOP
	x2j+Ow03K9HdEInbT/W1Alj9qaxyrST/eT/u6SVHi+A/y+wNLcFb9RYyLK8GEf/iVoSq
	2RzYDBFgj9wew9BNE0CinMrklsFebqsvOp85nHA4DWV3kALKn0AYiTYi+gIysDRfgHwQ
	5hEw==
X-Gm-Message-State: AFeK/H0Pz37jNqKugyONO3pTSzxO5Db8nodNHnm/bQDOyWwdm80+mSPgOZS8jxqG495AN4NDvdJB7s+S4vIm93OO
X-Received: by 10.129.116.213 with SMTP id p204mr871959ywc.151.1490257556878; 
	Thu, 23 Mar 2017 01:25:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.81.136 with HTTP; Thu, 23 Mar 2017 01:25:26 -0700 (PDT)
In-Reply-To: <83d60adbd65a46faaaaef40bd2667cb3@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
	<83d60adbd65a46faaaaef40bd2667cb3@SFA-EX01.SAKURAUS.LOCAL>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 23 Mar 2017 10:25:26 +0200
Message-ID: <CAHiDW_F0=9Ax2xf_xsJDs4O78g6x6CZa01PhH0fh3RX0MnXZGQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 23 Mar 2017 08:26:00 -0000
Content-Type: multipart/alternative; boundary=001a1147f5c04d5506054b61a06f

--001a1147f5c04d5506054b61a06f
Content-Type: text/plain; charset=UTF-8

On 22 March 2017 at 22:23, Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> Hi Armin, et al,
>
> I tried it again this morning and it did get past the file not found
> error. But when it gets above step 4000 somewhere it gets an error that
> kills not just the yocto build but the full login session. I'm left staring
> at the Linux Login screen. I originally saw this problem with a git clone
> of 16.0.0, and figured it was a git problem, tried building from a download
> of the 16.0.1 bz2 file when I ran into the file not found error.
>

The "file" git repo was broken twice in the past week but current poky
master branch (current commit 49c2df5652d2) and morty branch (current
commit e292e935b077) do fetch it correctly at the time of writing.

Personally I recommend not using the tarball releases: stick to git
branches (and remember to pull once in a while) as they are likely to get
fixes to issues like these faster.

HTH,
  Jussi


>
> At this point I'm not sure what I can pass on to the list to help find the
> bug, if there are some switches that I can set to get more debug info, or
> maybe something is already saved that I can send that will help?
>
> Regards,
> Greg
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of akuster808
> > Sent: Tuesday, March 21, 2017 7:07 PM
> > To: yocto@yoctoproject.org
> > Subject: Re: [yocto] Morty 2.2.1 build failure
> >
> >
> > Greg,
> >
> > On 03/21/2017 04:29 PM, Greg Wilson-Lindberg wrote:
> > > Hello List,
> > >
> > > I got a copy of the book "Embedded Linux Systems with the Yocto
> Project"
> > at the SCALE 15x conference and this prompted me to try building the
> Yocto
> > Poky build before getting the Boot to Qt Yocto build environment.
> > >
> > > I tried building on 2 x86 systems, a 64 bit system at work and a 32
> bit system
> > at my home, both failed in the same way:
> > >
> > > gwilson 11:06:54:~/yocto/poky-morty-16.0.1$ source ./oe-init-build-env
> > > You had no conf/local.conf file. This configuration file has therefore
> > > been created for you with some default values. You may wish to edit it
> > > to, for example, select a different MACHINE (target hardware). See
> > > conf/local.conf for more information as common configuration options
> are
> > commented.
> > >
> > > You had no conf/bblayers.conf file. This configuration file has
> > > therefore been created for you with some default values. To add
> > > additional metadata layers into your configuration please add entries
> to
> > conf/bblayers.conf.
> > >
> > > The Yocto Project has extensive documentation about OE including a
> > > reference manual which can be found at:
> > >      http://yoctoproject.org/documentation
> > >
> > > For more information about OpenEmbedded see their website:
> > >      http://www.openembedded.org/
> > >
> > >
> > > ### Shell environment set up for builds. ###
> > >
> > > You can now run 'bitbake <target>'
> > >
> > > Common targets are:
> > >      core-image-minimal
> > >      core-image-sato
> > >      meta-toolchain
> > >      meta-ide-support
> > >
> > > You can also run generated qemu images with a command like 'runqemu
> > qemux86'
> > > gwilson 11:07:08:~/yocto/poky-morty-16.0.1/build$
> > > gwilson 11:07:10:~/yocto/poky-morty-16.0.1/build$
> > > gwilson 11:07:11:~/yocto/poky-morty-16.0.1/build$ bitbake
> > > core-image-sato Parsing recipes: 100%
> > >
> > |#########################################################
> > ###################################| Time: 0:00:29 Parsing of 864
> > .bb files complete (0 cached, 864 parsed). 1318 targets, 50 skipped, 0
> masked,
> > 0 errors.
> > > NOTE: Resolving any missing task queue dependencies
> > >
> > > Build Configuration:
> > > BB_VERSION        = "1.32.0"
> > > BUILD_SYS         = "x86_64-linux"
> > > NATIVELSBSTRING   = "Ubuntu-14.04"
> > > TARGET_SYS        = "i586-poky-linux"
> > > MACHINE           = "qemux86"
> > > DISTRO            = "poky"
> > > DISTRO_VERSION    = "2.2.1"
> > > TUNE_FEATURES     = "m32 i586"
> > > TARGET_FPU        = ""
> > > meta
> > > meta-poky
> > > meta-yocto-bsp    = "<unknown>:<unknown>"
> > >
> > > NOTE: Fetching uninative binary shim from
> > > http://downloads.yoctoproject.org/releases/uninative/1.4/x86_64-native
> > > sdk-
> > libc.tar.bz2;sha256sum=101ff8f2580c193488db9e76f9646fb6ed38b65fb76
> > > f403acb0e2178ce7127ca
> > > --2017-03-20 11:07:57--
> > > http://downloads.yoctoproject.org/releases/uninative/1.4/x86_64-native
> > > sdk-libc.tar.bz2 Resolving downloads.yoctoproject.org
> > > (downloads.yoctoproject.org)... 198.145.20.127 Connecting to
> > > downloads.yoctoproject.org
> > (downloads.yoctoproject.org)|198.145.20.127|:80... connected.
> > > HTTP request sent, awaiting response... 200 OK
> > > Length: 2473216 (2.4M) [application/octet-stream] Saving to:
> > > '/home/gwilson/yocto/poky-morty-
> > 16.0.1/build/downloads/uninative/101ff8f2580c193488db9e76f9646fb6ed38b
> > 65fb76f403acb0e2178ce7127ca/x86_64-nativesdk-libc.tar.bz2'
> > >
> > >
> > > 2017-03-20 11:07:58 (6.62 MB/s) -
> > > '/home/gwilson/yocto/poky-morty-
> > 16.0.1/build/downloads/uninative/101ff
> > >
> > 8f2580c193488db9e76f9646fb6ed38b65fb76f403acb0e2178ce7127ca/x86_64-
> > nat
> > > ivesdk-libc.tar.bz2' saved [2473216/2473216]
> > >
> > > Initialising tasks: 100%
> > >
> > |#########################################################
> > ############
> > > ####################| Time: 0:00:15
> > > NOTE: Executing SetScene Tasks
> > > NOTE: Executing RunQueue Tasks
> > > WARNING: flex-native-2.6.0-r0 do_fetch: Failed to fetch URL
> > > http://downloads.sourceforge.net/flex/flex-2.6.0.tar.bz2, attempting
> > > MIRRORS if available
> > > WARNING: file-native-5.28-r0 do_fetch: Failed to fetch URL
> > > git://github.com/file/file.git, attempting MIRRORS if available
> > > ERROR: file-native-5.28-r0 do_fetch: Fetcher failure: Unable to find
> > > revision 3c521817322a6bf5160cfeb09b9145ccde587b2a in branch master
> > > even from upstream
> > > ERROR: file-native-5.28-r0 do_fetch: Fetcher failure for URL:
> > 'git://github.com/file/file.git'. Unable to fetch URL from any source.
> >
> > this is a known issue and should be fixed now (again). The upstream repo
> > had issues which caused the hashes to not match. I heard the repo got
> > corrected.
> >
> > > ERROR: file-native-5.28-r0 do_fetch: Function failed: base_do_fetch
> > > ERROR: Logfile of failure stored in:
> > > /home/gwilson/yocto/poky-morty-16.0.1/build/tmp/work/x86_64-
> > linux/file
> > > -native/5.28-r0/temp/log.do_fetch.23747
> > > ERROR: Task (virtual:native:/home/gwilson/yocto/poky-morty-
> > 16.0.1/meta/recipes-devtools/file/file_5.28.bb:do_fetch) failed with
> exit
> > code '1'
> > > NOTE: Tasks Summary: Attempted 203 tasks of which 0 didn't need to be
> > rerun and 1 failed.
> > >
> > > Summary: 1 task failed:
> > >
> > > virtual:native:/home/gwilson/yocto/poky-morty-16.0.1/meta/recipes-devt
> > > ools/file/file_5.28.bb:do_fetch
> > > Summary: There were 2 WARNING messages shown.
> > > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> > code.
> > > gwilson 11:13:14:~/yocto/poky-morty-16.0.1/build$
> > >
> > > I get 1 file that needs to go to a mirror and a second file that can't
> be found
> > at all.
> > Please try again.
> > >
> > > Are these known bugs? Do I need to just back up and use Morty 2.2?
> > This affected 2.1, 2.2 and master.
> >
> > regards,
> > Armin
> > >
> > > Regards,
> > >
> > > Greg Wilson-Lindberg
> > > Sakura Finetek
> > > 310-783-5075
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1147f5c04d5506054b61a06f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
2 March 2017 at 22:23, Greg Wilson-Lindberg <span dir=3D"ltr">&lt;<a href=
=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWilson@sakuraus.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi =
Armin, et al,<br>
<br>
I tried it again this morning and it did get past the file not found error.=
 But when it gets above step 4000 somewhere it gets an error that kills not=
 just the yocto build but the full login session. I&#39;m left staring at t=
he Linux Login screen. I originally saw this problem with a git clone of 16=
.0.0, and figured it was a git problem, tried building from a download of t=
he 16.0.1 bz2 file when I ran into the file not found error.<br></blockquot=
e><div><br></div><div>The &quot;file&quot; git repo was broken twice in the=
 past week but current poky master branch (current=C2=A0commit 49c2df5652d2=
) and morty branch (current commit e292e935b077) do fetch it correctly at t=
he time of writing.</div><div><br></div><div>Personally I recommend not usi=
ng the tarball releases: stick to git branches (and remember to pull once i=
n a while) as they are likely to get fixes to issues like these faster.</di=
v><div><br></div><div>HTH,</div><div>=C2=A0 Jussi</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<br>
At this point I&#39;m not sure what I can pass on to the list to help find =
the bug, if there are some switches that I can set to get more debug info, =
or maybe something is already saved that I can send that will help?<br>
<br>
Regards,<br>
Greg<br>
<div><div class=3D"gmail-h5"><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of akuster808<br>
&gt; Sent: Tuesday, March 21, 2017 7:07 PM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: Re: [yocto] Morty 2.2.1 build failure<br>
&gt;<br>
&gt;<br>
&gt; Greg,<br>
&gt;<br>
&gt; On 03/21/2017 04:29 PM, Greg Wilson-Lindberg wrote:<br>
&gt; &gt; Hello List,<br>
&gt; &gt;<br>
&gt; &gt; I got a copy of the book &quot;Embedded Linux Systems with the Yo=
cto Project&quot;<br>
&gt; at the SCALE 15x conference and this prompted me to try building the Y=
octo<br>
&gt; Poky build before getting the Boot to Qt Yocto build environment.<br>
&gt; &gt;<br>
&gt; &gt; I tried building on 2 x86 systems, a 64 bit system at work and a =
32 bit system<br>
&gt; at my home, both failed in the same way:<br>
&gt; &gt;<br>
&gt; &gt; gwilson 11:06:54:~/yocto/poky-morty-<wbr>16.0.1$ source ./oe-init=
-build-env<br>
&gt; &gt; You had no conf/local.conf file. This configuration file has ther=
efore<br>
&gt; &gt; been created for you with some default values. You may wish to ed=
it it<br>
&gt; &gt; to, for example, select a different MACHINE (target hardware). Se=
e<br>
&gt; &gt; conf/local.conf for more information as common configuration opti=
ons are<br>
&gt; commented.<br>
&gt; &gt;<br>
&gt; &gt; You had no conf/bblayers.conf file. This configuration file has<b=
r>
&gt; &gt; therefore been created for you with some default values. To add<b=
r>
&gt; &gt; additional metadata layers into your configuration please add ent=
ries to<br>
&gt; conf/bblayers.conf.<br>
&gt; &gt;<br>
&gt; &gt; The Yocto Project has extensive documentation about OE including =
a<br>
&gt; &gt; reference manual which can be found at:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://yoctoproject.org/documentat=
ion" rel=3D"noreferrer" target=3D"_blank">http://yoctoproject.org/<wbr>docu=
mentation</a><br>
&gt; &gt;<br>
&gt; &gt; For more information about OpenEmbedded see their website:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.openembedded.org/" rel=
=3D"noreferrer" target=3D"_blank">http://www.openembedded.org/</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; ### Shell environment set up for builds. ###<br>
&gt; &gt;<br>
&gt; &gt; You can now run &#39;bitbake &lt;target&gt;&#39;<br>
&gt; &gt;<br>
&gt; &gt; Common targets are:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 core-image-minimal<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 core-image-sato<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 meta-toolchain<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 meta-ide-support<br>
&gt; &gt;<br>
&gt; &gt; You can also run generated qemu images with a command like &#39;r=
unqemu<br>
&gt; qemux86&#39;<br>
&gt; &gt; gwilson 11:07:08:~/yocto/poky-morty-<wbr>16.0.1/build$<br>
&gt; &gt; gwilson 11:07:10:~/yocto/poky-morty-<wbr>16.0.1/build$<br>
&gt; &gt; gwilson 11:07:11:~/yocto/poky-morty-<wbr>16.0.1/build$ bitbake<br=
>
&gt; &gt; core-image-sato Parsing recipes: 100%<br>
&gt; &gt;<br>
&gt; |#############################<wbr>############################<br>
&gt; ##############################<wbr>#####| Time: 0:00:29 Parsing of 864=
<br>
&gt; .bb files complete (0 cached, 864 parsed). 1318 targets, 50 skipped, 0=
 masked,<br>
&gt; 0 errors.<br>
&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; &gt;<br>
&gt; &gt; Build Configuration:<br>
&gt; &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;<br>
&gt; &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux=
&quot;<br>
&gt; &gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;<br>
&gt; &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586-poky-linux&q=
uot;<br>
&gt; &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86=
&quot;<br>
&gt; &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&qu=
ot;<br>
&gt; &gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.2.1&quot;<br>
&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m32 i586&quot;<br>
&gt; &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
&gt; &gt; meta<br>
&gt; &gt; meta-poky<br>
&gt; &gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown=
&gt;&quot;<br>
&gt; &gt;<br>
&gt; &gt; NOTE: Fetching uninative binary shim from<br>
</div></div><span class=3D"gmail-">&gt; &gt; <a href=3D"http://downloads.yo=
ctoproject.org/releases/uninative/1.4/x86_64-native" rel=3D"noreferrer" tar=
get=3D"_blank">http://downloads.yoctoproject.<wbr>org/releases/uninative/1.=
4/<wbr>x86_64-native</a><br>
&gt; &gt; sdk-<br>
&gt; libc.tar.bz2;sha256sum=3D<wbr>101ff8f2580c193488db9e76f9646f<wbr>b6ed3=
8b65fb76<br>
&gt; &gt; f403acb0e2178ce7127ca<br>
</span><span class=3D"gmail-">&gt; &gt; --2017-03-20 11:07:57--<br>
&gt; &gt; <a href=3D"http://downloads.yoctoproject.org/releases/uninative/1=
.4/x86_64-native" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoc=
toproject.<wbr>org/releases/uninative/1.4/<wbr>x86_64-native</a><br>
</span>&gt; &gt; sdk-libc.tar.bz2 Resolving <a href=3D"http://downloads.yoc=
toproject.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctoproject.=
org</a><br>
<span class=3D"gmail-">&gt; &gt; (<a href=3D"http://downloads.yoctoproject.=
org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctoproject.org</a>)..=
<wbr>. 198.145.20.127 Connecting to<br>
&gt; &gt; <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" =
target=3D"_blank">downloads.yoctoproject.org</a><br>
&gt; (<a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" targ=
et=3D"_blank">downloads.yoctoproject.org</a>)|<wbr>198.145.20.127|:80... co=
nnected.<br>
&gt; &gt; HTTP request sent, awaiting response... 200 OK<br>
&gt; &gt; Length: 2473216 (2.4M) [application/octet-stream] Saving to:<br>
&gt; &gt; &#39;/home/gwilson/yocto/poky-<wbr>morty-<br>
&gt; 16.0.1/build/downloads/<wbr>uninative/<wbr>101ff8f2580c193488db9e76f96=
46f<wbr>b6ed38b<br>
&gt; 65fb76f403acb0e2178ce7127ca/<wbr>x86_64-nativesdk-libc.tar.bz2&#39;<br=
>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; 2017-03-20 11:07:58 (6.62 MB/s) -<br>
</span>&gt; &gt; &#39;/home/gwilson/yocto/poky-<wbr>morty-<br>
&gt; 16.0.1/build/downloads/<wbr>uninative/101ff<br>
&gt; &gt;<br>
&gt; 8f2580c193488db9e76f9646fb6ed3<wbr>8b65fb76f403acb0e2178ce7127ca/<wbr>=
x86_64-<br>
&gt; nat<br>
<span class=3D"gmail-im gmail-HOEnZb">&gt; &gt; ivesdk-libc.tar.bz2&#39; sa=
ved [2473216/2473216]<br>
&gt; &gt;<br>
&gt; &gt; Initialising tasks: 100%<br>
&gt; &gt;<br>
&gt; |#############################<wbr>############################<br>
&gt; ############<br>
&gt; &gt; ####################| Time: 0:00:15<br>
&gt; &gt; NOTE: Executing SetScene Tasks<br>
&gt; &gt; NOTE: Executing RunQueue Tasks<br>
&gt; &gt; WARNING: flex-native-2.6.0-r0 do_fetch: Failed to fetch URL<br>
&gt; &gt; <a href=3D"http://downloads.sourceforge.net/flex/flex-2.6.0.tar.b=
z2" rel=3D"noreferrer" target=3D"_blank">http://downloads.sourceforge.<wbr>=
net/flex/flex-2.6.0.tar.bz2</a>, attempting<br>
&gt; &gt; MIRRORS if available<br>
&gt; &gt; WARNING: file-native-5.28-r0 do_fetch: Failed to fetch URL<br>
&gt; &gt; git://<a href=3D"http://github.com/file/file.git" rel=3D"noreferr=
er" target=3D"_blank">github.com/file/file.git</a><wbr>, attempting MIRRORS=
 if available<br>
&gt; &gt; ERROR: file-native-5.28-r0 do_fetch: Fetcher failure: Unable to f=
ind<br>
&gt; &gt; revision 3c521817322a6bf5160cfeb09b9145<wbr>ccde587b2a in branch =
master<br>
&gt; &gt; even from upstream<br>
&gt; &gt; ERROR: file-native-5.28-r0 do_fetch: Fetcher failure for URL:<br>
&gt; &#39;git://<a href=3D"http://github.com/file/file.git" rel=3D"noreferr=
er" target=3D"_blank">github.com/file/file.<wbr>git</a>&#39;. Unable to fet=
ch URL from any source.<br>
&gt;<br>
&gt; this is a known issue and should be fixed now (again). The upstream re=
po<br>
&gt; had issues which caused the hashes to not match. I heard the repo got<=
br>
&gt; corrected.<br>
&gt;<br>
&gt; &gt; ERROR: file-native-5.28-r0 do_fetch: Function failed: base_do_fet=
ch<br>
&gt; &gt; ERROR: Logfile of failure stored in:<br>
</span><span class=3D"gmail-im gmail-HOEnZb">&gt; &gt; /home/gwilson/yocto/=
poky-<wbr>morty-16.0.1/build/tmp/work/<wbr>x86_64-<br>
&gt; linux/file<br>
&gt; &gt; -native/5.28-r0/temp/log.do_<wbr>fetch.23747<br>
&gt; &gt; ERROR: Task (virtual:native:/home/gwilson/<wbr>yocto/poky-morty-<=
br>
</span><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">&gt; 16.0.1/meta=
/recipes-devtools/<wbr>file/file_5.28.bb:do_fetch) failed with exit<br>
&gt; code &#39;1&#39;<br>
&gt; &gt; NOTE: Tasks Summary: Attempted 203 tasks of which 0 didn&#39;t ne=
ed to be<br>
&gt; rerun and 1 failed.<br>
&gt; &gt;<br>
&gt; &gt; Summary: 1 task failed:<br>
&gt; &gt;<br>
&gt; &gt; virtual:native:/home/gwilson/<wbr>yocto/poky-morty-16.0.1/meta/<w=
br>recipes-devt<br>
&gt; &gt; ools/file/file_5.28.bb:do_<wbr>fetch<br>
&gt; &gt; Summary: There were 2 WARNING messages shown.<br>
&gt; &gt; Summary: There were 3 ERROR messages shown, returning a non-zero =
exit<br>
&gt; code.<br>
&gt; &gt; gwilson 11:13:14:~/yocto/poky-morty-<wbr>16.0.1/build$<br>
&gt; &gt;<br>
&gt; &gt; I get 1 file that needs to go to a mirror and a second file that =
can&#39;t be found<br>
&gt; at all.<br>
&gt; Please try again.<br>
&gt; &gt;<br>
&gt; &gt; Are these known bugs? Do I need to just back up and use Morty 2.2=
?<br>
&gt; This affected 2.1, 2.2 and master.<br>
&gt;<br>
&gt; regards,<br>
&gt; Armin<br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt;<br>
&gt; &gt; Greg Wilson-Lindberg<br>
&gt; &gt; Sakura Finetek<br>
&gt; &gt; 310-783-5075<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--001a1147f5c04d5506054b61a06f--
