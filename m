Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5355E00E34; Wed, 13 Apr 2016 21:57:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F470E00D26
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 21:57:40 -0700 (PDT)
X-Halon-ID: 641f02a0-01fd-11e6-8ffc-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Thu, 14 Apr 2016 06:57:29 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 14 Apr 2016 06:57:34 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Trevor Woerner <twoerner@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <20160413220428.GC27168@linux-yxv0>
References: <1459348549-32007-1-git-send-email-petter@technux.se>
	<1459348549-32007-4-git-send-email-petter@technux.se>
	<20160413220428.GC27168@linux-yxv0>
Message-ID: <17db394963e2c69517409f2de14c9210@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/5] rpi-base.inc: Add overlay for rpi-ft5406
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
X-List-Received-Date: Thu, 14 Apr 2016 04:57:43 -0000
Content-Type: multipart/alternative;
	boundary="=_a7240ad9b2aaad70ab5efe6f294d4a98"

--=_a7240ad9b2aaad70ab5efe6f294d4a98
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-04-14 00:04 skrev Trevor Woerner: 

> On Wed 2016-03-30 @
04:35:47 PM, Petter Mabäcker wrote:
> 
>> rpi-ft5406 is an enabler for
Official Raspberry Pi 7 inch touchscreen support.
> 
> I have an
official raspberry pi 7" touchscreen and it's not obvious to me how
> I
would go about enabling it in my config. If I had one of the others I
would
> simply add:
> 
> MACHINE_FEATURES += "pitft pitft22"
> 
> or
>

> MACHINE_FEATURES += "pitft pitft28r"
> 
> to my conf/local.conf, but
what do I do for the official touchscreen?
> 
> Also, by trial and error
I've discovered that my touchscreen comes up as
> /dev/fb0 and not
/dev/fb1. But the xorg config for touchscreen support assumes
>
/dev/fb1. Am I doing something wrong in my build or can anyone think of
a
> reason why my screen would be /dev/fb0 instead of /dev/fb1?
> 
> By
the way
> 
> MACHINE_FEATURES += "pitft pitft22"
> 
> seems to work for
me if I use /dev/fb0, but I'm not sure if that's a fluke?
> 
> Best
regards,
> Trevor

Hi Trevor, 

Actually it's very simple for the
Official rpi touchscreen. 

1. Ensure that you DON'T have pitft support
enabled when using this touchscreen! (PiTFT uses /dev/fb1, which isn't
the case for the official toucscreen). 

2. Build for example
'core-image-sato' 

3. Add: 

echo "dtoverlay=rpi-ft5406" >>
/path/to/sdcard/boot/config.txt 

...and you are done. 

Like stated in
the commit msg this is just an enabler for being able to configure
rpi-ft5406. When I have time I will send the complete solution for this,
perhaps a good idea is to do like a MACHINE_FEATURES as well, to make it
look similar to the PiTFT's usage? 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se
 

--=_a7240ad9b2aaad70ab5efe6f294d4a98
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-04-14 00:04 skrev Trevor Woerner:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Wed 2016-03-30 @ 04:35:47 PM, Petter Mab&auml;cker wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">rpi-ft5406 is an enabler for Official=
 Raspberry Pi 7 inch touchscreen support.</blockquote>
<pre>I have an official raspberry pi 7" touchscreen and it's not obvious to=
 me how
I would go about enabling it in my config. If I had one of the others I wou=
ld
simply add:

	MACHINE_FEATURES +=3D "pitft pitft22"

or

	MACHINE_FEATURES +=3D "pitft pitft28r"

to my conf/local.conf, but what do I do for the official touchscreen?

Also, by trial and error I've discovered that my touchscreen comes up as
/dev/fb0 and not /dev/fb1. But the xorg config for touchscreen support assu=
mes
/dev/fb1. Am I doing something wrong in my build or can anyone think of a
reason why my screen would be /dev/fb0 instead of /dev/fb1?

By the way

	MACHINE_FEATURES +=3D "pitft pitft22"

seems to work for me if I use /dev/fb0, but I'm not sure if that's a fluke?

Best regards,
	Trevor
</pre>
</blockquote>
<p>&nbsp;</p>
<p>Hi Trevor,</p>
<p>Actually it's very simple for the Official rpi touchscreen.</p>
<p>1. Ensure that you DON'T have pitft support enabled when using this touc=
hscreen! (PiTFT uses /dev/fb1, which isn't the case for the official toucsc=
reen).</p>
<p>2. Build for example 'core-image-sato'</p>
<p>3. Add:</p>
<p>echo "dtoverlay=3Drpi-ft5406" &gt;&gt; /path/to/sdcard/boot/config.txt</=
p>
<p>...and you are done.</p>
<p>&nbsp;</p>
<p>Like stated in the commit msg this is just an enabler for being able to =
configure rpi-ft5406. When I have time I will send the complete solution fo=
r this, perhaps a good idea is to do like a MACHINE_FEATURES as well, to ma=
ke it look similar to the PiTFT's usage?</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_a7240ad9b2aaad70ab5efe6f294d4a98--
