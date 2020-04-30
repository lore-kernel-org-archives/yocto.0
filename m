Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web12.1123.1588290769331142687
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 16:52:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=yF+s3ZvE;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.169, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f169.google.com with SMTP id s18so3728614pgl.12
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 16:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=4T1HSaSgHnaekA6bJVCbmlm1rJVMiPyFk9zn8xE6PF0=;
        b=yF+s3ZvEPqi7DyYvNZ8io+AhWf4D1xygfGzhMAufqUsQuuXtTJOpO8rbOQllTOynvc
         oBuF17bcKUDoLfTWXGZcbSBK6F9HJSVZec4rOV1Jzcs41feFtHSkaoAf7k1+CuBwm2dC
         iwfxn6j9ahf4X7EAGr+1U2J+9vEEScU0aacZl8zKW2x0Lg12yt0qwkaxBVDqJMqvpjVY
         4bLUL4xq3RCX3nndeuSrKcIbL/w+MdSsAqRHw30aXVPm+tpqf+35boGaw2VjW2INWbO2
         +LujuPQKYU8FaJTDqIZYCLyf9inf94KsWD0z5k+8apTEkxmFNVd6HYp+L4uevOCwQUtl
         qbLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=4T1HSaSgHnaekA6bJVCbmlm1rJVMiPyFk9zn8xE6PF0=;
        b=W7Rwm8mvhDSF+VFMmtdMh1/enLmhjazCXJncxOuTSRhejKBVdgQuos7YQXrfQ9BqGh
         d14POOOVGPnhoIUwj8vTDso+67fP4OKw00nJQ6z0AiitDY7dGoxHBl9YdraXsk3puWNJ
         BOsYa9zfr/IfbAk0wrYlG+JxbPTUtNPhvJW5nEmzGe5CI9qTi1lkfKEHcP2AGrYADB3o
         f6q+49p5M5+sFoYQb6+I5uGs6nelhopTa+3jYWc4OKyU0EiH3o341Nw8v9jK6Ppa3Tql
         25rujG28NgFelJCuPhimqpjoPCNKQRxthsYXP0i5Uy6cAO4Wxt1SD9bdzBJKCbQueCZj
         PAwA==
X-Gm-Message-State: AGi0Pua6ZQpfFXJ5nbL/rtnJUmdzbw0IZ3vEy2eIO9EwP7lV9rPlJ6JD
	ZUwwsh9SPakTbfnsRL+oTLnh/98sY67cjw==
X-Google-Smtp-Source: APiQypJOoYB9959htB3XoWmokECY7lcJ8xAnMBp3YesM1cXRTIn8oW+r43gpkmLijPGcc98K0UrVIA==
X-Received: by 2002:aa7:8489:: with SMTP id u9mr1427437pfn.248.1588290768088;
        Thu, 30 Apr 2020 16:52:48 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id b140sm741894pfb.119.2020.04.30.16.52.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 16:52:47 -0700 (PDT)
Subject: Re: [yocto] [WIC] Wic creates spurious partition
To: yocto@lists.yoctoproject.org
References: <160ABD2A1099AD97.19580@lists.yoctoproject.org>
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
Message-ID: <fa8a4d4a-2d7c-1059-1dd5-94e66c2f0427@ibeeto.com>
Date: Thu, 30 Apr 2020 16:52:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <160ABD2A1099AD97.19580@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49296
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2hiokmBaJgprSSVDy7WXi7UxFGNngZvDb"

--2hiokmBaJgprSSVDy7WXi7UxFGNngZvDb
Content-Type: multipart/mixed; boundary="SrCjbRut2N2hU4HP9NA6aKiCvlMLbAmrh"

--SrCjbRut2N2hU4HP9NA6aKiCvlMLbAmrh
Content-Type: multipart/alternative;
 boundary="------------04C064F6D5E6AB7A02208C0B"
Content-Language: en-US

--------------04C064F6D5E6AB7A02208C0B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ok, I found the answer to my own question. It's the typical extended
partition issue.

:rjs

