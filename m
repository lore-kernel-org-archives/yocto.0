Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14BD9E77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:51:00 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.27117.1736272255449430812
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:50:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gJvfQhRn;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6d8ece4937fso104541106d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 09:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736272254; x=1736877054; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F68wHph8pWbgDb0HJY/JNwW9nLTvuBkrpEFKkMANs2w=;
        b=gJvfQhRnC3CWL7ia2ZuYZOyCtt4CbCfaozULiqg1aoISUIo60CV5K1yo5kxf+8KX+U
         DHilAe9btoCXpPQGQ6bLmnR/il+WS3Ofk/sCEEpP4bmSE4iVlaGtSCnfBtmjV0aXkqB4
         AmIn1i1r2uHZVPRlzhXJ8Him41y5x1CeWSpN28PAopmkrOzNHVwg85Fy0GBKS7t9pDgp
         NwrWsXgfvZSuV7rqiV1n5KdeBKr3wdt2B9sZRlqKSEIt703GeT44mXr0v7LsOzZGx/yC
         CY6yyO6J2oRJOyThZLUb0R/EUyv5LuCfFOsv2PO7agwhLLa9IgcK72q0qq/G48W0U8tH
         jKCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272254; x=1736877054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F68wHph8pWbgDb0HJY/JNwW9nLTvuBkrpEFKkMANs2w=;
        b=FaIBVAmEh+hC0xL99xXRABFG10BymnPOIqT9VrH8X0K6Rm4YkFymI/weoMSt91pnUe
         tt7RXTZHmgjD0OVD7R8qX1/JxF8IcWe+LJcUFdZhaZixRj0vKsCPfDVI6E75OpTjSxk7
         9sY5ap44Ot43cBzuZmiM6YFXp3oFrN5gcwyDksnqB0CIWwbbFisqfriRGi/cAumul/Tb
         i7VhrMUSwhebcvsY96rFeVSLYZGL1wzHmTBWld4GqMYvpVGOHKpGeXsMKhUgw8SUpKYV
         x8KIBoUSUvm8SsQ7NnPmZp8OIsy6QxzLwxjCpv0X+270UIUyAL0o8Xu6gAkiVzMwikfK
         7k6w==
X-Gm-Message-State: AOJu0YxX4+mZ7aMACLgki4jtWLmUBIHGOyOa+RADYHYylkSBbo1w5QcO
	jgQY1HDPRMhyujSFBxr/tDWITPDq4yhigvBIE0jciLN6KVdxBH1s6vJnXfMcuT793xtlhGP2rKZ
	8LN2z0woKAwjEepgOFUGUs+OxDbc=
X-Gm-Gg: ASbGnct36uFjTEoUpTwaYRY1ngv8swyP18UaJi36Yja2f6YzMpRaudjKyTkzgEZ+2mR
	HiAY8XdtVd+YVTXVHZs1BSkqqxMpk5rWtrbxy9Gxeg9xC9nqWmFwnL//aalRD0n/aLNJqeGlL
X-Google-Smtp-Source: AGHT+IG9CCp5OSj8Dq+tioL4GVcnYgFB+JxUVZXNQLgmMwMHlrcP8q2d8oK8VR04KvkDysZZgStn6qm4QkgromVCtic=
X-Received: by 2002:a05:6214:2a48:b0:6d8:ab7e:e54f with SMTP id
 6a1803df08f44-6dd2339e122mr1066196586d6.34.1736272254379; Tue, 07 Jan 2025
 09:50:54 -0800 (PST)
MIME-Version: 1.0
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com> <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com> <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com> <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com> <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com> <CANNYZj9EKn69UjqdAEp9U5DbVLQrf0rNdRZd8JbnmSWji6Wixw@mail.gmail.com>
 <TYZPR06MB5178A50C77D06F140BB5C92586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <4224c491-c0a3-40e6-9b0a-805f23aa20fe@gmail.com>
In-Reply-To: <4224c491-c0a3-40e6-9b0a-805f23aa20fe@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 7 Jan 2025 18:50:43 +0100
X-Gm-Features: AbW1kvZ8u0Ypw6Td7c7x2suumPsutt-QGShiEk6KUMlGvh4uKyIQY5TxXaDJg1o
Message-ID: <CANNYZj9jRqHkZfL3Xgqj0xtg+JQwEHy7AM+kAgFA+zO2mShFYw@mail.gmail.com>
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not copying
To: "Kumar, Manu" <kumar.manu@siemens.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:51:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64517

