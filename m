Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 942A7E00BF9; Sat, 12 Jan 2019 12:04:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01C81E009EB
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 12:04:38 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id t18-v6so15775862ljd.4
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 12:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EzuU0bGreVDBsreEKaIKgOSW5a3NkEj2jiAu09Sduso=;
	b=oDhnnhAsVN04Nse9NfF7WTlgZOFdzPoi2UHOt34jZe5FM7W+wVouEaNqN4UMpyFIJ4
	M+nYA2J0UVlzygBkfsyIt7eBMJOSnigsLFnjU1wmvP48MSjJG+0c+FsMVPMpioFgEZsm
	TZzGWDjh3bny39YouA7kzRQz/kshsutGnePvnpXp3edkugLhDIP963ceFTBm1KVztxFG
	r0OeMRLoldpAscBX2klCYbmNAFvCb6XcryBN+kUB9hJR0u7c3v/5eO3ahd2NMqR/1F6e
	5JveS0S9groxJapVhY9SsKc1Phpqa1KGfrybSmICLaACIBpO2OYaX3JxYJE9se+KPSGW
	vtbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EzuU0bGreVDBsreEKaIKgOSW5a3NkEj2jiAu09Sduso=;
	b=ZuQ/Qwfxfw3xNAq0I+KzwKUiO2u+mqfqzdfzpuq7amgvbkmf5hMHRXgcAR5uS71oO8
	mrheuxPZobjfcVjgbQ6XfvYvG9sJ7pfC5EpvCgE0iN3R9xZZIWqWY5uTSfKRhLhwgZfE
	pb0o+dkF/t/HhlsDuV/bniZKteqqLBYc3NqQ3F1HnRugrpWJQxcXZAKDysz7hji6DQ/J
	hIRC+Q/8Rt/RGkwBJULe0ZJ1LaXoFDqDRNGYTLUpyaQVL7Qo8ThKsu3JXAWosB8HdPHf
	WvHAAMWkYOaIGXfO+7TyG29CquUOsG2PtWP0GYdm/XLS0JSWOwZ1Jw46MA1Nzb0+7F9J
	UfzA==
X-Gm-Message-State: AJcUukfCuHYi9MhsoKskE0x09wvBfwei4DG+qdLakUZoLpFFYDiLr/D6
	A9LlVZ7nmYrUfUtSpS7xPm3he96L1HvyzDE27y8/UQ==
X-Google-Smtp-Source: ALg8bN7QRyjZmgbPdNB6xw/xU/6RnJxkUiwu47JYHEnBlokgUO8MPqZuMuACbXuFwL2YJaXdmnh2zo2IWjr4Yw6BLcI=
X-Received: by 2002:a2e:4601:: with SMTP id
	t1-v6mr11991278lja.111.1547323477769; 
	Sat, 12 Jan 2019 12:04:37 -0800 (PST)
MIME-Version: 1.0
References: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>
	<3c5876e9-16f4-13ca-90fb-3452b257e249@ibeeto.com>
	<CAKRytNypyncXWUXRbhNStujGC5BUU9pyWwycrQyXfgQ3wL+qwA@mail.gmail.com>
In-Reply-To: <CAKRytNypyncXWUXRbhNStujGC5BUU9pyWwycrQyXfgQ3wL+qwA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Sat, 12 Jan 2019 12:04:26 -0800
Message-ID: <CAPxNcncr828BZfoyyoebr3zYLe04Bmd1EQBCj2D55eCrYe22DA@mail.gmail.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting up a password for the root user
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
X-List-Received-Date: Sat, 12 Jan 2019 20:04:40 -0000
Content-Type: multipart/alternative; boundary="0000000000003ed4c7057f4852b6"

--0000000000003ed4c7057f4852b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For security it is best to disable console login for root and all users
altogether and use ssh with keys. If you are building many devices you
would want to provision each of them with unique keys.

:rjs


On Sat, Jan 12, 2019, 04:42 Stefano Cappa <stefano.cappa.ks89@gmail.com
wrote:

> From a security point of view, Is it better to use  "usermod -p `openssl
> passwd mypass` root; \" or with uppercase P "usermod -P mypass root; \" ?
>
>
> Il giorno sab 12 gen 2019 alle ore 04:38 Rudolf J Streif <
> rudolf.streif@ibeeto.com> ha scritto:
>
>> Alberto,
>>
>> The quotes around
>>
>> `openssl passwd ${ROOT_PASSWORD}`
>>
>> have to be backticks (`) not single quotes (').
>>
>> :rjs
>>
>> On 01/11/2019 07:41 AM, Alberto Spin wrote:
>>
>> Hello There,
>>
>>
>>
>> I=E2=80=99m trying to set a password for the root user of my distributio=
n (based
>> rocko branch)
>>
>>
>>
>> I=E2=80=99ve added the following to my image recipe:
>>
>>
>>
>> inherit extrausers
>>
>>
>>
>> # set image root password
>>
>> ROOT_PASSWORD =3D "secret"
>>
>>
>>
>> EXTRA_USERS_PARAMS =3D "\
>>
>>     usermod -p 'openssl passwd ${ROOT_PASSWORD}' root; \
>>
>>     "
>>
>>
>>
>> Everything builds fine, but in my image I end up with a password in my
>> /etc/shadow file like this:
>>
>>
>>
>> openssl passwd secret
>>
>>
>>
>> so it seems like the openssl command has not been executed during the
>> build, but instead the literal command is now part of my password.
>>
>>
>>
>> Can anybody please explain what=E2=80=99s going on here, and how to fix =
this?
>>
>>
>>
>> Kind Regards,
>>
>>
>>
>> Alberto
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000003ed4c7057f4852b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>For security it is best to disable console login for=
 root and all users altogether and use ssh with keys. If you are building m=
any devices you would want to provision each of them with unique keys.<div =
dir=3D"auto"><br></div><div dir=3D"auto">:rjs</div><br><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Sat, Jan 12, 2019, 04:42 Stefano Cappa &lt;<=
a href=3D"mailto:stefano.cappa.ks89@gmail.com">stefano.cappa.ks89@gmail.com=
</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">From a=
 security point of view, Is it better to use=C2=A0 &quot;usermod -p `openss=
l passwd mypass` root; \&quot; or with uppercase P &quot;usermod -P mypass =
root; \&quot; ?<div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">Il giorno sab 12 gen 2019 alle ore 04:38 Rudolf J Streif &lt;<a hr=
ef=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank" rel=3D"noreferrer"=
>rudolf.streif@ibeeto.com</a>&gt; ha scritto:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Alberto,</p>
    <p>The quotes around</p>
    <p>`openssl passwd ${ROOT_PASSWORD}`</p>
    <p>have to be backticks (`) not single quotes (&#39;).</p></div><div te=
xt=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>:rjs<br>
    </p></div><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div class=3D"m_-2819005752334980204m_-7836984612495271655moz-cite-pref=
ix">On 01/11/2019 07:41 AM, Alberto Spin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div class=3D"m_-2819005752334980204m_-7836984612495271655WordSection=
1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hello There,<u></u><u><=
/u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m trying to s=
et a
            password for the root user of my distribution (based rocko
            branch)<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99ve added the =
following
            to my image recipe:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">inherit
            extrausers<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">#
            set image root password<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">ROOT_PASSWORD
            =3D &quot;secret&quot;<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">EXTRA_USERS_PARAMS
            =3D &quot;\<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0
          </span><span style=3D"font-size:8.0pt;font-family:Consolas">userm=
od
            -p &#39;openssl passwd ${ROOT_PASSWORD}&#39; root; \<u></u><u><=
/u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas">=C2=A0=C2=A0=C2=A0
          </span><span style=3D"font-size:8.0pt;font-family:Consolas" lang=
=3D"EN-US">&quot;<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Everything builds fine,
            but in my image I end up with a password in my /etc/shadow
            file like this:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:C=
onsolas">openssl passwd
            secret<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">so it seems like the
            openssl command has not been executed during the build, but
            instead the literal command is now part of my password.<u></u><=
u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Can anybody please
            explain what=E2=80=99s going on here, and how to fix this?<u></=
u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Kind Regards,<u></u><u>=
</u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Alberto<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
      </div>
      <br>
      <fieldset class=3D"m_-2819005752334980204m_-7836984612495271655mimeAt=
tachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>
</blockquote></div></div></div>

--0000000000003ed4c7057f4852b6--
