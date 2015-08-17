Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C90EE00AA8; Mon, 17 Aug 2015 01:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-02.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F3A7E00A9C
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 01:11:16 -0700 (PDT)
X-Halon-ID: 861fcea8-44b7-11e5-bc48-005056917f90
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Mon, 17 Aug 2015 10:11:12 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 17 Aug 2015 10:11:13 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>, Alex J Lennon <ajlennon@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
Message-ID: <8cc28d589389102b4fccf052fe2389c2@technux.se>
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
X-List-Received-Date: Mon, 17 Aug 2015 08:11:22 -0000
Content-Type: multipart/alternative;
	boundary="=_eaddfd086f9bcb9b678565d8dc930aa9"

--=_eaddfd086f9bcb9b678565d8dc930aa9
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-17 09:57 skrev Andrei Gherzan: 

> Hello,
> 
> On Tuesday,
August 11, 2015, Petter Mabäcker <petter@technux.se> wrote: 
> 
>>
2015-08-11 19:04 skrev Alex J Lennon: 
>> 
>>> Signed-off-by: Alex J
Lennon <ajlennon@dynamicdevices.co.uk>
>>> ---
>>>
recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
>>> 1 file changed,
4 insertions(+)
>>> 
>>> diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
>>> index e38d905..8024412
100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>> +++
b/recipes-kernel/linux/linux-raspberrypi.inc
>>> @@ -6,6 +6,10 @@
SECTION = "kernel"
>>> LICENSE = "GPLv2"
>>> LIC_FILES_CHKSUM =
"file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>>> 
>>> +SRC_URI
+= " 
>>> + file://build-in-audio.cfg 
>>> + "
> 
> This one didn't make
it. 
> 
> -- 
> Andrei Gherzan 
> 
> -- 
> 
> -- Andrei Gherzan

Think
you got the wrong receiver =) I notified Alex about this some days ago,
Alex can you send up a v2 for this? 

BR, Petter 

--=_eaddfd086f9bcb9b678565d8dc930aa9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-17 09:57 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<p>Hello,<br /><br />On Tuesday, August 11, 2015, Petter Mab&auml;cker &lt;=
<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt; wrote:</p>
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;"><span style=3D"text-decoration: u=
nderline;"></span>
<div style=3D"font-family: Helvetica,Arial,sans-serif;">
<p>2015-08-11 19:04 skrev Alex J Lennon:</p>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">
<pre>Signed-off-by: Alex J Lennon &lt;<a>ajlennon@dynamicdevices.co.uk</a>&=
gt;
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc
index e38d905..8024412 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,6 +6,10 @@ SECTION =3D "kernel"
 LICENSE =3D "GPLv2"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd=
7"
=20
+SRC_URI +=3D " \
+        <a>file://build-in-audio.cfg</a> \
+        "</pre>
</blockquote>
</div>
</blockquote>
<div>&nbsp;</div>
<div>This one didn't make it.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>
<div>--</div>
<div>Andrei Gherzan</div>
</div>
<br /><br />-- <br />
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">
<div>--</div>
Andrei Gherzan</div>
</div>
</div>
</blockquote>
<p>Think you got the wrong receiver =3D) I notified Alex about this some da=
ys ago, Alex can you send up a v2 for this?</p>
<p>&nbsp;</p>
<p>BR, Petter</p>
</body></html>

--=_eaddfd086f9bcb9b678565d8dc930aa9--
