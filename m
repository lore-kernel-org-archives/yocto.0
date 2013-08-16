Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D41EEE002F9
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 16:22:07 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=lek8aZDlJnzC6byqrm7mvHoCvG6JIBDk9wL8bMCcSjuDYsynRcTwrWjyHXII2/JH;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1VATLK-000395-6d
	for yocto@yoctoproject.org; Fri, 16 Aug 2013 19:22:06 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 16 Aug 2013 16:22:00 -0700
Message-ID: <587F23315DEC485E8C9E59B4F24916CC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6a12hKAXVvgYR6Sw6Cal3FMa6weA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688000f4acb42e98cae59bb584488c1f5f0350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: bbappend on top of bbappend
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
X-List-Received-Date: Fri, 16 Aug 2013 23:22:09 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

In meta-oe/recipes-graphics/xinput-calibrator (Danny branch, currently
used by Gumstix), there's a recipe called xinput-calibrator-git.bb, which
installs a script for running a touchscreen calibration app if not already
calibrated.

In
meta-openembedded/meta-systemd/meta-oe/recipes-graphics/xinput-calibrator,
there's a bbappend for this recipe, which declares a local file called
xinput-calibrator.service, which is supposed to run the above script on
startup. It inherits the systemd bbclass, which I assume knows how to
install this service file automagically, since there's no explicit
do_install copying the file anywhere.

The trouble is, on my Gumstix, the service fails because it needs a
DISPLAY environment variable to tell it what display to calibrate. I
figured the simplest thing to do would be to add an Environment=DISPLAY=:0
line to the service unit file.

My shameless hack was to add a ROOTFS_POSTPROCESS_COMMAND that runs sed on
the final copy of this service file in the rootfs, to insert the
Environment= line, and that works. But I'd rather just provide my own
version of the file, and use another .bbappend to prepend its file
location to FILESEXTRAPATHS, overriding the one in the systemd .bbappend
file.

So I tried that, just putting the following two lines into my own
.bbappend:

    FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
    PRINC := "${@int(PRINC) + 1}"

and of course putting the tweaked service file into my files subdirectory.
On starting the build, it almost immediately spat this out:

NOTE:
['/home/pauld/yocto/meta-foo/recipes/xinput-calibrator_git.bbappend',
'/home/pauld/yocto/poky/meta-openembedded/meta-systemd/meta-oe/recipes-gra
phics/xinput-calibrator/xinput-calibrator_git.bbappend'] to
['/home/pauld/yocto/poky/meta-openembedded/meta-systemd/meta-oe/recipes-gr
aphics/xinput-calibrator/xinput-calibrator_git.bbappend']

(That was all on one line, of course.)

The do_rootfs failed, and its log says that xinput-calibrator is an
unknown package, and that it can't satisfy the dependency from
packagegroup-core-x11-base.

I read somewhere that stacked bbappends are handled in the order of layer
priority. Mine is 5, the meta-systemd layer is 7. I don't know which is
"higher", or if one wants a higher or lower priority in order to be the
last one to prepend to the path. But somehow, I think my problem is a
little more fundamental.

Can anyone give me a little guidance here?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


