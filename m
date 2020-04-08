Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
 by mx.groups.io with SMTP id smtpd.web12.15308.1586363364233328130
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 09:29:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=wUC0qZcg;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.193, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f193.google.com with SMTP id k5so3558525pga.2
        for <yocto@lists.yoctoproject.org>; Wed, 08 Apr 2020 09:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=xGxwXhS6JKj2wlxWBk9q9gvH45FiYRWyD+hLXDBFqWI=;
        b=wUC0qZcgBi7WxKq0OipNWZeEogRlWcZuA/vaNmSi2OOJSNwjsCu9e7nTXlyrRDB0dH
         3qEznWzBEErW5HEhZnxqrB4QYlQswCpkHNiHwkcptS46qLJnf2vEpkQnVgD7Z1zw3b78
         0fm9nbnv6tq1daVK8NzBpVmXgCDUBW591ZcgIebs/pIoss1ZChpzDRPn3y7DjTUA1lUK
         BHbADOzj1D80ac5GNpNu1vNU7uWhG5OZ6yf3aQa7h04rJQ1iUvHUwZrdBTZzRoFnXUdF
         FTQiVQ7HCt1a1Pwf1C6MxCQBeniTRT/Kz2OJWIq16I7xm/w+CRjVhvSUKEmyji9bloK0
         Gk8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=xGxwXhS6JKj2wlxWBk9q9gvH45FiYRWyD+hLXDBFqWI=;
        b=R1f1gjO+Xw4JsO02MB6uSSXRGMpUcRcA/JYRIjgElSTXR0dzgDJZoerltggos4tf4b
         J9UuGjbs6LaoXiPDOtHCDLTwkmNrsJxdgHyQCp/HM8uzxdVedtNa2dQeoGSrD3ubO3nW
         nc6NszrfSbJLy3uNzLLG3n5ETQG8w3i8yzHAIFxPyE0oCBQ56jsHJbjv5eFXMX+CWXDf
         BqgJDHnRGDiiTlwtPXUckl/6yhIB1Kp9dSIrs+cahKAxjb3kt0c0UN18L5TY6xMPmqLt
         YYs1i2PupZKUmqEaGDZFM+1fJqSR7urVoxSKj+B49+SUd5LV/I3+0+ZeVYLdGjZbul/1
         N6xg==
X-Gm-Message-State: AGi0PuY1vkbZc+MjZ49pqxEqByWR16PdF2XMDlajWFRA6G4MhuriDSZY
	p44c7OpmqCo7CxCu88IwU0lx7wMCJYHFzg==
X-Google-Smtp-Source: APiQypLTzNsap+TRGwfUMi8Eb/JIKAa9vtI8GXo8geLvQWROMfcbvhVwyJWqMq+UsiDEnY3n99aAKg==
X-Received: by 2002:a63:383:: with SMTP id 125mr1535102pgd.242.1586363362394;
        Wed, 08 Apr 2020 09:29:22 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id d5sm17000914pfa.59.2020.04.08.09.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 09:29:21 -0700 (PDT)
Subject: Re: [yocto] imx-boot do_compile failing with custom distro #yocto
To: stefan.wenninger@evopro-ag.de, yocto@lists.yoctoproject.org
References: <r2h6.1586356887188852470.W0sx@lists.yoctoproject.org>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <e184439e-230a-fa2e-27bb-c2e9c4c8ac4f@ibeeto.com>
Date: Wed, 8 Apr 2020 09:29:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <r2h6.1586356887188852470.W0sx@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49088
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="eMDxsKtE6q4TQXgLdfvFOA1tjDbMNh18r"

--eMDxsKtE6q4TQXgLdfvFOA1tjDbMNh18r
Content-Type: multipart/mixed; boundary="4aLuiYt4xvVy6B7BJTBKZbG2ZYhHe2jTc"

--4aLuiYt4xvVy6B7BJTBKZbG2ZYhHe2jTc
Content-Type: multipart/alternative;
 boundary="------------FEE8A7EA61DB305FBB3F8EF1"
Content-Language: en-US

--------------FEE8A7EA61DB305FBB3F8EF1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

I agree that it is odd that a recipe copies a file, in this case the
bl31 bootloader image, from the deploy area to the recipe area. This
bootloader binary is created by the imx-atf recipe. imx-atf is listed as
a dependency for imx-boot which is the recipe that is failing in your
build. Therefore I would expect imx-atf to run before imx-boot. However,
a recipe's do_compile task does not depend on another recipe's do_deploy
task but on the other recipe's do_install task. What likely happened is
that imx-boot do_compile was started after imx-atf do_install completed
but before imx-atf do_deploy has completed. For imx-boot to work
correctly it should copy the files from imx-atf's staging area rather
than the deploy directory.

I suggest that you try to run imx-atf alone to see if it builds and if
the bl31 image is built and placed into the deploy directory. And then
run your build again.

:rjs

