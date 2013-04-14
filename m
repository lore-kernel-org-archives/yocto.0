Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3537EE006C5
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 15:49:09 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=pzpfSdjJHNbKTL2bqjpCzY3u2uWCjCZOYaQobiwxsKlLGiEquYpONgcLJ8gCSHz7;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MIMEOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1URVjQ-0001d9-2r
	for yocto@yoctoproject.org; Sun, 14 Apr 2013 18:49:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sun, 14 Apr 2013 15:49:12 -0700
Message-ID: <8B6CDD4DF052424F91A0C447C50E3614@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac45Ykh/+Ey4R962TvSgQOUuUOStFQ==
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606887309dc80406635be5db97d0d005b7ec7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Why isn't USB MIDI working?
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
X-List-Received-Date: Sun, 14 Apr 2013 22:49:09 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've built core-image-base-cedartrail-nopvr, which includes ALSA. /dev/snd
properly contains the devices for my mobo, and /proc/asound/devices lists
them as well. If I plug in a USB MIDI device (a USB to MIDI converter), I
see the USB connect message on the console, but no device is added to
/dev/snd or /proc/asound/devices. Anyone have any idea why? I've tried an
eMu XMidi1x1, and a cheap generic converter. Both work fine under Ubuntu, on
the same mobo.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


