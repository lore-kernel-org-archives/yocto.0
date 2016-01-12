Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C98C8E00AA6; Tue, 12 Jan 2016 03:28:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,UC_GIBBERISH_OBFU autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A477FE00A27
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 03:28:38 -0800 (PST)
X-Halon-ID: b4494b60-b91f-11e5-aee3-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 12 Jan 2016 12:29:12 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 12 Jan 2016 12:28:33 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Khem Raj <raj.khem@gmail.com>, Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAMKF1sqzfKMJ+SW-bdGo=qP5m9wGOxW4MWLQs2CKon03hMxfBA@mail.gmail.com>
References: <1452530987-994-1-git-send-email-petter@technux.se>
	<1452530987-994-5-git-send-email-petter@technux.se>
	<7564A308-E4D5-4B05-B03A-95A2B37A5F59@gmail.com>
	<20160111203227.GA10203@resin>
	<6e08071c20fb36e6744479e96267006c@technux.se>
	<CAMKF1sqzfKMJ+SW-bdGo=qP5m9wGOxW4MWLQs2CKon03hMxfBA@mail.gmail.com>
Message-ID: <0e6fb4e5bfd3260422ebc9c2016430bb@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/5] pitft: Add basic support for PiTFT
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Jan 2016 11:28:42 -0000
Content-Type: multipart/alternative;
	boundary="=_9ba902eadfec638e75b999f541b220cc"

--=_9ba902eadfec638e75b999f541b220cc
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-01-12 09:45 skrev Khem Raj: 

> On Mon, Jan 11, 2016 at 10:51
PM, Petter Mabäcker <petter@technux.se> wrote:
> 
>> 2016-01-11 21:32
skrev Andrei Gherzan: On Mon, Jan 11, 2016 at 09:55:43AM -0800, Khem Raj
wrote: On Jan 11, 2016, at 8:49 AM, Petter Mabäcker <petter@technux.se>
wrote: Add basic support for PiTFT display by using device-trees. In
order get it working below configurations must be active in local.conf:
MACHINEOVERRIDES .= ":pitft" Using MACHINE_FEATURES will be more
appropriate term. Effects are same. Indeed. I support MACHINE_FEATURE
usage here. I agree that the term MACHINE_FEATURES is better. However
since MACHINE_FEATURES isn't included in the OVERRIDES variable I will
not be able to use the task pre/appends that was the reason I used
MACHINEOVERRIDES in the first place. The reason I want to use overrides
in this case is since I think it makes the code easier to read and
understand for the user (in this particular case at least). I can of
course change to just using variables (like in many other optional
features in meta-raspberrypi) or change to MACHINE_FEATURES. But I'm not
sure how I can solve for example the below part in a effective and nice
way:
> 
> it really doesnt need to have override, you can enquire
>
MACHINE_FEATURES in python or shell.

Yes, I'm aware of that I can use
it that way. It was just my personal opinion that the code looks better
with overrides in this particular case. On the other hand I can agree
that the end-user will be more comfortable with using MACHINE_FEATURES
instead of MACHINEOVERRIDES. Also since both you and Andrei push for
MACHINE_FEATURES I will bend for your will =) 

Start using
MACHINE_FEATURES from local.conf when using meta-raspberrypi will
require a minor change i rpi-base.inc as well, since it otherwise will
override MACHINE_FEATURES added in local.conf. I will send up a fix for
that in v2 of this series as well. 

Thanks for your feedback. 

BR
Petter 

