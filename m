Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA0E6C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 13:54:07 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web09.10635.1651154045947602267
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=CRXyzWIL;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.170,
 mailfrom: steve@sakoman.com)
Received: by mail-pg1-f170.google.com with SMTP id r83so4052555pgr.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=yJMemLSMsaJMrh5xsPp/cCjJLZiFP3hNLUTbmlZlQ80=;
        b=CRXyzWIL8dHSeadKirAoxT2KuQ2qdAjOfghD9V9oqyM5VyB00IaJAQKty5+2LwKoyN
         flRyaQVnuHWQQ7IU6/nk2ohKi11pz3OGCGrqsjqrb4ZcnlcGSIbdMKW3s/+GIYY3Jmd2
         qdGAEfUaXtAO/92JL9za+CCWWkm1apy/NTiPcZi+0+yix4iYXXink1Hmq4R1/MfzbYbg
         99WyOiOHAploqQDoA3wuZb4orvw5mEhReZhMBpnLGD2TkGg8kTMUS4OV6uDrGEYYfQyb
         nEAuqDDNa9Cmbjx1gQ4pyEeEEvGtAsx9M6jHVW9biqsz7W66nzGuspzsjdzmba36duWw
         rdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yJMemLSMsaJMrh5xsPp/cCjJLZiFP3hNLUTbmlZlQ80=;
        b=J5k5lrpkDND20Ts1iprEV3oBWN5GZlCPMiDC9IKUN3lJp3E0JzgBSF/n6mBW003pOL
         VTqof4D0nFIeZl1XxsAHeFfTZ59v5r+lpZhVt1w3wx3NvWA09ChB37lz1t3HNvCitN5d
         dMWI7NhhsJ6xbCTqg202m6fgeKgDhgbNTQ9gTRsE/hA1dWNuF8mk1DpzcYTCTjWK5jH+
         Vc+E/lc9CN4b7cQsHtYCpCELgpopa+Wgz2vDbC5bCJD2m11/HVcxXURxZyVG7SCTYa6i
         IBeMMGAu2qm0WjfwoRBiT427ygS6gk7jNNrczBGt077g0bCtJ1l8ihih6wyAGhzNk2x4
         DlFg==
X-Gm-Message-State: AOAM530tUZXZzatJeEj9ZWtisDNnZhDDgPhHXCFzWO+1M5s/I/Ud3hXb
	LnkdfK/TSWaQUzca2mEwCXXg/jqHkJUsDwtxWKk=
X-Google-Smtp-Source: 
 ABdhPJyocpZJWOvkE9Z4/kuKlHHcKMsTbECftbGdZipQA2BQqE64+UISIfu2IELE6FOxQXhaWF9qmA==
X-Received: by 2002:a63:6b87:0:b0:3aa:e0eb:d157 with SMTP id
 g129-20020a636b87000000b003aae0ebd157mr23982449pgc.23.1651154044670;
        Thu, 28 Apr 2022 06:54:04 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 m1-20020a17090ade0100b001cb3feaddfcsm5256615pjv.2.2022.04.28.06.54.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 06:54:03 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 2/2] oe-build-perf-report-email:
 Drop phantomjs email generation support
Date: Thu, 28 Apr 2022 03:53:20 -1000
Message-Id: 
 <f4ab4d3f29becd65a92b3f938aaa53ca8163fdec.1651153719.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1651153719.git.steve@sakoman.com>
References: <cover.1651153719.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 13:54:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56942

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This approach didn't work reliably so switch to text based emails
pointing at the website version with graphs and data.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit c0a7cac39acba54e106fa74143c5de7c5eeefab8)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/oe-build-perf-report-email.py | 158 +-------------------------
 1 file changed, 6 insertions(+), 152 deletions(-)

diff --git a/scripts/oe-build-perf-report-email.py b/scripts/oe-build-perf-report-email.py
index f4476f5..6d16892 100755
--- a/scripts/oe-build-perf-report-email.py
+++ b/scripts/oe-build-perf-report-email.py
@@ -25,8 +25,6 @@ import socket
 import subprocess
 import sys
 import tempfile
