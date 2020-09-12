Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
 by mx.groups.io with SMTP id smtpd.web10.20201.1599925500288233858
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 08:45:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ovk4uMpV;
 spf=pass (domain: gmail.com, ip: 209.85.210.196, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f196.google.com with SMTP id k15so9315039pfc.12
        for <yocto@lists.yoctoproject.org>; Sat, 12 Sep 2020 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=bZDDGp5ymbvC7ntagcdLaBxX90n6h5GhHqa2i6yO8FE=;
        b=ovk4uMpV9vH0+BZ0r6f3431Gc+cqge3AJqjvH+vSQ4WvxogO9VgP2K+9lRlU3SWOM+
         AcAXjVIEV6j9j4nKM0Mw0gxdtH5r7/89Jogx3UDnnqZOZQfKT2coDSF77krP8Xgd2qFu
         aLJ3ux9mO/DBfdAqcOJnFT8M0MTVzYwSDiipZo0BjIt55kaZq4qeWnoeZNfX//immcXw
         U6dlKFUFGOusK89nb/cMAElYqaIvEw5khl+0lwNKdqAPpxFgV1jlZtwSPQ+BWHCUWmhN
         BhUgW3C/75BLjgZPdzlDqqPW4IlifGCm54tQakdn3dkMDWJRhjHa33BVm2UMkeToD/NU
         MxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=bZDDGp5ymbvC7ntagcdLaBxX90n6h5GhHqa2i6yO8FE=;
        b=BzR9EaphM+IhtmMxGSOSgxtID0N8SFchRmjJHzLMaEDe3OChhp0up90DidiOPtxYzY
         c7+SUbzgPFId/permD6AjFQPkU3K00bh4HTa5nNr5Fl+tahYYgyR/AFEBu4z5co9gIoj
         IAMiZSbp2Nooz3Bv7kbeGz29oQ9TPio6LXN/5FTPIalCSIAD3er+aasmOt6Y4TtnNrnn
         hHeCBLYbd/KDFPBnV2mEWPwFQmkdKZ8PdCzEN6URKtjirbKHdk7H6TgEHfM0gYJyxrnx
         EkEBJxBqKupnTQOL12d6+uV8eDzHaYS2uYgejAbyjW9eR05RsI52vOTUB83/r6ItdPeY
         G9tw==
X-Gm-Message-State: AOAM531zxtR5f9HFOoxQXx2rjTZhHnDYhw4fFPjGTLUHw6b/GDK1r84W
	4w5IbtGDFztRbquMaLlLolE=
X-Google-Smtp-Source: ABdhPJyGS9erc/4JFypfW0sFljrm+zQiF0i+fuTv/6zlSYoiJaeTvFsUBizqkvq/ZXKjU4cS7v7U8g==
X-Received: by 2002:a05:6a00:23c4:: with SMTP id g4mr6701344pfc.40.1599925499752;
        Sat, 12 Sep 2020 08:44:59 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id m17sm3131388pjn.54.2020.09.12.08.44.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 08:44:59 -0700 (PDT)
Subject: Re: [meta-security][PATCH 0/6] Some small dm-verity improvements
To: Bartosz Golaszewski <brgl@bgdev.pl>, Niko Mauno <niko.mauno@vaisala.com>
Cc: yocto@lists.yoctoproject.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
 <CAMRc=MdGea6ojUTnvF8tixff2aAkUMrN7ryWioAYV2==jjUXAA@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <cd8bafcf-3f27-8a33-2453-4209e6e80d75@gmail.com>
Date: Sat, 12 Sep 2020 08:44:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=MdGea6ojUTnvF8tixff2aAkUMrN7ryWioAYV2==jjUXAA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 9/7/20 10:35 AM, Bartosz Golaszewski wrote:
> On Mon, Sep 7, 2020 at 7:17 PM Niko Mauno <niko.mauno@vaisala.com> wrot=
e:
>> This set of patches addresses some small issues in dm-verity rootfs
>> facility, which were observed while making use of dm-verity-img.bbclas=
s
>> to generate dm-verity rootfs images for real arm-based hardware. For
>> purposes of establishing this changeset, the default 'qemux86-64'
>> machine was used as a reference.
>>
>> During testing/development the following additional settings were
>> defined in local.conf:
>>
>>   DM_VERITY_IMAGE =3D "core-image-minimal"
>>   DM_VERITY_IMAGE_TYPE =3D "ext4"
>>   IMAGE_CLASSES +=3D "dm-verity-img"
>>   INITRAMFS_IMAGE_BUNDLE =3D "1"
>>   INITRAMFS_IMAGE =3D "dm-verity-image-initramfs"
>>
>> And the following command line was used to test the changes with qemu:=

>>
>>   KERNEL=3D.../build/tmp/deploy/images/qemux86-64/bzImage-initramfs-qe=
mux86-64.bin \
>>     QB_NET=3Dnone \
>>     runqemu \
>>     nographic \
>>     qemuparams=3D"-nic none" \
>>     qemux86-64 \
>>     .../build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-=
64-*.rootfs.ext4.verity
>>
>>
>> Niko Mauno (6):
>>   dm-verity-img.bbclass: Fix bashisms
>>   dm-verity-img.bbclass: Reorder parse-time check
>>   dm-verity-image-initramfs: Fix do_rootfs dependency
>>   dm-verity-image-initramfs: Ensure verity hash sync
>>   dm-verity-image-initramfs: Bind at do_image instead
>>   linux-yocto(-dev): Add dm-verity fragment as needed
>>
>>  classes/dm-verity-img.bbclass                    | 12 ++++++------
>>  recipes-core/images/dm-verity-image-initramfs.bb |  7 +++++--
>>  recipes-kernel/linux/linux-yocto-dev.bbappend    |  1 +
>>  recipes-kernel/linux/linux-yocto_5.%.bbappend    |  1 +
>>  4 files changed, 13 insertions(+), 8 deletions(-)
>>
>> --
>> 2.20.1
>>
> Hi Niko,
>
> I saw these patches and had to double-check just to realize my
> dm-verity patches actually got upstream to meta-security although I
> explicitly stated in the cover letter that they don't work with
> verified boot (which basically makes dm-verity useless).
I suspect It didn't register.=C2=A0 In the end it did have a silver linin=
g as
it was work that could be leveraged.=C2=A0 This is on the core values of =
open
sources.

- armin
>
> It's funny you sent them now because I just started working on a
> different approach that won't require the OE-core changes I posted a
> while ago and which were never merged because they broke some unit
> tests.
>
> Niko: do your changes allow this to work with verified boot on BeagleBo=
ne Black?
>
> Bartosz


