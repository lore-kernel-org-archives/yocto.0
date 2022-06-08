Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64708C433EF
	for <webhook@archiver.kernel.org>; Wed,  8 Jun 2022 01:17:45 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.1272.1654651060250648414
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 18:17:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=STpdSdZk;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.45,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f45.google.com with SMTP id a10so17203283pju.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 18:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=d2uzR5oYSQxm+N/NW6O7RURJOUET/ioly+3rznR//IA=;
        b=STpdSdZkOwpUOrpGwQotcM2r7RxNC1GKFCWWC62niK3qqM8P6HDoMMjEhDRNF+DIkE
         X58BOlG3GgsgiGOH8fomo+JCz7CsLaOI1n5bX+hI6Gxd7j6Jf2L5reQeOLH8wBM4iImE
         Rlz43ClHNnM3xa+3XgnezH3a3dH+45/b3yeFdvzcehSiHPG/RAvlp0wBrbUGKE4uSbjp
         Etny/mLAuxJMzSn876gR1ksxtXKB1Fng46j7XUI8JiHYXhtt7VsZg0Au/rrRYsPycA08
         BhxREfiG0KMOJtcn1mal2mwAsi+i0QzjetPLTUToOWOd9WUcytR0xVDyatg5yIe6rs+8
         ADCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=d2uzR5oYSQxm+N/NW6O7RURJOUET/ioly+3rznR//IA=;
        b=5HCm65RGTOoKMRHxuZHurxsPe43L1X31lgMb/H/4Eb+MjvLfVeHPdJ9yt1zpTcX5O9
         Hp9IDNwOHLefoRnJW5C5LsF7XWG3dZ/Q/MBzJ2O/WXECde7VWnUTR5Y/rE3PTSRxBv2C
         oxvLkt9kBccoiepeGWU3IO4ElZP9o7gmC04ROrXvxBKFxxlHxvcC7/D9IpKA9p5dBkSs
         kwhz6Y5H0wA+MJqOWbMy1ijwgK1+lEPgejxy6lq9Ii0Scpz0o6ko/qvhNeckVGh1QEUx
         2qqI8285fT6CG0WbtVsFvNeAegDpzA5/v9VpP8DTZviGfdT906VALCrvxy+Fh8Y0Vl3N
         VlEA==
X-Gm-Message-State: AOAM531zvUgfRCxQDx8mJAfGidFWQAsZby2QLKIkE9qOne8MKddAQ1ck
	NrhW1wrWGKIvx5ZkB6NS4mZzWsXcuNFcDkEh
X-Google-Smtp-Source: 
 ABdhPJwmQP/SQ6ihVzGuiQYv95EtI7AiuzQp4Vw+E5ra4ppFD5xdh8wuMt/zFCcEb7WCaBo/V/Khug==
X-Received: by 2002:a17:902:d5ce:b0:167:6c02:754c with SMTP id
 g14-20020a170902d5ce00b001676c02754cmr17196499plh.135.1654651059104;
        Tue, 07 Jun 2022 18:17:39 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 ik6-20020a170902ab0600b00161a9df4de8sm12950160plb.145.2022.06.07.18.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 18:17:38 -0700 (PDT)
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Subject: Re: [yocto] Force binary package install
Message-ID: <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
Date: Tue, 7 Jun 2022 18:17:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="XJNa5Ur6RQGwiet6mBw29GnMMLOaUoljg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jun 2022 01:17:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57302

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--XJNa5Ur6RQGwiet6mBw29GnMMLOaUoljg
Content-Type: multipart/mixed; boundary="8lEwNY5w6NjKgSpEcIQ5z9hxG0BmcMghL";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Message-ID: <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
Subject: Re: [yocto] Force binary package install
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
In-Reply-To: <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>

--8lEwNY5w6NjKgSpEcIQ5z9hxG0BmcMghL
Content-Type: multipart/mixed;
 boundary="------------4CFC72AB68E93FB5AB0B65EF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4CFC72AB68E93FB5AB0B65EF
Content-Type: multipart/alternative;
 boundary="------------7C68094A846176EE0D761237"


--------------7C68094A846176EE0D761237
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 6/7/22 4:36 PM, Chuck Wolber wrote:
>
>>         >> Is there an elegant way around it?
>>         >>
>>         >>
>>         >> Error:
>>         >>=C2=A0 =C2=A0 Problem: conflicting requests
>>         >>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 needed by
>>         >> xxx-single-group-0.1-r0.cortexa53_crypto
>>         >>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2.0)=
 needed by
