Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B902EE00810; Wed, 11 Mar 2015 12:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
Received: from bin-vsp-out-01.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC293E0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 12:07:01 -0700 (PDT)
X-Halon-ID: cb7476a3-c821-11e4-8274-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed, 11 Mar 2015 20:07:00 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 11 Mar 2015 20:06:57 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CALbNGRQ8c0z1yjNtLoULj0fH=cDKZHEQHQkDVbjGzrJ4gW5B4Q@mail.gmail.com>
References: <cover.1424450237.git.petter@technux.se>
	<20150301001450.GC22308@gmail.com>
	<CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
	<54FE098E.5020701@mlbassoc.com>
	<CALbNGRQ32k1jxRuNNOYUP+Aj-syQHyYoO81hMaL7dHzE1MgcfQ@mail.gmail.com>
	<54FE0E5A.9040400@mlbassoc.com>
	<CALbNGRRjEJ+ini-vNningcS1BAXKVvmWKKhwSbWRyUC2_zbj=A@mail.gmail.com>
	<630ff0d7c9593b5d339fd652eeb887ab@technux.se>
	<CALbNGRQ8c0z1yjNtLoULj0fH=cDKZHEQHQkDVbjGzrJ4gW5B4Q@mail.gmail.com>
Message-ID: <7d944064e96c23f07c26ba45c8e04664@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Wed, 11 Mar 2015 19:07:04 -0000
Content-Type: multipart/alternative;
	boundary="=_2e1735bb1eb0d6be942883043453d4fb"

--=_2e1735bb1eb0d6be942883043453d4fb
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-03-11 10:39 skrev Andreas Müller: 

> On Wed, Mar 11, 2015 at
7:53 AM, Petter Mabäcker <petter@technux.se> wrote:
> 
>> I have created
a new ticket for the raspberrypi2 problem:
http://redmine.gherzan.com/issues/52 [1] For the raspberrypi problem I
cannot reproduce this problem. For me it looks good using below
revisions for poky and meta-raspberrypi: meta-raspberrypi: 57c8e6b
rpi-base.inc: Include the RPI2 DTB poky: 0aff275 layer.conf: bump
version as error-report interface changed Andreas: Can you please
specify revisions you are using for poky and meta-raspberrypi? Would be
great if you also can mail me log.do_fetch and log.do_patch (if such
exists I understand it as it bails at do_fetch form your mail..) found
in:
> 
> Don't have logs here but 10-evdev.conf was not found. I
checked: By
> increasing layer priority the fitting path to
meta-raspberrypi was
> missing.
> 
> I am using
angstrom/oe-core/meta-oe++/meta-qt5 and several bsp layers
> (e.g
meta-ti/meta-gumstix-community/meta-fsl-arm/meta-raspberrypi/meta-beagleboard-common..)
>
- can give further details later (have them at home).
> 
> What I don't
understand so far: Why is this patch necessary and what
> was intended
to fix?
> 
> Andreas

Ok, interesting. That explains why I cannot
reproduce the problem. The reason for the changeset is to ensure that we
have a higher prio in meta-raspberrypi then in all its depended layers
(currently meta-oe and meta-multimedia) since we always want to override
with meta-raspberrypi specific stuffs in this case. So it doesn't solve
a specific problem, but it prevent us for getting problems like the one
you obviously has seen in your configuration due to this change. 

It
might (at least currently) be OK to set layer prio = 7 in
meta-raspberrypi, 9 was just to have some marginal. But it's not sure
that "7" is enough without any modifications in some of the layers you
are using. Can you give me the output of below command from your project
(it will help me to understand where the problem really lies)? 

$
bitbake-layers show-layers 

Cheers, Petter 

Links:
------
[1]
http://redmine.gherzan.com/issues/52

--=_2e1735bb1eb0d6be942883043453d4fb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-03-11 10:39 skrev Andreas M&uuml;ller:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Wed, Mar 11, 2015 at 7:53 AM, Petter Mab&auml;cker &lt;<a href=3D"m=
ailto:petter@technux.se">petter@technux.se</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">I have created a new ticket for the r=
aspberrypi2 problem: <a href=3D"http://redmine.gherzan.com/issues/52">http:=
//redmine.gherzan.com/issues/52</a> For the raspberrypi problem I cannot re=
produce this problem. For me it looks good using below revisions for poky a=
nd meta-raspberrypi: meta-raspberrypi: 57c8e6b rpi-base.inc: Include the RP=
I2 DTB poky: 0aff275 layer.conf: bump version as error-report interface cha=
nged Andreas: Can you please specify revisions you are using for poky and m=
eta-raspberrypi? Would be great if you also can mail me log.do_fetch and lo=
g.do_patch (if such exists I understand it as it bails at do_fetch form you=
r mail..) found in:</blockquote>
<pre>Don't have logs here but 10-evdev.conf was not found. I checked: By
increasing layer priority the fitting path to meta-raspberrypi was
missing.

I am using angstrom/oe-core/meta-oe++/meta-qt5 and several bsp layers
(e.g meta-ti/meta-gumstix-community/meta-fsl-arm/meta-raspberrypi/meta-beag=
leboard-common..)
- can give further details later (have them at home).

What I don't understand so far: Why is this patch necessary and what
was intended to fix?

Andreas
</pre>
</blockquote>
<p>Ok, interesting. That explains why I cannot reproduce the problem. The r=
eason for the changeset is to ensure that we have a higher prio in meta-ras=
pberrypi then in all its depended layers (currently meta-oe and meta-multim=
edia) since we always want to override with meta-raspberrypi specific stuff=
s in this case. So it doesn't solve a specific problem, but it prevent us f=
or getting problems like the one you obviously has seen in your configurati=
on due to this change.</p>
<p><br />It might (at least currently) be OK to set layer prio =3D 7 in met=
a-raspberrypi, 9 was just to have some marginal. But it's not sure that "7"=
 is enough without any modifications in some of the layers you are using. C=
an you give me the output of below command from your project (it will help =
me to understand where the problem really lies)?</p>
<p>$ bitbake-layers show-layers</p>
<p>&nbsp;</p>
<p>Cheers, Petter</p>
</body></html>

--=_2e1735bb1eb0d6be942883043453d4fb--
