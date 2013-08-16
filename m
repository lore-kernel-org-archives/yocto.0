Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34792E002F9
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 15:00:26 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id c13so1700088vea.38
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 15:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=WksP1M3J+Z7No2IhItAj/LHnC3h0DyrjvbsYdqzVV3I=;
	b=M+ZJf+D6/J9iunzr5+4VK2V6ZYPmoKloAUchDHQA+SVx3aABTLLfJP3/36QqJj1EN9
	45pNxcM/Qrvp/x7Ta15nrodhlbP0vPuCg7alr7QUwc8TR5pr4xPp8nBQwyrjcsCYZHha
	O+IPdl0UAYJvw8FsNPC8OWiR8mpOvgRMz/YED1rtIiB1X/JjdU7Czohv4U7qJJVNxiu5
	ul79uS2PKckwg924XC31bd1uBn3fcaONfxNbH/4GcYyn7emAr2mAW2a5tZNV038ug4zP
	lYUpLALuw5GlXbZ8V9gdJgxKfAn4ueegWsTta3F7dbymKse8/z9/KdVirkQkoVCtewsa
	VSWA==
X-Received: by 10.58.198.13 with SMTP id iy13mr3108180vec.11.1376690425721;
	Fri, 16 Aug 2013 15:00:25 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 16 Aug 2013 14:59:44 -0700 (PDT)
In-Reply-To: <4F1B91CF7B31604FABE8442530201B7803E4FC@ALPURAPA22.e2k.ad.ge.com>
References: <4F1B91CF7B31604FABE8442530201B7803E4FC@ALPURAPA22.e2k.ad.ge.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 16 Aug 2013 22:59:44 +0100
X-Google-Sender-Auth: SP17T5x9ClNko7pzESgqY-ze-mc
Message-ID: <CANyK_8euPuyothdbHG-sgNNZXhko5=zP7W_cd1HAnPCSmXjKcQ@mail.gmail.com>
To: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Full Screen Image Display Program
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
X-List-Received-Date: Fri, 16 Aug 2013 22:00:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 16 August 2013 15:48, Wenholz, Brian (GE Healthcare)
<Brian.Wenholz@med.ge.com> wrote:
> Does anyone have, or can point me to, a good recipe for qiv that will work
> with Yocto 1.3?
>

It isn't found on layers.openembedded.org so it's probably not in any
of the major layers. It should be too complicated a program to write a
recipe for though. I tend to look to Arch Linux for inspiration and to
see if any extra patches are needed:
https://projects.archlinux.org/svntogit/community.git/tree/trunk/PKGBUILD?h=packages/qiv.
The syntax is different but you can see their dependencies, the lack
of any custom patches and the fact that you just need to ensure that
'make' is called then copy the resulting binary and man page.

Have you written your own recipes before?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