On 4/30/20 4:36 PM, Rudolf J Streif via lists.yoctoproject.org wrote:
> I seem to be running into wic problems today...
>
> I have the following wks file:
>
> part SPL --source rawcopy --sourceparams=3D"file=3DSPL" --ondisk mmcblk
> --no-table --align 1
> part u-boot --source rawcopy --sourceparams=3D"file=3D${UBOOT_BINARY}"
> --ondisk mmcblk --no-table --align 69
> part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=3Dvfat
> --label boot --active --align 4096 --fixed-size 16
>
> part /mnt/persistent --ondisk mmcblk1 --fstype=3Dext4 --label persistent
> --fixed-size 10
> part / --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label rootfs1
> --size 500
> part /mnt/rootfs2 --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --lab=
el
> rootfs2 --size 500
> part /mnt/internal_storage --ondisk mmcblk1 --fstype=3Dext4 --label data
> --size 1000
>
> bootloader --ptable msdos
> That should create 7 partitions of which 5 have a file system. However,
> when I flash the emmc with it and boot the device:
>
> # fdisk /dev/mmcblk1
>
> Disk /dev/mmcblk1: 3.62 GiB, 3867148288 bytes, 7553024 sectors
> Units: sectors of 1 * 512 =3D 512 bytes
> Sector size (logical/physical): 512 bytes / 512 bytes
> I/O size (minimum/optimal): 512 bytes / 512 bytes
> Disklabel type: dos
> Disk identifier: 0x0813790a
>
> Device=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Boot=C2=A0=C2=A0 =
Start=C2=A0=C2=A0=C2=A0=C2=A0 End Sectors=C2=A0 Size Id Type
> /dev/mmcblk1p1 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8192=C2=A0=C2=A0 40=
959=C2=A0=C2=A0 32768=C2=A0=C2=A0 16M=C2=A0 c W95 FAT32 (LBA)
> /dev/mmcblk1p2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 40960=C2=A0=C2=
=A0 61439=C2=A0=C2=A0 20480=C2=A0=C2=A0 10M 83 Linux
> /dev/mmcblk1p3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 61440 1392639 1=
331200=C2=A0 650M 83 Linux
> /dev/mmcblk1p4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1392640 4771841 3379202=C2=
=A0 1.6G=C2=A0 f W95 Ext'd (LBA)
> /dev/mmcblk1p5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1392641 2723840 1331200=C2=
=A0 650M 83 Linux
> /dev/mmcblk1p6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2723842 4771841 2048000 100=
0M 83 Linux
>
> There is another partition that essentially overlaps the last two. That
> makes no sense.
>
> Thanks,
> Rudi
>
>
>
>=20


--------------04C064F6D5E6AB7A02208C0B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Ok, I found the answer to my own question. It's the typical
      extended partition issue.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/30/20 4:36 PM, Rudolf J Streif via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:160ABD2A1099AD97.19580@lists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">I seem to be running into wic=
 problems today...

I have the following wks file:

</pre>
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite">
            <blockquote type=3D"cite">
              <blockquote type=3D"cite">
                <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">part SPL --source rawcopy --s=
ourceparams=3D"file=3DSPL" --ondisk mmcblk
--no-table --align 1
part u-boot --source rawcopy --sourceparams=3D"file=3D${UBOOT_BINARY}"
--ondisk mmcblk --no-table --align 69
part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=3Dvfat
--label boot --active --align 4096 --fixed-size 16

part /mnt/persistent --ondisk mmcblk1 --fstype=3Dext4 --label persistent
--fixed-size 10
part / --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label rootfs1
--size 500
part /mnt/rootfs2 --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label
rootfs2 --size 500
part /mnt/internal_storage --ondisk mmcblk1 --fstype=3Dext4 --label data
--size 1000

bootloader --ptable msdos
</pre>
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite">
            <blockquote type=3D"cite">
              <blockquote type=3D"cite">
                <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
That should create 7 partitions of which 5 have a file system. However,
when I flash the emmc with it and boot the device:

# fdisk /dev/mmcblk1

Disk /dev/mmcblk1: 3.62 GiB, 3867148288 bytes, 7553024 sectors
Units: sectors of 1 * 512 =3D 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x0813790a

Device=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Boot=C2=A0=C2=A0 St=
art=C2=A0=C2=A0=C2=A0=C2=A0 End Sectors=C2=A0 Size Id Type
/dev/mmcblk1p1 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8192=C2=A0=C2=A0 4095=
9=C2=A0=C2=A0 32768=C2=A0=C2=A0 16M=C2=A0 c W95 FAT32 (LBA)
/dev/mmcblk1p2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 40960=C2=A0=C2=A0=
 61439=C2=A0=C2=A0 20480=C2=A0=C2=A0 10M 83 Linux
/dev/mmcblk1p3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 61440 1392639 133=
1200=C2=A0 650M 83 Linux
/dev/mmcblk1p4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1392640 4771841 3379202=C2=A0=
 1.6G=C2=A0 f W95 Ext'd (LBA)
/dev/mmcblk1p5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1392641 2723840 1331200=C2=A0=
 650M 83 Linux
/dev/mmcblk1p6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2723842 4771841 2048000 1000M=
 83 Linux

There is another partition that essentially overlaps the last two. That
makes no sense.

Thanks,
Rudi


</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">
</pre>
  </body>
</html>

--------------04C064F6D5E6AB7A02208C0B--

--SrCjbRut2N2hU4HP9NA6aKiCvlMLbAmrh--

--2hiokmBaJgprSSVDy7WXi7UxFGNngZvDb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6rZM0ACgkQjYyoKScz
m3Vcdgf+MEhu13911koLRNgvnj29oUETxhmXdvnU0OaN5oPaz3zKXwiMQKuOx33d
kHEBMtyeEYI9s0HTyd+BkEE53sEmilwVLiWzesDyWXUlDR8kR3iMaE5fKsmy1tqP
/kuBxyl7gu+biAJ9vsBhiqorLMQgEAbtOHsTFSLDsvkevIfVxirb3ugzQnAXIlWh
RZBe+ixdanu3oB6En3aAv9joBI+O7Q19Riok5Q9k4nj+dtFUMVwgFMYfFQzrwpSO
QvCWWsssf447AeHGF3ZAe5nmukOhr7eoH8Fi/g2pNc9OF+bZhsJ4XJUWvpxN39nS
eIzM2tF0SJQnTZBLcFLyP4zHtoUaug==
=iszU
-----END PGP SIGNATURE-----

--2hiokmBaJgprSSVDy7WXi7UxFGNngZvDb--
