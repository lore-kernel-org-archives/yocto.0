Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web10.4087.1591821554532096865
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 13:39:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKUAo8YH;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: chaithubkts@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id z1so2938668qtn.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jun 2020 13:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=mC0I1j6+hcbzZrbsVuhW/Zs1rl00rku0ZPnJV643yg0=;
        b=fKUAo8YHsgxlbwTof778BjqtgRUiLLY+uQmqH1ysML6+MsV/hrQ+HmjHifIPOTYHku
         wAM3NdXhndskO8OMmTOcP6qMShlzpQ6VbReEQEiH/m8tUd/8z9QQMsw+H204ugEdOMi1
         1ShjKUzrvtQgmbXhzs4U9FkSBPhcDeq+Uar7RmogqmJ2ymGSWlDF0copv+4z99dVoNUR
         FdHB+y/v8fooU6tTx3Vk01GU6xZYibIfvtaHT9391+F2F6cc073lsUDBeZ7C3hHxGhcb
         SQvRisk5jTLRdu0W9NZPQ5evFL1bFLdE+PXbwiqQyMyl5cQHOneIGtPnsE+zM3dzLSbH
         peWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mC0I1j6+hcbzZrbsVuhW/Zs1rl00rku0ZPnJV643yg0=;
        b=r4JI0TKPoiKrgmVcdkBwTQRe0RD1La2elDN1eQpSZ367cgxQFFFLZJpopMFEhsdiSt
         iFLK5DG92Jo5LAUj3fNl6R6yPCh6cbTT4TvvVbanM8lHgM4cuJYJ7e92lVULR1RrXmL3
         HNN6mld2R8K2wnW6uNQVwSF0vR3lADWpRGyjH6mRh58TAcZrVlRyRfQfm2+V+vzjWvtF
         16JCsNT6vVYIsMm4K6AeawnMx2YueK+CoeQ5cF+A5OBPrVxRCiMtxIQRI/lwrVT9JemP
         4WsOWkrg5edOFkHZbUtNy6gL7819xkPgj34OSjGXK2ndK+FCBtKOkPdZFATE3d1tRA4v
         SwCQ==
X-Gm-Message-State: AOAM531EUbfyDyszoFE9s5/orJuuumLk10ppF1YzQs68p5MWxBT0J2IM
	PHrOivFhQBYDRCmMii3EZbRXrVOKdq1kJsfdzKQmldMdDSc=
X-Google-Smtp-Source: ABdhPJxbI7Qc/MaV9TDcVRJ8ZAJW45Nw+gXcXd8/T2AF7vljBx8una+ZUy57G2R9R8ILU8NfhFEtUUtPrwj5jlHwas0=
X-Received: by 2002:aed:2789:: with SMTP id a9mr5230230qtd.76.1591821553144;
 Wed, 10 Jun 2020 13:39:13 -0700 (PDT)
MIME-Version: 1.0
From: "Krishna" <chaithubkts@gmail.com>
Date: Thu, 11 Jun 2020 02:09:02 +0530
Message-ID: <CAMNBVa0zjEgQR6CR-mNkyHwoH5MCex8vZ3ZsZtNikEQMf-kzsw@mail.gmail.com>
Subject: meta-spdxscanner | dunfell | core-image-sato | do_spdx() error with some packages.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000038974905a7c0d606"

--00000000000038974905a7c0d606
Content-Type: text/plain; charset="UTF-8"

 Hi,

I have added meta-spdxscanner in to my poky dunfell distro for
core-image-sato build. I see the below packages have failed to generate
SPDX doc with the errors below (all other packages are going fine so far).

