Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.154.1589904061660361926
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 May 2020 09:01:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=td1CJccX;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.169, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f169.google.com with SMTP id c75so36325pga.3
        for <yocto@lists.yoctoproject.org>; Tue, 19 May 2020 09:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=E54S4fU18Eq3R4ECaeYaU7CzjBAuzWm98fpwn8gc32Y=;
        b=td1CJccXWrd1l6za3J1iKZ25g25s21iJrwhDCvxBLhARDQhe4id1fsjWXGSKJpoteJ
         acBBY6lkth3PB/PKFRhh0MPON/25AvVR23p9NGUjz1K90LFgGiUMymhmc1NDz57h61qu
         2OwqSXh4By/rt2plpeM4yzRADaqSNIXpQRXybFh11AXGUuwMYdUjYYW4ByHY+SHHI25r
         FIQG2814ZbQ3bECSFAj7G0OvjH5rm28b6LShGhpH7vAZxdkKn8eP+NMBF6ymcMvnfTk4
         WAz0RRg1db/Em7CN8+odiDv0sVvfWsASdnP4xvrPJEPMjuuGm70uIPBe/Bfe8B/eNl0S
         v+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=E54S4fU18Eq3R4ECaeYaU7CzjBAuzWm98fpwn8gc32Y=;
        b=o509gYFyyEp2RdrKVIkyoCINEGC1RVR/CJD10L6zASnWoOy65mBmvJJY1PJ7LaIvpz
         lS2PCMbB4aUddx4ScMjNmM0SmGysL5uGKQ/MIqDdf4qrY0jXrqA4fU40Apg31ueHWgD2
         e9ZacxwCHbWKiPgQrFVz4XXC5BEJkb2Thbmo1/wqE/HDQzryftNkdpX12BPWxMh7kA4o
         JzOpQH9Pi+JmFCxIJkYTNfCIkn0IOw1VXVmLfg5POgQQ/CKZLTsWxGFTs0sS/R4HDs4k
         w/IKl73hU9Ul45OsRpRw54Y/8VhNdtWP4rmXu704vtPBRF2/hWY1dHrd2doqThDq8neD
         ZIcw==
X-Gm-Message-State: AOAM531YcdOWTckFjqS9dIrv3vZyIAH7ZsNiC5lEbOtvj7L5X4IL12QE
	cQPqmUbSKYp8ZrtSn17pfnSRMUUjRys=
X-Google-Smtp-Source: ABdhPJxW04qc1P3ayl6qxcxtVYdvTbLTjiW02e3gI1kx4qfm5Za/zG0aYZ2mFbD1GT2tw1QwDgYkpQ==
X-Received: by 2002:aa7:8b15:: with SMTP id f21mr22037043pfd.72.1589904059796;
        Tue, 19 May 2020 09:00:59 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id u17sm10846645pgo.90.2020.05.19.09.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 09:00:58 -0700 (PDT)
Subject: Re: [yocto] deploy GPG keys into images
To: Damien LEFEVRE <lefevre.da@gmail.com>, yocto@lists.yoctoproject.org
References: <CA+FhBv_iyW6hhU6u4BrHoS5bNDcH2vDurWOJsPrPFNWodc5dDQ@mail.gmail.com>
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
Message-ID: <5beaecc9-1472-3614-1ac1-1928b0b3a3bd@ibeeto.com>
Date: Tue, 19 May 2020 09:00:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CA+FhBv_iyW6hhU6u4BrHoS5bNDcH2vDurWOJsPrPFNWodc5dDQ@mail.gmail.com>
X-Groupsio-MsgNum: 49444
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="l4I7zRtIzlOWMtxPyQkdh87MFfZQaRDzD"

--l4I7zRtIzlOWMtxPyQkdh87MFfZQaRDzD
Content-Type: multipart/mixed; boundary="oQMz082OSCaDiAEJBdx3qXdQGszEcUzsK"

--oQMz082OSCaDiAEJBdx3qXdQGszEcUzsK
Content-Type: multipart/alternative;
 boundary="------------3D3757FB93C26DD62719D650"
Content-Language: en-US

--------------3D3757FB93C26DD62719D650
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Damien,

On 5/19/20 7:05 AM, Damien LEFEVRE wrote:
> Hi,
>
> I've put GnuPG in my=C2=A0image, and I'd like to deploy a set to public =
and
> private keys into the system images.
>
> How can I do that from recipes?
>
You do this with a shell function that is added to
ROOTFS_POSTPROCESS_COMMAND. Here is a script that I use to create SSH keys=
:

# Image post-processing to configure sshd

# Setup ssh key login for these users
SSH_USERS ??=3D ""
SSH_DISALLOW_PWAUTH ??=3D "1"

configure_sshd() {
=C2=A0=C2=A0 # disallow password authentication
=C2=A0=C2=A0 if [ "${SSH_DIALLOW_PWAUTH}" =3D=3D "1" ]; then
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo "PasswordAuthentication no" >>
${IMAGE_ROOTFS}/etc/ssh/sshd_config
=C2=A0=C2=A0 fi

=C2=A0=C2=A0 # keys will be stored tmp/deploy/keys
=C2=A0=C2=A0 mkdir -p ${DEPLOY_DIR}/keys

=C2=A0=C2=A0 # create the keys for the users
=C2=A0=C2=A0 for user in ${SSH_USERS}; do
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if [ ! -f ${DEPLOY_DIR}/keys/${user}-sshkey=
 ]; then
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /usr/bin/ssh-keygen -t rsa -N '' \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -f ${DEPLOY_DIR}/keys/${u=
ser}-sshkey
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fi

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # add public key to authorized_keys for the=
 user
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${IMAGE_ROOTFS}/home/${user}/.ssh
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat ${DEPLOY_DIR}/keys/${user}-sshkey.pub \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >> ${IMAGE_ROOTFS}/=
home/${user}/.ssh/authorized_keys
=C2=A0=C2=A0 done
}
ROOTFS_POSTPROCESS_COMMAND +=3D "configure_sshd;"

I have this script as an include file that I included into my image recipe=
s.

:rjs


> Thanks,
> -Damien
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------3D3757FB93C26DD62719D650
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi Damien,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/19/20 7:05 AM, Damien LEFEVRE
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+FhBv_iyW6hhU6u4BrHoS5bNDcH2vDurWOJsPrPFNWodc5dDQ@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I've put GnuPG in my=C2=A0image, and I'd like to deploy a set=
 to
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
      </tt><tt>SSH_USERS ??=3D ""</tt><tt><br>
      </tt><tt>SSH_DISALLOW_PWAUTH ??=3D "1"</tt><tt><br>
      </tt><tt><br>
      </tt><tt>configure_sshd() {</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0 # disallow password authentication</tt><tt><br=
>
      </tt><tt>=C2=A0=C2=A0 if [ "${SSH_DIALLOW_PWAUTH}" =3D=3D "1" ]; the=
n</tt><tt><br>
      </tt><tt>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo "PasswordAuthentication=
 no" &gt;&gt;
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
N '' \</tt><tt><br>
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
      </tt><tt>ROOTFS_POSTPROCESS_COMMAND +=3D "configure_sshd;"</tt><br>
    </p>
    <p>I have this script as an include file that I included into my
      image recipes.</p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CA+FhBv_iyW6hhU6u4BrHoS5bNDcH2vDurWOJsPrPFNWodc5dDQ@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div>Thanks,</div>
        <div>-Damien</div>
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

--------------3D3757FB93C26DD62719D650--

--oQMz082OSCaDiAEJBdx3qXdQGszEcUzsK--

--l4I7zRtIzlOWMtxPyQkdh87MFfZQaRDzD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl7EArkACgkQjYyoKScz
m3UQ7Qf/TpGMRrmXtV91fXiDDke1ZKfmRPZzfQiQzqhwUwGW9F33wFUImtZHOo+I
+BD20hf7BLDvezma/ZtMIkidZ/ZfFmxxmHTnxjcKb17RWs9QVItt1F+GGM7gB7U3
dCQ5xG50+gvQ7Rw0SsV78tDpXi7aHSFanxRpn4Ywt7Ujpcu7g74B4/AaE8B9FQuL
JEfKeYqI7tjV07M9uzdNd1FbijKKWrbQiD0mcox3YmCDY4i39ov/kbffGzIs6JNN
kv8RrQ4I1zb0GZvtcYT5YIw1PNkhglfAy8bmk5XiLL7D2cDqty1yi5P95YOFuOga
kjS+/ezaGiFe38zsHTCwk9ST+6LwsQ==
=X9TU
-----END PGP SIGNATURE-----

--l4I7zRtIzlOWMtxPyQkdh87MFfZQaRDzD--