On 4/8/20 7:41 AM, stefan.wenninger@evopro-ag.de wrote:
> Hi,
> I have encountered a curious problem when trying to create my own
> poky-based distribution.
> My distribution /poky-mydist.conf/=C2=A0in conf/distro/ of my own layer:
>
>     require conf/distro/poky.conf
>     DISTRO =3D "poky-mydist"
>     DISTRO_NAME =3D "Poky my dist (Custom Project Distro)"
>     DISTROOVERRIDES =3D "poky:poky-mydist"
>     =C2=A0
>     DISTRO_FEATURES +=3D "ppp"
>
> This distro is basically identical to the base poky from /poky.conf/.
> I just added a feature to be able to verify that my distro is being used=
.
>
> When I build core-image-base however, I get the following error:
>
>     ERROR: imx-boot-0.2-r0 do_compile: Function failed: do_compile
>     (log file is located at
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/temp/log.do_compile.14295)
>     ERROR: Logfile of failure stored in:
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/temp/log.do_compile.14295
>     Log data follows:
>     | DEBUG: Executing shell function do_compile
>     | Copying DTB
>     | 8MQ/8MM boot binary build
>     | Copy ddr_firmware: lpddr4_pmu_train_1d_imem.bin from
>     /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/git/iMX8M
>     | Copy ddr_firmware: lpddr4_pmu_train_1d_dmem.bin from
>     /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/git/iMX8M
>     | Copy ddr_firmware: lpddr4_pmu_train_2d_imem.bin from
>     /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/git/iMX8M
>     | Copy ddr_firmware: lpddr4_pmu_train_2d_dmem.bin from
>     /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart ->
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/git/iMX8M
>     | cp: cannot stat
>     '/opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart/imx-boo=
t-tools/bl31-imx8mq.bin':
>     No such file or directory
>     | WARNING: exit code 1 from a shell command.
>     | ERROR: Function failed: do_compile (log file is located at
>     /opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-bo=
ot/0.2-r0/temp/log.do_compile.14295)
>     ERROR: Task
>     (/opt/yocto-dev/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bs=
p/imx-mkimage/imx-boot_0.2.bb:do_compile)
>     failed with exit code '1'
>
> By just switching my DISTRO to 'poky' in local.conf, it builds without
> error.
>
> There are several things that surprise me about this error:
> 1. I find it quite strange that these ddr_firmwares are copied from
> the deploy directory to the working directory of imx-boot. I would
> expect that to be the other way around.
> 2. The file /bl31-imx8mq.bin/=C2=A0is not in the imx-boot-tools folder,
> even after a successful build with DISTRO=3D'poky'. (Maybe it was there
> during build and was just removed afterwards?)
>
> From my point of view it looks like the set of files that get put into
> imx-boot-tools/ is dependant on the DISTRO value? When using
> DISTRO=3D'poky' the correct set is placed and copied. When using
> DISTRO=3D'poky-mydist' the files that are placed into the folder are not
> the files that are supposed to be copied from there, hence the error.
>
> Am I interpreting this situation correctly?
> Is there an error in my /poky-mydist/ distribution?
> Is that something that needs to be fixed in the recipe for imx-boot?
> Or can I somehow configure /poky-mydist.conf/ to be treated exactly
> like /poky.conf/?
>
> Thanks in advance
> Stefan=C2=A0
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------FEE8A7EA61DB305FBB3F8EF1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi Stefan,</p>
    <p>I agree that it is odd that a recipe copies a file, in this case
      the bl31 bootloader image, from the deploy area to the recipe
      area. This bootloader binary is created by the imx-atf recipe.
      imx-atf is listed as a dependency for imx-boot which is the recipe
      that is failing in your build. Therefore I would expect imx-atf to
      run before imx-boot. However, a recipe's do_compile task does not
      depend on another recipe's do_deploy task but on the other
      recipe's do_install task. What likely happened is that imx-boot
      do_compile was started after imx-atf do_install completed but
      before imx-atf do_deploy has completed. For imx-boot to work
      correctly it should copy the files from imx-atf's staging area
      rather than the deploy directory.<br>
    </p>
    <p>I suggest that you try to run imx-atf alone to see if it builds
      and if the bl31 image is built and placed into the deploy
      directory. And then run your build again.<br>
    </p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/8/20 7:41 AM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:stefan.wenninge=
r@evopro-ag.de">stefan.wenninger@evopro-ag.de</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:r2h6.1586356887188852470.W0sx@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      Hi,<br>
      I have encountered a curious problem when trying to create my own
      poky-based distribution.<br>
      My distribution <em>poky-mydist.conf</em>=C2=A0in conf/distro/ of my
      own layer:<br>
      <blockquote>
        <div>require conf/distro/poky.conf</div>
        <div>DISTRO =3D "poky-mydist"</div>
        <div>DISTRO_NAME =3D "Poky my dist (Custom Project Distro)"</div>
        <div>DISTROOVERRIDES =3D "poky:poky-mydist"</div>
        <div>=C2=A0</div>
        <div>DISTRO_FEATURES +=3D "ppp"</div>
      </blockquote>
      <div>This distro is basically identical to the base poky from <em>po=