The key error is:
Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03:
(../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for:
/usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so:
cannot open shared object file: No such file or directory

So I'm not sure how changing the installation to /usr/lib is going to
help here. Are these files present in these locations or not? Can you
share log.do_rootfs so we can see what actually gets installed into
the image?

Alex

On Tue, 7 Jan 2025 at 18:44, Gyorgy Sarvari <skandigraun@gmail.com> wrote:
>
> Have you changed RDEPENDS_${PN} to RDEPENDS:${PN} from the earlier
> email? I would have expected it to solve this very error, as it was
> supposed to install the required files exactly in the folder where this
> error is showing...
>
> On 07.01.25 18:38, Kumar, Manu wrote:
> > As I was getting error when we run lighttpd as below so modules in /usr=
/lib will be fine..
> >
> > root@manu:~# systemctl status lighttpd.service
> > x lighttpd.service - Lighttpd Daemon
> >       Loaded: loaded (/lib/systemd/system/lighttpd.service; enabled; ve=
ndor preset: enabled)
> >       Active: failed (Result: exit-code) since Fri 2024-12-27 05:21:39 =
EST; 15s ago
> >      Process: 782 ExecStartPre=3D/usr/sbin/lighttpd -tt -f /etc/lighttp=
d/lighttpd.conf (code=3Dexited, status=3D255/EXCEPTION)
> >
> > Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Scheduled restart jo=
b, restart counter is at 5.
> > Dec 27 05:21:39 manu systemd[1]: Stopped Lighttpd Daemon.
> > Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Start request repeat=
ed too quickly.
> > Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Failed with result '=
exit-code'.
> > Dec 27 05:21:39 manu systemd[1]: Failed to start Lighttpd Daemon.
> > root@manu:~# journalctl -xeu lighttpd.service
> > Dec 27 02:42:19 manu systemd[1]: Starting Lighttpd Daemon...
> > -- Subject: A start job for unit lighttpd.service has begun execution
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- A start job for unit lighttpd.service has begun execution.
> > --
> > -- The job identifier is 109.
> > Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21: (../lighttpd-1=
.4.67/src/plugin.c.202) dlopen() failed for: /usr/lib/lighttpd/mod_redirect=
.so /usr/lib/lighttpd/mod_redirect.so: cannot open shared object file: No s=
uch file or directory
> > Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21: (../lighttpd-1=
.4.67/src/server.c.1285) loading plugins finally failed
> > Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Control process exit=
ed, code=3Dexited, status=3D255/EXCEPTION
> > -- Subject: Unit process exited
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- An ExecStartPre=3D process belonging to unit lighttpd.service has ex=
ited.
> > --
> > -- The process' exit code is 'exited' and its exit status is 255.
> > Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Failed with result '=
exit-code'.
> > -- Subject: Unit failed
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- The unit lighttpd.service has entered the 'failed' state with result=
 'exit-code'.
> > Dec 27 02:42:27 manu systemd[1]: Failed to start Lighttpd Daemon.
> > -- Subject: A start job for unit lighttpd.service has failed
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- A start job for unit lighttpd.service has finished with a failure.
> > --
> > -- The job identifier is 109 and the job result is failed.
> > Dec 27 02:42:31 manu systemd[1]: lighttpd.service: Scheduled restart jo=
b, restart counter is at 1.
> > -- Subject: Automatic restarting of a unit has been scheduled
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- Automatic restarting of the unit lighttpd.service has been scheduled=
, as the result for
> > -- the configured Restart=3D setting for the unit.
> > Dec 27 02:43:03 manu systemd[1]: Stopped Lighttpd Daemon.
> > -- Subject: A stop job for unit lighttpd.service has finished
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- A stop job for unit lighttpd.service has finished.
> > --
> > -- The job identifier is 111 and the job result is done.
> > Dec 27 02:43:03 manu systemd[1]: Starting Lighttpd Daemon...
> > -- Subject: A start job for unit lighttpd.service has begun execution
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- A start job for unit lighttpd.service has begun execution.
> > --
> > -- The job identifier is 111.
> > Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03: (../lighttpd-1=
.4.67/src/plugin.c.202) dlopen() failed for: /usr/lib/lighttpd/mod_redirect=
.so /usr/lib/lighttpd/mod_redirect.so: cannot open shared object file: No s=
uch file or directory
> > Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03: (../lighttpd-1=
.4.67/src/server.c.1285) loading plugins finally failed
> > Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Control process exit=
ed, code=3Dexited, status=3D255/EXCEPTION
> > -- Subject: Unit process exited
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- An ExecStartPre=3D process belonging to unit lighttpd.service has ex=
ited.
> > --
> > -- The process' exit code is 'exited' and its exit status is 255.
> > Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Failed with result '=
exit-code'.
> > -- Subject: Unit failed
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- The unit lighttpd.service has entered the 'failed' state with result=
 'exit-code'.
> > Dec 27 02:43:04 manu systemd[1]: Failed to start Lighttpd Daemon.
> > -- Subject: A start job for unit lighttpd.service has failed
> > -- Defined-By: systemd
> > -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-deve=
l
> > --
> > -- A start job for unit lighttpd.service has finished with a failure.
> > --
> > -- The job identifier is 111 and the job result is failed.
> >
> > Also I am not able to see any binary files in /etc/init.d..
> >
> > If there is any further suggestions please suggest.. for further unders=
tanding..
> >
> > -----Original Message-----
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Tuesday, January 7, 2025 10:56 PM
> > To: yocto@lists.yoctoproject.org; skandigraun@gmail.com
> > Cc: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
> > Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib n=
ot copying
> >
> > I'm not sure it's worth the effort to revert the module installation ba=
ck to how it was. It's better to adapt to the new location where necessary.
> >
> > Why do you want modules in /usr/lib, what breaks when they are in /usr/=
lib/lighttpd?
> >
> > Alex
> >
> > On Tue, 7 Jan 2025 at 18:18, Gyorgy Sarvari via lists.yoctoproject.org =
<skandigraun=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> Beside that change you made, you also need to make sure that lighttpd
> >> installs the files to the location where you expect them to be. Add
> >> something like this in a bbappend (this option comes from the
> >> meson_options.txt file, where the module install location can be speci=
fied):
> >>
> >> EXTRA_OEMESON:append =3D " -Dmoduledir=3Dlib "
> >>
> >>
> >> On 07.01.25 17:37, Kumar, Manu wrote:
> >>> I have tried to change
> >>> "sources/oe-core/meta/recipes-extended/lighttpd/lighttpd_1.4.67" only=
 last 2 lines as below, python populate_packages:prepend () {
> >>>       lighttpd_libdir =3D d.expand('${libdir}')
> >>>       do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$',
> >>> 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends=3D'') }
> >>>
> >>> But I am getting error as below,
> >>>
> >>> NOTE: Executing Tasks
> >>> ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/direc=
tories were installed but not shipped in any package:
> >>>     /usr/lib/lighttpd/mod_alias.so
> >>>     /usr/lib/lighttpd/mod_wstunnel.so
> >>>     /usr/lib/lighttpd/mod_redirect.so
> >>>     /usr/lib/lighttpd/mod_webdav.so
> >>>     /usr/lib/lighttpd/mod_evhost.so
> >>>     /usr/lib/lighttpd/mod_authn_file.so
> >>>     /usr/lib/lighttpd/mod_secdownload.so
> >>>     /usr/lib/lighttpd/mod_staticfile.so
> >>>     /usr/lib/lighttpd/mod_usertrack.so
> >>>     /usr/lib/lighttpd/mod_setenv.so
> >>>     /usr/lib/lighttpd/mod_proxy.so
> >>>     /usr/lib/lighttpd/mod_indexfile.so
> >>>     /usr/lib/lighttpd/mod_auth.so
> >>>     /usr/lib/lighttpd/mod_ajp13.so
> >>>     /usr/lib/lighttpd/mod_deflate.so
> >>>     /usr/lib/lighttpd/mod_simple_vhost.so
> >>>     /usr/lib/lighttpd/mod_scgi.so
> >>>     /usr/lib/lighttpd/mod_openssl.so
> >>>     /usr/lib/lighttpd/mod_vhostdb.so
> >>>     /usr/lib/lighttpd/mod_accesslog.so
> >>>     /usr/lib/lighttpd/mod_fastcgi.so
> >>>     /usr/lib/lighttpd/mod_ssi.so
> >>>     /usr/lib/lighttpd/mod_dirlisting.so
> >>>     /usr/lib/lighttpd/mod_status.so
> >>>     /usr/lib/lighttpd/mod_access.so
> >>>     /usr/lib/lighttpd/mod_expire.so
> >>>     /usr/lib/lighttpd/mod_userdir.so
> >>>     /usr/lib/lighttpd/mod_sockproxy.so
> >>>     /usr/lib/lighttpd/mod_evasive.so
> >>>     /usr/lib/lighttpd/mod_cgi.so
> >>>     /usr/lib/lighttpd/mod_extforward.so
> >>>     /usr/lib/lighttpd/mod_rrdtool.so
> >>>     /usr/lib/lighttpd/mod_uploadprogress.so
> >>>     /usr/lib/lighttpd/mod_rewrite.so
> >>> Please set FILES such that these items are packaged. Alternatively if=
 they are unneeded, avoid installing them or delete them within do_install.
