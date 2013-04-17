Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CFCE014DD
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 17:50:33 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=XkGniabwCLXlzkrd7QTORtgvIMPs80IguCn+TMa0meVnDghYN7TawY2xrE4ehkjd;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:X-Mailer:Thread-Index:X-MIMEOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1USGZz-00082k-Um; Tue, 16 Apr 2013 20:50:32 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <8B6CDD4DF052424F91A0C447C50E3614@PAULD>
	<7992156.jO3X0cFusz@helios>
In-Reply-To: <7992156.jO3X0cFusz@helios>
Date: Tue, 16 Apr 2013 17:50:39 -0700
Message-ID: <A15A95348D8546D1BAD5997203ECF01D@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac45s+aJjagHEDNTS3SPdNMicZv4hQBSLReQ
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688d8564e253640715da990496f211fcc49350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Why isn't USB MIDI working?
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
X-List-Received-Date: Wed, 17 Apr 2013 00:50:33 -0000
X-Groupsio-MsgNum: 13205
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0185_01CE3ACA.E8DD5FF0"

------=_NextPart_000_0185_01CE3ACA.E8DD5FF0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton
> 
> On Sunday 14 April 2013 15:49:12 Paul D. DeRocco wrote:
> > I've built core-image-base-cedartrail-nopvr, which includes 
> > ALSA. /dev/snd
> > properly contains the devices for my mobo, and 
> > /proc/asound/devices lists
> > them as well. If I plug in a USB MIDI device (a USB to MIDI 
> > converter), I
> > see the USB connect message on the console, but no device 
> > is added to
> > /dev/snd or /proc/asound/devices. Anyone have any idea why? 
> > I've tried an
> > eMu XMidi1x1, and a cheap generic converter. Both work fine 
> > under Ubuntu, on
> > the same mobo.
> 
> Typically two things are required for a USB device to work - 
> a driver, and an 
> appropriate udev rule to associate the driver with the 
> device. Do you have USB 
> midi support enabled in the kernel? If so, is there a udev 
> rule for USB midi 
> devices? If there isn't, presumably you could just use Ubuntu 
> as a reference 
> for that.

I apologize for my ignorance, but I really don't know how to go about
figuring this out.

There is a file called /lib/udev/rules.d/60-persistent-alsa.rules, which is
full of cryptic stuff that I don't understand, including two lines referring
to usb, but nothing specifically about MIDI. I compared it to the file on
Ubuntu, and it's similar but not the same, but I have no idea whether any of
the differences are meaningful. They're both small, so I've attached them.

Also, I see that while the alsa-utils recipe is being built, the resulting
image only seems to have a couple of alsa utilities: alsamixer and alsactl,
even though there are a whole lot more listed in
meta/recipes-multimedia/alsa/alsa-utils_1.0.25.bb.

And when I run the system, there is no /dev/snd/seq device, which is the
main interface to all MIDI devices. I don't plan on using that, preferring
to use the /dev/snd/midi* OSS emulation device which is supposed to appear
when an individual device is connected, but that's not happening, either.

How do I find out if USB MIDI support is enabled in the kernel?

This is plain vanilla core-image-base-cedartrail-nopvr, without any
modifications. ALSA is part of it. Isn't it supposed to just work?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 

------=_NextPart_000_0185_01CE3ACA.E8DD5FF0
Content-Type: application/octet-stream;
	name="60-persistent-alsa.rules.Yocto"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="60-persistent-alsa.rules.Yocto"

# do not edit this file, it will be overwritten on update

ACTION=3D=3D"remove", GOTO=3D"persistent_alsa_end"
SUBSYSTEM!=3D"sound", GOTO=3D"persistent_alsa_end"
KERNEL!=3D"controlC[0-9]*", GOTO=3D"persistent_alsa_end"

SUBSYSTEMS=3D=3D"usb", ENV{ID_MODEL}=3D=3D"", IMPORT{program}=3D"usb_id --e=
xport %p"
SUBSYSTEMS=3D=3D"usb", ENV{ID_IFACE}=3D"$attr{bInterfaceNumber}"
ENV{ID_SERIAL}=3D=3D"?*", ENV{ID_IFACE}=3D=3D"?*", SYMLINK+=3D"snd/by-id/$e=
nv{ID_BUS}-$env{ID_SERIAL}-$env{ID_IFACE}"
ENV{ID_SERIAL}=3D=3D"?*", ENV{ID_IFACE}=3D=3D"", SYMLINK+=3D"snd/by-id/$env=
{ID_BUS}-$env{ID_SERIAL}"

ENV{ID_PATH}=3D=3D"", IMPORT{program}=3D"path_id %p"
ENV{ID_PATH}=3D=3D"?*", SYMLINK+=3D"snd/by-path/$env{ID_PATH}"

LABEL=3D"persistent_alsa_end"

------=_NextPart_000_0185_01CE3ACA.E8DD5FF0
Content-Type: application/octet-stream;
	name="60-persistent-alsa.rules.Ubuntu"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="60-persistent-alsa.rules.Ubuntu"

# do not edit this file, it will be overwritten on update

ACTION=3D=3D"remove", GOTO=3D"persistent_alsa_end"
SUBSYSTEM!=3D"sound", GOTO=3D"persistent_alsa_end"
KERNEL!=3D"controlC[0-9]*", GOTO=3D"persistent_alsa_end"

SUBSYSTEMS=3D=3D"usb", ENV{ID_MODEL}=3D=3D"", IMPORT{builtin}=3D"usb_id"
ENV{ID_SERIAL}=3D=3D"?*", ENV{ID_USB_INTERFACE_NUM}=3D=3D"?*", SYMLINK+=3D"=
snd/by-id/$env{ID_BUS}-$env{ID_SERIAL}-$env{ID_USB_INTERFACE_NUM}"
ENV{ID_SERIAL}=3D=3D"?*", ENV{ID_USB_INTERFACE_NUM}=3D=3D"", SYMLINK+=3D"sn=
d/by-id/$env{ID_BUS}-$env{ID_SERIAL}"

IMPORT{builtin}=3D"path_id"
ENV{ID_PATH}=3D=3D"?*", SYMLINK+=3D"snd/by-path/$env{ID_PATH}"

LABEL=3D"persistent_alsa_end"

------=_NextPart_000_0185_01CE3ACA.E8DD5FF0--
