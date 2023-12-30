Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D9ACC46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:02:03 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web10.179038.1703912522859845292
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:02:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y0pomheN;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6d9b37f4804so2768297b3a.1
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912522; x=1704517322; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R8DgZbxxG9wIzpzrde7fXuVaqT/AO7X3xhPQ8FQisyI=;
        b=Y0pomheN/N+SZKjgtoJ6BKtm8cLBs90yLxpS7cmCVNT0qh+3N09nxr1CVrhDZ1cXKY
         h0H5tIKC4zgR21OL+fbNW+14o7voamDeeylXMyqWVHNYFmXUgl+eaeB25G+wncjDExt/
         YSTNlucP9rXhYMNOWfkPUaApVc1N4QVTNDPTFQP1qStYlyNPKrHS5skrKmJE1vEtHZYF
         zXhpPq6S4KPWDDJR612z5hhmOWL56DlXQ9bQF1o8JgWXbmZMPwPbGJJ8ZFOjBnfVFtaj
         r02fQR39rJUsVGPP0GwZI5fVkDuI+eQt0hhsH6dEwYhcpETUuVfWbNnVOzcqgnbf8mSb
         0kuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912522; x=1704517322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R8DgZbxxG9wIzpzrde7fXuVaqT/AO7X3xhPQ8FQisyI=;
        b=D9E6Xk4s9sOe8+iJNWKbsGu2/d6GkwYDjUUDYqNP59fIm+O9jwO0PoW/cVpS/gtnSb
         i7GrwuNG68ovNga8GKG/GgAZR0skDliingXfJWSin4yvcXoVk8gYrZ1Jf8DMC0mwv3JK
         9eyev/kj08I60DMbcNqVyQsch9/E1006ggg9KmbDhdJwR6dCxtSViPCQm06qj2rQKZEX
         /Pfr46IqscnEi66ZmNPVuVhFv6NEevjhwBHY1VywbBne2e/JfKdY7AMOWpmDb6tzp/ZF
         M48FkuQM4zeliakZeZeiIcshqsU9mjal54jAb1EtUArVBAKA3qX0oyDQamnar1u2YHOv
         SJBA==
X-Gm-Message-State: AOJu0YxuIjzs8kwS9NCOoyxxupfyi5AGDzcWMbZtLEcYvQwyNk2hfKf3
	K5ItWJq9hw9sH2K+fRdjLuuMX6T9iv8=
X-Google-Smtp-Source: AGHT+IHih1XS3MhqW5pTmyWmIUqysgSZEM/FapfAzjDT+myxQTi5cOMJ77mk6IqkhOingPKB0ZZU5g==
X-Received: by 2002:a05:6a20:748c:b0:196:444a:944 with SMTP id p12-20020a056a20748c00b00196444a0944mr5385445pzd.52.1703912521794;
        Fri, 29 Dec 2023 21:02:01 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.02.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:02:01 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 4/7] dockersetup.py: enable production Let's Encrypt
Date: Fri, 29 Dec 2023 20:57:15 -0800
Message-Id: <203bbdb44fadb12cd7706601c510ac04e4c2fdfa.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:02:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62055

The '--staging' argument to certbot has now been changed
to '--test-cert'. We previously only allowed using the
dockersetup.py tool to create Staging environment certs,
which are still marked as invalid by browsers. Add a
'--letsencrypt-production' knob to allow for valid, trusted
certs to be created. If they already exist in the workspace
and have not expired, re-use them (to avoid hitting rate
limits). Continue to '--force-renewal' for staging certs.

NOTE:
  If you have previously created staging certs in your
  workspace, you will want to clean docker/certs before
  creating production certs for the same domain. Certbot
  will not overwrite those staging certs and the newly
  created ones will not be in the path passed in by
  dockersetup.py.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 dockersetup.py | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/dockersetup.py b/dockersetup.py
index d6e8f33..56458d3 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -66,6 +66,7 @@ def get_args():
     parser.add_argument('--cert', type=str, help='Existing SSL certificate to use for HTTPS web serving', required=False)
     parser.add_argument('--cert-key', type=str, help='Existing SSL certificate key to use for HTTPS web serving', required=False)
     parser.add_argument('--letsencrypt', action="store_true", default=False, help='Use Let\'s Encrypt for HTTPS')
+    parser.add_argument('--letsencrypt-production', action="store_true", default=False, help='Use Production server for Let\'s Encrypt. Default is %(default)s')
     parser.add_argument('--no-migrate', action="store_true", default=False, help='Skip running database migrations')
     parser.add_argument('--no-admin-user', action="store_true", default=False, help='Skip adding admin user')
     parser.add_argument('--no-connectivity', action="store_true", default=False, help='Skip checking external network connectivity')
@@ -473,7 +474,7 @@ def edit_dockerfile_web(hostname, no_https):
     writefile("Dockerfile.web", ''.join(newlines))
 
 
-def setup_https(hostname, http_port, https_port, letsencrypt, cert, cert_key, emailaddr):
+def setup_https(hostname, http_port, https_port, letsencrypt, letsencrypt_production, cert, cert_key, emailaddr):
     local_cert_dir = os.path.abspath('docker/certs')
     container_cert_dir = '/opt/cert'
     if letsencrypt:
@@ -548,7 +549,7 @@ def setup_https(hostname, http_port, https_port, letsencrypt, cert, cert_key, em
             shutil.rmtree(tempdir)
 
         # Now run certbot to register SSL certificate
-        staging_arg = '--staging'
+        staging_arg = '--force-renewal --test-cert' if not letsencrypt_production else '--keep-until-expiring'
         if emailaddr:
             email_arg = '--email %s' % quote(emailaddr)
         else:
@@ -560,7 +561,7 @@ def setup_https(hostname, http_port, https_port, letsencrypt, cert, cert_key, em
     -d %s \
     --rsa-key-size 4096 \
     --agree-tos \
-    --force-renewal" layerscertbot' % (staging_arg, email_arg, quote(hostname)), shell=True)
+    " layerscertbot' % (staging_arg, email_arg, quote(hostname)), shell=True)
         if return_code != 0:
             print("Running certbot failed")
             sys.exit(1)
@@ -757,7 +758,7 @@ else:
     edit_options_file(args.project_name)
 
     if not args.no_https:
-        setup_https(args.hostname, http_port, https_port, args.letsencrypt, args.cert, args.cert_key, emailaddr)
+        setup_https(args.hostname, http_port, https_port, args.letsencrypt, args.letsencrypt_production, args.cert, args.cert_key, emailaddr)
 
 ## Start up containers
 return_code = subprocess.call(['docker-compose', 'up', '-d', '--build'], shell=False)
-- 
2.34.1


