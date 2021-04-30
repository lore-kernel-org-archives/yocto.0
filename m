Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.9417.1619777711784508307
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 03:15:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=wG65hUVe;
 spf=pass (domain: burtonini.com, ip: 209.85.221.44, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f44.google.com with SMTP id n2so16765285wrm.0
        for <yocto@lists.yoctoproject.org>; Fri, 30 Apr 2021 03:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T0IwhDX4oGxZXuQw5mlR0sVe9PpVaLSivg+/vJSbpjk=;
        b=wG65hUVe4G+/x8x1/LZskf0IBcP9IGxz5it6dngOX81F9QeFYGJMtxQCdc80U+8uOu
         iQO/ZBM4n3eHYyPCPDW1s9G1I6oGno2TBSHtpFToZrp+YZSI64VC25YmpBEIWciSsh8/
         BXANTpwUTAZpU68fbwFtP7ex/f7+FMVFW+PxsONABz5QoHU99AOZOle7FbgdmYWJRXwL
         zCQSrqto0OE3YDA0uPVvDz3EqrHDmyMKBf9Wpkmz0/ql/gZab9dTNCGZg0/mYZmkXNFA
         KxQwMzKc2AICmDrbClWwTWn9iBJ/rVTGC2ba96TsHkH9nNLfmP+sDz0Kj3QHRVxHnQTi
         mFiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T0IwhDX4oGxZXuQw5mlR0sVe9PpVaLSivg+/vJSbpjk=;
        b=C30RB7kBDk2LHZIqIUq/MoILvJnRCtWI3Pd9w37AYxJvEKo5caJbHkxHU3HTJhIgxn
         WXWXhqqmD95xTdm59CCEkHsDQwpKTabQyOHXV4URz4BfH4WyvzFqWTCts8ngxc4vqzGZ
         6Vg4ipfTusNqhQCYeq7b5fFPotNdStjtC+TGUxfL3aYvfOCzmfNfC+xo1VCPzjYE0hRK
         6HdM3AiKnVn0qHMjMXlIlbWEru85PnOGz+N2VKNnAqA8j31E8luz5o2Z3hBX27dLX+OJ
         3p3APSK910Sx+LqMSTUwGFtiqb+6yAGbKfEalhWSR3n4sl4pTL1Z10cMuQpwHz/5Fae1
         RDXg==
X-Gm-Message-State: AOAM5334Xmhev3r/jCsTDyas24c2NEom9ORY0h44SJNFpZx5fzTOsrRr
	vxNL8Ijia7RogCQWmR04vYCndcndvWD7AB8tsnzPPg==
X-Google-Smtp-Source: ABdhPJw0kM/rnEtBomXe9YlKNV1LODpS1RPJWLiVNXEGHtZkWEzpTHqlRZtGByU3XTJ8IbTvsnjyidJMUVtLP/MpjfA=
X-Received: by 2002:a5d:6648:: with SMTP id f8mr6046742wrw.396.1619777710362;
 Fri, 30 Apr 2021 03:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210428150904.958213-1-ross.burton@arm.com> <d194d584-ce2f-9d27-f645-d05eafa378c0@windriver.com>
 <CAAnfSTukcCWtcLktcpXn1kKwZ7ME8LqbANomjeSzm56TL1axCw@mail.gmail.com> <84e9d090-031d-c9f2-b87b-8ced4803293c@gmail.com>
In-Reply-To: <84e9d090-031d-c9f2-b87b-8ced4803293c@gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 30 Apr 2021 11:14:59 +0100
Message-ID: <CAAnfSTubxaYK1CQFM25pt+angD_FSCu3a4dxCAN8jk+_vrzh-Q@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder2 1/2] meta-arm has a hardknott branch now
To: akuster808 <akuster808@gmail.com>
Cc: Randy MacLeod <randy.macleod@windriver.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 29 Apr 2021 at 22:40, akuster808 <akuster808@gmail.com> wrote:
> > When we actually release, yes.
> So do you plan on doing the dot releases too?

The plan is that today-ish we roll the 3.3 release for hardknott and
also tag point releases on the stable branches too.

Ross
