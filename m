Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9211EE00BD6; Wed, 21 Jun 2017 21:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D12C1E00BBD
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 21:23:00 -0700 (PDT)
X-Halon-ID: 7832bcee-5702-11e7-9ab8-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id 7832bcee-5702-11e7-9ab8-005056917a89;
	Thu, 22 Jun 2017 06:22:57 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 22 Jun 2017 06:22:56 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>, Drew moseley <drew.moseley@mender.io>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAHUNapTWt21mhdcVJEUh+8xVZYbSjejnhykD8qszcAoJrM97Rw@mail.gmail.com>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
	<20170619054832.GA7840@linux-uys3>
	<826973B0-DCFF-435C-87F0-44FD8B82817C@mender.io>
	<CAHUNapTWt21mhdcVJEUh+8xVZYbSjejnhykD8qszcAoJrM97Rw@mail.gmail.com>
Message-ID: <c74cfb7b27f71ae5573c5b776fda7c99@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Thu, 22 Jun 2017 04:23:02 -0000
Content-Type: multipart/alternative;
	boundary="=_6d6dfd618ae83de68c00da55ebbe3ac4"

--=_6d6dfd618ae83de68c00da55ebbe3ac4
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2017-06-19 16:40 skrev Trevor Woerner: 

> On Mon, Jun 19, 2017 at
7:22 AM, Drew Moseley <drew.moseley@mender.io> wrote:
> 
>>> On Jun 19,
2017, at 1:48 AM, Trevor Woerner <twoerner@gmail.com> wrote: 
>>> 
>>>>
If you have a serial console connected to +your board, you will see the
progress and a message on the console will indicate when +the flashing
is completed.
>>> hmmm, never saw this. I have a console connected, the
moment the script started, on the console I got: U-Boot SPL 2016.01 (Jun
19 2017 - 00:32:19) DRAM: 512 MiB CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2
Trying to boot from which looks right, the date+time are good.
>> Did
you see the proper serial output after using a smaller image?
> 
> Yes.
With a smaller image (~90MB) the flash update worked. Maybe
> another
improvement for a v2 would be for the script to look at the
> size of
/full/path/to/UBI_IMAGE and issue a warning/error if it's too
> big?
>

> I think the wording of what to expect on the host and over the
serial
> console could use some updating. Not to mention you say: "the
status
> LED on the CHIP board will flash 30 times per second..." which
doesn't
> seem to be the case, it looks more like the LED is toggled
every 2
> seconds (??), in any case, it's a lot slower than 30/sec.

I
also had the same experience as Trevor, that the led seems to flash
every 2 seconds. Also the code indicate that 2 x 1 sec sleep is used in
this area, so please go through the above description when it comes to
led experience during flashing. Another minor comment is that I believe
you should update the UBI_IMAGE example in README to use the "default"
meta-chip hwup image (chip-hwup-image-chip.ubi). 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se
 

--=_6d6dfd618ae83de68c00da55ebbe3ac4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2017-06-19 16:40 skrev Trevor Woerner:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Mon, Jun 19, 2017 at 7:22 AM, Drew Moseley &lt;<a href=3D"mailto:dr=
ew.moseley@mender.io">drew.moseley@mender.io</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Jun 19, 2017, at 1:48 AM, Trevor W=
oerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;=
 wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">If you have a serial console connecte=
d to +your board, you will see the progress and a message on the console wi=
ll indicate when +the flashing is completed.</blockquote>
hmmm, never saw this. I have a console connected, the moment the script sta=
rted, on the console I got: U-Boot SPL 2016.01 (Jun 19 2017 - 00:32:19) DRA=
M: 512 MiB CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2 Trying to boot from which =
looks right, the date+time are good.</blockquote>
Did you see the proper serial output after using a smaller image?</blockquo=
te>
<pre>Yes. With a smaller image (~90MB) the flash update worked. Maybe
another improvement for a v2 would be for the script to look at the
size of /full/path/to/UBI_IMAGE and issue a warning/error if it's too
big?

I think the wording of what to expect on the host and over the serial
console could use some updating. Not to mention you say: "the status
LED on the CHIP board will flash 30 times per second..." which doesn't
seem to be the case, it looks more like the LED is toggled every 2
seconds (??), in any case, it's a lot slower than 30/sec.</pre>
</blockquote>
<p>I also had the same experience as Trevor, that the led seems to flash ev=
ery 2 seconds. Also the code indicate that 2 x 1 sec sleep is used in this =
area, so please go through the above description when it comes to led exper=
ience during flashing. Another minor comment is that I believe you should u=
pdate the UBI_IMAGE example in README to use the "default" meta-chip hwup i=
mage (chip-hwup-image-chip.ubi).</p>
<p>BR Petter</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_6d6dfd618ae83de68c00da55ebbe3ac4--
