Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8546E77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:44:49 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web10.26934.1736271888604770306
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:44:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Dvi74aVm;
 spf=pass (domain: gmail.com, ip: 209.85.217.51, mailfrom: skandigraun@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-4afe7429d37so4057190137.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 09:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736271887; x=1736876687; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BaiDYCMIGzjnddfv3jdrnEmrO3GYSOPk/BOvfWP9jwk=;
        b=Dvi74aVmIykyndOGUPK074wuQ9JZuWI7nbs806oSfAzwMUYpVpICZ6f6hSlYYAvM+u
         /VyLWc56YZoFOzHxfYKxcTrYqieHjYOqL1NLX+2EcNb+6ZZJMMAzNbG5ppM2bPps+jXg
         CBfHz71tlRondHi4tHoSKjhqWjQhH6SH8hiz5qVLTvdpmsf6qCDLhcQKkiVK0Vgm5ZCv
         7hkgIPXLYHoBq1UL6IRAoT1IfFFDv8pGo2/+cbWOrdqaYXvQgzOInTbpRF/5k+iqiFZR
         90JGdFsUNgtQo51DuSA5Fw6waBtMTYyJsybsepzfDdUUdbm37PD34VNZOonQlnoIH+rw
         X8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736271887; x=1736876687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BaiDYCMIGzjnddfv3jdrnEmrO3GYSOPk/BOvfWP9jwk=;
        b=WKWeIqVAIx9od5uMQJc1osaVPRA7CEJotUjPQOWaSwgSROM8YqUE1RUp0c3L/XJGmc
         2/EdleV7UmlsXTtwNC8p8PLheSO8Q1ht72ulR1JVRMmCH7dy5s9u4KQE3R5Ro8fuJn7q
         8Vwbw2HyNkQ2BFN264zZaQc+RBKH2dP7HjpwFfhzOZHDTJ3fBcIu1OLZTb4/N/LasT+R
         mhj9LYyLBoIuCIveUqvx6Rxs1bcjTE2Cbk+72DMNwG0nFjC1Z6ctvNCvJnoXhMz/U+BU
         O38RV3SOfKvCpQ9hrAvjQVfUqmIm8Jjp5c8luEGdEWMKazuLYISi6WvZTH3uhOPGO3f0
         n3BA==
X-Forwarded-Encrypted: i=1; AJvYcCX+/9R933SoUJB57AbZhxUvuLVRaGprSBjq14ATyPc/f0KI0bNToN9Q/rfjIswjcjYYxZE9Rg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwfLW2vqR92AqwtQqmZUx+YnH4E/Ehv1Bu4yQJIh1krydWtpU/E
	9nn7D8NyoL95ybVybjjsOb3upkaCewZmq2L7n1vQSXUVeQtUnleT5WffMw==
X-Gm-Gg: ASbGncvQXsmEET19SFZANVA7uMYbEMZn1T88V1t0FMjhd6OzI85sVmX3xlHUAv90vo7
	MDH5AID9PuacKTr8ykcWBGqTjCgy11Eib23pmaG4IobpHWcMZN1fgHghSs8m/qekQJ3/U2CpQhL
	JlQPjrgIqNcFERbX0A92ccPrR3bCidJKtdd3U/NgRcCO4Pzxzd9lTT9RqPSSJzXAwxmZNIrkpfD
	zr1P4JcGanZDHIxQIHoeprkytG8UPtG6DaoCgOqnq2uUKiPOHIVJBp6rd39Qyoz
X-Google-Smtp-Source: AGHT+IGvsYm96AivtJAN7ZgsXyfbQ9+LIVsCJ36S3sU2Ue7G2iqocJq16YklVW/rpJiudpeI6SmO4w==
X-Received: by 2002:a05:6102:f11:b0:4af:fc14:f138 with SMTP id ada2fe7eead31-4b3d0f94834mr32350137.7.1736271887302;
        Tue, 07 Jan 2025 09:44:47 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4b2bf98cde9sm8299806137.5.2025.01.07.09.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 09:44:46 -0800 (PST)
Message-ID: <4224c491-c0a3-40e6-9b0a-805f23aa20fe@gmail.com>
Date: Tue, 7 Jan 2025 18:44:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
To: "Kumar, Manu" <kumar.manu@siemens.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
 <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com>
 <CANNYZj9EKn69UjqdAEp9U5DbVLQrf0rNdRZd8JbnmSWji6Wixw@mail.gmail.com>
 <TYZPR06MB5178A50C77D06F140BB5C92586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <TYZPR06MB5178A50C77D06F140BB5C92586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64515

Have you changed RDEPENDS_${PN} to RDEPENDS:${PN} from the earlier 
email? I would have expected it to solve this very error, as it was 
supposed to install the required files exactly in the folder where this 
error is showing...

On 07.01.25 18:38, Kumar, Manu wrote:
> As I was getting error when we run lighttpd as below so modules in /usr/lib will be fine..
>
> root@manu:~# systemctl status lighttpd.service
> x lighttpd.service - Lighttpd Daemon
>       Loaded: loaded (/lib/systemd/system/lighttpd.service; enabled; vendor preset: enabled)
>       Active: failed (Result: exit-code) since Fri 2024-12-27 05:21:39 EST; 15s ago
>      Process: 782 ExecStartPre=/usr/sbin/lighttpd -tt -f /etc/lighttpd/lighttpd.conf (code=exited, status=255/EXCEPTION)
>
> Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Scheduled restart job, restart counter is at 5.
> Dec 27 05:21:39 manu systemd[1]: Stopped Lighttpd Daemon.
> Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Start request repeated too quickly.
> Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Failed with result 'exit-code'.
> Dec 27 05:21:39 manu systemd[1]: Failed to start Lighttpd Daemon.
> root@manu:~# journalctl -xeu lighttpd.service
> Dec 27 02:42:19 manu systemd[1]: Starting Lighttpd Daemon...
> -- Subject: A start job for unit lighttpd.service has begun execution
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- A start job for unit lighttpd.service has begun execution.
> --
> -- The job identifier is 109.
> Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21: (../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for: /usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so: cannot open shared object file: No such file or directory
> Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21: (../lighttpd-1.4.67/src/server.c.1285) loading plugins finally failed
> Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Control process exited, code=exited, status=255/EXCEPTION
> -- Subject: Unit process exited
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- An ExecStartPre= process belonging to unit lighttpd.service has exited.
> --
> -- The process' exit code is 'exited' and its exit status is 255.
> Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Failed with result 'exit-code'.
> -- Subject: Unit failed
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- The unit lighttpd.service has entered the 'failed' state with result 'exit-code'.
> Dec 27 02:42:27 manu systemd[1]: Failed to start Lighttpd Daemon.
> -- Subject: A start job for unit lighttpd.service has failed
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- A start job for unit lighttpd.service has finished with a failure.
> --
> -- The job identifier is 109 and the job result is failed.
> Dec 27 02:42:31 manu systemd[1]: lighttpd.service: Scheduled restart job, restart counter is at 1.
> -- Subject: Automatic restarting of a unit has been scheduled
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- Automatic restarting of the unit lighttpd.service has been scheduled, as the result for
> -- the configured Restart= setting for the unit.
> Dec 27 02:43:03 manu systemd[1]: Stopped Lighttpd Daemon.
> -- Subject: A stop job for unit lighttpd.service has finished
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- A stop job for unit lighttpd.service has finished.
> --
> -- The job identifier is 111 and the job result is done.
> Dec 27 02:43:03 manu systemd[1]: Starting Lighttpd Daemon...
> -- Subject: A start job for unit lighttpd.service has begun execution
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- A start job for unit lighttpd.service has begun execution.
> --
> -- The job identifier is 111.
> Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03: (../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for: /usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so: cannot open shared object file: No such file or directory
> Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03: (../lighttpd-1.4.67/src/server.c.1285) loading plugins finally failed
> Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Control process exited, code=exited, status=255/EXCEPTION
> -- Subject: Unit process exited
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- An ExecStartPre= process belonging to unit lighttpd.service has exited.
> --
> -- The process' exit code is 'exited' and its exit status is 255.
> Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Failed with result 'exit-code'.
> -- Subject: Unit failed
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- The unit lighttpd.service has entered the 'failed' state with result 'exit-code'.
> Dec 27 02:43:04 manu systemd[1]: Failed to start Lighttpd Daemon.
> -- Subject: A start job for unit lighttpd.service has failed
> -- Defined-By: systemd
> -- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
> --
> -- A start job for unit lighttpd.service has finished with a failure.
> --
> -- The job identifier is 111 and the job result is failed.
>
> Also I am not able to see any binary files in /etc/init.d..
>
> If there is any further suggestions please suggest.. for further understanding..
>
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Tuesday, January 7, 2025 10:56 PM
> To: yocto@lists.yoctoproject.org; skandigraun@gmail.com
> Cc: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not copying
>
> I'm not sure it's worth the effort to revert the module installation back to how it was. It's better to adapt to the new location where necessary.
>
> Why do you want modules in /usr/lib, what breaks when they are in /usr/lib/lighttpd?
>
> Alex
>
> On Tue, 7 Jan 2025 at 18:18, Gyorgy Sarvari via lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org> wrote:
>> Beside that change you made, you also need to make sure that lighttpd
>> installs the files to the location where you expect them to be. Add
>> something like this in a bbappend (this option comes from the
>> meson_options.txt file, where the module install location can be specified):
>>
>> EXTRA_OEMESON:append = " -Dmoduledir=lib "
>>
>>
>> On 07.01.25 17:37, Kumar, Manu wrote:
>>> I have tried to change
>>> "sources/oe-core/meta/recipes-extended/lighttpd/lighttpd_1.4.67" only last 2 lines as below, python populate_packages:prepend () {
>>>       lighttpd_libdir = d.expand('${libdir}')
>>>       do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$',
>>> 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends='') }
>>>
>>> But I am getting error as below,
>>>
>>> NOTE: Executing Tasks
>>> ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/directories were installed but not shipped in any package:
>>>     /usr/lib/lighttpd/mod_alias.so
>>>     /usr/lib/lighttpd/mod_wstunnel.so
>>>     /usr/lib/lighttpd/mod_redirect.so
>>>     /usr/lib/lighttpd/mod_webdav.so
>>>     /usr/lib/lighttpd/mod_evhost.so
>>>     /usr/lib/lighttpd/mod_authn_file.so
>>>     /usr/lib/lighttpd/mod_secdownload.so
>>>     /usr/lib/lighttpd/mod_staticfile.so
>>>     /usr/lib/lighttpd/mod_usertrack.so
>>>     /usr/lib/lighttpd/mod_setenv.so
>>>     /usr/lib/lighttpd/mod_proxy.so
>>>     /usr/lib/lighttpd/mod_indexfile.so
>>>     /usr/lib/lighttpd/mod_auth.so
>>>     /usr/lib/lighttpd/mod_ajp13.so
>>>     /usr/lib/lighttpd/mod_deflate.so
>>>     /usr/lib/lighttpd/mod_simple_vhost.so
>>>     /usr/lib/lighttpd/mod_scgi.so
>>>     /usr/lib/lighttpd/mod_openssl.so
>>>     /usr/lib/lighttpd/mod_vhostdb.so
>>>     /usr/lib/lighttpd/mod_accesslog.so
>>>     /usr/lib/lighttpd/mod_fastcgi.so
>>>     /usr/lib/lighttpd/mod_ssi.so
>>>     /usr/lib/lighttpd/mod_dirlisting.so
>>>     /usr/lib/lighttpd/mod_status.so
>>>     /usr/lib/lighttpd/mod_access.so
>>>     /usr/lib/lighttpd/mod_expire.so
>>>     /usr/lib/lighttpd/mod_userdir.so
>>>     /usr/lib/lighttpd/mod_sockproxy.so
>>>     /usr/lib/lighttpd/mod_evasive.so
>>>     /usr/lib/lighttpd/mod_cgi.so
>>>     /usr/lib/lighttpd/mod_extforward.so
>>>     /usr/lib/lighttpd/mod_rrdtool.so
>>>     /usr/lib/lighttpd/mod_uploadprogress.so
>>>     /usr/lib/lighttpd/mod_rewrite.so
>>> Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
>>> lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
>>> ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, failing task.
>>>
>>>
>>> Can you please help me how to overriding it in a bbappend or similar as you mentioned in older thread.. it helps !!!
>>>
>>> -----Original Message-----
>>> From: Gyorgy Sarvari <skandigraun@gmail.com>
>>> Sent: Tuesday, January 7, 2025 3:54 PM
>>> To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>;
>>> yocto@lists.yoctoproject.org
>>> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in
>>> /usr/lib not copying
>>>
>>> On 07.01.25 11:05, Kumar, Manu wrote:
>>>> reason behind ask this question is.. in earlier tisdk all the modules were there in "/usr/lib" as when we start lightpd service(which was there in (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk also if I run "systemctl start lighttpd" looks like it is searching "/usr/lib"
>>>>
>>> This change comes from this[1] commit (look at the very bottom of it).
>>> If it causing problems, you can try overriding it in a bbappend or similar. Though maybe it would be more interesting to look into why your ti-sdk is looking for these files at the incorrect place. TI layers are usually reasonably maintained, I'd expect them to follow changes in the oe-core layer...
>>>
>>> [1]:
>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgi
>>> t.yoctoproject.org%2Fpoky%2Fcommit%2Fmeta%2Frecipes-extended%2Flight
>>> tpd%3Fh%3Dkirkstone%26id%3D3755f6c4eb404b6218784ad21c3a56312c425cc2&
>>> data=05%7C02%7Ckumar.manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f
>>> 40530e%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186755354092
>>> 81%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwM
>>> CIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sda
>>> ta=v%2FUyHY8SqNaHixsAlCLK21phFXZeva6ECGnwtrs4i60%3D&reserved=0
>>>
>>>
>>>> -----Original Message-----
>>>> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
>>>> Sent: Tuesday, January 7, 2025 2:37 PM
>>>> To: Gyorgy Sarvari <skandigraun@gmail.com>;
>>>> yocto@lists.yoctoproject.org
>>>> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in
>>>> /usr/lib not copying
>>>>
>>>> Ok , I will try and let you know !!
>>>>
>>>> But how can I make all the modules to be present inside "/usr/lib" instead of "/usr/lib/lighttpd" ?
>>>>
>>>> Regards
>>>> Manu
>>>>
>>>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64512):
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
>> s.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F64512&data=05%7C02%7Ckumar.
>> manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794f
>> d4addab42e1495d55a%7C1%7C0%7C638718675535434387%7CUnknown%7CTWFpbGZsb3
>> d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
>> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=KazrtJZyhv9ot5uU8lTEt3d5Ij
>> Q9qqomcN8WxkaRFRw%3D&reserved=0 Mute This Topic:
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
>> s.yoctoproject.org%2Fmt%2F110454032%2F1686489&data=05%7C02%7Ckumar.man
>> u%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4a
>> ddab42e1495d55a%7C1%7C0%7C638718675535447010%7CUnknown%7CTWFpbGZsb3d8e
>> yJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWF
>> pbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=ZeeFGhmZ%2ByaCSv0Gm5QZ2Kw94Q6
>> 4brEb%2F%2BWNKjwKltc%3D&reserved=0
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe:
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
>> s.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=05%7C02%7Ckumar.manu%40sie
>> mens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4addab42e
>> 1495d55a%7C1%7C0%7C638718675535460871%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0
>> eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIl
>> dUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=2w4dbqZ%2BwFgOWdF6ei7IX%2F1M6FaSZp%2
>> FLWeL19o3NDXo%3D&reserved=0 [alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

