Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6952EE00CF2; Thu, 21 Sep 2017 14:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62358E00C99
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 14:22:10 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id p204so3771487vkp.7
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 14:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+sWHoSOL+r9YkfDUyfZV8TFUdUD2deFvlDG2Ao1w0BE=;
	b=rtBcWee9swJ+gb6fc2piolWV6ZgM9rbVR/MQlofQuCXPdaqDXv3Ia6SvV3WQU0KRD0
	MeYdfbKnaSzNAs5xGtfDVAdiGA274k0u8WAhbINTEt/sj/YMQ9iL5ycLkTDpqDdk48pH
	LSzgZb3OJjZpp7IfGx8UYtwq3v9cGGrB7ZhOiOoigja+lAqljRwPYRt8aGFZ/UpQbZuD
	d3hxjaXkTBjaS4/KqxzHNz8C9akF9a5a1DRYkfc6gnGQ/joIRJBXcMY/COZkMcfl5LuO
	FjhcTHCDG74T+iFgGpTILmZwXqqoWv7IZvAhX+GoyboHN/fi3fzoE37l3ZX/L6869Bgz
	1w9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+sWHoSOL+r9YkfDUyfZV8TFUdUD2deFvlDG2Ao1w0BE=;
	b=Ln4d4GKbY0QGer6z/cR2o1f8XgmNBC0AhYS7vrDTTMv608gcTvlpMEp2Vi88nscEH6
	oFqY8IvOUOd5MStM/3ibWJR/X4bSGedZT8g6hRcCBwkBJLZSvuXG4jqlRxfP4B3BMziQ
	ZdafYXdkJUOB76McAq9k05Vvn9aOSr+jWIAeLT1WSHQR/r2mFnDGAtX52EmcDWGXyCNR
	4qqCzfb7N7LFbd0/edJOdJTElQ9mMOFPGEuMSeESH62LHM6B8FxO9y6KBzjV3K6duwER
	xafKt+OxUuhEYxkk7LlIiA+YtfZmlQ6T4qsVxTiLgDN2ZJV+GOHAJZaLJ9MOgMKiQkz9
	rP2g==
X-Gm-Message-State: AHPjjUiLvGD2p/FyX25aIu29SY8h7WtqBTHKpM5PH+3ZM8g/G+Y43VAA
	igC6GxqIcT6kzWYPDJzbts2HQTMz6SjtBu9vHS4=
X-Google-Smtp-Source: AOwi7QADfAbKUpsBxYhXuAUFnOHefO5ltTM3Cdt1SyLEJ+V2tJmpuKLsFrXl1f7qIWyVnkFLlAI1IPo7RxNgAq3VVvc=
X-Received: by 10.31.56.194 with SMTP id f185mr3124644vka.0.1506028929303;
	Thu, 21 Sep 2017 14:22:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Thu, 21 Sep 2017 14:22:08 -0700 (PDT)
In-Reply-To: <1979255.oHZKlvZ7SS@peggleto-mobl.ger.corp.intel.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<CAC+thW2OF7qchCxiRk3MgL4PvZ9Yg4xkSidQpO5QDByR-iZMmg@mail.gmail.com>
	<CAC+thW254MBv1CRC1tRh_hPRNPD=586P53hTPOHPaBE==useTg@mail.gmail.com>
	<1979255.oHZKlvZ7SS@peggleto-mobl.ger.corp.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 21 Sep 2017 23:22:08 +0200
Message-ID: <CAC+thW0NX8opCrU3Q61LYd_iUdWZGyTt_oXSE4V=uYD60O_cuQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Thu, 21 Sep 2017 21:22:11 -0000
Content-Type: multipart/alternative; boundary="001a11430d9e5a47da0559b9af3b"