-from email.mime.image import MIMEImage
-from email.mime.multipart import MIMEMultipart
 from email.mime.text import MIMEText
 
 
@@ -42,22 +40,6 @@ if not os.path.isfile(SCRAPE_JS):
     sys.exit(1)
 
 
-class ReportError(Exception):
-    """Local errors"""
-    pass
-
-
-def check_utils():
-    """Check that all needed utils are installed in the system"""
-    missing = []
-    for cmd in ('phantomjs', 'optipng'):
-        if not shutil.which(cmd):
-            missing.append(cmd)
-    if missing:
-        log.error("The following tools are missing: %s", ' '.join(missing))
-        sys.exit(1)
-
-
 def parse_args(argv):
     """Parse command line arguments"""
     description = """Email build perf test report"""
@@ -82,137 +64,20 @@ def parse_args(argv):
                              "the email parts")
     parser.add_argument('--text',
                         help="Plain text message")
-    parser.add_argument('--html',
-                        help="HTML peport generated by oe-build-perf-report")
     parser.add_argument('--phantomjs-args', action='append',
                         help="Extra command line arguments passed to PhantomJS")
 
     args = parser.parse_args(argv)
 
-    if not args.html and not args.text:
-        parser.error("Please specify --html and/or --text")
+    if not args.text:
+        parser.error("Please specify --text")
 
     return args
 
 
