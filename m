Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5065E01519
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 12:00:40 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id f11so929409wgh.27
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 12:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=OG1pAWQk/ECo6ug9UOIa9+jqOVxOSMbXqLNNf/d3n2M=;
	b=gwX0U6/VnBgmAcVcVAtAunREwcQegLA3zJQ/gqLuV1AJLyD49oDGZCFIB4DDQbNOfp
	L2L0cgOglbY+9Z0nQ0ifog3Qj690FiBz+D91/gbwG8rWuR3cEGV2DwYHBcJ0EthwqpDf
	oSVLcnG8H/D9lXboIGo44zX6E5Q8aa/Koy7pHp75QQLwIdKk/eNu75Wwql5iunrMiEXI
	x3SRC71DbJWHzl15NpVZJzWh47qIiXewu9RYXytvdEPC7TM/xypniabumweWYUwxiAnO
	UQFONWrwrK7WSlvWWWYmmMdrIn/62erkMtOBg1RnicOkCAwtMfaqjKXaudatbHie/efW
	qKUA==
MIME-Version: 1.0
X-Received: by 10.180.73.206 with SMTP id n14mr3198720wiv.27.1367521239927;
	Thu, 02 May 2013 12:00:39 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Thu, 2 May 2013 12:00:39 -0700 (PDT)
In-Reply-To: <CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
Date: Thu, 2 May 2013 15:00:39 -0400
Message-ID: <CAHUNapTgAW8JHmP7zx28iMHvvRn4=_SrQ=6mxxCM1DM72vMong@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 19:00:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 11:52 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> Sounds great though it may take a long time to copy files to an SD
> card (I noticed a similar opinion at
> http://www.raspbian.org/RaspbianInstaller). May be quicker to generate
> an image file with the correct size first then dd that to the card.

Actually, I believe the opposite is true: if you format a 4GB card and
then copy just the extracted files over (which might only comprise
300MB), I believe that is much faster than trying to dd a full 4GB
image onto a 4GB card.