--001a11430d9e5a47da0559b9af3b
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday, 22 September 2017 1:06:19 AM NZST Andrea Galbusera wrote:
> > On Wed, Sep 20, 2017 at 11:26 PM, Andrea Galbusera <gizero@gmail.com>
> wrote:
> > > On Wed, Sep 20, 2017 at 11:54 AM, Paul Eggleton <
> > > paul.eggleton@linux.intel.com> wrote:
> > >> On Wednesday, 20 September 2017 8:44:22 PM NZST Andrea Galbusera
> wrote:
> > >> > Seeing the errors below while installing an eSDK. This is a
> routinely
> > >> > generated VM that installs the eSDK from installation script. The
> errors
> > >> > appeared with the latest iteration of the eSDK script, which is
> > >> generated
> > >> > with almost up-to-date revisions from master. Of course I have extra
> > >> layers
> > >> > in the mix, but none of them apparently had relevant changed since
> last
> > >> > (working) iteration: mostly synching to master branches happened.
> Can
> > >> > anyone help suggesting how to investigate this further? What do
> those
> > >> > unexpected task mean? I'm blocked on releasing this SDK to
> developers
> > >> and
> > >> > clues from expert would be very appreciated...
> > >> >
> > >> > ==> default: Checking sstate mirror object availability...
> > >> > ==> default: done.
> > >> > ==> default: ERROR: Task python-native.do_fetch attempted to execute
> > >> > unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_prepare_recipe_sysroot
> > >> attempted
> > >> > to execute unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_unpack attempted to
> execute
> > >> > unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_patch attempted to execute
> > >> > unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_populate_lic attempted to
> > >> execute
> > >> > unexpectedly and should have been setscened
> > >> > ==> default: ERROR: Task python-native.do_configure attempted to
> execute
> > >> > unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_compile attempted to
> execute
> > >> > unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_install attempted to
> execute
> > >> > unexpectedly
> > >> > ==> default: ERROR: Task python-native.do_populate_sysroot
> attempted to
> > >> > execute unexpectedly and should have been setscened
> > >> > ==> default: ERROR: SDK preparation failed: error log written to
> > >> > /home/vagrant/poky_sdk/preparing_build_system.log
> > >> >
> > >>
> > >> Basically this means that these tasks tried to execute where really
> the
> > >> results should have been able to be restored from sstate.
> > >>
> > >> The cause of this type of error is one of three things:
> > >>
> > >> 1) The sstate archive corresponding to a task wasn't able to be
> fetched
> > >> from
> > >> the server (for a minimal eSDK) or wasn't present in the installer
> (for a
> > >> full
> > >> eSDK - less likely as we basically do a trial run as part of building
> the
> > >> eSDK
> > >> in the first place)
> > >>
> > >> 2) The signature was somehow different to what it should have been.
> > >> (Locked
> > >> signatures are supposed to guard against this.)
> > >>
> > >> 3) A task that wasn't expected to execute did execute and thus the
> sstate
> > >> wasn't available.
> > >>
> > >> Given that this was python-native which I would expect would be a
> normal
> > >> part
> > >> of the SDK, I would suspect #1. Is this a minimal or full eSDK (i.e.
> what
> > >> is
> > >> SDK_EXT_TYPE set to)?
> > >>
> > >
> > > That was a "full" eSDK. I noticed that the "same" eSDK installer from
> > > another build host was not affected and I'm trying to rebuild on the
> > > original one with even more recent revision and see if it still
> happens or
> > > not. Failure with the first one was repeatable, hence I suspect an
> issue at
> > > sdk population stage, not during installation.
> >
> > Nuking tmp/ and rebuilding with the same revisions of the successful
> build
> > host didn't fix the issue... Same error on installation of the generated
> > eSDK. Would you suggest any other investigation step? On my todo list I'd
> > put using the sstate from that other build host than nuking local
> > sstate-cache/ and going to take a very long coffee break. :-(
>
> Right, so the next step would be looking for the hash for
> python-native.do_populate_sysroot in conf/locked_sigs.inc within the
> failed
> SDK install directory and then looking for that in both the sstate-cache
> directory within the failed SDK and then in the sstate-cache directory of
> the build that built it. I suspect it may not be there, but let me know
> what
> you find.
>

Good catch! In the failing SDK neither conf/locked_sigs.inc nor
sstate-cache do include any python-native signature or object... Only
python3-native stuff is there. Weird! As said, SDKs from the same build
directory, used to work since a few weeks ago. May any recent change in
poky master have caused this while periodically upgrading without
regenerating the sstate-cache?

--001a11430d9e5a47da0559b9af3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><span class=3D"gmail-">On Friday, 22 September 2017 1:06:19 =
AM NZST Andrea Galbusera wrote:<br>
&gt; On Wed, Sep 20, 2017 at 11:26 PM, Andrea Galbusera &lt;<a href=3D"mail=
to:gizero@gmail.com">gizero@gmail.com</a>&gt; wrote:<br>
</span><span class=3D"gmail-">&gt; &gt; On Wed, Sep 20, 2017 at 11:54 AM, P=
aul Eggleton &lt;<br>
&gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@li=
nux.intel.com</a>&gt; wrote:<br>
</span><div><div class=3D"gmail-h5">&gt; &gt;&gt; On Wednesday, 20 Septembe=
r 2017 8:44:22 PM NZST Andrea Galbusera wrote:<br>
&gt; &gt;&gt; &gt; Seeing the errors below while installing an eSDK. This i=
s a routinely<br>
&gt; &gt;&gt; &gt; generated VM that installs the eSDK from installation sc=
ript. The errors<br>
&gt; &gt;&gt; &gt; appeared with the latest iteration of the eSDK script, w=
hich is<br>
&gt; &gt;&gt; generated<br>
&gt; &gt;&gt; &gt; with almost up-to-date revisions from master. Of course =
I have extra<br>
&gt; &gt;&gt; layers<br>
&gt; &gt;&gt; &gt; in the mix, but none of them apparently had relevant cha=
nged since last<br>
&gt; &gt;&gt; &gt; (working) iteration: mostly synching to master branches =
happened. Can<br>
&gt; &gt;&gt; &gt; anyone help suggesting how to investigate this further? =
What do those<br>
&gt; &gt;&gt; &gt; unexpected task mean? I&#39;m blocked on releasing this =
SDK to developers<br>
&gt; &gt;&gt; and<br>
&gt; &gt;&gt; &gt; clues from expert would be very appreciated...<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: Checking sstate mirror object availa=
bility...<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: done.<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_fetch a=
ttempted to execute<br>
&gt; &gt;&gt; &gt; unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_prepare=
_<wbr>recipe_sysroot<br>
&gt; &gt;&gt; attempted<br>
&gt; &gt;&gt; &gt; to execute unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_unpack =
attempted to execute<br>
&gt; &gt;&gt; &gt; unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_patch a=
ttempted to execute<br>
&gt; &gt;&gt; &gt; unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_populat=
e_lic attempted to<br>
&gt; &gt;&gt; execute<br>
&gt; &gt;&gt; &gt; unexpectedly and should have been setscened<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_configu=
re attempted to execute<br>
&gt; &gt;&gt; &gt; unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_compile=
 attempted to execute<br>
&gt; &gt;&gt; &gt; unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_install=
 attempted to execute<br>
&gt; &gt;&gt; &gt; unexpectedly<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: Task python-native.do_populat=
e_<wbr>sysroot attempted to<br>
&gt; &gt;&gt; &gt; execute unexpectedly and should have been setscened<br>
&gt; &gt;&gt; &gt; =3D=3D&gt; default: ERROR: SDK preparation failed: error=
 log written to<br>
&gt; &gt;&gt; &gt; /home/vagrant/poky_sdk/<wbr>preparing_build_system.log<b=
r>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Basically this means that these tasks tried to execute where =
really the<br>
&gt; &gt;&gt; results should have been able to be restored from sstate.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The cause of this type of error is one of three things:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; 1) The sstate archive corresponding to a task wasn&#39;t able=
 to be fetched<br>
