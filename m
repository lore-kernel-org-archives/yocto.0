Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DEEC433F5
	for <webhook@archiver.kernel.org>; Sun, 17 Oct 2021 22:00:08 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
 [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.28241.1634508007701254898
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Oct 2021 15:00:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YpOZqTUK;
 spf=pass (domain: gmail.com, ip: 209.85.219.180,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id s64so1060575yba.11
        for <yocto@lists.yoctoproject.org>;
 Sun, 17 Oct 2021 15:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WvFigVzAEtMJMYkg1/B7xZQxCcJdGwQJIb9QE/ywL/E=;
        b=YpOZqTUKqGt20ENh4xAOWNznYyOFg+H0i2HW0RRspd5YyIDHBum1DPLwCEYhSeAJQE
         mYdhoB4B0H6BaYxZIsJr1SqvzDRMUHclQnnz3O5Gh13J9TrqsvIGWQY+DEYjN+UvZmts
         8LGHTWCY1jAKdzElJ9OtC+9pZEMfYdf1qEKuJq3xzJksfQQjd6tq2figSnfzZuYiUYtv
         awz4yNwiQoJ776a7gJGsu+E12BUdmTo8hm+oLJQhazX1sj8UjX2zP4doDyLPbhw0rcGg
         wn5LOhcP5lp+EiHUplTvIv0vypObjvCz2SwkO7ybBcq8gg2qp7ziZ24eUIg0PPSQGy/b
         ZAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WvFigVzAEtMJMYkg1/B7xZQxCcJdGwQJIb9QE/ywL/E=;
        b=Vwkh792ustghfPjU3a0OxemKp9wSqXiNt2zu1NATJDO8/YRulumAu2co1DsyAGyLd4
         plT4hfTVTeH4DLheURzggbfjyLr5e2jgQEgN9NhMYE9MJMXTIjQDWTcJFSIKhtZvAcE2
         FuZStdYuyvIhqsO4qgDXOwmcdMtMoVQin28KQR3C/r+u0kG1P2lpugXTLE3OFHuwyRv/
         xkKaNgMDcEwi9/oS7STpsJ4qfHfNEJnIFfmc3GtVTGxMNZOlf02y6TSOUJ0tBGGoJP0a
         CvqqXAtkH6dp213FyjClB2izvC7HRpGdTFT6DtJ6iENUJktSCLo2wl+JpzDkm7V94ode
         74SA==
X-Gm-Message-State: AOAM531OPHbxtf393Upptoi6wavvXBjC1LmDmcwQOTf0oh0GVZ+ogGXq
	YltlcFPlnH32r4feR/rUZqQQfcvYqyiZD3Qf/0o=
X-Google-Smtp-Source: 
 ABdhPJzQr++kgHTAIf5Z9qPNeJeeqZHAwg8RixS2E++pbprumzn6e+HRMjX7yOduLXZbWdZc3P25CSnB0eubBdtx0o8=
X-Received: by 2002:a05:6902:1242:: with SMTP id
 t2mr775273ybu.518.1634508006444;
 Sun, 17 Oct 2021 15:00:06 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAB=6tBSqYakp12-xZXk_d58HX+gQbkPz04RMfcKgqJp9r0=3jw@mail.gmail.com>
 <0aa3c9a451e96ccf921e4915be0ae56cb55cb6a4.camel@linuxfoundation.org>
In-Reply-To: 
 <0aa3c9a451e96ccf921e4915be0ae56cb55cb6a4.camel@linuxfoundation.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Sun, 17 Oct 2021 14:59:55 -0700
Message-ID: 
 <CAB=6tBSOhKxzZ1UitD+CY9UrUqCt9UuaUQvbGpneVgS5sN2EAQ@mail.gmail.com>
Subject: Re: [yocto] SRC_URI Directory Change
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001b534105ce938dd8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Oct 2021 22:00:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55089

--0000000000001b534105ce938dd8
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 15, 2021 at 6:58 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

>
> I have a bit of a horrible idea to do this in master-next which does solve
> the
> problem. We probably need a new bitbake selftest testcase before I could
> think
> about merging it though.
>

I tested the patch you posted on IRC against bitbake 1.50.0. It seems to
work
quite well, but I think I found two minor bugs in it. I pasted an updated
patch below.

In a nutshell...

If you have a SRC_URI file:// entry that ends in a "/", then you get a "."
that is
not enclosed in "/./" when running the checksum_dir method, which causes
checksum_file to throw warnings that look like this:

WARNING: Unable to get checksum for gettext-minimal-native SRC_URI entry
.intlmacosx.m4: [Errno 2] No such file or directory:
'/mnt/openembedded-core/meta/recipes-core/gettext/gettext-minimal-0.21/aclocal/.intlmacosx.m4'

I think the simplest fix is to add a "pth = pth.rstrip("/")" in the
checksum_dir method after
the guard statement. But then that exposes a different issue in the patch.

For recipes that trigger the above warning, the rstrip() fix fixes the
warning, but then you
expose a new problem in siggen.py calc_taskhash().

In your patched version, the check for the "/" fails to include the
filename in the hash calculation
for files at the root of a SRC_URI entry (there is no "/" to be found).
This results in a task hash
mismatch error on the first build, but not on subsequent builds for fairly
obvious reasons.

I solved this by adding a third field to the tuple with a True/False value,
which is a much more reliable semaphore (IMHO).

I tested these fixes and it worked perfectly. Here is an updated version of
your patch that takes into
account the fixes I described. I can produce a "patch against your patch"
if these fixes are
considered correct and do not cause even bigger problems that are not
obvious to me.

diff --git a/bitbake/lib/bb/checksum.py b/bitbake/lib/bb/checksum.py
index 1d50a26426..fb8a77f6ab 100644
--- a/bitbake/lib/bb/checksum.py
+++ b/bitbake/lib/bb/checksum.py
@@ -50,6 +50,7 @@ class FileChecksumCache(MultiProcessCache):
         MultiProcessCache.__init__(self)

     def get_checksum(self, f):
+        f = os.path.normpath(f)
         entry = self.cachedata[0].get(f)
         cmtime = self.mtime_cache.cached_mtime(f)
         if entry:
@@ -84,15 +85,24 @@ class FileChecksumCache(MultiProcessCache):
                 return None
             return checksum

+        #
+        # Changing the format of file-checksums is problematic as
both OE and Bitbake have
+        # knowledge of them. We need to encode a new piece of data,
the portion of the path
+        # we care about from a checksum perspective. This means that
files that change subdirectory
+        # are tracked by the task hashes. To do this, we do something
horrible and put a "/./" into
+        # the path. The filesystem handles it but it gives us a
marker to know which subsection
+        # of the path to cache.
+        #
         def checksum_dir(pth):
             # Handle directories recursively
             if pth == "/":
                 bb.fatal("Refusing to checksum /")
+            pth = pth.rstrip("/")
             dirchecksums = []
             for root, dirs, files in os.walk(pth, topdown=True):
                 [dirs.remove(d) for d in list(dirs) if d in localdirsexclude]
                 for name in files:
-                    fullpth = os.path.join(root, name)
+                    fullpth = os.path.join(root, name).replace(pth,
os.path.join(pth, "."))
                     checksum = checksum_file(fullpth)
                     if checksum:
                         dirchecksums.append((fullpth, checksum))
diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 0d88c6ec68..f649f39ced 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -308,13 +308,14 @@ class SignatureGeneratorBasic(SignatureGenerator):
         return

     def get_taskhash(self, tid, deps, dataCaches):
-
         data = self.basehash[tid]
         for dep in self.runtaskdeps[tid]:
             data = data + self.get_unihash(dep)

         for (f, cs) in self.file_checksum_values[tid]:
             if cs:
+                if "/./" in f:
+                    data = data + f.split("/./")[1]
                 data = data + cs

         if tid in self.taints:
@@ -372,7 +373,12 @@ class SignatureGeneratorBasic(SignatureGenerator):

         if runtime and tid in self.taskhash:
             data['runtaskdeps'] = self.runtaskdeps[tid]
-            data['file_checksum_values'] = [(os.path.basename(f), cs)
for f,cs in self.file_checksum_values[tid]]
+            data['file_checksum_values'] = []
+            for f,cs in self.file_checksum_values[tid]:
+                if "/./" in f:
+
data['file_checksum_values'].append((f.split("/./")[1], cs, True))
+                else:
+
data['file_checksum_values'].append((os.path.basename(f), cs, False))
             data['runtaskhashes'] = {}
             for dep in data['runtaskdeps']:
                 data['runtaskhashes'][dep] = self.get_unihash(dep)
@@ -1017,6 +1023,8 @@ def calc_taskhash(sigdata):

     for c in sigdata['file_checksum_values']:
         if c[1]:
+            if c[2]:
+                data = data + c[0]
             data = data + c[1]

     if 'taint' in sigdata:


..Ch:W..

P.S. The gettext-minimal-native_0.21.bb (from OEC) is a very good example
of something that triggers this behavior. But I found plenty of others as
well.

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000001b534105ce938dd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 15, 2021 at 6:58 AM Richa=
rd Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
<br>
I have a bit of a horrible idea to do this in master-next which does solve =
the<br>
problem. We probably need a new bitbake selftest testcase before I could th=
ink<br>
about merging it though.<br clear=3D"all"></blockquote><div><br></div><div>=
I tested the patch you posted on IRC against bitbake 1.50.0. It seems to wo=
rk</div><div>quite well, but I think I found two minor bugs in it. I pasted=
 an updated patch below.</div><div><br></div><div>In a nutshell...<br></div=
><div><br></div><div>If you have a SRC_URI  file:// entry that ends in a &q=
uot;/&quot;, then you get a &quot;.&quot; that is</div><div>not enclosed in=
 &quot;/./&quot; when running the checksum_dir method, which causes</div><d=
iv>checksum_file to throw warnings that look like this:<br></div><div><br><=
/div>WARNING: Unable to get checksum for gettext-minimal-native SRC_URI ent=
ry
 .intlmacosx.m4: [Errno 2] No such file or directory:=20
&#39;/mnt/openembedded-core/meta/recipes-core/gettext/gettext-minimal-0.21/=
aclocal/.intlmacosx.m4&#39;</div><div class=3D"gmail_quote"><br></div><div =
class=3D"gmail_quote">I think the simplest fix is to add a &quot;pth =3D pt=
h.rstrip(&quot;/&quot;)&quot; in the checksum_dir method after</div><div cl=
ass=3D"gmail_quote"><div>the guard statement. But then that exposes a diffe=
rent issue in the patch.</div><div><br></div><div>For recipes that trigger =
the above warning, the rstrip() fix fixes the warning, but then you</div><d=
iv>expose a new problem in siggen.py calc_taskhash().</div><div><br></div><=
div>In your patched version, the check for the &quot;/&quot; fails to inclu=
de the filename in the hash calculation</div><div>for files at the root of =
a SRC_URI entry (there is no &quot;/&quot; to be found). This results in a =
task hash</div><div>mismatch error on the first build, but not on subsequen=
t builds for fairly obvious reasons.<br></div><div><br></div><div>I solved =
this by adding a third field to the tuple with a True/False value, which is=
 a much more reliable semaphore (IMHO).<br></div><div><br></div><div>I test=
ed these fixes and it worked perfectly. Here is an updated version of your =
patch that takes into</div><div> account the fixes I described. I can produ=
ce a &quot;patch against your patch&quot; if these fixes are</div><div>cons=
idered correct and do not cause even bigger problems that are not obvious t=
o me.<br></div></div><div class=3D"gmail_quote"><br></div><div class=3D"gma=
il_quote">
<pre>diff --git a/bitbake/lib/bb/checksum.py b/bitbake/lib/bb/checksum.py
index 1d50a26426..fb8a77f6ab 100644
--- a/bitbake/lib/bb/checksum.py
+++ b/bitbake/lib/bb/checksum.py
@@ -50,6 +50,7 @@ class FileChecksumCache(MultiProcessCache):
         MultiProcessCache.__init__(self)
=20
     def get_checksum(self, f):
+        f =3D os.path.normpath(f)
         entry =3D self.cachedata[0].get(f)
         cmtime =3D self.mtime_cache.cached_mtime(f)
         if entry:
@@ -84,15 +85,24 @@ class FileChecksumCache(MultiProcessCache):
                 return None
             return checksum
=20
+        #
+        # Changing the format of file-checksums is problematic as both OE =
and Bitbake have
+        # knowledge of them. We need to encode a new piece of data, the po=
rtion of the path
+        # we care about from a checksum perspective. This means that files=
 that change subdirectory
+        # are tracked by the task hashes. To do this, we do something horr=
ible and put a &quot;/./&quot; into
+        # the path. The filesystem handles it but it gives us a marker to =
know which subsection
+        # of the path to cache.
+        #
         def checksum_dir(pth):
             # Handle directories recursively
             if pth =3D=3D &quot;/&quot;:
                 bb.fatal(&quot;Refusing to checksum /&quot;)
+            pth =3D pth.rstrip(&quot;/&quot;)
             dirchecksums =3D []
             for root, dirs, files in os.walk(pth, topdown=3DTrue):
                 [dirs.remove(d) for d in list(dirs) if d in localdirsexclu=
de]
                 for name in files:
-                    fullpth =3D os.path.join(root, name)
+                    fullpth =3D os.path.join(root, name).replace(pth, os.p=
ath.join(pth, &quot;.&quot;))
                     checksum =3D checksum_file(fullpth)
                     if checksum:
                         dirchecksums.append((fullpth, checksum))
diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 0d88c6ec68..f649f39ced 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -308,13 +308,14 @@ class SignatureGeneratorBasic(SignatureGenerator):
         return
=20
     def get_taskhash(self, tid, deps, dataCaches):
-
         data =3D self.basehash[tid]
         for dep in self.runtaskdeps[tid]:
             data =3D data + self.get_unihash(dep)
=20
         for (f, cs) in self.file_checksum_values[tid]:
             if cs:
+                if &quot;/./&quot; in f:
+                    data =3D data + f.split(&quot;/./&quot;)[1]
                 data =3D data + cs
=20
         if tid in self.taints:
@@ -372,7 +373,12 @@ class SignatureGeneratorBasic(SignatureGenerator):
=20
         if runtime and tid in self.taskhash:
             data[&#39;runtaskdeps&#39;] =3D self.runtaskdeps[tid]
-            data[&#39;file_checksum_values&#39;] =3D [(os.path.basename(f)=
, cs) for f,cs in self.file_checksum_values[tid]]
+            data[&#39;file_checksum_values&#39;] =3D []
+            for f,cs in self.file_checksum_values[tid]:
+                if &quot;/./&quot; in f:
+                    data[&#39;file_checksum_values&#39;].append((f.split(&=
quot;/./&quot;)[1], cs, True))
+                else:
+                    data[&#39;file_checksum_values&#39;].append((os.path.b=
asename(f), cs, False))
             data[&#39;runtaskhashes&#39;] =3D {}
             for dep in data[&#39;runtaskdeps&#39;]:
                 data[&#39;runtaskhashes&#39;][dep] =3D self.get_unihash(de=
p)
@@ -1017,6 +1023,8 @@ def calc_taskhash(sigdata):
=20
     for c in sigdata[&#39;file_checksum_values&#39;]:
         if c[1]:
+            if c[2]:
+                data =3D data + c[0]
             data =3D data + c[1]
=20
     if &#39;taint&#39; in sigdata:</pre><div><br></div><div>..Ch:W..</div>=
<div><br></div><div>P.S. The <a href=3D"http://gettext-minimal-native_0.21.=
bb">gettext-minimal-native_0.21.bb</a> (from OEC) is a very good example of=
 something that triggers this behavior. But I found plenty of others as wel=
l.<br></div><div>=C2=A0</div></div>-- <br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&q=
uot;Perfection must be reached by degrees; she requires the slow hand of ti=
me.&quot; - Voltaire</span></b></div></div></div></div>

--0000000000001b534105ce938dd8--

