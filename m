Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web12.1908.1613124767692743925
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 02:12:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=gSCdcuXe;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.175, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f175.google.com with SMTP id u4so10886238ljh.6
        for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 02:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8H22EeiUpi58jjEEenSQjOKtsQUnjnW1TRJ9LJpEGDo=;
        b=gSCdcuXexezCkU1oTgyr8aGkzJHOTEgB1j4Y544gVJuVyd/F4jQgUDOMT0IyS9TglF
         dz7+LR3/S28+VHE5qpHqj+5tmpateUPUja5D4EhvGWGze47m79t96ysRUS/ByceKSaEs
         +gxOirRVIunqDPsrjY+QcYuFT6Fd4EQ/UpEYorFLvw+CUnEEFRKxSBf8AzzbXqcVA0ku
         21JvOdWgl1X2wYk1NQNoAEuO90HRa/jpUDjj7R+9YyHvgYS9SM7B6tTankZDgBdIf1pl
         64FgfKRT5iBEDU/kkX9nDmvFH7bEHgrQ4l2nQzEQYs2g+bY08TuIGVcwx6fgg+E0gIB/
         wpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8H22EeiUpi58jjEEenSQjOKtsQUnjnW1TRJ9LJpEGDo=;
        b=NcXJ1FQMYKwQbkFqj/4uRNkwBFgzV/vYXyuWTa72stc8mBC/zIhjJcKwvpHxdrMdEq
         qWEOV2NIgmNbHRnAyRwPgPSAMu9WC5rtrruWQX+YomKXx6UJt3ulTrERzPelxeb2Ugyk
         XqK/GLfvGSS6kftNa1Ub6w/O+2K0I47n9pyXKQuiAK2Y9bCPIxnBlmbnVYJNPwK8zPsO
         TZwE+Xl4reg8I6oGUgqnmEMfzZlnOgOQ1E7gTZx1nA4a0seZvdX3/+kfiuyQsQbKVvD3
         4XQ1HjghkGZ9/mdeb1AopGLD8xTXOeN9I6ejbJYsByj2wc5RmoEhCX1g56Yd1G4Rs6X9
         hdag==
X-Gm-Message-State: AOAM531w9BqOJfG+7qEG/gkpTzIjDgYtxqheUf24d45Uo56uaC0w3Psy
	Zy8y+kpH7fdDmfVraUMcixHUwcQovgeF4ofg0UTCSg==
X-Google-Smtp-Source: ABdhPJwneRufId0nVJRHCc8IYA7NhNVLTTgX7Raajkts7EZAiZPYNKhc3kEkUp1AlGFd2+Tz1K4M6w93yQf/cVsNZSg=
X-Received: by 2002:a2e:320c:: with SMTP id y12mr1243623ljy.165.1613124765795;
 Fri, 12 Feb 2021 02:12:45 -0800 (PST)
MIME-Version: 1.0
References: <c8592b7e-a498-e413-1527-f5f6fe4dad0c@voxel.at>
In-Reply-To: <c8592b7e-a498-e413-1527-f5f6fe4dad0c@voxel.at>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Fri, 12 Feb 2021 11:12:18 +0100
Message-ID: <CAEt6NwrMx0j7ppYCmACfsrZ+qJWoS3WONdsOcb9g+H_4SHyg=Q@mail.gmail.com>
Subject: Re: [yocto] Dunfell, nodejs and typescript - short experience report
To: Simon Vogl <simon@voxel.at>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Thanks for sharing, a few comments inline.

Am Fr., 12. Feb. 2021 um 11:03 Uhr schrieb Simon Vogl <simon@voxel.at>:
>
> I have some remarks and questions about the npm/nodejs support in dunfell=
 that I wanted to share. We are creating nodejs-based IoT edge solutions an=
d upgrading our build environments to Dunfell one by one. In the course of =
this, we are switching to the new npm-implementation and found a few small =
issues.
>
> Firstly, the do_configure() task takes quite some time to complete. After=
 a quick analysis, I saw that most of the time is being spent in creating t=
he npmrc files while packing the dependent packages. I wrote a small workar=
ound to directly create the file instead of calling 'npm config', which res=
ults in a 3x-4x speedup:
>
> Signed-off-by: Simon Vogl <simon@voxel.at>
> ---
>  lib/bb/fetch2/npm.py | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/lib/bb/fetch2/npm.py b/lib/bb/fetch2/npm.py
> index 4789850..2720d87 100644
> --- a/lib/bb/fetch2/npm.py
> +++ b/lib/bb/fetch2/npm.py
> @@ -97,13 +97,18 @@ class NpmEnvironment(object):
>                  cmd =3D "NPM_CONFIG_GLOBALCONFIG=3D%s " % cfgfile + cmd
>                  return runfetchcmd(cmd, d, workdir=3Dworkdir)
>
> +            cfg =3D open(cfgfile, "a")
>              if self.configs:
>                  for key, value in self.configs:
> -                    _run("npm config set %s %s" % (key, shlex.quote(valu=
e)))
> +                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
> +                    #_run("npm config set %s %s" % (key, shlex.quote(val=
ue)))
>
>              if configs:
>                  for key, value in configs:
> -                    _run("npm config set %s %s" % (key, shlex.quote(valu=
e)))
> +                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
> +                    # _run("npm config set %s %s" % (key, shlex.quote(va=
lue)))
> +
> +            cfg.close()
>
>              if args:
>                  for key, value in args:
> --
> 2.7.4
>
> Are there any side effects that I did not stumble over yet? And I'd LOVE =
to have these calls running in a thread-pool for better performance...

The main side effect is that you're effectively patching poky, which
is bad for maintenance.

> Secondly, our projects are based on typescript, so a native compile step =
is necessary to create a compiled version for packing. We experimented with=
 a separate release branch to check in compiled versions, but this is not e=
asy to handle. I played around with npm.bbclass and found a way to extend c=
onfigure (!) with a call to our build script before packaging:
>
> diff --git a/meta/classes/npm.bbclass b/meta/classes/npm.bbclass
> index 068032a1e5..31535098cf 100644
> --- a/meta/classes/npm.bbclass
> +++ b/meta/classes/npm.bbclass
> @@ -170,6 +170,11 @@ python npm_do_configure() {
>
>      # Configure the main package
>      with tempfile.TemporaryDirectory() as tmpdir:
> +        # install all (native) build dependencies, overrides npm cache:
> +        ret =3D os.system("npm i")
> +        # run build step:
> +        env.run("npm run build", args=3D[], workdir=3Dd.getVar("S"))
> +
>          tarball =3D npm_pack(env, d.getVar("S"), tmpdir)
>          npm_unpack(tarball, d.getVar("NPM_PACKAGE"), d)
>
> As we have plain JS packages as well, I put the modified configure() in a=
 subclass and this works for us, but it does not look like a clean solution=
 to me. How do you other IoT'ers address this situation?

Again, patching poky is a bad idea. Creating custom bbclasses is much
neater: you could create a base include, and pull that together with
npm.bbclass into two final bbclasses of yours, like npm-js-voxel and
npm-ts-voxel. The former would not have the compilation step. And,
putting the typescript/webpack invocation into configure is also not
exactly how things are meant to work. I know that the dependency
tracking of npm is not easily compatible with bitbake, but the aim
should be to
1) have a recipe that provides typescript-native
2) DEPEND on typescript-native in the recipe which you need to compile
3) add a do_compile stage that does the work.

Greetz
