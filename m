Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10348.1593560686522370304
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 16:44:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=EFxr9f9G;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: akuster@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DCFCE01DC9; Tue, 30 Jun 2020 16:44:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F416E01DC7
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 16:44:41 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id b16so10105466pfi.13
        for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 16:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=zCEw+HjJWSndQ7ADpg6qbD7V4z9HhGireSjjGhLUl1w=;
        b=EFxr9f9GW5+Qwm3iCrBc3L9n7kGiTl1pSUEsvcDJ7ehvelXmk5VbfkiIMlVgLKJ9Eu
         V2AXhPj8xFj6beAMna3slc5rhvu6aSn61nw7OqU6LZE007QIccQwu1felGwg/KCAQbMt
         2P5jdmZUUiNWxDiDVqIUSxklfkgApUejg+kRQdcCf/2KaRKC2ms5VQcCvQrBDjb32FI4
         yd1b4dMJYVNfH07HZyeCYlV6ihKsAzKhBXsf0DkI4juqJNE6Oc1vHOYRTGzd20yAsBoF
         rgkXMNgX+iI7G8m7EGvj3oz1eTqQCOrpqA2TP+0Ag3VpJjzllgD1whJGXgNBlA1+CDUd
         j+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=zCEw+HjJWSndQ7ADpg6qbD7V4z9HhGireSjjGhLUl1w=;
        b=b688eNC+vVOaR84WsE06OhGVFobUl78ahoQzf/7d+8zxHOZI5uOxrXqfC4M2GGUSbU
         aQ/DsTdOwEJ0WXFv/OmkWo4iyqM1KlU1zF5Koyhj7mpXnaRQcmoDQBeEJ5BDyMBV70XH
         SmCa7nbdXRnsp6t1PXfTFkpXh6ocf9rKQa0H+omY9ViYlurtSSZkJeGF3eWCziZnd2HN
         NXv4Hyzo0A3eoDVL7EYLNvKGnD7ZCx270Vy2HiwrSK/QbCqUdnZ5g1vV1WUU9Gf7jDmm
         xI/4T3kVQdQ+fPwemZn+GkOBYVd0ohNE81asgdk9AZgX+Kj0K3j7dSTCfWH9taEFu7XB
         at2g==
X-Gm-Message-State: AOAM532O49eDod53nbRGQ+BgkAdkoDGVykBAQrQSlNn7xoEe3rsH4jeC
	itd3B4CWK3Ctk1/QIbh9SkH3w01lBH4=
X-Google-Smtp-Source: ABdhPJx9WbbScgfEGSdx1mbUzZKs2/OkhQwV2gwX5eOIIB+6c3XN6K/lAhXelr5XzFrj2tXwWP1q/g==
X-Received: by 2002:a63:571b:: with SMTP id l27mr17506078pgb.417.1593560680587;
        Tue, 30 Jun 2020 16:44:40 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:c85d:3ce:5443:9164? ([2601:202:4180:a5c0:c85d:3ce:5443:9164])
        by smtp.gmail.com with ESMTPSA id o2sm3137381pjp.53.2020.06.30.16.44.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 16:44:39 -0700 (PDT)
Subject: Re: [yocto] M+ & H bugs with Milestone Movements WW26
To: Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@yoctoproject.org
References: <273601d64f36$3a15bde0$ae4139a0$@gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
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
Message-ID: <3256f16b-a3e3-7b62-c56d-b61a5cc72358@mvista.com>
Date: Tue, 30 Jun 2020 16:44:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <273601d64f36$3a15bde0$ae4139a0$@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------51D25A579BBF0BFD4DEFB2E2"
Content-Language: en-US

--------------51D25A579BBF0BFD4DEFB2E2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Stephen,

On 6/30/20 4:28 PM, Stephen Jolley wrote:
>
> All,
>
Thanks for sending this out.


Is there any priority to these that may help the community pick off the
ones most important to the Project?

-armin

