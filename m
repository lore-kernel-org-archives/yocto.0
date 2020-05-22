Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.9477.1590137227999932524
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 May 2020 01:47:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bneZCd+0;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: lefevre.da@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id p4so4359959qvr.10
        for <yocto@lists.yoctoproject.org>; Fri, 22 May 2020 01:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QvLCLh/Y5G1svAzMJK8WgLpPOisDRWppiu2Assfbw68=;
        b=bneZCd+0378e6gOtE3U68vxAAeCmBBaOJOv0POo9Ss49jpTAXHEEln5O1NUkoHuRds
         sGxqINi7v2lqStOkhXjwLZm66gWdzBs0hofTYmUOaeyKqQ0Y4qHDzpmXH3WX/oK9DXau
         FwsZdAPU6BQw3REkT9Qui0Ba35Yqm8nOy2vS92FXv914Eon3pJQZ94kLDu2TL8bWz7gz
         EelEjyybKIblTLl04wC2cUSBl0P+RCTOCCkbcBH4Iz7Bm8pQTWj3z+IiFemHQioEJl23
         NVl9IZtuKCJYQUgR5h8F7GxmBrBMf0o/5tnvWDKzHf2S5c66klOB4izpyeEOi+3O5ul5
         GRpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QvLCLh/Y5G1svAzMJK8WgLpPOisDRWppiu2Assfbw68=;
        b=FFNdgfssPVbbW6IuNr6juCOzw2SogRAxUjkPgF+RZwx/tqoeJA4N/J5U8r8OiGYh4L
         wo55AXI/kl0xo+wzkK6xuD6tyS+f5oAl0grCjuCdBXBJGEqK2Xoth+yV3a4uN8NDDzk9
         tQzu70E9h70nDv6H9dnQGkcokEsUbLNi5P+kKjj1sGHM1HbHJwF517cSxwp8biVI9rCb
         TNvTxTEdjmuZVgCIcGcYJmqX4EuIN55mEaNDLJ5LnzC1/L1sT6GaoWalDG2ru5IqhRGP
         14KZm97f7AUgGgBOslfLKq1GrbxuhJIcEsDcq37F019J7b9uX+Y62TqcZT1KB0OWV4zF
         t0Aw==
X-Gm-Message-State: AOAM531ND8lrWuHhrqGcAU0bdCTQp4Ck7UXlGFtufPUvldiUUv3wPqIc
	urOYgcwA5P9v8Q/gNNruLoWPYdYBSfhLHat4RA==
X-Google-Smtp-Source: ABdhPJx0V4qU5tUz8Xqx0Cmzw9hkaifQ1H3v5700jJAUKDHAvAk/EOAEDDCLLshzlisMw8Svq37ylsZzDda5yETxm0Y=
X-Received: by 2002:ad4:4801:: with SMTP id g1mr2590914qvy.199.1590137227130;
 Fri, 22 May 2020 01:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv_iyW6hhU6u4BrHoS5bNDcH2vDurWOJsPrPFNWodc5dDQ@mail.gmail.com>
 <5beaecc9-1472-3614-1ac1-1928b0b3a3bd@ibeeto.com>
In-Reply-To: <5beaecc9-1472-3614-1ac1-1928b0b3a3bd@ibeeto.com>
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Fri, 22 May 2020 11:46:56 +0300
Message-ID: <CA+FhBv-LRYmJLm9Macd3e48g8WJx-Y=k2=R=B5i=EqnFfa6=ww@mail.gmail.com>
Subject: Re: [yocto] deploy GPG keys into images
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000913b3405a638acf7"

--000000000000913b3405a638acf7
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip Rudolf!

I found out that gpg has a --homedir flag to do the obvious. Since gpg
builds a database, I cannot simply copy the key.

Knowing that now, I can just create the gpg database via a standard recipe
using the native utility package and install the files.

-Damien

