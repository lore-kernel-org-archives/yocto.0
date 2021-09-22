Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.84.1632332611393053536
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 10:43:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S1jrk2xv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id t8so9392932wri.1
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 10:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=BMVBBowwFw7Bi73Tqv0+4LjVKsUUyHxar29l4Fd/phg=;
        b=S1jrk2xvc8G2aGEJorZwjUlftapmzQspl6t4UG88B7x9OcdgCCmVA86KKqLVlJcdDh
         0rsB17AsjxtP2WAy9kTRd8Zqj6fY4/QTZfsW0CL731yymz7qA3wRzJ/GYE0VfHeB7CNt
         Z8pjgia3bGbOWLnvg713Ml8knHIM6ffF4t6gM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=BMVBBowwFw7Bi73Tqv0+4LjVKsUUyHxar29l4Fd/phg=;
        b=zWdlzQ2tl9veZj8WtWJ9SRVy9GGxxsQnzpi3C3QYnGq4ahIQVrbmobme6SfuSt8dbI
         YGnhT/itn+dxqtfDgZWKvV+mz9hT/L+ZvPiBcmug/wfAT5DC/D1Grq7iIOtjZebVuOrz
         +FicZdjQV55yxd0dgwe3Un3vVqoSmgEdwHvTtXt3s/O4DBALpOYUgX4Z5Cwq9qB75Ob+
         8oO7tOByz6bw7gh2p3mgbT9y9BGLRzAB5emTwxULT5w6mtAt2QX4zoOmb1Gc1BbyBKyP
         hAMXPIWKu8fpZxFz+Buz/SEWM7xwGXiEvADMeKeBa+ANHokCxmCkWptGE7AelmZw9X2b
         A7bg==
X-Gm-Message-State: AOAM5314cEbPIdwI0tg8Jk17CZcn29fc4LrIliMiqT+F2W7Ucwc7Fo48
	l/xaZ+B052fgDAdI1p91/pNq2Q==
X-Google-Smtp-Source: ABdhPJzoTYmjEmqRH+4+kuZjqk3dUw9vKCJQ1aerFQlEvl65ThXwnmu/lpYw12cs+I/SmGvrRyNdAg==
X-Received: by 2002:a05:600c:4642:: with SMTP id n2mr11666923wmo.39.1632332609622;
        Wed, 22 Sep 2021 10:43:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4259:df2c:1481:cafd? ([2001:8b0:aba:5f3c:4259:df2c:1481:cafd])
        by smtp.gmail.com with ESMTPSA id w14sm2814593wro.8.2021.09.22.10.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 10:43:29 -0700 (PDT)
Message-ID: <d5e1168023762863148bd6688a966f4fe5f863f9.camel@linuxfoundation.org>
Subject: Re: [yocto] Permission denied with NFS shared download and sstate-cache
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Wed, 22 Sep 2021 18:43:27 +0100
In-Reply-To: <CAMKF1srakSaPuWdM5So3HkgOsp+rBtbkc+8+ArKS6o2Gvz_Z_g@mail.gmail.com>
References: <3heP.1632329277788400018.EkfO@lists.yoctoproject.org>
	 <CAMKF1srakSaPuWdM5So3HkgOsp+rBtbkc+8+ArKS6o2Gvz_Z_g@mail.gmail.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2021-09-22 at 09:51 -0700, Khem Raj wrote:
> On Wed, Sep 22, 2021 at 9:47 AM Bel Hadj Salem Talel <bhstalel@gmail.com> wrote:
> > 
> > Hi All,
> > 
> > I have a server that's holding downloads and sstate-cache.
> > 
> > I have a docker-compose file with nfs server that exposes the dowloads/sstate-cache volume.
> > 
> > When I mount that in my PC and set the path into DL_DIR and SSTATE_DIR, I get this error :
> > 
> > ---------------
> > ERROR: grub-efi-native-2.04-r0 do_configure: Build of do_configure failed
> > ERROR: grub-efi-native-2.04-r0 do_configure: Traceback (most recent call last):
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", line 644, in exec_task
> >     return _exec_task(fn, task, d, quieterr)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", line 618, in _exec_task
> >     event.fire(TaskSucceeded(task, fn, logfn, localdata), localdata)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", line 215, in fire
> >     fire_class_handlers(event, d)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", line 122, in fire_class_handlers
> >     execute_handler(name, handler, event, d)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", line 94, in execute_handler
> >     ret = handler(event)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/meta/classes/sstate.bbclass", line 1094, in sstate_eventhandler
> >     bb.siggen.dump_this_task(sstatepkg + '_' + taskname + ".tgz" ".siginfo", d)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/siggen.py", line 648, in dump_this_task
> >     bb.parse.siggen.dump_sigtask(fn, task, outfile, "customfile:" + referencestamp)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/meta/lib/oe/sstatesig.py", line 202, in dump_sigtask
> >     super(bb.siggen.SignatureGeneratorBasicHash, self).dump_sigtask(fn, task, stampbase, runtime)
> >   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/siggen.py", line 362, in dump_sigtask
> >     fd, tmpfile = tempfile.mkstemp(dir=os.path.dirname(sigfile), prefix="sigtask.")
> >   File "/usr/lib/python3.8/tempfile.py", line 470, in mkstemp
> >     return _mkstemp_inner(dir, prefix, suffix, flags, output_type)
> >   File "/usr/lib/python3.8/tempfile.py", line 389, in _mkstemp_inner
> >     fd = _os.open(file, flags, 0o600)
> 
> its trying to create the file with 0600 mask. I wonder whats your
> global umask set to. and perhaps the user is not same when bitbake it
> running ?

The file is being created with python's tempfile function which will make it
secure. Secure in this context means 00600...

I suspect you're right that creating a file securely here with this permissions
likely can't work.

Cheers,

Richard

