Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F0ADE013D6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 01:57:24 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id q12so1353607vbe.13
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 01:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=RKEsldvFr+n/8VouFF0T5MyxB/mvj39YJHfIknlAZe0=;
	b=XpZ6c1yyi0Xh/FA/HWdsvBVVxEerz6d8z88OKA0hRwLGNOWAHJ2SvcVT4i/cIGUHH7
	/AWgi6Wq2ognBSO9TQlG6zQPEnoFeA7SZdeCXA1+s3Qsi/JUKwxARctN/lGazaPvPFPc
	0I0yJ1Pk5DcdBmlCnBjCscv1G3EgZLKVAoiiT3HI17Cpbb6nloz6Cy1nBPDFrdwiQsxf
	k9qfMOGxuxw6rXB/4/8ZwaABvFe2S3HByOXizhedQcRb4C6cHIwZwWgnnBaIoPcsXPsb
	FUI8EVG1j2e5KORwzsA6Jy96BCW+cs+dgqIsCH1faQC4WrRAmzPBiBWE13ZMLWLtiSZu
	d1Ng==
X-Received: by 10.220.1.9 with SMTP id 9mr24115710vcd.37.1373619443731; Fri,
	12 Jul 2013 01:57:23 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Fri, 12 Jul 2013 01:56:43 -0700 (PDT)
In-Reply-To: <5CD486E4007E48769ED69BB9205D327F@PAULD>
References: <5CD486E4007E48769ED69BB9205D327F@PAULD>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 12 Jul 2013 09:56:43 +0100
X-Google-Sender-Auth: GaWf9z8Z6KtMYiqWKWLe3syG_Ho
Message-ID: <CANyK_8cCMwSxKmaQvRNmuceOxRwXRun7qaAywaa0sbXQ_g5F3A@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Mount options for removable drives
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
X-List-Received-Date: Fri, 12 Jul 2013 08:57:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 12 July 2013 09:30, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Can someone point me to the configuration for how removable drives are
> mounted? When I plug in a flash drive, it mounts /dev/sdb1 as /media/sdb1,
> but it uses "relatime" and I'd like to use "noatime". I'd also like it to
> mount in "sync" mode, which I would think would be the default for such a
> drive, but I've gotten a corrupted FAT when I've yanked the drive.
>
> This is basically a core-image-base build, modified to use systemd, but I
> don't see any systemd mount unit that handles it, so it must be some other
> part of the system.
>

Look in /etc/udev on the image, this is handled by udev.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