>>
>
> Could this be considered a bug in the package_rpm.bbclass? It seems to =

> me that if you skip files-rdeps,
> we might not want to be adding anything into splitpreinst. Otherwise=20
> it seems silly to tell insane.bbclass
> to skip something that RPM is going to ding you on later anyway. Or=20
> maybe I am confused...
>
> In any case, I believe what you may be seeing can be viewed as an=20
> RPM-ism, and not necessarily a
> yocto-ism per se. So you might consider trying one of the following to =

> work around the problem:
>
It's Yocto that creates the spec file for rpm. Apparently, besides=20
relying on what is declared in RDEPENDS, it
actually iterates over the files and appends the dependencies (and their =

versions). It results in this:

Requires: libc.so.6
Requires: libc.so.6()(64bit)
Requires: libc.so.6(GLIBC_2.0)
Requires: libc.so.6(GLIBC_2.1)
Requires: libc.so.6(GLIBC_2.1.3)
Requires: libc.so.6(GLIBC_2.17)(64bit)
Requires: libc.so.6(GLIBC_2.2)
Requires: libc.so.6(GLIBC_2.28)(64bit)
Requires: libc.so.6(GLIBC_2.3)
Requires: libc.so.6(GLIBC_2.3.4)
Requires: libc.so.6(GLIBC_2.4)
Requires: libc.so.6(GLIBC_2.7)

Removing anything but the first two lines would probably do the trick.=20
So if file-rdeps is declared in INSANE_SKIP
it should simply only use the declared RDEPENDS and not analyze the files=
=2E

> Experiment with using a virtual provider. It may be possible to just=20
> map the dependency manually to
> what is already there.
>
> If you _know_ that your dependency is truly isolated to your recipe,=20
> you may be able to set RPROVIDES
> values in your recipe so the resulting RPM thinks the dependencies are =

> met internally.
>
> Patch package_rpm.bbclass to add a guard variable around the setting=20
> of splitpreinst. Add that
> guard variable to your recipe so it selectively turns off the=20
> pre-install checks for that particular package.
> Or just check for files-rdeps in INSANE_SKIP and do the same thing...
Yeah well, that's not really a good solution unless it's upstreameable.
>
> Stop fighting RPM and switch to a different package type like IPK.
That would probably only work if the dependency mechanism is different=20
for IPK. I have not checked that.
>
> ..Ch:W..
>
> --=20
> *"Perfection must be reached by degrees; she requires the slow hand of =

> time." - Voltaire*

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------7C68094A846176EE0D761237
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/7/22 4:36 PM, Chuck Wolber wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB=3D6tBThBW4mZbVWpOZoYC-onO0TX=3DxDhv6k6zg_2Z2jUuhhzw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <blockquote type=3D"cite">
                <div>
                  <div class=3D"gmail_quote">
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px=

                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex"> &gt;&gt; Is
                      there an elegant way around it?<br>
                      &gt;&gt;<br>
                      &gt;&gt;<br>
                      &gt;&gt; Error:<br>
                      &gt;&gt;=C2=A0 =C2=A0 Problem: conflicting requests=
<br>
                      &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libd=
l.so.2 needed
                      by<br>
                      &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<b=
