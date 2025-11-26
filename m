Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A10FD11188
	for <webhook@archiver.kernel.org>; Wed, 26 Nov 2025 16:53:27 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18278.1764176006241219910
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Nov 2025 08:53:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lFycqgaH;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8804f1bd6a7so63518846d6.2
        for <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 08:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764176005; x=1764780805; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HIb3hqPVFGi6aUn+mP8FVHVffN/T1TPigskv7UKsY4I=;
        b=lFycqgaHioQd6n77cQGf2pry8ta7Etg3lczVKn5Fq7V4cXuOIUnhyjWLqhf0XvJYYa
         HB2hpFQQzA6nYHgXC5McfYNGLiyxxXZKtcWWIVN6/6kjZU9AqvGNywwv1JW49svrZDuu
         sfOdkOlzjkQnhU/ZPsgdVRFVqws2FXHFfHkdGl69EhOh1TyBwUaoQ7MyjS6NvI/qOGPa
         fKb0pNxzdSI0P67hDiLlogoD1mR6ki7oAuHR4jDnP/TpPv1XR3u9/ioS/f/kVYDRUVsk
         vsixFmw00l0g4Bk3Xs1cvc778Kg7xNMN9J+NybJvtm5+pot2lJUctLwwxbsNlnYfWUXF
         bR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764176005; x=1764780805;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HIb3hqPVFGi6aUn+mP8FVHVffN/T1TPigskv7UKsY4I=;
        b=iD0kYSzlWF6YYHnHIcGS6A3B0kmhA1CvtzfKoSEVTaGbfS9j/qsu2gCwnj7whchlFz
         CNrkPqcaNjV9y0+B86ZixihcfaHEMnC14qUgodXH9FT5rZfhAybNWsib6WNA0YuqNKBE
         Gnl/3KwYLIuZSW2mTH++BzoNYkPKighyuFBumlDldIg2zF40/Z2y+Txp5fz2jE9twG42
         4cAciVruU4aSDT/CVyayFRhVLTFHBxCg21dEDhKOPMlnXkkrG6W+EeM/aKaeqjEOSmrO
         mOOTE3b0/PIZHGvcIe/26jB2vL51UO+9NDEoRpElm+HVECbH+TPYHodKL7yqWvxS0YLC
         R7tg==
X-Gm-Message-State: AOJu0YzkKK1r7W5XUy8e97ijPovJoKbMOqMsOaTOLitaO8chLycFPDLW
	3r/pn9L93xCxkCD3WYtKD02RGIilIege03HbN8QDi8lk2iSSuKKDn1eqp2NjgvTfmONgn1NHSs7
	+Z+guOM5qfRbFIOik0MFzbcUfbxDgWik=
X-Gm-Gg: ASbGnctcObmhawWUGSlCHMgoP1wq+Sx0op4GhQkwFf9ZpJIzsNxNdeyAi0OJOQk/AxN
	5wJ7SqyM0iJFEHkucG9X6xHFEM8jUn92cyi9FomdCmMR1jB0PmyHRi2b/c7uURiq6f2w01d0V6d
	do3YfY6bo7w4x+EGD0Pviyhb93XJJsb2+SuyiFm5EVB6riQ2GljDUw94hId6AezuEu8smP+qjxj
	udZXczWcJyhwJR8Rb0EhtL/EC2XnDL2g2YpSUsbR7VxzhWbnNh6M/M81iCbHLGa1DKCF/OtqJFL
	fllSO8ZxJnoXkx+8w6fbr3cqFcUFwMlh4Q==
X-Google-Smtp-Source: AGHT+IGvtKflfBzz9XoUk41uQ/m7zO2gBScO8xdQwLdsFa1+Zhd03oObmcQqUk3L7mcfsMzvNMXa/HmYnyCfvYNQkPo=
X-Received: by 2002:a05:6214:5090:b0:880:56f6:92ae with SMTP id
 6a1803df08f44-8863b04bd3bmr110260816d6.57.1764176005231; Wed, 26 Nov 2025
 08:53:25 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
 <187B446507D0D6B0.100836@lists.yoctoproject.org> <CANNYZj_QRWSTZMne1B0PO8rdo19Ltb=QqQGVmSRk7ZpnaY2MAQ@mail.gmail.com>
 <7cefc9025cec54cc835cd3b065aa653f95a38634.camel@linuxfoundation.org>
In-Reply-To: <7cefc9025cec54cc835cd3b065aa653f95a38634.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Nov 2025 17:53:13 +0100
X-Gm-Features: AWmQ_bmEIwE5jgsk8K5K3wSzbD175cj9epx_WsPnmiruF22yUufYSYuRA0-4Kfc
Message-ID: <CANNYZj8bbNnMYWsJb0oz0a3F_gr=zTYkbj8YLKoRYGdF+XbmBQ@mail.gmail.com>
Subject: Re: sharing sstate in bitbake-setup
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 16:53:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66070

On Wed, 26 Nov 2025 at 17:41, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
linked into every build.
> >
> > I quickly hacked bitbake's cooker.py to try this out:
> >
> > -                dbfile = (self.data.getVar("PERSISTENT_DIR") or
> > self.data.getVar("CACHE")) + "/hashserv.db"
> > +                dbfile = "/home/alex" + "/hashserv.db"
> >
> >
> > And then made two build directories with shared SSTATE_DIR.
> >
> > TL;DR: everything ran smoothly and as expected.
> >
> > I ran overlapping builds, added no-ops to gnu-config recipe to 'force'
> > hash equivalency, and there were no errors or crashes, and sstate was
> > reused as expected.
> >
> > So I think we should do it like this, subject to 'shared-sstate'
> > setting in bitbake-setup, on by default.
>
> PERSISTENT_DIR is *not* designed to be shared between builds. it might
> happen to work but is a really bad idea. Personally, I think those
> cache directory variables and cache layout need redesigning so we
> should probably take the opportunity to do that.

I am not sharing PERSISTENT_DIR. Only the hash equivalency database in
hashserv.db, which I believe is fine because sqlite has locking
mechanisms and is explicitly designed for it.

Alex

