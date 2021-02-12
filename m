Received: from hmr112.pwrz.at (hmr112.pwrz.at [194.30.191.129])
 by mx.groups.io with SMTP id smtpd.web10.1766.1613124176474680858
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 02:02:57 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@voxel.at header.s=default header.b=CvNZxfiz;
 spf=pass (domain: voxel.at, ip: 194.30.191.129, mailfrom: simon@voxel.at)
Received: from srv345.pwrz.at (unknown [10.10.30.15])
	by hmr112.pwrz.at (Postfix) with ESMTP id 8AC7540226
	for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 11:02:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by srv345.pwrz.at (Postfix) with ESMTP id 32DA0D137D;
	Fri, 12 Feb 2021 11:02:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at pwrz.at
Received: from srv345.pwrz.at ([127.0.0.1])
	by localhost (srv345.pwrz.at [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKeVwmYr0Byf; Fri, 12 Feb 2021 11:02:48 +0100 (CET)
Received: from srv371.pwrz.at (srv371.pwrz.at [80.122.189.136])
	by srv345.pwrz.at (Postfix) with ESMTP id 5FF05CC118
	for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 11:02:48 +0100 (CET)
Received: from grau.fritz.box (unknown [80.243.174.92])
	by srv371.pwrz.at (Postfix) with ESMTPSA id 965032C1075
	for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 11:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voxel.at; s=default;
	t=1613124204; bh=7rVQgj0huZTbhlaQpJKFGfs3JGc9wNKZEo8QPFBMmhc=;
	l=7338;
	h=To:From:Subject:Organization:Message-ID:Date:User-Agent:
	 MIME-Version:Content-Type:Content-Language:X-PPP-Message-ID:
	 X-PPP-Vhost;
	b=CvNZxfizBaMG6ywhn4LMdU4/mx/5jkctFtNHeLSLZEN7wPiZHMc9HawCKZAeiDAwf
	 HC1EDghAsyFYaDFY4OFgHeFzpj/WDZGxCkV357yFsUfJsNAQAFhRnEAUB8FYLpOydq
	 CTS5x1XlTeiQHTAgxk6zfriTlCItRgTeqiCasaSg=
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Simon Vogl" <simon@voxel.at>
Subject: Dunfell, nodejs and typescript - short experience report
Organization: VoXel Interaction Design
Message-ID: <c8592b7e-a498-e413-1527-f5f6fe4dad0c@voxel.at>
Date: Fri, 12 Feb 2021 11:02:48 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.1
MIME-Version: 1.0
X-PPP-Message-ID: <20210212100324.1169.30773@srv371.pwrz.at>
X-PPP-Vhost: voxel.at
Content-Type: multipart/alternative;
 boundary="------------84A59285A2D4C7DB6E060286"
Content-Language: it

--------------84A59285A2D4C7DB6E060286
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have some remarks and questions about the npm/nodejs support in 
dunfell that I wanted to share. We are creating nodejs-based IoT edge 
solutions and upgrading our build environments to Dunfell one by one. In 
the course of this, we are switching to the new npm-implementation and 
found a few small issues.

Firstly, the do_configure() task takes quite some time to complete. 
After a quick analysis, I saw that most of the time is being spent in 
creating the npmrc files while packing the dependent packages. I wrote a 
small workaround to directly create the file instead of calling 'npm 
config', which results in a 3x-4x speedup:

Signed-off-by: Simon Vogl<simon@voxel.at>
---
  lib/bb/fetch2/npm.py | 9 +++++++--
  1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/lib/bb/fetch2/npm.py b/lib/bb/fetch2/npm.py
index 4789850..2720d87 100644
--- a/lib/bb/fetch2/npm.py
+++ b/lib/bb/fetch2/npm.py
@@ -97,13 +97,18 @@ class NpmEnvironment(object):
                  cmd = "NPM_CONFIG_GLOBALCONFIG=%s " % cfgfile + cmd
                  return runfetchcmd(cmd, d, workdir=workdir)
  
+            cfg = open(cfgfile, "a")
              if self.configs:
                  for key, value in self.configs:
-                    _run("npm config set %s %s" % (key, shlex.quote(value)))
+                    cfg.write("%s=%s\n" % (key, shlex.quote(value)))
+                    #_run("npm config set %s %s" % (key, shlex.quote(value)))
  
              if configs:
                  for key, value in configs:
-                    _run("npm config set %s %s" % (key, shlex.quote(value)))
+                    cfg.write("%s=%s\n" % (key, shlex.quote(value)))
+                    # _run("npm config set %s %s" % (key, shlex.quote(value)))
+
+            cfg.close()
  
              if args:
                  for key, value in args:
-- 2.7.4

Are there any side effects that I did not stumble over yet? And I'd LOVE 
to have these calls running in a thread-pool for better performance...


Secondly, our projects are based on typescript, so a native compile step 
is necessary to create a compiled version for packing. We experimented 
with a separate release branch to check in compiled versions, but this 
is not easy to handle. I played around with npm.bbclass and found a way 
to extend configure (!) with a call to our build script before packaging:

diff --git a/meta/classes/npm.bbclass b/meta/classes/npm.bbclass
index 068032a1e5..31535098cf 100644
--- a/meta/classes/npm.bbclass
+++ b/meta/classes/npm.bbclass
@@ -170,6 +170,11 @@ python npm_do_configure() {
  
      # Configure the main package
      with tempfile.TemporaryDirectory() as tmpdir:
+        # install all (native) build dependencies, overrides npm cache:
+        ret = os.system("npm i")
+        # run build step:
+        env.run("npm run build", args=[], workdir=d.getVar("S"))
+
          tarball = npm_pack(env, d.getVar("S"), tmpdir)
          npm_unpack(tarball, d.getVar("NPM_PACKAGE"), d)

As we have plain JS packages as well, I put the modified configure() in 
a subclass and this works for us, but it does not look like a clean 
solution to me. How do you other IoT'ers address this situation?

Simon


-- 
VoXel Interaction Design  |  www.voxel.at
DI Dr.techn. Simon Vogl   |  simon@voxel.at
Tomaschekweg 46           |  +43 650 2323 555
A-4040 Linz - Austria     |
Office address: Industriezeile 35, 4020 Linz (2nd floor)


--------------84A59285A2D4C7DB6E060286
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>I have some remarks and questions about the npm/nodejs support in
      dunfell that I wanted to share. We are creating nodejs-based IoT
      edge solutions and upgrading our build environments to Dunfell one
      by one. In the course of this, we are switching to the new
      npm-implementation and found a few small issues.</p>
    <p>Firstly, the do_configure() task takes quite some time to
      complete. After a quick analysis, I saw that most of the time is
      being spent in creating the npmrc files while packing the
      dependent packages. I wrote a small workaround to directly create
      the file instead of calling 'npm config', which results in a 3x-4x
      speedup:</p>
    <div class=3D"moz-text-plain" wrap=3D"true" style=3D"font-family:
      -moz-fixed; font-size: 12px;" lang=3D"x-western">
      <pre class=3D"moz-quote-pre" wrap=3D"">Signed-off-by: Simon Vogl <a=
 class=3D"moz-txt-link-rfc2396E" href=3D"mailto:simon@voxel.at">&lt;simon=
@voxel.at&gt;</a>
---
 lib/bb/fetch2/npm.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/lib/bb/fetch2/npm.py b/lib/bb/fetch2/npm.py
index 4789850..2720d87 100644
--- a/lib/bb/fetch2/npm.py
+++ b/lib/bb/fetch2/npm.py
@@ -97,13 +97,18 @@ class NpmEnvironment(object):
                 cmd =3D "NPM_CONFIG_GLOBALCONFIG=3D%s " % cfgfile + cmd
                 return runfetchcmd(cmd, d, workdir=3Dworkdir)
=20
+            cfg =3D open(cfgfile, "a")
             if self.configs:
                 for key, value in self.configs:
-                    _run("npm config set %s %s" % (key, shlex.quote(valu=
e)))
+                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
+                    #_run("npm config set %s %s" % (key, shlex.quote(val=
ue)))
=20
             if configs:
                 for key, value in configs:
-                    _run("npm config set %s %s" % (key, shlex.quote(valu=
e)))
+                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
+                    # _run("npm config set %s %s" % (key, shlex.quote(va=
lue)))
+
+            cfg.close()
=20
             if args:
                 for key, value in args:
<div class=3D"moz-txt-sig">--=20
2.7.4

</div></pre>
    </div>
    <p>Are there any side effects that I did not stumble over yet? And
      I'd LOVE to have these calls running in a thread-pool for better
      performance...<br>
    </p>
    <p><br>
    </p>
    <p>Secondly, our projects are based on typescript, so a native
      compile step is necessary to create a compiled version for
      packing. We experimented with a separate release branch to check
      in compiled versions, but this is not easy to handle. I played
      around with npm.bbclass and found a way to extend configure (!)
      with a call to our build script before packaging:=C2=A0 <br>
    </p>
    <pre>diff --git a/meta/classes/npm.bbclass b/meta/classes/npm.bbclass
index 068032a1e5..31535098cf 100644
--- a/meta/classes/npm.bbclass
+++ b/meta/classes/npm.bbclass
@@ -170,6 +170,11 @@ python npm_do_configure() {
=20
     # Configure the main package
     with tempfile.TemporaryDirectory() as tmpdir:
+        # install all (native) build dependencies, overrides npm cache:
+        ret =3D os.system("npm i")
+        # run build step:
+        env.run("npm run build", args=3D[], workdir=3Dd.getVar("S"))
+
         tarball =3D npm_pack(env, d.getVar("S"), tmpdir)
         npm_unpack(tarball, d.getVar("NPM_PACKAGE"), d)

</pre>
    <p>As we have plain JS packages as well, I put the modified
      configure() in a subclass and this works for us, but it does not
      look like a clean solution to me. How do you other IoT'ers address
      this situation? <br>
    </p>
    <p>Simon<br>
    </p>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
VoXel Interaction Design  |  <a class=3D"moz-txt-link-abbreviated" href=3D=
"http://www.voxel.at">www.voxel.at</a>
DI Dr.techn. Simon Vogl   |  <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:simon@voxel.at">simon@voxel.at</a>
Tomaschekweg 46           |  +43 650 2323 555
A-4040 Linz - Austria     | =20
Office address: Industriezeile 35, 4020 Linz (2nd floor)</pre>
  </body>
</html>

--------------84A59285A2D4C7DB6E060286--
