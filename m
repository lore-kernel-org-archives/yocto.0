Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web10.4396.1591822456768728960
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 13:54:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VY539l6W;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: chaithubkts@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id k22so2950872qtm.6
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jun 2020 13:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GRAECeUE1enfogd1mnezyWqtdB3pCXGQtPc6qICKIQk=;
        b=VY539l6WCV8PvEx6pVvELHHrnJgQYjs8k2kgNLh9RHFM4KOMr9DJHI9N6rTJ7qD0ln
         RHkKzFSandCj2/5mMhXrZhG7D3ySyCcnF686NbHMUQXAOnTcKKIRtoVLPZXcfH1b+pKY
         0+jbOYD98GqdKmeh8DTG/1+12QluhpqqtRVRpST5Ki8Xrt+sh4pZNZQpUx689OAtEfee
         6JMSqZNIsCr1eRB2dfefHiNlUohHA6Jhl2ruq8W8GkLgLUDexElc0lc6eV4Fh8ukdS0K
         D6OZMOQghgf2idxkRR6ivTIzgXxeyHsr2DikiPUQdIZXloKxzWWMRX4h92R0ExuAOwHZ
         Dl8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GRAECeUE1enfogd1mnezyWqtdB3pCXGQtPc6qICKIQk=;
        b=VOvO5ht5sxDiKVYh/pDX3cERiHtOKR8Y7l7gOjF+2gQeJgopQMlEjqYLHmp3+ZmBpJ
         g34GxHtc2QfE7jyV/6gzpfcCfySqaT7M4lxZFbOlrSxicWwfYig184FcIjlGBH1IxoK8
         +DcarTHYza0ZxYFaNnHFwIuLgbgV6WHqPWWRFIT1naPgF0RgUpTeydUyR4SlDg5Sh5UE
         0L/P/yt3d1wg+VKXHdEhBNh9/gzI1jw1PpvNe1tVVXrJxE6vlTo8+nHzUOmuj6v6tJck
         xPImOT2lOkaO6HZOXPcBu/mBfZn6IlIYgMntc2BAFbH8KY5WgITB8AALxEJ/SW2FjaAH
         YtTg==
X-Gm-Message-State: AOAM530YeGun27Om8xWey+OEI6/V/ly+utEcWBRutD23SsrA+Yp2jWZK
	TSz4sGzBO4dV6pIxKzAXlWCvR5x5mNiYNGTjZ3A=
X-Google-Smtp-Source: ABdhPJypW0+PvIkw8syMHd6Bl+77rPU5FeiG5T1GnfZNU6ACFmFpbdh17YwdSts5a22WVogLkyVCFUcz6AZxsTIP3sk=
X-Received: by 2002:ac8:7cc:: with SMTP id m12mr5281451qth.369.1591822455825;
 Wed, 10 Jun 2020 13:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <1617494538AB07FD.30060@lists.yoctoproject.org>
In-Reply-To: <1617494538AB07FD.30060@lists.yoctoproject.org>
From: "Krishna" <chaithubkts@gmail.com>
Date: Thu, 11 Jun 2020 02:24:04 +0530
Message-ID: <CAMNBVa0OURAnYmpVmFmX=P1jgUA9EXKZcMFJ8Jb9QMuTmYXuBg@mail.gmail.com>
Subject: Re: [yocto] meta-spdxscanner | dunfell | core-image-sato | do_spdx() error with some packages.
To: Chaithanya Krishna B <chaithubkts@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000066d9a05a7c10c38"

--000000000000066d9a05a7c10c38
Content-Type: text/plain; charset="UTF-8"

Updated with another failed package.

ERROR: *adwaita-icon-theme-3.34.3-r0* do_spdx: Could not invoke scancode
Command
'/home/yocto/output/build/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/recipe-sysroot-native/usr/bin/scancode
-lpci --spdx-tv
/home/yocto/output/build/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/spdx_sstate_dir/allarch-poky-linux/adwaita-icon-theme-3.34.3-r0/adwaita-icon-theme-3.34.3.spdx
/home/yocto/output/build/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/spdx_temp/'
returned 1:
b'Setup plugins...\nCollect file inventory...\nScan files for: info,
licenses, copyrights, packages with 1 process(es)...\nScanning done.\nSome
files failed to scan properly:\nPath:
spdx_temp/adwaita-icon-theme-3.34.3/src/fullcolor/legacy/accessories-dictionary.svg\nSummary:
       info, licenses, copyrights, packages with 1 process(es)\nErrors