On Tue, May 19, 2020 at 7:01 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> Hi Damien,
> On 5/19/20 7:05 AM, Damien LEFEVRE wrote:
>
> Hi,
>
> I've put GnuPG in my image, and I'd like to deploy a set to public and
> private keys into the system images.
>
> How can I do that from recipes?
>
> You do this with a shell function that is added to
> ROOTFS_POSTPROCESS_COMMAND. Here is a script that I use to create SSH keys:
>
> # Image post-processing to configure sshd
>
> # Setup ssh key login for these users
> SSH_USERS ??= ""
> SSH_DISALLOW_PWAUTH ??= "1"
>
> configure_sshd() {
>    # disallow password authentication
>    if [ "${SSH_DIALLOW_PWAUTH}" == "1" ]; then
>       echo "PasswordAuthentication no" >>
> ${IMAGE_ROOTFS}/etc/ssh/sshd_config
>    fi
>
>    # keys will be stored tmp/deploy/keys
>    mkdir -p ${DEPLOY_DIR}/keys
>
>    # create the keys for the users
>    for user in ${SSH_USERS}; do
>       if [ ! -f ${DEPLOY_DIR}/keys/${user}-sshkey ]; then
>       /usr/bin/ssh-keygen -t rsa -N '' \
>          -f ${DEPLOY_DIR}/keys/${user}-sshkey
>       fi
>
>       # add public key to authorized_keys for the user
>       mkdir -p ${IMAGE_ROOTFS}/home/${user}/.ssh
>       cat ${DEPLOY_DIR}/keys/${user}-sshkey.pub \
>           >> ${IMAGE_ROOTFS}/home/${user}/.ssh/authorized_keys
>    done
> }
> ROOTFS_POSTPROCESS_COMMAND += "configure_sshd;"
>
> I have this script as an include file that I included into my image
> recipes.
>
> :rjs
>
>
> Thanks,
> -Damien
>
> 
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>

--000000000000913b3405a638acf7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the tip Rudolf!<div><br></div><div>I found out =
that gpg has a --homedir flag to do the obvious. Since gpg builds a databas=
e, I cannot simply copy the key.</div><div><br></div><div>Knowing that now,=
 I can just create the gpg database via a standard recipe using the native =
utility package and install=C2=A0the files.</div><div><br></div><div>-Damie=
n</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, May 19, 2020 at 7:01 PM Rudolf J Streif &lt;<a href=3D"mailt=
o:rudolf.streif@ibeeto.com">rudolf.streif@ibeeto.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <p>Hi Damien,<br>
    </p>
    <div>On 5/19/20 7:05 AM, Damien LEFEVRE
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I&#39;ve put GnuPG in my=C2=A0image, and I&#39;d like to depl=
oy a set to
          public and private keys into the system images.</div>
        <div><br>
        </div>
        <div>How can I do that from recipes?</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <p>You do this with a shell function that is added to
      ROOTFS_POSTPROCESS_COMMAND. Here is a script that I use to create
      SSH keys:</p>
    <p><tt># Image post-processing to configure sshd</tt><tt><br>
      </tt><tt><br>
      </tt><tt># Setup ssh key login for these users</tt><tt><br>
      </tt><tt>SSH_USERS ??=3D &quot;&quot;</tt><tt><br>
      </tt><tt>SSH_DISALLOW_PWAUTH ??=3D &quot;1&quot;</tt><tt><br>
      </tt><tt><br>
      </tt><tt>configure_sshd() {</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 # disallow password authentication</tt><tt><br=
>
      </tt><tt>=C2=A0=C2=A0 if [ &quot;${SSH_DIALLOW_PWAUTH}&quot; =3D=3D =
&quot;1&quot; ]; then</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo &quot;PasswordAuthentic=
ation no&quot; &gt;&gt;
        ${IMAGE_ROOTFS}/etc/ssh/sshd_config</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 fi</tt><tt><br>
      </tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 # keys will be stored tmp/deploy/keys</tt><tt>=
<br>
      </tt><tt>=C2=A0=C2=A0 mkdir -p ${DEPLOY_DIR}/keys</tt><tt><br>
      </tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 # create the keys for the users</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 for user in ${SSH_USERS}; do</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if [ ! -f ${DEPLOY_DIR}/keys=
/${user}-sshkey ]; then</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /usr/bin/ssh-keygen -t rsa -=
N &#39;&#39; \</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -f ${DEPLO=
Y_DIR}/keys/${user}-sshkey</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fi</tt><tt><br>
      </tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # add public key to authoriz=
ed_keys for the user</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${IMAGE_ROOTFS}/hom=
e/${user}/.ssh</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat ${DEPLOY_DIR}/keys/${use=
r}-sshkey.pub \</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &gt;=
&gt;
        ${IMAGE_ROOTFS}/home/${user}/.ssh/authorized_keys</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 done</tt><tt><br>
      </tt><tt>}</tt><tt><br>
      </tt><tt>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;configure_sshd;&quot;=
</tt><br>
    </p>
    <p>I have this script as an include file that I included into my
      image recipes.</p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Thanks,</div>
        <div>-Damien</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>
</pre>
    </blockquote>
    <pre cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </div>

</blockquote></div>

--000000000000913b3405a638acf7--