-def decode_png(infile, outfile):
-    """Parse/decode/optimize png data from a html element"""
-    with open(infile) as f:
-        raw_data = f.read()
-
-    # Grab raw base64 data
-    b64_data = re.sub('^.*href="data:image/png;base64,', '', raw_data, 1)
-    b64_data = re.sub('">.+$', '', b64_data, 1)
-
-    # Replace file with proper decoded png
-    with open(outfile, 'wb') as f:
-        f.write(base64.b64decode(b64_data))
-
-    subprocess.check_output(['optipng', outfile], stderr=subprocess.STDOUT)
-
-
-def mangle_html_report(infile, outfile, pngs):
-    """Mangle html file into a email compatible format"""
-    paste = True
-    png_dir = os.path.dirname(outfile)
-    with open(infile) as f_in:
-        with open(outfile, 'w') as f_out:
-            for line in f_in.readlines():
-                stripped = line.strip()
-                # Strip out scripts
-                if stripped == '<!--START-OF-SCRIPTS-->':
-                    paste = False
-                elif stripped == '<!--END-OF-SCRIPTS-->':
-                    paste = True
-                elif paste:
-                    if re.match('^.+href="data:image/png;base64', stripped):
-                        # Strip out encoded pngs (as they're huge in size)
-                        continue
-                    elif 'www.gstatic.com' in stripped:
-                        # HACK: drop references to external static pages
-                        continue
-
-                    # Replace charts with <img> elements
-                    match = re.match('<div id="(?P<id>\w+)"', stripped)
-                    if match and match.group('id') in pngs:
-                        f_out.write('<img src="cid:{}"\n'.format(match.group('id')))
-                    else:
-                        f_out.write(line)
-
-
-def scrape_html_report(report, outdir, phantomjs_extra_args=None):
-    """Scrape html report into a format sendable by email"""
-    tmpdir = tempfile.mkdtemp(dir='.')
-    log.debug("Using tmpdir %s for phantomjs output", tmpdir)
-
-    if not os.path.isdir(outdir):
-        os.mkdir(outdir)
-    if os.path.splitext(report)[1] not in ('.html', '.htm'):
-        raise ReportError("Invalid file extension for report, needs to be "
-                          "'.html' or '.htm'")
-
-    try:
-        log.info("Scraping HTML report with PhangomJS")
-        extra_args = phantomjs_extra_args if phantomjs_extra_args else []
-        subprocess.check_output(['phantomjs', '--debug=true'] + extra_args +
-                                [SCRAPE_JS, report, tmpdir],
-                                stderr=subprocess.STDOUT)
-
-        pngs = []
-        images = []
-        for fname in os.listdir(tmpdir):
-            base, ext = os.path.splitext(fname)
-            if ext == '.png':
-                log.debug("Decoding %s", fname)
-                decode_png(os.path.join(tmpdir, fname),
-                           os.path.join(outdir, fname))
-                pngs.append(base)
-                images.append(fname)
-            elif ext in ('.html', '.htm'):
-                report_file = fname
-            else:
-                log.warning("Unknown file extension: '%s'", ext)
-                #shutil.move(os.path.join(tmpdir, fname), outdir)
-
-        log.debug("Mangling html report file %s", report_file)
-        mangle_html_report(os.path.join(tmpdir, report_file),
-                           os.path.join(outdir, report_file), pngs)
-        return (os.path.join(outdir, report_file),
-                [os.path.join(outdir, i) for i in images])
-    finally:
-        shutil.rmtree(tmpdir)
-
-def send_email(text_fn, html_fn, image_fns, subject, recipients, copy=[],
-               blind_copy=[]):
-    """Send email"""
-    # Generate email message
-    text_msg = html_msg = None
-    if text_fn:
-        with open(text_fn) as f:
-            text_msg = MIMEText("Yocto build performance test report.\n" +
-                                f.read(), 'plain')
-    if html_fn:
-        html_msg = msg = MIMEMultipart('related')
-        with open(html_fn) as f:
-            html_msg.attach(MIMEText(f.read(), 'html'))
-        for img_fn in image_fns:
-            # Expect that content id is same as the filename
-            cid = os.path.splitext(os.path.basename(img_fn))[0]
-            with open(img_fn, 'rb') as f:
-                image_msg = MIMEImage(f.read())
-            image_msg['Content-ID'] = '<{}>'.format(cid)
-            html_msg.attach(image_msg)
-
-    if text_msg and html_msg:
-        msg = MIMEMultipart('alternative')
-        msg.attach(text_msg)
-        msg.attach(html_msg)
-    elif text_msg:
-        msg = text_msg
-    elif html_msg:
-        msg = html_msg
-    else:
-        raise ReportError("Neither plain text nor html body specified")
+def send_email(text_fn, subject, recipients, copy=[], blind_copy=[]):
+    with open(text_fn) as f:
+        msg = MIMEText("Yocto build performance test report.\n" + f.read(), 'plain')
 
     pw_data = pwd.getpwuid(os.getuid())
     full_name = pw_data.pw_gecos.split(',')[0]
@@ -239,8 +104,6 @@ def main(argv=None):
     if args.debug:
         log.setLevel(logging.DEBUG)
 
-    check_utils()
-
     if args.outdir:
         outdir = args.outdir
         if not os.path.exists(outdir):
@@ -250,25 +113,16 @@ def main(argv=None):
 
     try:
         log.debug("Storing email parts in %s", outdir)
-        html_report = images = None
-        if args.html:
-            html_report, images = scrape_html_report(args.html, outdir,
-                                                     args.phantomjs_args)
-
         if args.to:
             log.info("Sending email to %s", ', '.join(args.to))
             if args.cc:
                 log.info("Copying to %s", ', '.join(args.cc))
             if args.bcc:
                 log.info("Blind copying to %s", ', '.join(args.bcc))
-            send_email(args.text, html_report, images, args.subject,
-                       args.to, args.cc, args.bcc)
+            send_email(args.text, args.subject, args.to, args.cc, args.bcc)
     except subprocess.CalledProcessError as err:
         log.error("%s, with output:\n%s", str(err), err.output.decode())
         return 1
-    except ReportError as err:
-        log.error(err)
-        return 1
     finally:
         if not args.outdir:
             log.debug("Wiping %s", outdir)
-- 
2.25.1