count:   1\nScan Speed:     0.88 files/sec. 31.42 KB/sec.\nInitial counts:
3178 resource(s): 3081 file(s) and 97 directorie(s) \nFinal counts:   3178
resource(s): 3081 file(s) and 97 directorie(s) for 107.63 MB\nTimings:\n
 scan_start: 2020-06-10T194306.005261\n  scan_end:
2020-06-10T204137.397551\n  setup_scan:licenses: 1.45s\n  setup: 1.45s\n
 inventory: 1.16s\n  scan:packages: 0.32s\n  scan: 3507.48s\n
 output:spdx-tv: 7.24s\n  output: 7.24s\n  total: 3518.95s\nRemoving
temporary files...done.\n'
ERROR: Logfile of failure stored in:
/home/yocto/output/build/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/temp/log.do_spdx.15064
ERROR: Task
(/home/yocto/output/poky/meta/recipes-gnome/gnome/adwaita-icon-theme_3.34.3.bb:do_spdx)
failed with exit code '1'

On Thu, Jun 11, 2020 at 2:09 AM Krishna via lists.yoctoproject.org
<chaithubkts=gmail.com@lists.yoctoproject.org> wrote:

> Hi,
>
> I have added meta-spdxscanner in to my poky dunfell distro for
> core-image-sato build. I see the below packages have failed to generate
> SPDX doc with the errors below (all other packages are going fine so far).
>
> ERROR: *gdk-pixbuf-2.40.0-r0* do_compile: Execution of
>> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144'
>> failed with exit code 1:
>> [1/2]
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
>> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
>> ansi --stringparam man.th.extra1.suppress 1 --stringparam
>> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
>> -o docs/gdk-pixbuf-csource.1
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
>> FAILED: docs/gdk-pixbuf-csource.1
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
>> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
>> ansi --stringparam man.th.extra1.suppress 1 --stringparam
>> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
>> -o docs/gdk-pixbuf-csource.1
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
>> I/O error : Attempt to load network entity
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> warning: failed to load external entity "
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
>> cannot parse
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ninja: build stopped: subcommand failed.
>> WARNING: exit code 1 from a shell command.
>>
>> ERROR: Logfile of failure stored in:
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/log.do_compile.5144
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | [1/2]
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
>> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
>> ansi --stringparam man.th.extra1.suppress 1 --stringparam
>> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
>> -o docs/gdk-pixbuf-csource.1
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
>> | FAILED: docs/gdk-pixbuf-csource.1
>> |
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
>> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
>> ansi --stringparam man.th.extra1.suppress 1 --stringparam
>> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
>> -o docs/gdk-pixbuf-csource.1
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
>> | I/O error : Attempt to load network entity
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> | warning: failed to load external entity "
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
>> | cannot parse
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> | ninja: build stopped: subcommand failed.
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Execution of
>> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144'
>> failed with exit code 1:
>> | [1/2]
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
>> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
>> ansi --stringparam man.th.extra1.suppress 1 --stringparam
>> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
>> -o docs/gdk-pixbuf-csource.1
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
>> | FAILED: docs/gdk-pixbuf-csource.1
>> |
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
>> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
>> ansi --stringparam man.th.extra1.suppress 1 --stringparam
>> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
>> -o docs/gdk-pixbuf-csource.1
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
>> | I/O error : Attempt to load network entity
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> | warning: failed to load external entity "
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
>> | cannot parse
>> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
>> | ninja: build stopped: subcommand failed.
>> | WARNING: exit code 1 from a shell command.
>> |
>> ERROR: Task
>> (/home/yocto/output/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.0.bb:do_compile)
>> failed with exit code '1'
>>
>>
>> -----------------------------------------------------------------------------------------------
>>
>> ERROR: *gettext-0.20.1-r0 do_spdx*: Could not invoke scancode Command
>> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/recipe-sysroot-native/usr/bin/scancode
>> -lpci --spdx-tv
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/spdx_sstate_dir/arm-poky-linux-gnueabi/gettext-0.20.1-r0/gettext-0.20.1.spdx
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/spdx_temp/'
>> returned 1:
>> b'Setup plugins...\nCollect file inventory...\nScan files for: info,
>> licenses, copyrights, packages with 1 process(es)...\nScanning done.\nSome
>> files failed to scan properly:\nPath:
>> spdx_temp/gettext-0.20.1/gettext-tools/misc/archive.dir.tar\nSummary:
>>  info, licenses, copyrights, packages with 1 process(es)\nErrors count:
>> 1\nScan Speed:     0.67 files/sec. 12.99 KB/sec.\nInitial counts: 6072
>> resource(s): 5835 file(s) and 237 directorie(s) \nFinal counts:   6072
>> resource(s): 5835 file(s) and 237 directorie(s) for 110.01 MB\nTimings:\n
>>  scan_start: 2020-06-09T135951.126968\n  scan_end:
>> 2020-06-09T162428.611805\n  setup_scan:licenses: 1.30s\n  setup: 1.30s\n
>>  inventory: 1.93s\n  scan:packages: 0.49s\n  scan: 8672.24s\n
>>  output:spdx-tv: 6.64s\n  output: 6.64s\n  total: 8684.54s\nRemoving
>> temporary files...done.\n'
>> ERROR: Logfile of failure stored in:
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/temp/log.do_spdx.6774
>> ERROR: Task
>> (/home/yocto/output/poky/meta/recipes-core/gettext/gettext_0.20.1.bb:do_spdx)
>> failed with exit code '1'
>>
>>
>> -----------------------------------------------------------------------------------------------
>>
>> ERROR: *gnutls-3.6.12-r0 do_spdx*: Could not invoke scancode Command
>> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/recipe-sysroot-native/usr/bin/scancode
>> -lpci --spdx-tv
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_sstate_dir/arm-poky-linux-gnueabi/gnutls-3.6.12-r0/gnutls-3.6.12.spdx
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_temp/'
>> returned 1:
>> b'Setup plugins...\nCollect file inventory...\nScan files for: info,
>> licenses, copyrights, packages with 1 process(es)...\nScanning done.\nSome
>> files failed to scan properly:\nPath:
>> spdx_temp/gnutls-3.6.12/tests/data/long.pem\nSummary:        info,
>> licenses, copyrights, packages with 1 process(es)\nErrors count:   1\nScan
>> Speed:     1.47 files/sec. 10.75 KB/sec.\nInitial counts: 6564 resource(s):
>> 6456 file(s) and 108 directorie(s) \nFinal counts:   6564 resource(s): 6456
>> file(s) and 108 directorie(s) for 46.03 MB\nTimings:\n  scan_start:
>> 2020-06-09T171835.506413\n  scan_end:   2020-06-09T183145.722364\n
>>  setup_scan:licenses: 1.17s\n  setup: 1.17s\n  inventory: 1.88s\n
>>  scan:packages: 0.52s\n  scan: 4384.91s\n  output:spdx-tv: 6.71s\n  output:
>> 6.71s\n  total: 4397.42s\nRemoving temporary files...done.\n'
>> ERROR: Logfile of failure stored in:
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/temp/log.do_spdx.30861
>> ERROR: Task
>> (/home/yocto/output/poky/meta/recipes-support/gnutls/gnutls_3.6.12.bb:do_spdx)
>> failed with exit code '1'
>>
>>
>> -------------------------------------------------------------------------------------------------
>>
>> ERROR: *libpsl-0.21.0-r0 do_spdx:* Error executing a python function in
>> exec_python_func() autogenerated:
>>
>> The stack trace of python calls that resulted in this exception/failure
>> was:
>> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>>      0001:
>>  *** 0002:do_spdx(d)
>>      0003:
>> File:
>> '/home/yocto/output/poky/meta-spdxscanner/classes/scancode-tk.bbclass',
>> lineno: 110, function: do_spdx
>>      0106:    if os.path.exists(git_path):
>>      0107:        remove_dir_tree(git_path)
>>      0108:    invoke_scancode(info['sourcedir'],sstatefile)
>>      0109:    bb.warn("source dir = " + info['sourcedir'])
>>  *** 0110:    if get_cached_spdx(sstatefile) != None:
>>      0111:        write_cached_spdx( info,sstatefile,cur_ver_code )
>>      0112:        ## CREATE MANIFEST(write to outfile )
>>      0113:        create_manifest(info,sstatefile)
>>      0114:    else:
>> File:
>> '/home/yocto/output/poky/meta-spdxscanner/classes/spdx-common.bbclass',
>> lineno: 164, function: get_cached_spdx
>>      0160:    except subprocess.CalledProcessError as e:
>>      0161:        bb.error("Index creation command '%s' failed with
>> return code %d:\n%s" % (e.cmd, e.returncode, e.output))
>>      0162:        return None
>>      0163:    cached_spdx_info=output.decode('utf-8').split(': ')
>>  *** 0164:    return cached_spdx_info[1]
>>      0165:
>>      0166:#Find InfoInLicenseFile and fill into
>> PackageLicenseInfoInLicenseFile.
>>      0167:def find_infoinlicensefile(sstatefile):
>>      0168:    import subprocess
>> Exception: IndexError: list index out of range
>>
>> ERROR: Logfile of failure stored in:
>> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/libpsl/0.21.0-r0/temp/log.do_spdx.17370
>> ERROR: Task
>> (/home/yocto/output/poky/meta/recipes-support/libpsl/libpsl_0.21.0.bb:do_spdx)
>> failed with exit code '1'
>>
>> -------------------------------------------------------------------------------------------------
>>
>
> All the other packages have built fine and generated the SPDX docs, please
> help me fix the issues with the above packages.
>
> --
> Regards,
> Krishna Chaithanya B
> 
>


-- 
Regards,
Krishna Chaithanya B

--000000000000066d9a05a7c10c38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Updated with another failed package.<br></div><div><b=
r></div><div><span style=3D"font-family:monospace">ERROR: <b>adwaita-icon-t=
heme-3.34.3-r0</b> do_spdx: Could not invoke scancode Command &#39;/home/yo=
cto/output/build/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/recip=
e-sysroot-native/usr/bin/scancode -lpci --spdx-tv /home/yocto/output/build/=
tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/spdx_sstate_dir/allarc=
h-poky-linux/adwaita-icon-theme-3.34.3-r0/adwaita-icon-theme-3.34.3.spdx /h=
ome/yocto/output/build/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0=
/spdx_temp/&#39; returned 1:<br>b&#39;Setup plugins...\nCollect file invent=
ory...\nScan files for: info, licenses, copyrights, packages with 1 process=
(es)...\nScanning done.\nSome files failed to scan properly:\nPath: spdx_te=
mp/adwaita-icon-theme-3.34.3/src/fullcolor/legacy/accessories-dictionary.sv=
g\nSummary: =C2=A0 =C2=A0 =C2=A0 =C2=A0info, licenses, copyrights, packages=
 with 1 process(es)\nErrors count: =C2=A0 1\nScan Speed: =C2=A0 =C2=A0 0.88=
 files/sec. 31.42 KB/sec.\nInitial counts: 3178 resource(s): 3081 file(s) a=
nd 97 directorie(s) \nFinal counts: =C2=A0 3178 resource(s): 3081 file(s) a=
nd 97 directorie(s) for 107.63 MB\nTimings:\n =C2=A0scan_start: 2020-06-10T=
194306.005261\n =C2=A0scan_end: =C2=A0 2020-06-10T204137.397551\n =C2=A0set=
up_scan:licenses: 1.45s\n =C2=A0setup: 1.45s\n =C2=A0inventory: 1.16s\n =C2=
=
=A0scan:packages: 0.32s\n =C2=A0scan: 3507.48s\n =C2=A0output:spdx-tv: 7.2=
4s\n =C2=A0output: 7.24s\n =C2=A0total: 3518.95s\nRemoving temporary files.=
..done.\n&#39;<br>ERROR: Logfile of failure stored in: /home/yocto/output/b=
uild/tmp/work/all-poky-linux/adwaita-icon-theme/3.34.3-r0/temp/log.do_spdx.=
15064<br>ERROR: Task (/home/yocto/output/poky/meta/recipes-gnome/gnome/adwa=
ita-icon-theme_3.34.3.bb:do_spdx) failed with exit code &#39;1&#39;</span><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Jun 11, 2020 at 2:09 AM Krishna via <a href=3D"http://lists.yo=
ctoproject.org">lists.yoctoproject.org</a> &lt;chaithubkts=3D<a href=3D"mai=
lto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">
<div>Hi, <br></div><div><br></div><div>I have added meta-spdxscanner in=20
to my poky dunfell distro for core-image-sato build. I see the below=20
packages have failed to generate SPDX doc with the errors below (all=20
other packages are going fine so far). </div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><spa=
n style=3D"font-family:monospace">ERROR: <b>gdk-pixbuf-2.40.0-r0</b> do_com=
pile: Execution of &#39;/home/yocto/output/build/tmp/work/armv7vet2hf-neon-=
poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144&#39; faile=
d with exit code 1:<br>[1/2] /home/yocto/output/build/tmp/work/armv7vet2hf-=
neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/=
xsltproc --nonet --stringparam man.output.quietly 1 --stringparam funcsynop=
sis.style ansi --stringparam man.th.extra1.suppress 1 --stringparam man.aut=
hors.section.enabled 0 --stringparam man.copyright.section.enabled 0 -o doc=
s/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sourceforge.net/release/xs=
l/current/manpages/docbook.xsl" target=3D"_blank">http://docbook.sourceforg=
e.net/release/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40.0/doc=
s/gdk-pixbuf-csource.xml<br>FAILED: docs/gdk-pixbuf-csource.1 <br>/home/yoc=
to/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.4=
0.0-r0/recipe-sysroot-native/usr/bin/xsltproc --nonet --stringparam man.out=
put.quietly 1 --stringparam funcsynopsis.style ansi --stringparam man.th.ex=
tra1.suppress 1 --stringparam man.authors.section.enabled 0 --stringparam m=
an.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"http=
://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" target=
=
=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br>I/O error=
 : Attempt to load network entity <a href=3D"http://docbook.sourceforge.net=
/release/xsl/current/manpages/docbook.xsl" target=3D"_blank">http://docbook=
.sourceforge.net/release/xsl/current/manpages/docbook.xsl</a><br>warning: f=
ailed to load external entity &quot;<a href=3D"http://docbook.sourceforge.n=
et/release/xsl/current/manpages/docbook.xsl" target=3D"_blank">http://docbo=
ok.sourceforge.net/release/xsl/current/manpages/docbook.xsl</a>&quot;<br>ca=
nnot parse <a href=3D"http://docbook.sourceforge.net/release/xsl/current/ma=
npages/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/releas=
e/xsl/current/manpages/docbook.xsl</a><br>ninja: build stopped: subcommand =
failed.<br>WARNING: exit code 1 from a shell command.<br><br>ERROR: Logfile=
 of failure stored in: /home/yocto/output/build/tmp/work/armv7vet2hf-neon-p=
oky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/log.do_compile.5144<br>Log data=
 follows:<br>| DEBUG: Executing shell function do_compile<br>| [1/2] /home/=
yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/=
2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc --nonet --stringparam man.=
output.quietly 1 --stringparam funcsynopsis.style ansi --stringparam man.th=
.extra1.suppress 1 --stringparam man.authors.section.enabled 0 --stringpara=
m man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"h=
ttp://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" tar=
get=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/=
docbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br>| FAILE=
D: docs/gdk-pixbuf-csource.1<br>| /home/yocto/output/build/tmp/work/armv7ve=
t2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr=
/bin/xsltproc --nonet --stringparam man.output.quietly 1 --stringparam func=
synopsis.style ansi --stringparam man.th.extra1.suppress 1 --stringparam ma=
n.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0 -=
o docs/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sourceforge.net/relea=
se/xsl/current/manpages/docbook.xsl" target=3D"_blank">http://docbook.sourc=
eforge.net/release/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40.=
0/docs/gdk-pixbuf-csource.xml<br>| I/O error : Attempt to load network enti=
ty <a href=3D"http://docbook.sourceforge.net/release/xsl/current/manpages/d=
ocbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/xsl/cu=
rrent/manpages/docbook.xsl</a><br>| warning: failed to load external entity=
 &quot;<a href=3D"http://docbook.sourceforge.net/release/xsl/current/manpag=
es/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/xs=
l/current/manpages/docbook.xsl</a>&quot;<br>| cannot parse <a href=3D"http:=
//docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" target=
=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a><br>| ninja: build stopped: subcommand failed.<br>| WARNING: e=
xit code 1 from a shell command.<br>| ERROR: Execution of &#39;/home/yocto/=
output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0=
-r0/temp/run.do_compile.5144&#39; failed with exit code 1:<br>| [1/2] /home=
/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf=
/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc --nonet --stringparam man=
.output.quietly 1 --stringparam funcsynopsis.style ansi --stringparam man.t=
h.extra1.suppress 1 --stringparam man.authors.section.enabled 0 --stringpar=
am man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"=
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" ta=
rget=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages=
/docbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br>| FAIL=
ED: docs/gdk-pixbuf-csource.1<br>| /home/yocto/output/build/tmp/work/armv7v=
et2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/us=
r/bin/xsltproc --nonet --stringparam man.output.quietly 1 --stringparam fun=
csynopsis.style ansi --stringparam man.th.extra1.suppress 1 --stringparam m=
an.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0 =
-o docs/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sourceforge.net/rele=
ase/xsl/current/manpages/docbook.xsl" target=3D"_blank">http://docbook.sour=
ceforge.net/release/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40=
.0/docs/gdk-pixbuf-csource.xml<br>| I/O error : Attempt to load network ent=
ity <a href=3D"http://docbook.sourceforge.net/release/xsl/current/manpages/=
docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/xsl/c=
urrent/manpages/docbook.xsl</a><br>| warning: failed to load external entit=
y &quot;<a href=3D"http://docbook.sourceforge.net/release/xsl/current/manpa=
ges/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/x=
sl/current/manpages/docbook.xsl</a>&quot;<br>| cannot parse <a href=3D"http=
://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" target=
=
=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a><br>| ninja: build stopped: subcommand failed.<br>| WARNING: e=
xit code 1 from a shell command.<br>| <br>ERROR: Task (/home/yocto/output/p=
oky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.0.bb:do_compile) failed w=
ith exit code &#39;1&#39;<br><br>------------------------------------------=
-----------------------------------------------------<br><br>ERROR: <b>gett=
ext-0.20.1-r0 do_spdx</b>: Could not invoke scancode Command &#39;/home/yoc=
to/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1=
-r0/recipe-sysroot-native/usr/bin/scancode -lpci --spdx-tv /home/yocto/outp=
ut/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/spd=
x_sstate_dir/arm-poky-linux-gnueabi/gettext-0.20.1-r0/gettext-0.20.1.spdx /=
home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettex=
t/0.20.1-r0/spdx_temp/&#39; returned 1:<br>b&#39;Setup plugins...\nCollect =
file inventory...\nScan files for: info, licenses, copyrights, packages wit=
h 1 process(es)...\nScanning done.\nSome files failed to scan properly:\nPa=
th: spdx_temp/gettext-0.20.1/gettext-tools/misc/archive.dir.tar\nSummary: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0info, licenses, copyrights, packages with 1 pro=
cess(es)\nErrors count: =C2=A0 1\nScan Speed: =C2=A0 =C2=A0 0.67 files/sec.=
 12.99 KB/sec.\nInitial counts: 6072 resource(s): 5835 file(s) and 237 dire=
ctorie(s) \nFinal counts: =C2=A0 6072 resource(s): 5835 file(s) and 237 dir=
ectorie(s) for 110.01 MB\nTimings:\n =C2=A0scan_start: 2020-06-09T135951.12=
6968\n =C2=A0scan_end: =C2=A0 2020-06-09T162428.611805\n =C2=A0setup_scan:l=
icenses: 1.30s\n =C2=A0setup: 1.30s\n =C2=A0inventory: 1.93s\n =C2=A0scan:p=
ackages: 0.49s\n =C2=A0scan: 8672.24s\n =C2=A0output:spdx-tv: 6.64s\n =C2=
=A0output: 6.64s\n =C2=A0total: 8684.54s\nRemoving temporary files...done.=
\n&#39;<br>ERROR: Logfile of failure stored in: /home/yocto/output/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/temp/log.do_sp=
dx.6774<br>ERROR: Task (/home/yocto/output/poky/meta/recipes-core/gettext/g=
ettext_0.20.1.bb:do_spdx) failed with exit code &#39;1&#39;<br><br>--------=
---------------------------------------------------------------------------=
------------<br><br>ERROR: <b>gnutls-3.6.12-r0 do_spdx</b>: Could not invok=
e scancode Command &#39;/home/yocto/output/build/tmp/work/armv7vet2hf-neon-=
poky-linux-gnueabi/gnutls/3.6.12-r0/recipe-sysroot-native/usr/bin/scancode =
-lpci --spdx-tv /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/gnutls/3.6.12-r0/spdx_sstate_dir/arm-poky-linux-gnueabi/gnutls-3=
.6.12-r0/gnutls-3.6.12.spdx /home/yocto/output/build/tmp/work/armv7vet2hf-n=
eon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_temp/&#39; returned 1:<br>b&#3=
9;Setup plugins...\nCollect file inventory...\nScan files for: info, licens=
es, copyrights, packages with 1 process(es)...\nScanning done.\nSome files =
failed to scan properly:\nPath: spdx_temp/gnutls-3.6.12/tests/data/long.pem=
\nSummary: =C2=A0 =C2=A0 =C2=A0 =C2=A0info, licenses, copyrights, packages =
with 1 process(es)\nErrors count: =C2=A0 1\nScan Speed: =C2=A0 =C2=A0 1.47 =
files/sec. 10.75 KB/sec.\nInitial counts: 6564 resource(s): 6456 file(s) an=
d 108 directorie(s) \nFinal counts: =C2=A0 6564 resource(s): 6456 file(s) a=
nd 108 directorie(s) for 46.03 MB\nTimings:\n =C2=A0scan_start: 2020-06-09T=
171835.506413\n =C2=A0scan_end: =C2=A0 2020-06-09T183145.722364\n =C2=A0set=
up_scan:licenses: 1.17s\n =C2=A0setup: 1.17s\n =C2=A0inventory: 1.88s\n =C2=
=
=A0scan:packages: 0.52s\n =C2=A0scan: 4384.91s\n =C2=A0output:spdx-tv: 6.7=
1s\n =C2=A0output: 6.71s\n =C2=A0total: 4397.42s\nRemoving temporary files.=
..done.\n&#39;<br>ERROR: Logfile of failure stored in: /home/yocto/output/b=
uild/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/temp/log=
.do_spdx.30861<br>ERROR: Task (/home/yocto/output/poky/meta/recipes-support=
/gnutls/gnutls_3.6.12.bb:do_spdx) failed with exit code &#39;1&#39;<br><br>=
---------------------------------------------------------------------------=
----------------------<br><br>ERROR: <b>libpsl-0.21.0-r0 do_spdx:</b> Error=
 executing a python function in exec_python_func() autogenerated:<br><br>Th=
e stack trace of python calls that resulted in this exception/failure was:<=
br>File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function: &=
lt;module&gt;<br>=C2=A0 =C2=A0 =C2=A00001:<br>=C2=A0*** 0002:do_spdx(d)<br>=
=
=C2=A0 =C2=A0 =C2=A00003:<br>File: &#39;/home/yocto/output/poky/meta-spdxs=
canner/classes/scancode-tk.bbclass&#39;, lineno: 110, function: do_spdx<br>=
=
=C2=A0 =C2=A0 =C2=A00106: =C2=A0 =C2=A0if os.path.exists(git_path):<br>=C2=
=
=A0 =C2=A0 =C2=A00107: =C2=A0 =C2=A0 =C2=A0 =C2=A0remove_dir_tree(git_path=
)<br>=C2=A0 =C2=A0 =C2=A00108: =C2=A0 =C2=A0invoke_scancode(info[&#39;sourc=
edir&#39;],sstatefile)<br>=C2=A0 =C2=A0 =C2=A00109: =C2=A0 =C2=A0bb.warn(&q=
uot;source dir =3D &quot; + info[&#39;sourcedir&#39;])<br>=C2=A0*** 0110: =
=C2=A0 =C2=A0if get_cached_spdx(sstatefile) !=3D None:<br>=C2=A0 =C2=A0 =
=C2=A00111: =C2=A0 =C2=A0 =C2=A0 =C2=A0write_cached_spdx( info,sstatefile,=
cur_ver_code )<br>=C2=A0 =C2=A0 =C2=A00112: =C2=A0 =C2=A0 =C2=A0 =C2=A0## C=
REATE MANIFEST(write to outfile )<br>=C2=A0 =C2=A0 =C2=A00113: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0create_manifest(info,sstatefile)<br>=C2=A0 =C2=A0 =C2=A00=
114: =C2=A0 =C2=A0else:<br>File: &#39;/home/yocto/output/poky/meta-spdxscan=
ner/classes/spdx-common.bbclass&#39;, lineno: 164, function: get_cached_spd=
x<br>=C2=A0 =C2=A0 =C2=A00160: =C2=A0 =C2=A0except subprocess.CalledProcess=
Error as e:<br>=C2=A0 =C2=A0 =C2=A00161: =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.erro=
r(&quot;Index creation command &#39;%s&#39; failed with return code %d:\n%s=
&quot; % (e.cmd, e.returncode, e.output))<br>=C2=A0 =C2=A0 =C2=A00162: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0return None<br>=C2=A0 =C2=A0 =C2=A00163: =C2=A0 =
=C2=A0cached_spdx_info=3Doutput.decode(&#39;utf-8&#39;).split(&#39;: &#39;=
)<br>=C2=A0*** 0164: =C2=A0 =C2=A0return cached_spdx_info[1]<br>=C2=A0 =C2=
=A0 =C2=A00165:<br>=C2=A0 =C2=A0 =C2=A00166:#Find InfoInLicenseFile and fi=
ll into PackageLicenseInfoInLicenseFile.<br>=C2=A0 =C2=A0 =C2=A00167:def fi=
nd_infoinlicensefile(sstatefile):<br>=C2=A0 =C2=A0 =C2=A00168: =C2=A0 =C2=
=A0import subprocess<br>Exception: IndexError: list index out of range<br>=
<br>ERROR: Logfile of failure stored in: /home/yocto/output/build/tmp/work/=
armv7vet2hf-neon-poky-linux-gnueabi/libpsl/0.21.0-r0/temp/log.do_spdx.17370=
<br>ERROR: Task (/home/yocto/output/poky/meta/recipes-support/libpsl/libpsl=
_0.21.0.bb:do_spdx) failed with exit code &#39;1&#39;<br>------------------=
---------------------------------------------------------------------------=
----<br></span></div></blockquote><div><br></div><div>All the other package=
s have built fine and generated the SPDX docs, please help me fix the issue=
s with the above packages. <br></div><div><br></div><div>-- <br><div dir=3D=
"ltr"><span style=3D"color:rgb(51,51,255)">Regards,</span><span style=3D"co=
lor:rgb(51,51,255)"><br>Krishna Chaithanya B</span></div></div></div>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><span style=3D"color:rgb(51,51,255)">Regards,</span><span =
style=3D"color:rgb(51,51,255)"><br>Krishna Chaithanya B</span></div>

--000000000000066d9a05a7c10c38--