ERROR: *gdk-pixbuf-2.40.0-r0* do_compile: Execution of
> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144'
> failed with exit code 1:
> [1/2]
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
> ansi --stringparam man.th.extra1.suppress 1 --stringparam
> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
> -o docs/gdk-pixbuf-csource.1
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
> FAILED: docs/gdk-pixbuf-csource.1
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
> ansi --stringparam man.th.extra1.suppress 1 --stringparam
> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
> -o docs/gdk-pixbuf-csource.1
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
> I/O error : Attempt to load network entity
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> warning: failed to load external entity "
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
> cannot parse
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ninja: build stopped: subcommand failed.
> WARNING: exit code 1 from a shell command.
>
> ERROR: Logfile of failure stored in:
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/log.do_compile.5144
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | [1/2]
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
> ansi --stringparam man.th.extra1.suppress 1 --stringparam
> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
> -o docs/gdk-pixbuf-csource.1
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
> | FAILED: docs/gdk-pixbuf-csource.1
> |
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
> ansi --stringparam man.th.extra1.suppress 1 --stringparam
> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
> -o docs/gdk-pixbuf-csource.1
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
> | I/O error : Attempt to load network entity
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> | warning: failed to load external entity "
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
> | cannot parse
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> | ninja: build stopped: subcommand failed.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of
> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144'
> failed with exit code 1:
> | [1/2]
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
> ansi --stringparam man.th.extra1.suppress 1 --stringparam
> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
> -o docs/gdk-pixbuf-csource.1
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
> | FAILED: docs/gdk-pixbuf-csource.1
> |
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
> --nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
> ansi --stringparam man.th.extra1.suppress 1 --stringparam
> man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
> -o docs/gdk-pixbuf-csource.1
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
> | I/O error : Attempt to load network entity
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> | warning: failed to load external entity "
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
> | cannot parse
> http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
> | ninja: build stopped: subcommand failed.
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task
> (/home/yocto/output/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.0.bb:do_compile)
> failed with exit code '1'
>
>
> -----------------------------------------------------------------------------------------------
>
> ERROR: *gettext-0.20.1-r0 do_spdx*: Could not invoke scancode Command
> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/recipe-sysroot-native/usr/bin/scancode
> -lpci --spdx-tv
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/spdx_sstate_dir/arm-poky-linux-gnueabi/gettext-0.20.1-r0/gettext-0.20.1.spdx
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/spdx_temp/'
> returned 1:
> b'Setup plugins...\nCollect file inventory...\nScan files for: info,
> licenses, copyrights, packages with 1 process(es)...\nScanning done.\nSome
> files failed to scan properly:\nPath:
> spdx_temp/gettext-0.20.1/gettext-tools/misc/archive.dir.tar\nSummary:
>  info, licenses, copyrights, packages with 1 process(es)\nErrors count:
> 1\nScan Speed:     0.67 files/sec. 12.99 KB/sec.\nInitial counts: 6072
> resource(s): 5835 file(s) and 237 directorie(s) \nFinal counts:   6072
> resource(s): 5835 file(s) and 237 directorie(s) for 110.01 MB\nTimings:\n
>  scan_start: 2020-06-09T135951.126968\n  scan_end:
> 2020-06-09T162428.611805\n  setup_scan:licenses: 1.30s\n  setup: 1.30s\n
>  inventory: 1.93s\n  scan:packages: 0.49s\n  scan: 8672.24s\n
>  output:spdx-tv: 6.64s\n  output: 6.64s\n  total: 8684.54s\nRemoving
> temporary files...done.\n'
> ERROR: Logfile of failure stored in:
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20.1-r0/temp/log.do_spdx.6774
> ERROR: Task
> (/home/yocto/output/poky/meta/recipes-core/gettext/gettext_0.20.1.bb:do_spdx)
> failed with exit code '1'
>
>
> -----------------------------------------------------------------------------------------------
>
> ERROR: *gnutls-3.6.12-r0 do_spdx*: Could not invoke scancode Command
> '/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/recipe-sysroot-native/usr/bin/scancode
> -lpci --spdx-tv
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_sstate_dir/arm-poky-linux-gnueabi/gnutls-3.6.12-r0/gnutls-3.6.12.spdx
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_temp/'
> returned 1:
> b'Setup plugins...\nCollect file inventory...\nScan files for: info,
> licenses, copyrights, packages with 1 process(es)...\nScanning done.\nSome
> files failed to scan properly:\nPath:
> spdx_temp/gnutls-3.6.12/tests/data/long.pem\nSummary:        info,
> licenses, copyrights, packages with 1 process(es)\nErrors count:   1\nScan
> Speed:     1.47 files/sec. 10.75 KB/sec.\nInitial counts: 6564 resource(s):
> 6456 file(s) and 108 directorie(s) \nFinal counts:   6564 resource(s): 6456
> file(s) and 108 directorie(s) for 46.03 MB\nTimings:\n  scan_start:
> 2020-06-09T171835.506413\n  scan_end:   2020-06-09T183145.722364\n
>  setup_scan:licenses: 1.17s\n  setup: 1.17s\n  inventory: 1.88s\n
>  scan:packages: 0.52s\n  scan: 4384.91s\n  output:spdx-tv: 6.71s\n  output:
> 6.71s\n  total: 4397.42s\nRemoving temporary files...done.\n'
> ERROR: Logfile of failure stored in:
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/temp/log.do_spdx.30861
> ERROR: Task
> (/home/yocto/output/poky/meta/recipes-support/gnutls/gnutls_3.6.12.bb:do_spdx)
> failed with exit code '1'
>
>
> -------------------------------------------------------------------------------------------------
>
> ERROR: *libpsl-0.21.0-r0 do_spdx:* Error executing a python function in
> exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure
> was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_spdx(d)
>      0003:
> File:
> '/home/yocto/output/poky/meta-spdxscanner/classes/scancode-tk.bbclass',
> lineno: 110, function: do_spdx
>      0106:    if os.path.exists(git_path):
>      0107:        remove_dir_tree(git_path)
>      0108:    invoke_scancode(info['sourcedir'],sstatefile)
>      0109:    bb.warn("source dir = " + info['sourcedir'])
>  *** 0110:    if get_cached_spdx(sstatefile) != None:
>      0111:        write_cached_spdx( info,sstatefile,cur_ver_code )
>      0112:        ## CREATE MANIFEST(write to outfile )
>      0113:        create_manifest(info,sstatefile)
>      0114:    else:
> File:
> '/home/yocto/output/poky/meta-spdxscanner/classes/spdx-common.bbclass',
> lineno: 164, function: get_cached_spdx
>      0160:    except subprocess.CalledProcessError as e:
>      0161:        bb.error("Index creation command '%s' failed with return
> code %d:\n%s" % (e.cmd, e.returncode, e.output))
>      0162:        return None
>      0163:    cached_spdx_info=output.decode('utf-8').split(': ')
>  *** 0164:    return cached_spdx_info[1]
>      0165:
>      0166:#Find InfoInLicenseFile and fill into
> PackageLicenseInfoInLicenseFile.
>      0167:def find_infoinlicensefile(sstatefile):
>      0168:    import subprocess
> Exception: IndexError: list index out of range
>
> ERROR: Logfile of failure stored in:
> /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/libpsl/0.21.0-r0/temp/log.do_spdx.17370
> ERROR: Task
> (/home/yocto/output/poky/meta/recipes-support/libpsl/libpsl_0.21.0.bb:do_spdx)
> failed with exit code '1'
>
> -------------------------------------------------------------------------------------------------
>

All the other packages have built fine and generated the SPDX docs, please
help me fix the issues with the above packages.

-- 
Regards,
Krishna Chaithanya B

--00000000000038974905a7c0d606
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hi, <br></div><div><br></div><div>I have added meta-spdxscanner in=20
to my poky dunfell distro for core-image-sato build. I see the below=20
packages have failed to generate SPDX doc with the errors below (all=20
other packages are going fine so far). </div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><span=
 style=3D"font-family:monospace">ERROR: <b>gdk-pixbuf-2.40.0-r0</b> do_comp=
ile: Execution of &#39;/home/yocto/output/build/tmp/work/armv7vet2hf-neon-p=
oky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144&#39; failed=
 with exit code 1:<br>[1/2] /home/yocto/output/build/tmp/work/armv7vet2hf-n=
eon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/x=
sltproc --nonet --stringparam man.output.quietly 1 --stringparam funcsynops=
is.style ansi --stringparam man.th.extra1.suppress 1 --stringparam man.auth=
ors.section.enabled 0 --stringparam man.copyright.section.enabled 0 -o docs=
/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sourceforge.net/release/xsl=
/current/manpages/docbook.xsl">http://docbook.sourceforge.net/release/xsl/c=
urrent/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csourc=
e.xml<br>FAILED: docs/gdk-pixbuf-csource.1 <br>/home/yocto/output/build/tmp=
/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysro=
ot-native/usr/bin/xsltproc --nonet --stringparam man.output.quietly 1 --str=
ingparam funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1 --s=
tringparam man.authors.section.enabled 0 --stringparam man.copyright.sectio=
n.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sourcefo=
rge.net/release/xsl/current/manpages/docbook.xsl">http://docbook.sourceforg=
e.net/release/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40.0/doc=
s/gdk-pixbuf-csource.xml<br>I/O error : Attempt to load network entity <a h=
ref=3D"http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.=
xsl">http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xs=
l</a><br>warning: failed to load external entity &quot;<a href=3D"http://do=
cbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl">http://docb=
ook.sourceforge.net/release/xsl/current/manpages/docbook.xsl</a>&quot;<br>c=
annot parse <a href=3D"http://docbook.sourceforge.net/release/xsl/current/m=
anpages/docbook.xsl">http://docbook.sourceforge.net/release/xsl/current/man=
pages/docbook.xsl</a><br>ninja: build stopped: subcommand failed.<br>WARNIN=
G: exit code 1 from a shell command.<br><br>ERROR: Logfile of failure store=
d in: /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi=
/gdk-pixbuf/2.40.0-r0/temp/log.do_compile.5144<br>Log data follows:<br>| DE=
BUG: Executing shell function do_compile<br>| [1/2] /home/yocto/output/buil=
d/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-=
sysroot-native/usr/bin/xsltproc --nonet --stringparam man.output.quietly 1 =
--stringparam funcsynopsis.style ansi --stringparam man.th.extra1.suppress =
1 --stringparam man.authors.section.enabled 0 --stringparam man.copyright.s=
ection.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sou=
rceforge.net/release/xsl/current/manpages/docbook.xsl">http://docbook.sourc=
eforge.net/release/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40.=
0/docs/gdk-pixbuf-csource.xml<br>| FAILED: docs/gdk-pixbuf-csource.1<br>| /=
home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pi=
xbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc --nonet --stringparam=
 man.output.quietly 1 --stringparam funcsynopsis.style ansi --stringparam m=
an.th.extra1.suppress 1 --stringparam man.authors.section.enabled 0 --strin=
gparam man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=
=3D"http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl=
">http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl</=
a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br>| I/O error : Attemp=
t to load network entity <a href=3D"http://docbook.sourceforge.net/release/=
xsl/current/manpages/docbook.xsl">http://docbook.sourceforge.net/release/xs=
l/current/manpages/docbook.xsl</a><br>| warning: failed to load external en=
tity &quot;<a href=3D"http://docbook.sourceforge.net/release/xsl/current/ma=
npages/docbook.xsl">http://docbook.sourceforge.net/release/xsl/current/manp=
ages/docbook.xsl</a>&quot;<br>| cannot parse <a href=3D"http://docbook.sour=
ceforge.net/release/xsl/current/manpages/docbook.xsl">http://docbook.source=
forge.net/release/xsl/current/manpages/docbook.xsl</a><br>| ninja: build st=
opped: subcommand failed.<br>| WARNING: exit code 1 from a shell command.<b=
r>| ERROR: Execution of &#39;/home/yocto/output/build/tmp/work/armv7vet2hf-=
neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.5144&#39; =
failed with exit code 1:<br>| [1/2] /home/yocto/output/build/tmp/work/armv7=
vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/u=
sr/bin/xsltproc --nonet --stringparam man.output.quietly 1 --stringparam fu=
ncsynopsis.style ansi --stringparam man.th.extra1.suppress 1 --stringparam =
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0=
 -o docs/gdk-pixbuf-csource.1 <a href=3D"http://docbook.sourceforge.net/rel=
ease/xsl/current/manpages/docbook.xsl">http://docbook.sourceforge.net/relea=
se/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbu=
f-csource.xml<br>| FAILED: docs/gdk-pixbuf-csource.1<br>| /home/yocto/outpu=
t/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/r=
ecipe-sysroot-native/usr/bin/xsltproc --nonet --stringparam man.output.quie=
tly 1 --stringparam funcsynopsis.style ansi --stringparam man.th.extra1.sup=
press 1 --stringparam man.authors.section.enabled 0 --stringparam man.copyr=
ight.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"http://docbo=
ok.sourceforge.net/release/xsl/current/manpages/docbook.xsl">http://docbook=
.sourceforge.net/release/xsl/current/manpages/docbook.xsl</a> ../gdk-pixbuf=
-2.40.0/docs/gdk-pixbuf-csource.xml<br>| I/O error : Attempt to load networ=
k entity <a href=3D"http://docbook.sourceforge.net/release/xsl/current/manp=
ages/docbook.xsl">http://docbook.sourceforge.net/release/xsl/current/manpag=
es/docbook.xsl</a><br>| warning: failed to load external entity &quot;<a hr=
ef=3D"http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.x=
sl">http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl=
</a>&quot;<br>| cannot parse <a href=3D"http://docbook.sourceforge.net/rele=
ase/xsl/current/manpages/docbook.xsl">http://docbook.sourceforge.net/releas=
e/xsl/current/manpages/docbook.xsl</a><br>| ninja: build stopped: subcomman=
d failed.<br>| WARNING: exit code 1 from a shell command.<br>| <br>ERROR: T=
ask (/home/yocto/output/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.=
0.bb:do_compile) failed with exit code &#39;1&#39;<br><br>-----------------=
---------------------------------------------------------------------------=
---<br><br>ERROR: <b>gettext-0.20.1-r0 do_spdx</b>: Could not invoke scanco=
de Command &#39;/home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/gettext/0.20.1-r0/recipe-sysroot-native/usr/bin/scancode -lpci -=
-spdx-tv /home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnue=
abi/gettext/0.20.1-r0/spdx_sstate_dir/arm-poky-linux-gnueabi/gettext-0.20.1=
-r0/gettext-0.20.1.spdx /home/yocto/output/build/tmp/work/armv7vet2hf-neon-=
poky-linux-gnueabi/gettext/0.20.1-r0/spdx_temp/&#39; returned 1:<br>b&#39;S=
etup plugins...\nCollect file inventory...\nScan files for: info, licenses,=
 copyrights, packages with 1 process(es)...\nScanning done.\nSome files fai=
led to scan properly:\nPath: spdx_temp/gettext-0.20.1/gettext-tools/misc/ar=
chive.dir.tar\nSummary: =C2=A0 =C2=A0 =C2=A0 =C2=A0info, licenses, copyrigh=
ts, packages with 1 process(es)\nErrors count: =C2=A0 1\nScan Speed: =C2=A0=
 =C2=A0 0.67 files/sec. 12.99 KB/sec.\nInitial counts: 6072 resource(s): 58=
35 file(s) and 237 directorie(s) \nFinal counts: =C2=A0 6072 resource(s): 5=
835 file(s) and 237 directorie(s) for 110.01 MB\nTimings:\n =C2=A0scan_star=
t: 2020-06-09T135951.126968\n =C2=A0scan_end: =C2=A0 2020-06-09T162428.6118=
05\n =C2=A0setup_scan:licenses: 1.30s\n =C2=A0setup: 1.30s\n =C2=A0inventor=
y: 1.93s\n =C2=A0scan:packages: 0.49s\n =C2=A0scan: 8672.24s\n =C2=A0output=
:spdx-tv: 6.64s\n =C2=A0output: 6.64s\n =C2=A0total: 8684.54s\nRemoving tem=
porary files...done.\n&#39;<br>ERROR: Logfile of failure stored in: /home/y=
octo/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gettext/0.20=
.1-r0/temp/log.do_spdx.6774<br>ERROR: Task (/home/yocto/output/poky/meta/re=
cipes-core/gettext/gettext_0.20.1.bb:do_spdx) failed with exit code &#39;1&=
#39;<br><br>---------------------------------------------------------------=
--------------------------------<br><br>ERROR: <b>gnutls-3.6.12-r0 do_spdx<=
/b>: Could not invoke scancode Command &#39;/home/yocto/output/build/tmp/wo=
rk/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/recipe-sysroot-nati=
ve/usr/bin/scancode -lpci --spdx-tv /home/yocto/output/build/tmp/work/armv7=
vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_sstate_dir/arm-poky-li=
nux-gnueabi/gnutls-3.6.12-r0/gnutls-3.6.12.spdx /home/yocto/output/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls/3.6.12-r0/spdx_temp/&#39;=
 returned 1:<br>b&#39;Setup plugins...\nCollect file inventory...\nScan fil=
es for: info, licenses, copyrights, packages with 1 process(es)...\nScannin=
g done.\nSome files failed to scan properly:\nPath: spdx_temp/gnutls-3.6.12=
/tests/data/long.pem\nSummary: =C2=A0 =C2=A0 =C2=A0 =C2=A0info, licenses, c=
opyrights, packages with 1 process(es)\nErrors count: =C2=A0 1\nScan Speed:=
 =C2=A0 =C2=A0 1.47 files/sec. 10.75 KB/sec.\nInitial counts: 6564 resource=
(s): 6456 file(s) and 108 directorie(s) \nFinal counts: =C2=A0 6564 resourc=
e(s): 6456 file(s) and 108 directorie(s) for 46.03 MB\nTimings:\n =C2=A0sca=
n_start: 2020-06-09T171835.506413\n =C2=A0scan_end: =C2=A0 2020-06-09T18314=
5.722364\n =C2=A0setup_scan:licenses: 1.17s\n =C2=A0setup: 1.17s\n =C2=A0in=
ventory: 1.88s\n =C2=A0scan:packages: 0.52s\n =C2=A0scan: 4384.91s\n =C2=A0=
output:spdx-tv: 6.71s\n =C2=A0output: 6.71s\n =C2=A0total: 4397.42s\nRemovi=
ng temporary files...done.\n&#39;<br>ERROR: Logfile of failure stored in: /=
home/yocto/output/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gnutls=
/3.6.12-r0/temp/log.do_spdx.30861<br>ERROR: Task (/home/yocto/output/poky/m=
eta/recipes-support/gnutls/gnutls_3.6.12.bb:do_spdx) failed with exit code =
&#39;1&#39;<br><br>--------------------------------------------------------=
-----------------------------------------<br><br>ERROR: <b>libpsl-0.21.0-r0=
 do_spdx:</b> Error executing a python function in exec_python_func() autog=
enerated:<br><br>The stack trace of python calls that resulted in this exce=
ption/failure was:<br>File: &#39;exec_python_func() autogenerated&#39;, lin=
eno: 2, function: &lt;module&gt;<br>=C2=A0 =C2=A0 =C2=A00001:<br>=C2=A0*** =
0002:do_spdx(d)<br>=C2=A0 =C2=A0 =C2=A00003:<br>File: &#39;/home/yocto/outp=
ut/poky/meta-spdxscanner/classes/scancode-tk.bbclass&#39;, lineno: 110, fun=
ction: do_spdx<br>=C2=A0 =C2=A0 =C2=A00106: =C2=A0 =C2=A0if os.path.exists(=
git_path):<br>=C2=A0 =C2=A0 =C2=A00107: =C2=A0 =C2=A0 =C2=A0 =C2=A0remove_d=
ir_tree(git_path)<br>=C2=A0 =C2=A0 =C2=A00108: =C2=A0 =C2=A0invoke_scancode=
(info[&#39;sourcedir&#39;],sstatefile)<br>=C2=A0 =C2=A0 =C2=A00109: =C2=A0 =
=C2=A0bb.warn(&quot;source dir =3D &quot; + info[&#39;sourcedir&#39;])<br>=
=C2=A0*** 0110: =C2=A0 =C2=A0if get_cached_spdx(sstatefile) !=3D None:<br>=
=C2=A0 =C2=A0 =C2=A00111: =C2=A0 =C2=A0 =C2=A0 =C2=A0write_cached_spdx( inf=
o,sstatefile,cur_ver_code )<br>=C2=A0 =C2=A0 =C2=A00112: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0## CREATE MANIFEST(write to outfile )<br>=C2=A0 =C2=A0 =C2=A00113=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0create_manifest(info,sstatefile)<br>=C2=A0 =C2=
=A0 =C2=A00114: =C2=A0 =C2=A0else:<br>File: &#39;/home/yocto/output/poky/me=
ta-spdxscanner/classes/spdx-common.bbclass&#39;, lineno: 164, function: get=
_cached_spdx<br>=C2=A0 =C2=A0 =C2=A00160: =C2=A0 =C2=A0except subprocess.Ca=
lledProcessError as e:<br>=C2=A0 =C2=A0 =C2=A00161: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0bb.error(&quot;Index creation command &#39;%s&#39; failed with return=
 code %d:\n%s&quot; % (e.cmd, e.returncode, e.output))<br>=C2=A0 =C2=A0 =C2=
=A00162: =C2=A0 =C2=A0 =C2=A0 =C2=A0return None<br>=C2=A0 =C2=A0 =C2=A00163=
: =C2=A0 =C2=A0cached_spdx_info=3Doutput.decode(&#39;utf-8&#39;).split(&#39=
;: &#39;)<br>=C2=A0*** 0164: =C2=A0 =C2=A0return cached_spdx_info[1]<br>=C2=
=A0 =C2=A0 =C2=A00165:<br>=C2=A0 =C2=A0 =C2=A00166:#Find InfoInLicenseFile =
and fill into PackageLicenseInfoInLicenseFile.<br>=C2=A0 =C2=A0 =C2=A00167:=
def find_infoinlicensefile(sstatefile):<br>=C2=A0 =C2=A0 =C2=A00168: =C2=A0=
 =C2=A0import subprocess<br>Exception: IndexError: list index out of range<=
br><br>ERROR: Logfile of failure stored in: /home/yocto/output/build/tmp/wo=
rk/armv7vet2hf-neon-poky-linux-gnueabi/libpsl/0.21.0-r0/temp/log.do_spdx.17=
370<br>ERROR: Task (/home/yocto/output/poky/meta/recipes-support/libpsl/lib=
psl_0.21.0.bb:do_spdx) failed with exit code &#39;1&#39;<br>---------------=
---------------------------------------------------------------------------=
-------<br></span></div></blockquote><div><br></div><div>All the other pack=
ages have built fine and generated the SPDX docs, please help me fix the is=
sues with the above packages. <br></div><div><br></div><div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><span=
 style=3D"color:rgb(51,51,255)">Regards,</span><span style=3D"color:rgb(51,=
51,255)"><br>Krishna Chaithanya B</span></div></div></div>

--00000000000038974905a7c0d606--
