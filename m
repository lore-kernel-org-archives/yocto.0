Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A520E00E1F; Wed, 14 Mar 2018 05:16:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9155AE00823
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 05:16:48 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id n136-v6so4295386itg.5
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 05:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=GGMHlOGgKgtn38EO5OP/LxLKM0mqNRw39OiqWp3spdU=;
	b=j4EFFBK21FSboQ8gGC2SCRmmeyCQUHFlYqCQHls8HJeS7afaLkn737D51vIsUrSLMH
	RuV9pt6ORhKcdzKwhDbFyPV3tbbPWuh0ORv4pOE4zDXs4Q+4LAthZBKa9jARsY9Zpth7
	2Y65BInCpwQF+KHA2Nfo8RrXKjKINHNF7fIQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GGMHlOGgKgtn38EO5OP/LxLKM0mqNRw39OiqWp3spdU=;
	b=Wvmgcc5AcAj5KmzNT/+MIBVj5x0E8QTa55ic+OSRVNam3ZCoByPp9H4B6D0Bk5WYNE
	GyUilnfymLQtzJEA7O2lW/Nx9mbQFDSJZqvz/mqAcTPOO12iFkI05dkZHi67Go14qrU1
	qEXqklK8yRU1AlsSo+NgMwEkwtu7uML6VBj+2Pp7hld5F5Mf/Cq4EQolLK62rocdGV8c
	YKQ60jfdR8Ap9P7XCB7ZzBtZ++EeQgA4Y+ctTon0ejFB196i24ud7IwTITi6DKGavEMY
	mvevpCShN5RdF0I+fG83Dbdm3BkrGxOveZlDP+BY+kzkWSZQfqHnM2hzVDVSx+MOsfd9
	8FmA==
X-Gm-Message-State: AElRT7HCoAp1DgvQM/OQEFArgELTwSltmkYiPsWIk1zC0+ia2MnpHzNg
	oEOoHzOhlOVULnWgFbrmrWqhBBATNTTz7zTC+JIfFMry
X-Google-Smtp-Source: AG47ELssi78EJw0IB5NUg/oNjsea/4ClDpaGOSfcMRCw1+nMI8fvCrvg1LjmsEEm/VooPoB6hXDfKHteeLPkLjyPdm8=
X-Received: by 2002:a24:9dd5:: with SMTP id
	f204-v6mr1745232itd.26.1521029807527; 
	Wed, 14 Mar 2018 05:16:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Wed, 14 Mar 2018 05:16:46 -0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 14 Mar 2018 13:16:46 +0100
Message-ID: <CAALXFYz8FSAKqG8dTYy4Or5kyDPxmQ7-Snws5cVW89CHePEL3g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Kickstart file to customize rootfs mount opts not modifying fstab as expected
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2018 12:16:50 -0000
Content-Type: multipart/alternative; boundary="0000000000005eef0805675e5990"

--0000000000005eef0805675e5990
Content-Type: text/plain; charset="UTF-8"

Hello forum.

I want to customize my rootfs partition to be mounted with the
"data=journal" option enabled.

To do that I have modified my layer adding a custom mkefidisk.wks script
with this contents for the rootfs partition:

    part / --source rootfs --ondisk sda --fstype=ext4
--fsoptions="data=journal" --label platform --use-uuid --size 80000 --align
1024

According to yocto reference manual:

    https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html

The --fsoptions option specifies a free-form string of options to be used
when mounting the filesystem. This string will be copied into the
/etc/fstab file of the installed system and should be enclosed in quotes.
If not specified, the default string is "defaults".

I expected to find a /etc/fstab with "data=journal" on the mounted rootfs.
However, after mounting .ext4 image, this is the /etc/fstab content for the
rootfs partition:

    /dev/root            /                    auto       defaults
    1  1

As you can see, it doesn't contain any reference to "data=journal".

What is wrong with that?

Thanks in advance.

Regards,
  -- Ivan

--0000000000005eef0805675e5990
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello forum.<br></div><div><br></div><div>I want=
 to customize my rootfs partition to be mounted with the &quot;data=3Djourn=
al&quot; option enabled.=C2=A0</div><div><br></div><div>To do that I have m=
odified my layer adding a custom mkefidisk.wks script with this contents fo=
r the rootfs partition:</div><div><br></div><div>=C2=A0 =C2=A0 part / --sou=
rce rootfs --ondisk sda --fstype=3Dext4 --fsoptions=3D&quot;data=3Djournal&=
quot; --label platform --use-uuid --size 80000 --align 1024=C2=A0</div><div=
><br></div><div>According to yocto reference manual:</div><div><br></div><d=
iv>=C2=A0 =C2=A0 <a href=3D"https://www.yoctoproject.org/docs/current/ref-m=
anual/ref-manual.html">https://www.yoctoproject.org/docs/current/ref-manual=
/ref-manual.html</a></div><div><br></div><div>The --fsoptions option specif=
ies a free-form string of options to be used when mounting the filesystem. =
This string will be copied into the /etc/fstab file of the installed system=
 and should be enclosed in quotes. If not specified, the default string is =
&quot;defaults&quot;.</div><div><br></div><div>I expected to find a /etc/fs=
tab with &quot;data=3Djournal&quot; on the mounted rootfs. However, after m=
ounting .ext4 image, this is the /etc/fstab content for the rootfs partitio=
n:</div><div><br></div><div>=C2=A0 =C2=A0 /dev/root=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 auto=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 1</div><div><br></div><div>As you can s=
ee, it doesn&#39;t contain any reference to &quot;data=3Djournal&quot;.</di=
v><div><br></div><div>What is wrong with that?</div><div><br></div><div>Tha=
nks in advance.</div><div><br></div><div>Regards,=C2=A0</div><div>=C2=A0 --=
 Ivan</div></div><div><br></div><div><br></div><div class=3D"gmail-m_-72909=
98304058358871gmail_signature"><br></div>
</div>

--0000000000005eef0805675e5990--