> YP M+ or high bugs which moved to a new milestone in WW26 are listed
> below:
>
> *Priority*
>
> =09
>
> *Bug ID*
>
> =09
>
> *Short Description*
>
> =09
>
> *Changer*
>
> =09
>
> *Owner*
>
> =09
>
> *Was*
>
> =09
>
> *Became*
>
> *High*
>
> =09
>
> *13947 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13947>*
>
> =09
>
> buildtools checksum files are named different on non-release and
> release builds
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> vineela.tummalapalli@intel.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *Medium+*
>
> =09
>
> *5322 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322>*
>
> =09
>
> Global DNS fallback mechanism not present in poky distro
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *10693 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693>*
>
> =09
>
> Add a testcase for multilib eSDK on the autobuilder
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *11449 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11449>*
>
> =09
>
> Allow overriding classes to override overridden classes
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *11746 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11746>*
>
> =09
>
> oe-selftest: capture self.logger messages in XML output
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *11906 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11906>*
>
> =09
>
> rpmbuild: Can not build packages on qemu target
>
> =09
>
> hongxu.jia@windriver.com
>
> =09
>
> hongxu.jia@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M4
>
> *=C2=A0*
>
> =09
>
> *12090 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12090>*
>
> =09
>
> bitbake resident server reconnect needed ?
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *12279 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12279>*
>
> =09
>
> enhance manifest not found warning
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *12342 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342>*
>
> =09
>
> lib32-core-image-sato -ctestimage failed due to wrong package names
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *12368 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12368>*
>
> =09
>
> persistent bitbake server does not re-parse if previous build was ctrl+C=
'd
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *12723 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723>*
>
> =09
>
> mysql requires unicode and char length filtering
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *12760 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760>*
>
> =09
>
> CMake Toolchain File Has Wrong Module Path
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *12917 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12917>*
>
> =09
>
> Warnings from nightly-multilib builds (build-deps)
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *12970 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12970>*
>
> =09
>
> uninative file should be versionned
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *12986 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12986>*
>
> =09
>
> Failed to expand SRCPV on updateding SRC_URI using pn overrides and
> BBCLASSEXTEND
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13008 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13008>*
>
> =09
>
> toaster testing
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13025 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13025>*
>
> =09
>
> WIC image install support
>
> =09
>
> kexin.hao@windriver.com
>
> =09
>
> kexin.hao@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13079 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13079>*
>
> =09
>
> devtool documentation needs to mention oe-local-files
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13070 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13070>*
>
> =09
>
> recipetool.RecipetoolTests.test_recipetool_load_plugin - Testcase
> 1640: FAILED
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13109 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13109>*
>
> =09
>
> Implement CPE to package to Release mapping
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13103 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103>*
>
> =09
>
> [Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table=E2=94=AC=C3=A1 and =E2=94=
=AC=C3=A1"machines" table
> are not getting populated after clicking=E2=94=AC=C3=A1on imported layer=
 as well as
> after clicking Machines Tab on project page
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13183 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13183>*
>
> =09
>
> bitbake-layers crashes with incorrect layer configuration data is
> given (expected proper error printing and exit with error)
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13182 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13182>*
>
> =09
>
> Inconsistency detected by ld.so: dl-open.c: 274: dl_open_worker:
> Assertion xxx failed
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *13190 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13190>*
>
> =09
>
> RRS cannot handle multiple recipes with same PN
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13278 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13278>*
>
> =09
>
> If git protocol doesn't work, you get a tar.gz clone from PREMIRROR
> which has git protocol origin
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13288 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13288>*
>
> =09
>
> pseudo should not follow symlinks in /proc
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> seebs@seebs.net
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13320 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13320>*
>
> =09
>
> Update license files to match current SPDX names and license contents
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> newcomer@yoctoproject.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13325 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13325>*
>
> =09
>
> Add link to the output directory from LHS console view
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13355 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13355>*
>
> =09
>
> RDEPENDS does not work properly for native builds (only supports
> recipe names, not package names)
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13417 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13417>*
>
> =09
>
> Development manual coverage of devtool
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13424 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13424>*
>
> =09
>
> devupstream doesn't work with mutilib
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13426 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13426>*
>
> =09
>
> Loses track of data if file rename()d to same name
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> seebs@seebs.net
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13448 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13448>*
>
> =09
>
> bitbake master appears to expand variables it should not need to
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13459 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13459>*
>
> =09
>
> sdk: compiler targets glibc, even though rootfs uses musl-libc
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13480 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13480>*
>
> =09
>
> gcc-cross plugins feature cannot be used
>
> =09
>
> zhe.he@windriver.com
>
> =09
>
> zhe.he@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.99
>
> *=C2=A0*
>
> =09
>
> *13489 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13489>*
>
> =09
>
> layer index: properly handle issues in first parse
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13490 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13490>*
>
> =09
>
> layer index: log failures during initial parse
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13495 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13495>*
>
> =09
>
> Support building out container image without init manager
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *13508 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13508>*
>
> =09
>
> Meson detects googletest installed on system
>
> =09
>
> hongxu.jia@windriver.com
>
> =09
>
> hongxu.jia@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M4
>
> *=C2=A0*
>
> =09
>
> *13581 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13581>*
>
> =09
>
> Line wrapping over prompt in BASH
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> jason.wessel@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13599 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13599>*
>
> =09
>
> Enhancement: Detect variables that shouldn't be defined in image
> scope, but in global (distro) scope
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13604 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13604>*
>
> =09
>
> [master-next] Distrodata.test_maintainers=C2=A0 fails
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13625 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13625>*
>
> =09
>
> test_devtool_add_library fails in multilib setups
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13631 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13631>*
>
> =09
>
> core-image-full-cmdline qemumips systemd boot failure
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *13642 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13642>*
>
> =09
>
> Split single "run-config" step into multiple steps
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13646 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13646>*
>
> =09
>
> runtime tests sometimes can't login to the serial console on systemd
> images (generates warning)
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13669 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13669>*
>
> =09
>
> Move Toaster testsuite-2 away from Testopia
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> david.reyna@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13699 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13699>*
>
> =09
>
> Prolonged recipe parsing times after removing tmp when the resident
> bitbake server is used
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13711 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13711>*
>
> =09
>
> Parsing fails on externalsrc recipe containing both git and file in
> SRC_URI
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13727 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13727>*
>
> =09
>
> unable to run dockerd on MACHINE=3Dintel-corei7-64 yet works on
> MACHINE=3Dgenericx86-64
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> ksaye@saye.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13729 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13729>*
>
> =09
>
> Changing siteinfo files doesn't change task checksum
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13738 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13738>*
>
> =09
>
> devtool modify fails with file:// fetcher
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13732 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13732>*
>
> =09
>
> eSDK: getting error "xmlcatalog: not found" installing SDK
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> Qi.Chen@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M3
>
> *=C2=A0*
>
> =09
>
> *13748 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13748>*
>
> =09
>
> bitbake doesn't detect changes in code to run do_compile when using
> devtool modify on recipe with destsuffix
>
> =09
>
> timothy.t.orling@intel.com
>
> =09
>
> bluelightning@bluelightning.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13804 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13804>*
>
> =09
>
> do_package_qa race generating warning
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> newcomer@yoctoproject.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13807 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13807>*
>
> =09
>
> Add support for elfutils debuginfod
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> newcomer@yoctoproject.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13823 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13823>*
>
> =09
>
> fetch2: PREMIRROR and SRC_URI with users on both url yields invalid
> username
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13838 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13838>*
>
> =09
>
> [QA 3.1 M3 RC1] failure in ptest: valgrind.drd/tests/bar_bad and
> valgrind.drd/tests/bar_bad_xml
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13886 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13886>*
>
> =09
>
> bitbake resident server does not honour --runonly or --runall options
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13891 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13891>*
>
> =09
>
> insane.bbclass: do_package_qa hangs when checking a FIFO (named pipe) fi=
le
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13892 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13892>*
>
> =09
>
> Cannot access the terminal via serial port on BeagleBone Black
>
> =09
>
> kexin.hao@windriver.com
>
> =09
>
> guillaume.bonnet@epitech.eu
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13893 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13893>*
>
> =09
>
> bitbake considers any package name starting with "texinfo-native" as
> satisfiable DEPENDS
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13911 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13911>*
>
> =09
>
> SystemExit failure when running oe-selftests
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> kai.kang@windriver.com
>
> =09
>
> 3.2 M1
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13904 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904>*
>
> =09
>
> do_prepare_recipe_sysroot: postinst-useradd-* does not run in order of
> dependency and sometimes fails
>
> =09
>
> randy.macleod@windriver.com
>
> =09
>
> sakib.sajal@windriver.com
>
> =09
>
> 3.2 M4
>
> =09
>
> 3.2 M2
>
> *=C2=A0*
>
> =09
>
> *13953 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13953>*
>
> =09
>
> oe-selftest doesn't cleanup in non-parallel builds
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> richard.purdie@linuxfoundation.org
>
> =09
>
> 3.2 M2
>
> =09
>
> ---
>
> Thanks,
>
> =C2=A0
>
> */Stephen K. Jolley/**//*
>
> *Yocto Project Program Manager*
>
> (=C2=A0=C2=A0=C2=A0 *Cell*:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (208) 244-4460
>
> * *Email*:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0_sjolley.yp.pm@gmail.com
> <mailto:sjolley.yp.pm@gmail.com>_
>
> =C2=A0
>
>
>=20


--------------51D25A579BBF0BFD4DEFB2E2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <br>
    Stephen,<br>
    <br>
    <div class=3D"moz-cite-prefix">On 6/30/20 4:28 PM, Stephen Jolley
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:273601d64f36$3a15bde0$ae4139a0$@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:black">All,<br>
            <br>
          </span></p>
      </div>
    </blockquote>
    Thanks for sending this out.<br>
    <br>
    <br>
    Is there any priority to these that may help the community pick off
    the ones most important to the Project?<br>
    <br>
    -armin<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:273601d64f36$3a15bde0$ae4139a0$@gmail.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:black">YP M+ or high
            bugs which moved to a new milestone in WW26 are listed
            below: </span><o:p></o:p></p>
        <table class=3D"MsoNormalTable"
          style=3D"width:1383.1pt;margin-left:-.15pt;border-collapse:colla=
pse"
          width=3D"1844" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
          <tbody>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Prio=
rity<o:p></o:p></span></b></p>
              </td>
              <td style=3D"width:38.8pt;border:solid windowtext
                1.0pt;border-left:none;background:#DCE6F1;padding:0in
                5.4pt 0in 5.4pt;height:15.0pt" width=3D"52"
                valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Bug =
ID<o:p></o:p></span></b></p>
              </td>
              <td style=3D"width:842.35pt;border:solid windowtext
                1.0pt;border-left:none;background:#DCE6F1;padding:0in
                5.4pt 0in 5.4pt;height:15.0pt" width=3D"1123"
                valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Shor=
t
                      Description<o:p></o:p></span></b></p>
              </td>
              <td style=3D"width:177.0pt;border:solid windowtext
                1.0pt;border-left:none;background:#DCE6F1;padding:0in
                5.4pt 0in 5.4pt;height:15.0pt" width=3D"236"
                valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Chan=
ger<o:p></o:p></span></b></p>
              </td>
              <td style=3D"width:182.0pt;border:solid windowtext
                1.0pt;border-left:none;background:#DCE6F1;padding:0in
                5.4pt 0in 5.4pt;height:15.0pt" width=3D"243"
                valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Owne=
r<o:p></o:p></span></b></p>
              </td>
              <td style=3D"width:59.2pt;border:solid windowtext
                1.0pt;border-left:none;background:#DCE6F1;padding:0in
                5.4pt 0in 5.4pt;height:15.0pt" width=3D"79"
                valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Was<=
o:p></o:p></span></b></p>
              </td>
              <td style=3D"width:28.85pt;border:solid windowtext
                1.0pt;border-left:none;background:#DCE6F1;padding:0in
                5.4pt 0in 5.4pt;height:15.0pt" width=3D"38"
                valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Beca=
me<o:p></o:p></span></b></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">High=
<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13947"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13947=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">buildto=
ols
                    checksum files are named different on non-release
                    and release builds<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:vineela.tummalapalli@intel.co=
m">vineela.tummalapalli@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">Medi=
um+<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D5322"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">5322<=
/span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Global
                    DNS fallback mechanism not present in poky distro<o:p>=
</o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D10693"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">10693=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Add a
                    testcase for multilib eSDK on the autobuilder<o:p></o:=
p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D11449"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">11449=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Allow
                    overriding classes to override overridden classes<o:p>=
</o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D11746"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">11746=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">oe-self=
test:
                    capture self.logger messages in XML output<o:p></o:p><=
/span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D11906"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">11906=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">rpmbuil=
d:
                    Can not build packages on qemu target<o:p></o:p></span=
></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:hongxu.jia@windriver.com">hon=
gxu.jia@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:hongxu.jia@windriver.com">hon=
gxu.jia@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M4<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12090"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12090=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">bitbake
                    resident server reconnect needed ?<o:p></o:p></span></=
p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12279"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12279=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">enhance
                    manifest not found warning<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12342"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12342=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">lib32-c=
ore-image-sato
                    -ctestimage failed due to wrong package names<o:p></o:=
p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12368"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12368=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">persist=
ent
                    bitbake server does not re-parse if previous build
                    was ctrl+C'd<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12723"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12723=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">mysql
                    requires unicode and char length filtering<o:p></o:p><=
/span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12760"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12760=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">CMake
                    Toolchain File Has Wrong Module Path<o:p></o:p></span>=
</p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12917"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12917=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Warning=
s
                    from nightly-multilib builds (build-deps)<o:p></o:p></=
span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12970"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12970=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">uninati=
ve
                    file should be versionned<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D12986"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">12986=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Failed =
to
                    expand SRCPV on updateding SRC_URI using pn
                    overrides and BBCLASSEXTEND<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13008"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13008=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">toaster
                    testing<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13025"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13025=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">WIC ima=
ge
                    install support<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kexin.hao@windriver.com">kexi=
n.hao@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kexin.hao@windriver.com">kexi=
n.hao@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13079"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13079=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">devtool
                    documentation needs to mention oe-local-files<o:p></o:=
p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13070"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13070=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">recipet=
ool.RecipetoolTests.test_recipetool_load_plugin
                    - Testcase 1640: FAILED<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13109"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13109=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Impleme=
nt
                    CPE to package to Release mapping<o:p></o:p></span></p=
>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13103"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13103=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">[Bug][Q=
A
                    2.7 M1 rc1][Toaster] "Recipes" table</span><span
                    style=3D"font-family:&quot;Arial&quot;,sans-serif;colo=
r:black">=E2=94=AC</span><span
                    style=3D"color:black">=C3=A1 and </span><span
                    style=3D"font-family:&quot;Arial&quot;,sans-serif;colo=
r:black">=E2=94=AC</span><span
                    style=3D"color:black">=C3=A1"machines" table are not
                    getting populated after clicking</span><span
                    style=3D"font-family:&quot;Arial&quot;,sans-serif;colo=
r:black">=E2=94=AC</span><span
                    style=3D"color:black">=C3=A1on imported layer as well =
as
                    after clicking Machines Tab on project page<o:p></o:p>=
</span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13183"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13183=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">bitbake=
-layers
                    crashes with incorrect layer configuration data is
                    given (expected proper error printing and exit with
                    error)<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13182"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13182=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Inconsi=
stency
                    detected by ld.so: dl-open.c: 274: dl_open_worker:
                    Assertion xxx failed<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13190"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13190=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">RRS
                    cannot handle multiple recipes with same PN<o:p></o:p>=
</span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13278"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13278=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">If git
                    protocol doesn't work, you get a tar.gz clone from
                    PREMIRROR which has git protocol origin<o:p></o:p></sp=
an></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13288"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13288=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">pseudo
                    should not follow symlinks in /proc<o:p></o:p></span><=
/p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:seebs@seebs.net">seebs@seebs.=
net</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13320"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13320=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Update
                    license files to match current SPDX names and
                    license contents<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:newcomer@yoctoproject.org">ne=
wcomer@yoctoproject.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13325"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13325=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Add lin=
k
                    to the output directory from LHS console view<o:p></o:=
p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13355"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13355=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">RDEPEND=
S
                    does not work properly for native builds (only
                    supports recipe names, not package names)<o:p></o:p></=
span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13417"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13417=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Develop=
ment
                    manual coverage of devtool<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13424"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13424=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">devupst=
ream
                    doesn't work with mutilib<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13426"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13426=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Loses
                    track of data if file rename()d to same name<o:p></o:p=
></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:seebs@seebs.net">seebs@seebs.=
net</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13448"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13448=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">bitbake
                    master appears to expand variables it should not
                    need to<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13459"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13459=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">sdk:
                    compiler targets glibc, even though rootfs uses
                    musl-libc<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13480"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13480=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">gcc-cro=
ss
                    plugins feature cannot be used<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:zhe.he@windriver.com">zhe.he@=
windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:zhe.he@windriver.com">zhe.he@=
windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><span style=3D"color:black">3.99<o:p></o=
:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13489"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13489=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">layer
                    index: properly handle issues in first parse<o:p></o:p=
></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13490"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13490=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">layer
                    index: log failures during initial parse<o:p></o:p></s=
pan></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13495"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13495=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Support
                    building out container image without init manager<o:p>=
</o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13508"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13508=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Meson
                    detects googletest installed on system<o:p></o:p></spa=
n></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:hongxu.jia@windriver.com">hon=
gxu.jia@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:hongxu.jia@windriver.com">hon=
gxu.jia@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M4<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13581"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13581=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Line
                    wrapping over prompt in BASH<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:jason.wessel@windriver.com">j=
ason.wessel@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13599"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13599=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Enhance=
ment:
                    Detect variables that shouldn't be defined in image
                    scope, but in global (distro) scope<o:p></o:p></span><=
/p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13604"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13604=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">[master=
-next]
                    Distrodata.test_maintainers=C2=A0 fails<o:p></o:p></sp=
an></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13625"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13625=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">test_de=
vtool_add_library
                    fails in multilib setups<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13631"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13631=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">core-im=
age-full-cmdline
                    qemumips systemd boot failure<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13642"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13642=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Split
                    single "run-config" step into multiple steps<o:p></o:p=
></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13646"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13646=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">runtime
                    tests sometimes can't login to the serial console on
                    systemd images (generates warning)<o:p></o:p></span></=
p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13669"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13669=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Move
                    Toaster testsuite-2 away from Testopia<o:p></o:p></spa=
n></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13699"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13699=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Prolong=
ed
                    recipe parsing times after removing tmp when the
                    resident bitbake server is used<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13711"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13711=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Parsing
                    fails on externalsrc recipe containing both git and
                    file in SRC_URI<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13727"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13727=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">unable =
to
                    run dockerd on MACHINE=3Dintel-corei7-64 yet works on
                    MACHINE=3Dgenericx86-64<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:ksaye@saye.org">ksaye@saye.or=
g</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13729"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13729=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Changin=
g
                    siteinfo files doesn't change task checksum<o:p></o:p>=
</span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13738"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13738=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">devtool
                    modify fails with <a class=3D"moz-txt-link-freetext" h=
ref=3D"file://">file://</a> fetcher<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13732"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13732=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">eSDK:
                    getting error "xmlcatalog: not found" installing SDK<o=
:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M3<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13748"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13748=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">bitbake
                    doesn't detect changes in code to run do_compile
                    when using devtool modify on recipe with destsuffix<o:=
p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:timothy.t.orling@intel.com">t=
imothy.t.orling@intel.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:bluelightning@bluelightning.o=
rg">bluelightning@bluelightning.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13804"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13804=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">do_pack=
age_qa
                    race generating warning<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:newcomer@yoctoproject.org">ne=
wcomer@yoctoproject.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13807"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13807=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Add
                    support for elfutils debuginfod<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:newcomer@yoctoproject.org">ne=
wcomer@yoctoproject.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13823"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13823=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">fetch2:
                    PREMIRROR and SRC_URI with users on both url yields
                    invalid username<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13838"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13838=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">[QA 3.1
                    M3 RC1] failure in ptest: valgrind.drd/tests/bar_bad
                    and valgrind.drd/tests/bar_bad_xml<o:p></o:p></span></=
p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13886"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13886=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">bitbake
                    resident server does not honour --runonly or
                    --runall options<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13891"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13891=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">insane.=
bbclass:
                    do_package_qa hangs when checking a FIFO (named
                    pipe) file<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13892"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13892=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">Cannot
                    access the terminal via serial port on BeagleBone
                    Black<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kexin.hao@windriver.com">kexi=
n.hao@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:guillaume.bonnet@epitech.eu">=
guillaume.bonnet@epitech.eu</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13893"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13893=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">bitbake
                    considers any package name starting with
                    "texinfo-native" as satisfiable DEPENDS<o:p></o:p></sp=
an></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13911"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13911=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">SystemE=
xit
                    failure when running oe-selftests<o:p></o:p></span></p=
>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:kai.kang@windriver.com">kai.k=
ang@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M1<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13904"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13904=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">do_prep=
are_recipe_sysroot:
                    postinst-useradd-* does not run in order of
                    dependency and sometimes fails<o:p></o:p></span></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:sakib.sajal@windriver.com">sa=
kib.sajal@windriver.com</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M4<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
            </tr>
            <tr style=3D"height:15.0pt">
              <td style=3D"width:54.9pt;border:solid windowtext
                1.0pt;border-top:none;padding:0in 5.4pt 0in
                5.4pt;height:15.0pt" width=3D"73" valign=3D"bottom"
                nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><b><span style=3D"color:black">=C2=
=A0<o:p></o:p></span></b></p>
              </td>
              <td
                style=3D"width:38.8pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"52" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal" style=3D"text-align:right"
                  align=3D"right"><b><span style=3D"color:black"><a
                        href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13953"
                        target=3D"_parent" moz-do-not-send=3D"true"><span
                          style=3D"color:black;text-decoration:none">13953=
</span></a><o:p></o:p></span></b></p>
              </td>
              <td
style=3D"width:842.35pt;border-top:none;border-left:none;border-bottom:sol=
id
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"1123" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">oe-self=
test
                    doesn't cleanup in non-parallel builds<o:p></o:p></spa=
n></p>
              </td>
              <td
style=3D"width:177.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"236" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
style=3D"width:182.0pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"243" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black"><a clas=
s=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linuxfoundatio=
n.org">richard.purdie@linuxfoundation.org</a><o:p></o:p></span></p>
              </td>
              <td
                style=3D"width:59.2pt;border-top:none;border-left:none;bor=
der-bottom:solid
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"79" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">3.2 M2<=
o:p></o:p></span></p>
              </td>
              <td
style=3D"width:28.85pt;border-top:none;border-left:none;border-bottom:soli=
d
                windowtext 1.0pt;border-right:solid windowtext
                1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"
                width=3D"38" valign=3D"bottom" nowrap=3D"nowrap">
                <p class=3D"MsoNormal"><span style=3D"color:black">---<o:p=
></o:p></span></p>
              </td>
            </tr>
          </tbody>
        </table>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"
          style=3D"page-break-after:avoid;text-autospace:none"><b><i><span
                style=3D"font-size:16.0pt;font-family:&quot;Times New
                Roman&quot;,serif;color:purple">Stephen K. Jolley</span></=
i></b><b><i><span
style=3D"font-size:16.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:=
purple"><o:p></o:p></span></i></b></p>
        <p class=3D"MsoNormal"><b><span
              style=3D"font-size:8.0pt;font-family:&quot;Courier
              New&quot;;color:blue">Yocto Project Program Manager<o:p></o:=
p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:Wingdings;color:black">(<=
/span><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;;color:teal">=C2=A0=C2=A0=C2=A0 </span><b><span
              style=3D"font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal">Cell</span></b><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;">(208) 244-4460<span style=3D"color:black"><o:p></=
o:p></span></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:Wingdings">* </span><b><s=
pan
              style=3D"font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal" lang=3D"FR">Email</span></b><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;;color:teal" lang=3D"FR">:</span><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;" lang=3D"FR">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<u><span
                style=3D"color:blue"><a
                  href=3D"mailto:sjolley.yp.pm@gmail.com"
                  moz-do-not-send=3D"true">sjolley.yp.pm@gmail.com</a></sp=
an></u></span><span
style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif"
            lang=3D"FR"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------51D25A579BBF0BFD4DEFB2E2--