r>
                      &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides
                      libdl.so.2(GLIBC_2.0) needed by <br>
                    </blockquote>
                  </div>
                </div>
              </blockquote>
            </div>
          </blockquote>
        </div>
        <div><br>
        </div>
        <div>Could this be considered a bug in the package_rpm.bbclass?
          It seems to me that if you skip files-rdeps,</div>
        <div>we might not want to be adding anything into splitpreinst.
          Otherwise it seems silly to tell insane.bbclass</div>
        <div>to skip something that RPM is going to ding you on later
          anyway. Or maybe I am confused...<br>
        </div>
        <div><br>
        </div>
        <div>In any case, I believe what you may be seeing can be viewed
          as an RPM-ism, and not necessarily a</div>
        <div>yocto-ism per se. So you might consider trying one of the
          following to work around the problem:<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <p>It's Yocto that creates the spec file for rpm. Apparently,
      besides relying on what is declared in RDEPENDS, it<br>
      actually iterates over the files and appends the dependencies (and
      their versions). It results in this:</p>
    <p><font face=3D"monospace">Requires: libc.so.6<br>
        Requires: libc.so.6()(64bit)<br>
        Requires: libc.so.6(GLIBC_2.0)<br>
        Requires: libc.so.6(GLIBC_2.1)<br>
        Requires: libc.so.6(GLIBC_2.1.3)<br>
        Requires: libc.so.6(GLIBC_2.17)(64bit)<br>
        Requires: libc.so.6(GLIBC_2.2)<br>
        Requires: libc.so.6(GLIBC_2.28)(64bit)<br>
        Requires: libc.so.6(GLIBC_2.3)<br>
        Requires: libc.so.6(GLIBC_2.3.4)<br>
        Requires: libc.so.6(GLIBC_2.4)<br>
        Requires: libc.so.6(GLIBC_2.7)</font><br>
    </p>
    <p>Removing anything but the first two lines would probably do the
      trick. So if file-rdeps is declared in INSANE_SKIP<br>
      it should simply only use the declared RDEPENDS and not analyze
      the files.<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CAB=3D6tBThBW4mZbVWpOZoYC-onO0TX=3DxDhv6k6zg_2Z2jUuhhzw@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div>Experiment with using a virtual provider. It may be
          possible to just map the dependency manually to</div>
        <div>what is already there.<br>
        </div>
        <div><br>
        </div>
        <div>If you _know_ that your dependency is truly isolated to
          your recipe, you may be able to set RPROVIDES</div>
        <div>values in your recipe so the resulting RPM thinks the
          dependencies are met internally.<br>
        </div>
        <div><br>
        </div>
        <div>Patch package_rpm.bbclass to add a guard variable around
          the setting of splitpreinst. Add that</div>
        <div>guard variable to your recipe so it selectively turns off
          the pre-install checks for that particular package.</div>
        <div>Or just check for files-rdeps in INSANE_SKIP and do the
          same thing...<br>
        </div>
      </div>
    </blockquote>
    Yeah well, that's not really a good solution unless it's
    upstreameable.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB=3D6tBThBW4mZbVWpOZoYC-onO0TX=3DxDhv6k6zg_2Z2jUuhhzw@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Stop fighting RPM and switch to a different package type
          like IPK.</div>
      </div>
    </blockquote>
    That would probably only work if the dependency mechanism is
    different for IPK. I have not checked that.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB=3D6tBThBW4mZbVWpOZoYC-onO0TX=3DxDhv6k6zg_2Z2jUuhhzw@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>..Ch:W..<br>
        </div>
        <div>
          <div><br>
          </div>
          -- <br>
          <div dir=3D"ltr" class=3D"gmail_signature">
            <div dir=3D"ltr">
              <div><b><span style=3D"font-family:monospace">"Perfection
                    must be reached by degrees; she requires the slow
                    hand of time." - Voltaire</span></b></div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------7C68094A846176EE0D761237--

--------------4CFC72AB68E93FB5AB0B65EF
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQ=
pe+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy=
+7C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNn=
dnK
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTd=
K7j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKI=
FN0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHA=
gYV
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexC=
H3r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d=
38L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWr=
R84
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq=
4x5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBh=
jVL
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOm=
Tqk
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwR=
IFp
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDsp=
JSH
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/=
mCB
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIA=
AkF
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2=
LYU
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9M=
byE
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzY=
f9m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41ts=
C5d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------4CFC72AB68E93FB5AB0B65EF--

--8lEwNY5w6NjKgSpEcIQ5z9hxG0BmcMghL--

--XJNa5Ur6RQGwiet6mBw29GnMMLOaUoljg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmKf+LAFAwAAAAAACgkQjYyoKSczm3Vv
wwf/RH7gFcTnq11deU3BZkT8IT6+FCkeddJQz/8MDGIeTpXfyszzXpdkjD44kxaodK6KO6Qvv6le
DOMMFELXCbeekYjKBjexY5CRMk/nZAbsP3pYj7pS7uqTySWq/566VS5ezdc3TzajFLKCOVqpJjAE
etyJVy8RJ7seTo3BCu58nEeOXQfglhCcSvlsEl9NwCVk55ueGnSJwEg4jdHv9AD3ZDh/+pRm1iFA
AdV/baymsXp+gRt3XxxT0KYF3ZDRs29Itdf7dmRsxUCgN0AN42honz7BsiqszHS5Zai0zwlBo1TW
PQq/VIykzw8Lxhk3DDC/TRnRRYccUR1STy4px1Kl0g==
=j0SM
-----END PGP SIGNATURE-----

--XJNa5Ur6RQGwiet6mBw29GnMMLOaUoljg--

