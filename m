Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web12.10025.1614349749983811196
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 06:29:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HJr+MypG;
 spf=pass (domain: gmail.com, ip: 209.85.217.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id o186so4815967vso.1
        for <yocto@lists.yoctoproject.org>; Fri, 26 Feb 2021 06:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7z+1HCJaSfQ4cgwcshyyHT3VFGqYRf1ikiA0zWm1LSk=;
        b=HJr+MypGzgtb+bxe2jRLNpRz1qtha8P1VJRkkt1RicMACEto8NaJj4qbEYfhNlQ/S4
         9itHUTqsD9MpR1jlvlkAsi3fNdOHQ/MRPt0uHjPe0DYeUYZDSJwJAfhdJzluGey6XM2w
         tc/Ops8a7OmeLyfjvN9rNLCBmouQnU1vM2JwNjOiaUTCMnALI2XUdeCe/BfwLiVR8Yu7
         5V01lL0W4qsWswWqyM1TiBcloHmy4CU0qsHmN6h7e2XxP1bJoe7FyhlYz7OirLNp1XaI
         zqP6VlzRUtYeahM8ax1WOsQktk7plqF9VEQLXHUctN5eHoCUvwp8Z8X3hvIWNa7LeHds
         TQ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7z+1HCJaSfQ4cgwcshyyHT3VFGqYRf1ikiA0zWm1LSk=;
        b=TGyzI010qrGXY53++kNb7IyTJlxDC7NRxLnQuM2GCw73CNFj59Jg/bpCFhIRrpbw4p
         /1XEomF7UgMoGMplXu++BrY+esAfj0CvFq9oBAH3+iz4tlMH76xtoi6OS2YJgtotT7HW
         fCKTTwmkHC31qGiK/BpZkQWSvMUz/17rzH6e8g3gV/0uIfNSyFy68aWv5fHlGX5JX35/
         p1LAupAb4Y+lh4/xxo6JDMialCWhYQi/ljr4oJF4m4kj1T+axYoK73xbGatG3ahwdCNi
         Zq17KKp6toKSdXljsv4yVOZK0r7Jx9Kis0oEEpv4U//2afTM7rMLUVqWm3P/Ydog4xeH
         q3mg==
X-Gm-Message-State: AOAM530Ky2qVn/O/PoSJVI3EWqsgHVd06s2O2NA5bBcuR4QlouPg7Eue
	RlgiHSTKSMYnyCVrcXOBqqZD067fYGs0uJvDC8E=
X-Google-Smtp-Source: ABdhPJy3bWtlBF2HOf7uiJbgjNr5vspV91bZrZuR5PkcYtaHBo4MqQ5P26T930ZU1ZHf72p32r34MfzyidAR4AdQG4o=
X-Received: by 2002:a67:f318:: with SMTP id p24mr1484571vsf.54.1614349749019;
 Fri, 26 Feb 2021 06:29:09 -0800 (PST)
MIME-Version: 1.0
References: <BYAPR11MB3624BFC0DC46E8D974F02F70E39D9@BYAPR11MB3624.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3624BFC0DC46E8D974F02F70E39D9@BYAPR11MB3624.namprd11.prod.outlook.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 26 Feb 2021 15:28:57 +0100
Message-ID: <CANNYZj9QzLb7TkMEtnUOk72ppNaMAZKK8hMSjuwFbmDf7B9dHg@mail.gmail.com>
Subject: Re: [yocto][PATCH] lib/oeqa/selftest/cases/reproducible.py : updated test to faketime in future when buiding the second test build.
To: Sangeeta Jain <sangeeta.jain@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000055662a05bc3e179b"

--00000000000055662a05bc3e179b
Content-Type: text/plain; charset="UTF-8"

Wait, this needs to be explained a bit better. What reproducibility issues
does this address that the existing test does not?

Alex

On Fri, 26 Feb 2021 at 15:27, Sangeeta Jain <sangeeta.jain@intel.com> wrote:

>
> This update will ensure that recipes are not including time stamps by
> creating an image with modified system
>
>  time. It uses libfaketime recipe to fake system time to advance by
> 34308122 seconds.
>
> Signed-off-by: sangeeta jain <sangeeta.jain@intel.com>
> ---
>  meta/lib/oeqa/selftest/cases/reproducible.py | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/meta/lib/oeqa/selftest/cases/reproducible.py
> b/meta/lib/oeqa/selftest/cases/reproducible.py
> index 8849c95..831a304 100644
> --- a/meta/lib/oeqa/selftest/cases/reproducible.py
> +++ b/meta/lib/oeqa/selftest/cases/reproducible.py
> @@ -180,6 +180,7 @@ class ReproducibleTests(OESelftestTestCase):
>      # will test that and also make the test run faster. If your sstate is
> not
>      # reproducible, disable this in your derived test class
>      build_from_sstate = True
> +    use_faketime = False
>
>      def setUpLocal(self):
>          super().setUpLocal()
> @@ -227,7 +228,7 @@ class ReproducibleTests(OESelftestTestCase):
>          bb.utils.mkdirhier(os.path.dirname(dest))
>          shutil.copyfile(source, dest)
>
> -    def do_test_build(self, name, use_sstate):
> +    def do_test_build(self, name, use_sstate, use_faketime):
>          capture_vars = ['DEPLOY_DIR_' + c.upper() for c in
> self.package_classes]
>
>          tmpdir = os.path.join(self.topdir, name, 'tmp') @@ -256,6 +257,18
> @@ class ReproducibleTests(OESelftestTestCase):
>                  SSTATE_MIRRORS = ""
>                  ''')
>
> +        if use_faketime:  ##sangeeta
> +            # This config fragment will enable to fake system time
> +            # advance by 34308122 sec
> +            bitbake("libfaketime")
> +            find_binary = "find . -path '*/image/*/libfaketime.so.1"
> +            full_path_to_binary = runCmd(find_binary)
> +            binary_path = full_path_to_binary.split("./")
> +            ld_preload_path = os.path.join(os.environ.get('BUILDDIR'),
> binary_path[1])
> +            seconds_add_to_system_time = "+34308122"
> +            cmd = 'LD_PRELOAD=%s FAKETIME=%s' %(ld_preload_path,
> seconds_add_to_system_time)
> +            runCmd(cmd)
> +
>          self.logger.info("Building %s (sstate%s allowed)..." % (name, ''
> if use_sstate else ' NOT'))
>          self.write_config(config)
>          d = get_bb_vars(capture_vars)
> @@ -282,9 +295,9 @@ class ReproducibleTests(OESelftestTestCase):
>              os.chmod(save_dir, stat.S_IRWXU | stat.S_IRGRP | stat.S_IXGRP
> | stat.S_IROTH | stat.S_IXOTH)
>              self.logger.info('Non-reproducible packages will be copied
> to %s', save_dir)
>
> -        vars_A = self.do_test_build('reproducibleA',
> self.build_from_sstate)
> +        vars_A = self.do_test_build('reproducibleA',
> + self.build_from_sstate, self.use_faketime))
>
> -        vars_B = self.do_test_build('reproducibleB', False)
> +        vars_B = self.do_test_build('reproducibleB', False, True)
>
>          # NOTE: The temp directories from the reproducible build are
> purposely
>          # kept after the build so it can be diffed for debugging.
> --
> 2.7.4
>
>
> 
>
>

--00000000000055662a05bc3e179b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wait, this needs to be explained a bit better. What r=
eproducibility issues does this address that the existing test does not?</d=
iv><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, 26 Feb 2021 at 15:27, Sangeeta=
 Jain &lt;<a href=3D"mailto:sangeeta.jain@intel.com">sangeeta.jain@intel.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><br>
This update will ensure that recipes are not including time stamps by crea=
ting an image with modified system<br>
<br>
=C2=A0time. It uses libfaketime recipe to fake system time to advance by 3=
4308122 seconds.<br>
<br>
Signed-off-by: sangeeta jain &lt;<a href=3D"mailto:sangeeta.jain@intel.com=
" target=3D"_blank">sangeeta.jain@intel.com</a>&gt;<br>
---<br>
=C2=A0meta/lib/oeqa/selftest/cases/reproducible.py | 19 ++++++++++++++++--=
-<br>
=C2=A01 file changed, 16 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/meta/lib/oeqa/selftest/cases/reproducible.py b/meta/lib/oeqa/=
selftest/cases/reproducible.py<br>
index 8849c95..831a304 100644<br>
--- a/meta/lib/oeqa/selftest/cases/reproducible.py<br>
+++ b/meta/lib/oeqa/selftest/cases/reproducible.py<br>
@@ -180,6 +180,7 @@ class ReproducibleTests(OESelftestTestCase):<br>
=C2=A0 =C2=A0 =C2=A0# will test that and also make the test run faster. If=
 your sstate is not<br>
=C2=A0 =C2=A0 =C2=A0# reproducible, disable this in your derived test clas=
s<br>
=C2=A0 =C2=A0 =C2=A0build_from_sstate =3D True<br>
+=C2=A0 =C2=A0 use_faketime =3D False<br>
<br>
=C2=A0 =C2=A0 =C2=A0def setUpLocal(self):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0super().setUpLocal()<br>
@@ -227,7 +228,7 @@ class ReproducibleTests(OESelftestTestCase):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.utils.mkdirhier(os.path.dirname(dest)=
)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0shutil.copyfile(source, dest)<br>
<br>
-=C2=A0 =C2=A0 def do_test_build(self, name, use_sstate):<br>
+=C2=A0 =C2=A0 def do_test_build(self, name, use_sstate, use_faketime):<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0capture_vars =3D [&#39;DEPLOY_DIR_&#39; =
+ c.upper() for c in self.package_classes]<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmpdir =3D os.path.join(self.topdir, nam=
e, &#39;tmp&#39;) @@ -256,6 +257,18 @@ class ReproducibleTests(OESelftestTe=
stCase):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SSTATE_MIRRO=
RS =3D &quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&#39;&#=
39;)<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if use_faketime:=C2=A0 ##sangeeta<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # This config fragment will ena=
ble to fake system time<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # advance by 34308122 sec<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitbake(&quot;libfaketime&quot;=
)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 find_binary =3D &quot;find . -p=
ath &#39;*/image/*/libfaketime.so.1&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 full_path_to_binary =3D runCmd(=
find_binary)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 binary_path =3D full_path_to_bi=
nary.split(&quot;./&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ld_preload_path =3D os.path.joi=
n(os.environ.get(&#39;BUILDDIR&#39;), binary_path[1])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 seconds_add_to_system_time =3D =
&quot;+34308122&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd =3D &#39;LD_PRELOAD=3D%s FA=
KETIME=3D%s&#39; %(ld_preload_path, seconds_add_to_system_time)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runCmd(cmd)<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://self.logger.info" rel=
=3D"noreferrer" target=3D"_blank">self.logger.info</a>(&quot;Building %s (=
sstate%s allowed)...&quot; % (name, &#39;&#39; if use_sstate else &#39; NOT=
&#39;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.write_config(config)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d =3D get_bb_vars(capture_vars)<br>
@@ -282,9 +295,9 @@ class ReproducibleTests(OESelftestTestCase):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.chmod(save_dir, stat.S_=
IRWXU | stat.S_IRGRP | stat.S_IXGRP | stat.S_IROTH | stat.S_IXOTH)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://self.log=
ger.info" rel=3D"noreferrer" target=3D"_blank">self.logger.info</a>(&#39;No=
n-reproducible packages will be copied to %s&#39;, save_dir)<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 vars_A =3D self.do_test_build(&#39;reproducib=
leA&#39;, self.build_from_sstate)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 vars_A =3D self.do_test_build(&#39;reproducib=
leA&#39;, <br>
+ self.build_from_sstate, self.use_faketime))<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 vars_B =3D self.do_test_build(&#39;reproducib=
leB&#39;, False)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 vars_B =3D self.do_test_build(&#39;reproducib=
leB&#39;, False, True)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NOTE: The temp directories from the re=
producible build are purposely<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# kept after the build so it can be diff=
ed for debugging.<br>
--<br>
2.7.4<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000055662a05bc3e179b--
