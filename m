Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E83FE00BFE; Mon, 24 Aug 2015 23:57:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 478BFE00978
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 23:57:38 -0700 (PDT)
X-Halon-ID: 8e627c8b-4af6-11e5-b20a-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 25 Aug 2015 08:57:31 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 25 Aug 2015 08:57:34 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Alex J Lennon <ajlennon@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <55D1A82F.9020506@gmail.com>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
	<8cc28d589389102b4fccf052fe2389c2@technux.se>
	<55D1A82F.9020506@gmail.com>
Message-ID: <02548fc1921b30fcdb6a0791bd7a6361@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Tue, 25 Aug 2015 06:57:42 -0000
Content-Type: multipart/alternative;
	boundary="=_946a6ace4a3b7c553dce91ec9281cee7"

--=_946a6ace4a3b7c553dce91ec9281cee7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-17 11:23 skrev Alex J Lennon: 

> On 17/08/2015 09:11,
Petter Mabäcker wrote:
> 
>> 2015-08-17 09:57 skrev Andrei Gherzan: 
>>

>>> Hello, On Tuesday, August 11, 2015, Petter Mabäcker
<petter@technux.se <mailto:petter@technux.se>> wrote: 2015-08-11 19:04
skrev Alex J Lennon: Signed-off-by: Alex J Lennon
<ajlennon@dynamicdevices.co.uk> ---
recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++ 1 file changed, 4
insertions(+) diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc index e38d905..8024412
100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,6 +6,10 @@ SECTION =
"kernel" LICENSE = "GPLv2" LIC_FILES_CHKSUM =
"file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7" +SRC_URI += " +
file://build-in-audio.cfg [1] + " This one didn't make it. -- Andrei
Gherzan -- -- Andrei Gherzan
>> Think you got the wrong receiver =) I
notified Alex about this some days ago, Alex can you send up a v2 for
this?
> 
> The build-in-audio.cfg patch was just for testing of fragment
support.
> It's understood that we're not going to have this build into
the kernel
> by default, although I do still need to find some words to
add to the
> README on audio routing setup and so forth.
> 
> I started
testing a build with master over the weekend and it built OK.
> Just
need to find some time to run up a couple of kernels and will
> resubmit
the v2 patch with Petter's enhanced commit message.
> 
> I don't have an
RPiv1 around at the moment but I will probably double
> check the kernel
does still actually build for RPiv1 machine
> 
> Cheers,
> 
> Alex
> 
>>
BR, Petter

Hi Alex, Any news for the v2 changeset? Would be awesome to
get the 4.x integrated soon. 

BR Petter 

Links:
------
[1]
file://build-in-audio.cfg

--=_946a6ace4a3b7c553dce91ec9281cee7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>&nbsp;</p>
<p>2015-08-17 11:23 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On 17/08/2015 09:11, Petter Mab&auml;cker wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">2015-08-17 09:57 skrev Andrei Gherzan=
:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">Hello, On Tuesday, August 11, 2015, P=
etter Mab&auml;cker &lt;<a href=3D"mailto:petter@technux.se">petter@technux=
=2Ese</a> &lt;mailto:<a href=3D"mailto:petter@technux.se">petter@technux.se=
</a>&gt;&gt; wrote: 2015-08-11 19:04 skrev Alex J Lennon: Signed-off-by: Al=
ex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@d=
ynamicdevices.co.uk</a>&gt; --- recipes-kernel/linux/linux-raspberrypi.inc =
| 4 ++++ 1 file changed, 4 insertions(+) diff --git a/recipes-kernel/linux/=
linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc index e3=
8d905..8024412 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++ =
b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,6 +6,10 @@ SECTION =3D "=
kernel" LICENSE =3D "GPLv2" LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd781=
0fab7487fb0aad327b76f1be7cd7" +SRC_URI +=3D " \ + <a href=3D"file://build-i=
n-audio.cfg">file://build-in-audio.cfg</a> \ + " This one didn't make it. -=
- Andrei Gherzan -- -- Andrei Gherzan</blockquote>
Think you got the wrong receiver =3D) I notified Alex about this some days =
ago, Alex can you send up a v2 for this?</blockquote>
<pre>The build-in-audio.cfg patch was just for testing of fragment support=
=2E
It's understood that we're not going to have this build into the kernel
by default, although I do still need to find some words to add to the
README on audio routing setup and so forth.

I started testing a build with master over the weekend and it built OK.
Just need to find some time to run up a couple of kernels and will
resubmit the v2 patch with Petter's enhanced commit message.

I don't have an RPiv1 around at the moment but I will probably double
check the kernel does still actually build for RPiv1 machine

Cheers,

Alex</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">BR, Petter</blockquote>
</blockquote>
<p>Hi Alex, Any news for the v2 changeset? Would be awesome to get the 4.x =
integrated soon.</p>
<p>BR Petter</p>
</body></html>

--=_946a6ace4a3b7c553dce91ec9281cee7--
