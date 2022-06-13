Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 272FEC433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Jun 2022 20:08:29 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web09.10695.1655150899512396636
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 13:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=rKyK4taE;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.174,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f174.google.com with SMTP id u2so6702351pfc.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 13:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=4qUx4EHmxOIs8ov08xtJ0lR7KxNEDCsBdqYfk8pwhgE=;
        b=rKyK4taEuJJE4ijH8vsFHN228WLSCCuu5JM3YS7RX5iviEjE22rJtHrMIJiNwJZeVQ
         xUIhI4I3YBpj4vnXBBlwiT1cccQ60sh1+xpHyp2js+rKRwty8NCJ+5gvsgBMaN7CA5AD
         9e+K2F225TlfTvDJXlxV5S8KnqAVWgkhDGEaIOGeXE6sNHeqSCkt79HrUZ4VZGaox1L+
         cB5FVziWnVXyY4dnId7mqvFCfHcg5CJ4lYD5qOoqwZV0x4qsbD46J4q0VUsoOFFyiigr
         YjiADMBIRreGpZMvjPBLMi2/O0Idhzxa99WgnWbkA+vTNxhT5+UllgdP/rQU+t93RVUM
         /XWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=4qUx4EHmxOIs8ov08xtJ0lR7KxNEDCsBdqYfk8pwhgE=;
        b=w7IlpRrpHXbI+Nx/Bia1drU1m7eyg/51KB6/jFcnbZiJ8m+liov6kfkIz5efA063r1
         H5/lQYUEY7AyAXuTcw8GRf2qj0IG+8GhzQ1hoh6kfMXqmepee8WQNjZbmkMY8ttsCo1i
         wmrtFqINwuDDTmL1wDnc7cQOU+es7SO/wBjWeLccK3mc0Rgzo+U/THgF2Fogz/jCIg0l
         5LSfgAtpNdasoJY0r4oXP006tk1hkBLSBn3f52hdsfNecxOBY1R5GA3jmA/9JvqAOVKS
         bjyJZ5SFrcbTzJriV6na+ZeV9uYmjvT8AMXl0L5kCy38AtD5lMEdfXHckMoZvug4va5x
         BQMA==
X-Gm-Message-State: AOAM531qODLbAn69odvfF6rXTrXuLL2L9ZWPZyQuRxzi8LZ3ymzC0HFd
	Rm9yVzOUwCxwK2XxKONZWe0HVvQZG5V6PkSW
X-Google-Smtp-Source: 
 ABdhPJxSO3V4zFqaIUlPUx+dOjJgOCHJznvi1gAulimteMjNKijzXJ+/IppKWl445Ja94sxUeJcSQQ==
X-Received: by 2002:a63:8341:0:b0:403:fea7:9ce1 with SMTP id
 h62-20020a638341000000b00403fea79ce1mr1134756pge.512.1655150898268;
        Mon, 13 Jun 2022 13:08:18 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 iz2-20020a170902ef8200b001641a5d5786sm5525167plb.114.2022.06.13.13.08.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 13:08:16 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Chuck Wolber <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
 <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
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
Message-ID: <a253f753-5df7-f3b1-b698-8549c33edd4d@ibeeto.com>
Date: Mon, 13 Jun 2022 13:08:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ZVQsfJToRNOO2ftZlCWZuo7Ct0xnwxAKH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jun 2022 20:08:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57326

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ZVQsfJToRNOO2ftZlCWZuo7Ct0xnwxAKH
Content-Type: multipart/mixed; boundary="pAaYstqfX30kXrHE7MccT6qhl1LaLtC0T";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Chuck Wolber <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Message-ID: <a253f753-5df7-f3b1-b698-8549c33edd4d@ibeeto.com>
Subject: Re: [yocto] Force binary package install
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
 <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
In-Reply-To: <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>

--pAaYstqfX30kXrHE7MccT6qhl1LaLtC0T
Content-Type: multipart/mixed;
 boundary="------------B27A5C820D9A97E23FC4072E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B27A5C820D9A97E23FC4072E
Content-Type: multipart/alternative;
 boundary="------------358D29426835810325492B7D"


--------------358D29426835810325492B7D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks, Richard. I was sidetracked by other stuff, hence the delay.=20
Please see below.