ky.conf</em>.
        I just added a feature to be able to verify that my distro is
        being used.<br>
        <br>
        When I build core-image-base however, I get the following error:<b=
r>
        <blockquote>
          <div>ERROR: imx-boot-0.2-r0 do_compile: Function failed:
            do_compile (log file is located at
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/temp/log.do_compile.14295)</div>
          <div>ERROR: Logfile of failure stored in:
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/temp/log.do_compile.14295</div>
          <div>Log data follows:</div>
          <div>| DEBUG: Executing shell function do_compile</div>
          <div>| Copying DTB</div>
          <div>| 8MQ/8MM boot binary build</div>
          <div>| Copy ddr_firmware: lpddr4_pmu_train_1d_imem.bin from
            /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart
            -&gt;
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/git/iMX8M</div>
          <div>| Copy ddr_firmware: lpddr4_pmu_train_1d_dmem.bin from
            /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart
            -&gt;
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/git/iMX8M</div>
          <div>| Copy ddr_firmware: lpddr4_pmu_train_2d_imem.bin from
            /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart
            -&gt;
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/git/iMX8M</div>
          <div>| Copy ddr_firmware: lpddr4_pmu_train_2d_dmem.bin from
            /opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart
            -&gt;
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/git/iMX8M</div>
          <div>| cp: cannot stat
'/opt/yocto-dev/build_poky/tmp/deploy/images/imx8mq-var-dart/imx-boot-tool=
s/bl31-imx8mq.bin':
            No such file or directory</div>
          <div>| WARNING: exit code 1 from a shell command.</div>
          <div>| ERROR: Function failed: do_compile (log file is located
            at
/opt/yocto-dev/build_poky/tmp/work/imx8mq_var_dart-poky-linux/imx-boot/0.2=
-r0/temp/log.do_compile.14295)</div>
          <div>ERROR: Task
(/opt/yocto-dev/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/imx-=
mkimage/imx-boot_0.2.bb:do_compile)
            failed with exit code '1'</div>
        </blockquote>
        <div>By just switching my DISTRO to 'poky' in local.conf, it
          builds without error.<br>
          <br>
          There are several things that surprise me about this error:<br>
          1. I find it quite strange that these ddr_firmwares are copied
          from the deploy directory to the working directory of
          imx-boot. I would expect that to be the other way around.<br>
          2. The file <em>bl31-imx8mq.bin</em>=C2=A0is not in the
          imx-boot-tools folder, even after a successful build with
          DISTRO=3D'poky'. (Maybe it was there during build and was just
          removed afterwards?)<br>
          <br>
          From my point of view it looks like the set of files that get
          put into imx-boot-tools/ is dependant on the DISTRO value?
          When using DISTRO=3D'poky' the correct set is placed and copied.
          When using DISTRO=3D'poky-mydist' the files that are placed into
          the folder are not the files that are supposed to be copied
          from there, hence the error.<br>
          <br>
          Am I interpreting this situation correctly?<br>
          Is there an error in my <em>poky-mydist</em> distribution?<br>
          Is that something that needs to be fixed in the recipe for
          imx-boot? Or can I somehow configure <em>poky-mydist.conf</em>
          to be treated exactly like <em>poky.conf</em>?<br>
          <br>
          <span style=3D"font-size: 11.0pt; font-family:
            'Calibri',sans-serif; mso-fareast-font-family: Calibri;
            mso-fareast-theme-font: minor-latin; mso-ansi-language: DE;
            mso-fareast-language: DE; mso-bidi-language: AR-SA;">Thanks
            in advance<br>
            Stefan=C2=A0</span></div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------FEE8A7EA61DB305FBB3F8EF1--

--4aLuiYt4xvVy6B7BJTBKZbG2ZYhHe2jTc--

--eMDxsKtE6q4TQXgLdfvFOA1tjDbMNh18r
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6N+98ACgkQjYyoKScz
m3XqUgf9EhLTpYXvOKpKYLPPnP+Sn4IRUUQiGn/w8ppCo04S3EwuSK9fpAGYC4w1
t/+Ecs0qC9a6Wetf+9tEGXB2AB8yjEjCUpR0bX4xpVDIb+OsrljnlAGcvm1dJo7f
AUp9AgNGOBVa2z483rTVrXLSjlK49xPZgcfu8RftkntnI/7QWtab40u9zNOzasqF
zxNOscVb90GOs9h3PlRv9lxRX91gT1wYaY09RrWtq7R6kOnf7/QauQrjH69X0JPv
tPo5/k8b7uwqOqzGtZ9aFOf/WdQAt5MqYH/PhojtNA7EW3cKi2vD+rvumMuLeFTk
Gnj6Pal048uX+fB964HO4sSON8TyRg==
=yKjS
-----END PGP SIGNATURE-----

--eMDxsKtE6q4TQXgLdfvFOA1tjDbMNh18r--
