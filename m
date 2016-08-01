Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B670E010A5; Mon,  1 Aug 2016 06:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90A2AE010A1
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 06:06:31 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id j12so170997300ywb.2
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 06:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=kJPA+jmMcu67xt6g09ZMfVyb3sCXirJUj3QXJ333XS8=;
	b=SQ05qWgEAieeixgGBw1o6cx1orjDLnu4LQLESdloaaFXwCrH6aDLNPpZpX5UPYdzvL
	qfkeZ0sYFNiia3yKakXk+c9RY4saRq6Ra5dH3SRkbqqHxpVSCjR6CjSG0zCx5apsNe+Z
	m8LfVosFpxeW66KSfM4jb3a3/ZUFYE9ZtBQLY7XyJjOmglfjtgg+51/BN6TAzLAlUDya
	5vRgH9H7epAuv1lmrVXO/PWcf29IqqxEDRThQes3eC5fGHCTE6KPGxVUY6OT3eY6XGJ2
	d2Uh8V3sJ+WYDW0udoLOcmucsfE7UkVk7buCwdCFchKtmKjud1DgShcVXmwLMOuzfAgh
	ITvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=kJPA+jmMcu67xt6g09ZMfVyb3sCXirJUj3QXJ333XS8=;
	b=a++uTDRpTTCVSuXEPwqIAe3KjZVratWEXo30Hi9rAlUcPM9hP7ij/ur/HgQUO+HSJ7
	8I2I/UyF/fJDeKD4/gRwIRVwUPUNbBi1XgJ4qPR2oAG6l2BfS609VvyBKX5/2/8yKGNQ
	Z8Y5NRvctMs3gqkv6Um1qNSE/b/kGIzECn0IH5u9OMjq1wc7fZj7un90zfv3PaatYLs5
	mJeC/iL2i/lV/z+jf4wiMiMsYPOErtv/mmSRkaGLklGWUEnX40JE0GzFKKa3DC0G594a
	ZVLPShJWQNxIksJaPRFTIBSre0+OhPrig3oXBLNKnHXgA1lOZp2cOzOxRTEv2YkXjEWl
	z9Fw==
X-Gm-Message-State: AEkooustKMsfIHJuBbBrjIjEaUBXNdTU3D0pQjav2rN6gn13Sdd//sfhxrRvKTgFx4jJI+dT1vwdj5OTGV8ejA==
X-Received: by 10.13.229.1 with SMTP id o1mr47599635ywe.95.1470056790333; Mon,
	01 Aug 2016 06:06:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.130.134 with HTTP; Mon, 1 Aug 2016 06:06:29 -0700 (PDT)
In-Reply-To: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
References: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Mon, 1 Aug 2016 09:06:29 -0400
Message-ID: <CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.8.1 - Insert USB VFAT thumb drive results in "Volume was not properly unmounted. Some data may be corrupt. Please run fsck"
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
X-List-Received-Date: Mon, 01 Aug 2016 13:06:32 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 1, 2016 at 8:56 AM, Brian Hutchinson <b.hutchman@gmail.com> wrote:
> If the USB drive is cold plugged (inserted before power on) it mounts
> fine, it is only a hotplug that results in the message "Volume was not
> properly unmounted. Some data may be corrupt. Please run fsck"
>
> The drive is mounted under /run/media/sdb1 but a listing of the
> directory just shows strange characters for the file names.
>
> Installed dosfstools on target and running fsck.vfat doesn't report a
> problem.  Inserting the exact same USB drive in a Ubuntu 14.04 box
> works fine so it isn't the USB drive.
>
> Found this thread talking about the problem I'm seeing (link below)
> and a bug report that sounds similar to what I'm seeing but I never
> really saw what the issue is and it says it's been fixed in Yocto
> 1.8.3 but I don't see a Yocto 1.8.3 release ... only Yocto 1.8.2.
>
> https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9652/
>
> When I run the mount command it says the USB drive is mounted as:
>
> type vfat (rw,relatime,gid=6,fmask=0007,dmask=0007,allow_utime=0020,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
>
> I'm running a 4.4.1 kernel built outside of Yocto on a TI 816x SoC.
>
> Anyone have any information on what the issue may be?  I've played
> around with my kernel .config thinking it was something there but that
> didn't make any difference.  Kinda stumped at the moment.
>
> Regards,
>
> Brian

This is the output of running fsck.vfat in case anyone cares.  It
doesn't report anything about a "dirty bit" being set.  Could it be
this version of dosfsck is too old?

dosfsck 2.11, 12 Mar 2005, FAT32, LFN
Starting check/repair pass.
Starting verification pass.
/dev/sdb1: 284 files, 60465/62894 clusters