On 6/8/22 8:54 AM, Richard Purdie wrote:
> On Tue, 2022-06-07 at 18:17 -0700, Rudolf J Streif wrote:
>> On 6/7/22 4:36 PM, Chuck Wolber wrote:
>>  =20
>>>  =20
>>>
>>>  =20
>>>>  =20
>>>>>  =20
>>>>>>  =C2=A0>> Is there an elegant way around it?
>>>>>>  =C2=A0>>
>>>>>>  =C2=A0>>
>>>>>>  =C2=A0>> Error:
>>>>>>  =C2=A0>>=C2=A0 =C2=A0 Problem: conflicting requests
>>>>>>  =C2=A0>>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 needed =
by
>>>>>>  =C2=A0>> xxx-single-group-0.1-r0.cortexa53_crypto
>>>>>>  =C2=A0>>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2=
=2E0) needed by
>>>>>>
>>> Could this be considered a bug in the package_rpm.bbclass? It seems
>>> to me that if you skip files-rdeps,
>>> we might not want to be adding anything into splitpreinst.
>>> Otherwise it seems silly to tell insane.bbclass
>>> to skip something that RPM is going to ding you on later anyway. Or
>>> maybe I am confused...
>>>
>>> In any case, I believe what you may be seeing can be viewed as an
>>> RPM-ism, and not necessarily a
>>> yocto-ism per se. So you might consider trying one of the following
>>> to work around the problem:
>>>
>> It's Yocto that creates the spec file for rpm. Apparently, besides
>> relying on what is declared in RDEPENDS, it
>>  =C2=A0actually iterates over the files and appends the dependencies (=
and
>> their versions). It results in this:
>> Requires: libc.so.6
>>  =C2=A0Requires: libc.so.6()(64bit)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.0)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.1)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.1.3)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.17)(64bit)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.2)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.28)(64bit)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.3)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.3.4)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.4)
>>  =C2=A0Requires: libc.so.6(GLIBC_2.7)
>> Removing anything but the first two lines would probably do the
>> trick. So if file-rdeps is declared in INSANE_SKIP
>>  =C2=A0it should simply only use the declared RDEPENDS and not analyze=
 the
>> files.
>>  =20
>
> If that works at runtime it makes me wonder if our glibc shouldn't be
> providing some of those things? What does our glibc package say it  is
> providing? How does that compare to what objdump says?

That's the objdump on libc.so.6 on the target (aarch64, Honister):

Version definitions:
1 0x01 0x0865f4e6 libc.so.6
2 0x00 0x06969197 GLIBC_2.17
3 0x00 0x06969198 GLIBC_2.18
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.17
4 0x00 0x06969182 GLIBC_2.22
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.18
5 0x00 0x06969183 GLIBC_2.23
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.22
6 0x00 0x06969184 GLIBC_2.24
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.23
7 0x00 0x06969185 GLIBC_2.25
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.24
8 0x00 0x06969186 GLIBC_2.26
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.25
9 0x00 0x06969187 GLIBC_2.27
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.26
10 0x00 0x06969188 GLIBC_2.28
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.27
11 0x00 0x06969189 GLIBC_2.29
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.28
12 0x00 0x069691b0 GLIBC_2.30
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.29
13 0x00 0x069691b1 GLIBC_2.31
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.30
14 0x00 0x069691b2 GLIBC_2.32
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.31
15 0x00 0x069691b3 GLIBC_2.33
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.32
16 0x00 0x069691b4 GLIBC_2.34
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.33
17 0x00 0x0963cf85 GLIBC_PRIVATE
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.34

I don't exactly know how the glibc versioning works. I suppose the API=20
versions are defined by the Version file of the various components.

However, when I did more analysis on the libraries whose libc versions=20
did not seem to be met, I found out that they were libraries for a=20
different architecture (x86_64) which were not supposed to be included.=20
Now I wonder if the check validates version compatibility only or also=20
checks architecture compatibility. However, if the latter then the error =

message does not convey that.

Thanks,
Rudi


>
> Cheers,
>
> Richard

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------358D29426835810325492B7D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Thanks, Richard. I was sidetracked by other stuff, hence the
      delay. Please see below.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/8/22 8:54 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundatio=
n.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Tue, 2022-06-07 at 18:17 =
-0700, Rudolf J Streif wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
On 6/7/22 4:36 PM, Chuck Wolber wrote:
=C2=A0
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">=C2=A0

=C2=A0
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">=C2=A0
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">=C2=A0
</pre>
              <blockquote type=3D"cite">
                <pre class=3D"moz-quote-pre" wrap=3D"">=C2=A0&gt;&gt; Is =
there an elegant way around it?
=C2=A0&gt;&gt;
=C2=A0&gt;&gt;
=C2=A0&gt;&gt; Error:
=C2=A0&gt;&gt;=C2=A0 =C2=A0 Problem: conflicting requests
=C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 needed by=

=C2=A0&gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto
=C2=A0&gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2.0=
) needed by=20

</pre>
              </blockquote>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">
Could this be considered a bug in the package_rpm.bbclass? It seems
to me that if you skip files-rdeps,
we might not want to be adding anything into splitpreinst.
Otherwise it seems silly to tell insane.bbclass
to skip something that RPM is going to ding you on later anyway. Or
maybe I am confused...

In any case, I believe what you may be seeing can be viewed as an
RPM-ism, and not necessarily a
yocto-ism per se. So you might consider trying one of the following
to work around the problem:

</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">It's Yocto that creates th=
e spec file for rpm. Apparently, besides
relying on what is declared in RDEPENDS, it
=C2=A0actually iterates over the files and appends the dependencies (and
their versions). It results in this:
Requires: libc.so.6
=C2=A0Requires: libc.so.6()(64bit)
=C2=A0Requires: libc.so.6(GLIBC_2.0)
=C2=A0Requires: libc.so.6(GLIBC_2.1)
=C2=A0Requires: libc.so.6(GLIBC_2.1.3)
=C2=A0Requires: libc.so.6(GLIBC_2.17)(64bit)
=C2=A0Requires: libc.so.6(GLIBC_2.2)
=C2=A0Requires: libc.so.6(GLIBC_2.28)(64bit)
=C2=A0Requires: libc.so.6(GLIBC_2.3)
=C2=A0Requires: libc.so.6(GLIBC_2.3.4)
=C2=A0Requires: libc.so.6(GLIBC_2.4)
=C2=A0Requires: libc.so.6(GLIBC_2.7)
Removing anything but the first two lines would probably do the
trick. So if file-rdeps is declared in INSANE_SKIP
=C2=A0it should simply only use the declared RDEPENDS and not analyze the=

files.
=C2=A0
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">

If that works at runtime it makes me wonder if our glibc shouldn't be
providing some of those things? What does our glibc package say it  is
providing? How does that compare to what objdump says?</pre>
    </blockquote>
    <p>That's the objdump on libc.so.6 on the target (aarch64,
      Honister):</p>
    <p><font face=3D"Courier New, Courier, monospace">Version definitions=
:<br>
        1 0x01 0x0865f4e6 libc.so.6<br>
        2 0x00 0x06969197 GLIBC_2.17<br>
        3 0x00 0x06969198 GLIBC_2.18<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.17 <br>
        4 0x00 0x06969182 GLIBC_2.22<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.18 <br>
        5 0x00 0x06969183 GLIBC_2.23<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.22 <br>
        6 0x00 0x06969184 GLIBC_2.24<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.23 <br>
        7 0x00 0x06969185 GLIBC_2.25<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.24 <br>
        8 0x00 0x06969186 GLIBC_2.26<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.25 <br>
        9 0x00 0x06969187 GLIBC_2.27<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.26 <br>
        10 0x00 0x06969188 GLIBC_2.28<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.27 <br>
        11 0x00 0x06969189 GLIBC_2.29<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.28 <br>
        12 0x00 0x069691b0 GLIBC_2.30<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.29 <br>
        13 0x00 0x069691b1 GLIBC_2.31<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.30 <br>
        14 0x00 0x069691b2 GLIBC_2.32<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.31 <br>
        15 0x00 0x069691b3 GLIBC_2.33<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.32 <br>
        16 0x00 0x069691b4 GLIBC_2.34<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.33 <br>
        17 0x00 0x0963cf85 GLIBC_PRIVATE<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.34 </font><br>=

      <br>
    </p>
    <p>I don't exactly know how the glibc versioning works. I suppose
      the API versions are defined by the Version file of the various
      components.<br>
    </p>
    <p>However, when I did more analysis on the libraries whose libc
      versions did not seem to be met, I found out that they were
      libraries for a different architecture (x86_64) which were not
      supposed to be included. Now I wonder if the check validates
      version compatibility only or also checks architecture
      compatibility. However, if the latter then the error message does
      not convey that.</p>
    <p>Thanks,<br>
      Rudi<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundatio=
n.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Cheers,

Richard
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------358D29426835810325492B7D--

--------------B27A5C820D9A97E23FC4072E
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

--------------B27A5C820D9A97E23FC4072E--

--pAaYstqfX30kXrHE7MccT6qhl1LaLtC0T--

--ZVQsfJToRNOO2ftZlCWZuo7Ct0xnwxAKH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmKnmS8FAwAAAAAACgkQjYyoKSczm3XQ
AAf/dYym4MBmGvOSs4b/e/hW9diyNiCDAcwaYVXPc0AvWm5ebuAYxBYeqhbuRRCvgsKWerbF/on1
UvMOc2/z492J/PAjlBjOABqBQQYomC1nqdeH6Cd7i8Yp5F+TjSfDMLRNyfypA/Y0wRR3s20tYVv5
Z9k0O1bDrlZemYhibmLCFrD4hQT9fWqm+Z5i+RLUfquk3Be9TDwSU1xMJSHHWIXq+GJhd316Ypt4
hPfZjGSB/phGT90PbfU9C6Ao0jBDPHZFb5twwTkj3baz3eQerNkh93qJngcfsHAZ0DI6MWJEaGgT
7+neONDFW94j5tt/cj1hqE3UXHuJzYPXLRI2amZ2pA==
=q5zj
-----END PGP SIGNATURE-----

--ZVQsfJToRNOO2ftZlCWZuo7Ct0xnwxAKH--

