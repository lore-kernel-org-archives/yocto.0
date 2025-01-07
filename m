Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E94C5E77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:25:49 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.26429.1736270747329371953
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:25:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z0O9DUKk;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6dd1962a75bso117099316d6.3
        for <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 09:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736270746; x=1736875546; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWSt/f5pi+YQ4nt2QmNS0v+eVnpMOCQjwy3+W47T6S0=;
        b=Z0O9DUKktz47tx7bglNsIXnKDxR4tdW5VqT9R/Uq1fwFWo0ZOUwc/+ttSUQlcJPIMf
         O6nBYOeZOjpXkz33GANpIEZF7gRw396H/M2D5dm5crA2WecGIocZlaazXKrVdylj3fLv
         jsxC1L1hK/TmYEDD0PZJdzrLzjrXmDYmAk2etEtSeGzs1C+QL54O9odc1fFewvRCqG5R
         g8n2nibG8y0SmoT4DYW0I+HN7a/dkf9aQTGSzDZolkLtfHarRN42x1vg5VNqjqL8Ba/S
         4ECCnIxzbB7TXtroSFSnjVnPRuDDGRdpp6ni6RlB11MlfLPGLYDsYZMJPmsZ5npp2fLx
         Pp1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736270746; x=1736875546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KWSt/f5pi+YQ4nt2QmNS0v+eVnpMOCQjwy3+W47T6S0=;
        b=TrF2vaghCfycIZJWxBsrMdj2G5zYDYy7GKZUimuoXyV5g6hvAENVcTxOPL84uI/wdR
         1ugQ40iaoMxXIcZMUyOnHBMC2NadPo/h53SElLIXNjNnH0XEyslTvo0uuobAfVYiV41D
         4MYZ3DTQugFcJZKqNj7vzZrbUkeZTauaJVCCnql1d5eepgFEswuzjPMYaYVpBqaBQWww
         GB+3rR4CdgIYh8OeeifQIQ9c3qWTuo8Km0jZSQCRPSYGt1CZOa7ttRCIFAInmZZO/acq
         3XzK/II7W4IXHc6p3tqwhhU5S9ahoaDH/rnZ/hNiYo6zecbNndwE2ih82tclXAc3LxIG
         HdJA==
X-Gm-Message-State: AOJu0YybT5PeuHNQXX68PHYBW9CvIuXsr1ewBSrTrwuZIDFYSJKSs0u2
	90wgdc5pNqkkYly3F+Y63tLZBYdB2td6lfq3uStvm+IPzwg8F0xeYY5wtekl8RiDRzASWisiE6F
	5dCZ1grjBJWyc7/BGsSfybMRa80pWqA==
X-Gm-Gg: ASbGnct5Xz+Bf5uNzwDynnM3RNrMbWxMevC6VnpVqgZ+f+NeYIZmEstbrOBf8RNo+4a
	k9qv70VXs9sty5rbyBPuSPhsohVzkeweiVsZKYjyLKY0Gt0s0wYrLX5ZaqT830wD/sj7FqwWR
X-Google-Smtp-Source: AGHT+IH2mTWVh/5xzqltDBwhcmxYw1BCgxsAzSyCJztSTHuzbuZQGI3sOq/pyHCAT4jXV+/doQvXjcxBKayfkvY39uM=
X-Received: by 2002:ad4:5948:0:b0:6d8:9e64:c9d3 with SMTP id
 6a1803df08f44-6dd23397295mr995252056d6.30.1736270746337; Tue, 07 Jan 2025
 09:25:46 -0800 (PST)
MIME-Version: 1.0
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com> <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com> <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com> <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com> <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com>
In-Reply-To: <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 7 Jan 2025 18:25:35 +0100
X-Gm-Features: AbW1kvZlS6Ia2DrvhTKlFAGWO7pJltqA-A6DWiJIBzVtG8yzvToZ1ygSFmtpo8M
Message-ID: <CANNYZj9EKn69UjqdAEp9U5DbVLQrf0rNdRZd8JbnmSWji6Wixw@mail.gmail.com>
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not copying
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: "Kumar, Manu" <kumar.manu@siemens.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:25:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64513

I'm not sure it's worth the effort to revert the module installation
back to how it was. It's better to adapt to the new location where
necessary.

Why do you want modules in /usr/lib, what breaks when they are in
/usr/lib/lighttpd?

Alex