> >>> lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
> >>> ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, fai=
ling task.
> >>>
> >>>
> >>> Can you please help me how to overriding it in a bbappend or similar =
as you mentioned in older thread.. it helps !!!
> >>>
> >>> -----Original Message-----
> >>> From: Gyorgy Sarvari <skandigraun@gmail.com>
> >>> Sent: Tuesday, January 7, 2025 3:54 PM
> >>> To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>;
> >>> yocto@lists.yoctoproject.org
> >>> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in
> >>> /usr/lib not copying
> >>>
> >>> On 07.01.25 11:05, Kumar, Manu wrote:
> >>>> reason behind ask this question is.. in earlier tisdk all the module=
s were there in "/usr/lib" as when we start lightpd service(which was there=
 in (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk =
also if I run "systemctl start lighttpd" looks like it is searching "/usr/l=
ib"
> >>>>
> >>> This change comes from this[1] commit (look at the very bottom of it)=
.
> >>> If it causing problems, you can try overriding it in a bbappend or si=
milar. Though maybe it would be more interesting to look into why your ti-s=
dk is looking for these files at the incorrect place. TI layers are usually=
 reasonably maintained, I'd expect them to follow changes in the oe-core la=
yer...
> >>>
> >>> [1]:
> >>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fg=
i
> >>> t.yoctoproject.org%2Fpoky%2Fcommit%2Fmeta%2Frecipes-extended%2Flight
> >>> tpd%3Fh%3Dkirkstone%26id%3D3755f6c4eb404b6218784ad21c3a56312c425cc2&
> >>> data=3D05%7C02%7Ckumar.manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2=
f
> >>> 40530e%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186755354092
> >>> 81%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwM
> >>> CIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sda
> >>> ta=3Dv%2FUyHY8SqNaHixsAlCLK21phFXZeva6ECGnwtrs4i60%3D&reserved=3D0
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
> >>>> Sent: Tuesday, January 7, 2025 2:37 PM
> >>>> To: Gyorgy Sarvari <skandigraun@gmail.com>;
> >>>> yocto@lists.yoctoproject.org
> >>>> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in
> >>>> /usr/lib not copying
> >>>>
> >>>> Ok , I will try and let you know !!
> >>>>
> >>>> But how can I make all the modules to be present inside "/usr/lib" i=
nstead of "/usr/lib/lighttpd" ?
> >>>>
> >>>> Regards
> >>>> Manu
> >>>>
> >>>>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#64512):
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli=
st
> >> s.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F64512&data=3D05%7C02%7Ckuma=
r.
> >> manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794f
> >> d4addab42e1495d55a%7C1%7C0%7C638718675535434387%7CUnknown%7CTWFpbGZsb3
> >> d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> >> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DKazrtJZyhv9ot5uU8lTEt3d5=
Ij
> >> Q9qqomcN8WxkaRFRw%3D&reserved=3D0 Mute This Topic:
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli=
st
> >> s.yoctoproject.org%2Fmt%2F110454032%2F1686489&data=3D05%7C02%7Ckumar.m=
an
> >> u%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4a
> >> ddab42e1495d55a%7C1%7C0%7C638718675535447010%7CUnknown%7CTWFpbGZsb3d8e
> >> yJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWF
> >> pbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DZeeFGhmZ%2ByaCSv0Gm5QZ2Kw94=
Q6
> >> 4brEb%2F%2BWNKjwKltc%3D&reserved=3D0
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe:
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli=
st
> >> s.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=3D05%7C02%7Ckumar.manu%40s=
ie
> >> mens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4addab42e
> >> 1495d55a%7C1%7C0%7C638718675535460871%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0
> >> eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIl
> >> dUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D2w4dbqZ%2BwFgOWdF6ei7IX%2F1M6FaSZp=
%2
> >> FLWeL19o3NDXo%3D&reserved=3D0 [alex.kanavin@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>

