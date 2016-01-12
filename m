Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A05ECE00A27; Mon, 11 Jan 2016 22:51:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,UC_GIBBERISH_OBFU autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
Received: from bin-vsp-out-01.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00F7EE009D7
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 22:51:29 -0800 (PST)
X-Halon-ID: fd8f3bb0-b8f8-11e5-aee3-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 12 Jan 2016 07:52:05 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 12 Jan 2016 07:51:25 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <20160111203227.GA10203@resin>
References: <1452530987-994-1-git-send-email-petter@technux.se>
	<1452530987-994-5-git-send-email-petter@technux.se>
	<7564A308-E4D5-4B05-B03A-95A2B37A5F59@gmail.com>
	<20160111203227.GA10203@resin>
Message-ID: <6e08071c20fb36e6744479e96267006c@technux.se>
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
X-List-Received-Date: Tue, 12 Jan 2016 06:51:33 -0000
Content-Type: multipart/alternative;
	boundary="=_008ecd1a326f743ae838ce1d5f7aa478"

--=_008ecd1a326f743ae838ce1d5f7aa478
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-01-11 21:32 skrev Andrei Gherzan: 

> On Mon, Jan 11, 2016 at
09:55:43AM -0800, Khem Raj wrote:
> 
>>> On Jan 11, 2016, at 8:49 AM,
Petter Mabäcker <petter@technux.se> wrote: Add basic support for PiTFT
display by using device-trees. In order get it working below
configurations must be active in local.conf: MACHINEOVERRIDES .=
":pitft"
>> Using MACHINE_FEATURES will be more appropriate term.
Effects are same.
> 
> Indeed. I support MACHINE_FEATURE usage here.

I
agree that the term MACHINE_FEATURES is better. However since
MACHINE_FEATURES isn't included in the OVERRIDES variable I will not be
able to use the task pre/appends that was the reason I used
MACHINEOVERRIDES in the first place. The reason I want to use overrides
in this case is since I think it makes the code easier to read and
understand for the user (in this particular case at least). I can of
course change to just using variables (like in many other optional
features in meta-raspberrypi) or change to MACHINE_FEATURES. But I'm not
sure how I can solve for example the below part in a effective and nice
way: 

xserver-xf86-config_0.1.bbappend 

FILESEXTRAPATHS_prepend :=
"${THISDIR}/${PN}:"

SRC_URI_append_rpi = "
file://xorg.conf.d/10-evdev.conf "
SRC_URI_append_pitft = "
file://xorg.conf.d/99-pitft.conf " <---------------- My
change....

do_install_append_rpi () {
 install -d
${D}/${sysconfdir}/X11/xorg.conf.d/
 install -m 0644
${WORKDIR}/xorg.conf.d/*
${D}/${sysconfdir}/X11/xorg.conf.d/
}

FILES_${PN}_rpi +=
"${sysconfdir}/X11/xorg.conf
${sysconfdir}/X11/xorg.conf.d/*"
------------------- end
----------------------- 

But if you have any good suggestions about how
to solve this, please enlighten me =) 

BR Petter 

> -- Andrei Gherzan


--=_008ecd1a326f743ae838ce1d5f7aa478
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-01-11 21:32 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Mon, Jan 11, 2016 at 09:55:43AM -0800, Khem Raj wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Jan 11, 2016, at 8:49 AM, Petter M=
ab&auml;cker &lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>=
&gt; wrote: Add basic support for PiTFT display by using device-trees. In o=
rder get it working below configurations must be active in local.conf: MACH=
INEOVERRIDES .=3D ":pitft&rdquo;</blockquote>
Using MACHINE_FEATURES will be more appropriate term. Effects are same.</bl=
ockquote>
<pre>Indeed. I support MACHINE_FEATURE usage here.
</pre>
</blockquote>
<p>I agree that the term MACHINE_FEATURES is better. However since MACHINE_=
FEATURES isn't included in the OVERRIDES variable I will not be able to use=
 the task pre/appends that was the reason I used MACHINEOVERRIDES in the fi=
rst place. The reason I want to use overrides in this case is since I think=
 it makes the code easier to read and understand for the user (in this part=
icular case at least). I can of course change to just using variables (like=
 in many other optional features in meta-raspberrypi) or change to MACHINE_=
FEATURES. But I'm not sure how I can solve for example the below part in a =
effective and nice way:</p>
<p>xserver-xf86-config_0.1.bbappend</p>
<p>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"<br /><br />SRC_URI_appe=
nd_rpi =3D " file://xorg.conf.d/10-evdev.conf "<br />SRC_URI_append_pitft =
=3D " file://xorg.conf.d/99-pitft.conf "&nbsp;&nbsp; &lt;---------------- M=
y change....<br /><br />do_install_append_rpi () {<br />&nbsp;&nbsp;&nbsp; =
install -d ${D}/${sysconfdir}/X11/xorg.conf.d/<br />&nbsp;&nbsp;&nbsp; inst=
all -m 0644 ${WORKDIR}/xorg.conf.d/* ${D}/${sysconfdir}/X11/xorg.conf.d/<br=
 />}<br /><br />FILES_${PN}_rpi +=3D "${sysconfdir}/X11/xorg.conf ${sysconf=
dir}/X11/xorg.conf.d/*"<br />------------------- end ----------------------=
-</p>
<p>&nbsp;</p>
<p>But if you have any good suggestions about how to solve this, please enl=
ighten me =3D) </p>
<p>BR Petter</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">-- Andrei Gherzan</blockquote>
</body></html>

--=_008ecd1a326f743ae838ce1d5f7aa478--