On Tue, 7 Jan 2025 at 18:18, Gyorgy Sarvari via lists.yoctoproject.org
<skandigraun=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Beside that change you made, you also need to make sure that lighttpd
> installs the files to the location where you expect them to be. Add
> something like this in a bbappend (this option comes from the
> meson_options.txt file, where the module install location can be specifie=
d):
>
> EXTRA_OEMESON:append =3D " -Dmoduledir=3Dlib "
>
>
> On 07.01.25 17:37, Kumar, Manu wrote:
> > I have tried to change "sources/oe-core/meta/recipes-extended/lighttpd/=
lighttpd_1.4.67" only last 2 lines as below,
> > python populate_packages:prepend () {
> >      lighttpd_libdir =3D d.expand('${libdir}')
> >      do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$', 'lighttpd=
-module-%s', 'Lighttpd module for %s', extra_depends=3D'')
> > }
> >
> > But I am getting error as below,
> >
> > NOTE: Executing Tasks
> > ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/directo=
ries were installed but not shipped in any package:
> >    /usr/lib/lighttpd/mod_alias.so
> >    /usr/lib/lighttpd/mod_wstunnel.so
> >    /usr/lib/lighttpd/mod_redirect.so
> >    /usr/lib/lighttpd/mod_webdav.so
> >    /usr/lib/lighttpd/mod_evhost.so
> >    /usr/lib/lighttpd/mod_authn_file.so
> >    /usr/lib/lighttpd/mod_secdownload.so
> >    /usr/lib/lighttpd/mod_staticfile.so
> >    /usr/lib/lighttpd/mod_usertrack.so
> >    /usr/lib/lighttpd/mod_setenv.so
> >    /usr/lib/lighttpd/mod_proxy.so
> >    /usr/lib/lighttpd/mod_indexfile.so
> >    /usr/lib/lighttpd/mod_auth.so
> >    /usr/lib/lighttpd/mod_ajp13.so
> >    /usr/lib/lighttpd/mod_deflate.so
> >    /usr/lib/lighttpd/mod_simple_vhost.so
> >    /usr/lib/lighttpd/mod_scgi.so
> >    /usr/lib/lighttpd/mod_openssl.so
> >    /usr/lib/lighttpd/mod_vhostdb.so
> >    /usr/lib/lighttpd/mod_accesslog.so
> >    /usr/lib/lighttpd/mod_fastcgi.so
> >    /usr/lib/lighttpd/mod_ssi.so
> >    /usr/lib/lighttpd/mod_dirlisting.so
> >    /usr/lib/lighttpd/mod_status.so
> >    /usr/lib/lighttpd/mod_access.so
> >    /usr/lib/lighttpd/mod_expire.so
> >    /usr/lib/lighttpd/mod_userdir.so
> >    /usr/lib/lighttpd/mod_sockproxy.so
> >    /usr/lib/lighttpd/mod_evasive.so
> >    /usr/lib/lighttpd/mod_cgi.so
> >    /usr/lib/lighttpd/mod_extforward.so
> >    /usr/lib/lighttpd/mod_rrdtool.so
> >    /usr/lib/lighttpd/mod_uploadprogress.so
> >    /usr/lib/lighttpd/mod_rewrite.so
> > Please set FILES such that these items are packaged. Alternatively if t=
hey are unneeded, avoid installing them or delete them within do_install.
> > lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
> > ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, faili=
ng task.
> >
> >
> > Can you please help me how to overriding it in a bbappend or similar as=
 you mentioned in older thread.. it helps !!!
> >
> > -----Original Message-----
> > From: Gyorgy Sarvari <skandigraun@gmail.com>
> > Sent: Tuesday, January 7, 2025 3:54 PM
> > To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>; yoct=
o@lists.yoctoproject.org
> > Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib n=
ot copying
> >
> > On 07.01.25 11:05, Kumar, Manu wrote:
> >> reason behind ask this question is.. in earlier tisdk all the modules =
were there in "/usr/lib" as when we start lightpd service(which was there i=
n (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk al=
so if I run "systemctl start lighttpd" looks like it is searching "/usr/lib=
"
> >>
> > This change comes from this[1] commit (look at the very bottom of it).
> > If it causing problems, you can try overriding it in a bbappend or simi=
lar. Though maybe it would be more interesting to look into why your ti-sdk=
 is looking for these files at the incorrect place. TI layers are usually r=
easonably maintained, I'd expect them to follow changes in the oe-core laye=
r...
> >
> > [1]:
> > https://git.yoctoproject.org/poky/commit/meta/recipes-extended/lighttpd=
?h=3Dkirkstone&id=3D3755f6c4eb404b6218784ad21c3a56312c425cc2
> >
> >
> >> -----Original Message-----
> >> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
> >> Sent: Tuesday, January 7, 2025 2:37 PM
> >> To: Gyorgy Sarvari <skandigraun@gmail.com>;
> >> yocto@lists.yoctoproject.org
> >> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib
> >> not copying
> >>
> >> Ok , I will try and let you know !!
> >>
> >> But how can I make all the modules to be present inside "/usr/lib" ins=
tead of "/usr/lib/lighttpd" ?
> >>
> >> Regards
> >> Manu
> >>
> >>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64512): https://lists.yoctoproject.org/g/yocto/messag=
e/64512
> Mute This Topic: https://lists.yoctoproject.org/mt/110454032/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