&gt; &gt;&gt; from<br>
&gt; &gt;&gt; the server (for a minimal eSDK) or wasn&#39;t present in the =
installer (for a<br>
&gt; &gt;&gt; full<br>
&gt; &gt;&gt; eSDK - less likely as we basically do a trial run as part of =
building the<br>
&gt; &gt;&gt; eSDK<br>
&gt; &gt;&gt; in the first place)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; 2) The signature was somehow different to what it should have=
 been.<br>
&gt; &gt;&gt; (Locked<br>
&gt; &gt;&gt; signatures are supposed to guard against this.)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; 3) A task that wasn&#39;t expected to execute did execute and=
 thus the sstate<br>
&gt; &gt;&gt; wasn&#39;t available.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Given that this was python-native which I would expect would =
be a normal<br>
&gt; &gt;&gt; part<br>
&gt; &gt;&gt; of the SDK, I would suspect #1. Is this a minimal or full eSD=
K (i.e. what<br>
&gt; &gt;&gt; is<br>
&gt; &gt;&gt; SDK_EXT_TYPE set to)?<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; That was a &quot;full&quot; eSDK. I noticed that the &quot;same&q=
uot; eSDK installer from<br>
&gt; &gt; another build host was not affected and I&#39;m trying to rebuild=
 on the<br>
&gt; &gt; original one with even more recent revision and see if it still h=
appens or<br>
&gt; &gt; not. Failure with the first one was repeatable, hence I suspect a=
n issue at<br>
&gt; &gt; sdk population stage, not during installation.<br>
&gt;<br>
&gt; Nuking tmp/ and rebuilding with the same revisions of the successful b=
uild<br>
&gt; host didn&#39;t fix the issue... Same error on installation of the gen=
erated<br>
&gt; eSDK. Would you suggest any other investigation step? On my todo list =
I&#39;d<br>
&gt; put using the sstate from that other build host than nuking local<br>
&gt; sstate-cache/ and going to take a very long coffee break. :-(<br>
<br>
</div></div>Right, so the next step would be looking for the hash for<br>
python-native.do_populate_<wbr>sysroot in conf/locked_sigs.inc within the f=
ailed<br>
SDK install directory and then looking for that in both the sstate-cache<br=
>
directory within the failed SDK and then in the sstate-cache directory of<b=
r>
the build that built it. I suspect it may not be there, but let me know wha=
t<br>
you find.<br></blockquote><div><br></div><div>Good catch! In the failing SD=
K neither conf/locked_sigs.inc nor sstate-cache do include any python-nativ=
e signature or object... Only python3-native stuff is there. Weird! As said=
, SDKs from the same build directory, used to work since a few weeks ago. M=
ay any recent change in poky master have caused this while periodically upg=
rading without regenerating the sstate-cache?</div></div></div></div>

--001a11430d9e5a47da0559b9af3b--