>> xserver-xf86-config_0.1.bbappend FILESEXTRAPATHS_prepend :=
"${THISDIR}/${PN}:" SRC_URI_append_rpi = "
file://xorg.conf.d/10-evdev.conf [1] " SRC_URI_append_pitft = "
file://xorg.conf.d/99-pitft.conf [2] " <---------------- My change....
do_install_append_rpi () { install -d
${D}/${sysconfdir}/X11/xorg.conf.d/ install -m 0644
${WORKDIR}/xorg.conf.d/* ${D}/${sysconfdir}/X11/xorg.conf.d/ }
FILES_${PN}_rpi += "${sysconfdir}/X11/xorg.conf
${sysconfdir}/X11/xorg.conf.d/*" ------------------- end
----------------------- But if you have any good suggestions about how
to solve this, please enlighten me =) BR Petter -- Andrei Gherzan



Links:
------
[1] file://xorg.conf.d/10-evdev.conf
[2]
file://xorg.conf.d/99-pitft.conf

--=_9ba902eadfec638e75b999f541b220cc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-01-12 09:45 skrev Khem Raj:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Mon, Jan 11, 2016 at 10:51 PM, Petter Mab&auml;cker &lt;<a href=3D"=
mailto:petter@technux.se">petter@technux.se</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">2016-01-11 21:32 skrev Andrei Gherzan=
: On Mon, Jan 11, 2016 at 09:55:43AM -0800, Khem Raj wrote: On Jan 11, 2016=
, at 8:49 AM, Petter Mab&auml;cker &lt;<a href=3D"mailto:petter@technux.se"=
>petter@technux.se</a>&gt; wrote: Add basic support for PiTFT display by us=
ing device-trees. In order get it working below configurations must be acti=
ve in local.conf: MACHINEOVERRIDES .=3D ":pitft&rdquo; Using MACHINE_FEATUR=
ES will be more appropriate term. Effects are same. Indeed. I support MACHI=
NE_FEATURE usage here. I agree that the term MACHINE_FEATURES is better. Ho=
wever since MACHINE_FEATURES isn't included in the OVERRIDES variable I wil=
l not be able to use the task pre/appends that was the reason I used MACHIN=
EOVERRIDES in the first place. The reason I want to use overrides in this c=
ase is since I think it makes the code easier to read and understand for th=
e user (in this particular case at least). I can of course change to just u=
sing variables (like in many other optional features in meta-raspberrypi) o=
r change to MACHINE_FEATURES. But I'm not sure how I can solve for example =
the below part in a effective and nice way:</blockquote>
<pre>it really doesnt need to have override, you can enquire
MACHINE_FEATURES in python or shell.</pre>
</blockquote>
<p>Yes, I'm aware of that I can use it that way. It was just my personal op=
inion that the code looks better with overrides in this particular case. On=
 the other hand I can agree that the end-user will be more comfortable with=
 using MACHINE_FEATURES instead of MACHINEOVERRIDES. Also since both you an=
d Andrei push for MACHINE_FEATURES I will bend for your will =3D)</p>
<p>Start using MACHINE_FEATURES from local.conf when using meta-raspberrypi=
 will require a minor change i rpi-base.inc as well, since it otherwise wil=
l override MACHINE_FEATURES added in local.conf. I will send up a fix for t=
hat in v2 of this series as well.</p>
<p>Thanks for your feedback.</p>
<p>BR Petter</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">xserver-xf86-config_0.1.bbappend FILE=
SEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:" SRC_URI_append_rpi =3D " <a hr=
ef=3D"file://xorg.conf.d/10-evdev.conf">file://xorg.conf.d/10-evdev.conf</a=
> " SRC_URI_append_pitft =3D " <a href=3D"file://xorg.conf.d/99-pitft.conf"=
>file://xorg.conf.d/99-pitft.conf</a> " &lt;---------------- My change...=
=2E do_install_append_rpi () { install -d ${D}/${sysconfdir}/X11/xorg.conf=
=2Ed/ install -m 0644 ${WORKDIR}/xorg.conf.d/* ${D}/${sysconfdir}/X11/xorg=
=2Econf.d/ } FILES_${PN}_rpi +=3D "${sysconfdir}/X11/xorg.conf ${sysconfdir=
}/X11/xorg.conf.d/*" ------------------- end ----------------------- But if=
 you have any good suggestions about how to solve this, please enlighten me=
 =3D) BR Petter -- Andrei Gherzan</blockquote>
</blockquote>
</body></html>

--=_9ba902eadfec638e75b999f541b220cc--
