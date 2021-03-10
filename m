Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web10.2938.1615406271714750700
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 11:57:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qi3BlapE;
 spf=pass (domain: gmail.com, ip: 209.85.210.42, mailfrom: pwicks86@gmail.com)
Received: by mail-ot1-f42.google.com with SMTP id a17so17646473oto.5
        for <yocto@lists.yoctoproject.org>; Wed, 10 Mar 2021 11:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Pp15EnO0pFEBNa+kFAgND9cTxsUsiiANa4aM4WK/PT8=;
        b=Qi3BlapEU7W0ICaVE8vpRFBSHSL7wbyATJF5kfItA6DB2ufGshXH2k73k/ljjEt21Q
         SObQzqWsQP7heiRydSNFfcM+OM05fwtAWpt4y0H++f00ONVHWwOslxbx+hnRfo/ZjTSE
         Oc+X8IaU6RLEbNIE06Z43WqfHVBaLj7l+3I5lMKr3n12ngQTyZaN2GjZADvaWojvheCY
         jQwQCv3Y1uU6fCbuRVii2Q0b9v1WNK+Dx7PMrIA/2u0ikh4r/87oNtrjFwxrhiJ/xc9M
         WtWNyPegEOHCzC2fHX9qE3JZXL7ipJpsTNJwhxlhUQPF57rE+feclh4V0g9Ae4+5qWqR
         MOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Pp15EnO0pFEBNa+kFAgND9cTxsUsiiANa4aM4WK/PT8=;
        b=qf7DbeU7bu35rRu2EAMOcKHUZTGzG2LKGPfaMGAns1mIPs3Pi51SqdazQfug5oi10t
         3jYkvmpJEAX12flxxzWNA0yRyJBSR+ztEW+rLcRZFrQ7bmX5X4sVszxDs7Ovess/cOIB
         P7wVeEJeJUzWPbaaBGTUMH9w4Fx4DqS4uc0TLakEYTm+Hnu3rwmT0ggHRdRR21RZgueg
         rvzDYe89ILhhsV0MCwDyUvojY4P2keQ1Hj+vBH7M37TeGjkrPoQdDAJnJiEYHTXjUWpf
         xPRlhIHa1je02sXIQy2DwESBXWyRpoWdv2VgRn6cTz2IwJPBZB6pI/ocLbStgC7XCl8R
         sMDA==
X-Gm-Message-State: AOAM531jGPdMz+A5flPlHxg9+Rau/2AGT5cjldyeNdxRp5/e9Md1HZPw
	vS2214rCYzi1vpz9u9VhB+zqK6m0HB8yI1/FA/H8IvLYStY=
X-Google-Smtp-Source: ABdhPJwALTlXYe8AKSIMwEd137u4xXpkW5sWk0sBJGoHcCSk8lJboHVJyGGLPS1vonLIMIBFykqqwoshHjwS66KfaTk=
X-Received: by 2002:a05:6830:225b:: with SMTP id t27mr3786448otd.73.1615406270516;
 Wed, 10 Mar 2021 11:57:50 -0800 (PST)
MIME-Version: 1.0
From: "Paul Wicks" <pwicks86@gmail.com>
Date: Wed, 10 Mar 2021 11:57:14 -0800
Message-ID: <CAOC70ttivzRwZ6XziCcwm9k1ZAoF6FH1Zfbhbsk5nKj8ujEuWg@mail.gmail.com>
Subject: Integrating npm into install?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ec134205bd34141f"

--000000000000ec134205bd34141f
Content-Type: text/plain; charset="UTF-8"

I've got a python app that uses some javascript assets that are normally
built via webpack. In a normal build, the process is as follows:

* run "npm install" to get all the javascript dependencies
* run "npm build", a custom task in my package.json file that invokes
webpack to build the assets and place them where the python install can
find them.
* run "python setup.py install" to build and install the python part of the
app

What's the best/most correct way to integrate this into a yocto recipe? My
current approach is to have the main recipe "inherit setuptools3" and then
add the following:

"
do_run_npm_install() {
    bbplain "Running npm install, this may take a few minutes..."
    npm install
    npm run build
}

addtask run_npm_install before do_compile
"

However, this fails with an "npm: not found" error.

-Paul Wicks

--000000000000ec134205bd34141f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature">I&#39;ve got a python app that uses some javascript as=
sets that are normally built via webpack. In a normal build, the process is=
 as follows:</div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><br></div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature">* run &quot;npm install&quot; to get all =
the javascript dependencies</div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature">* run &quot;npm build&quot;, a custom t=
ask in my package.json file that invokes webpack to build the assets and pl=
ace them where the python install can find them.</div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">* run &quot;python=
 setup.py install&quot; to build and install the python part of the app</di=
v><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><br></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature">What&#39;s the best/most correct way to integrate this in=
to a yocto recipe? My current approach is to have the main recipe &quot;inh=
erit setuptools3&quot; and then add the following:</div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br></div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&qu=
ot;</div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature">do_run_npm_install() {<br>=C2=A0 =C2=A0 bbplain &quot;Running n=
pm install, this may take a few minutes...&quot;<br>=C2=A0 =C2=A0 npm insta=
ll<br>=C2=A0 =C2=A0 npm run build <br>}<br><br>addtask run_npm_install befo=
re do_compile<br></div><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature">&quot;</div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><br></div><div class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature">However, this fails with an &quot=
;npm: not found&quot; error.</div><div class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><br></div><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature">-Paul Wicks</div></div>

--000000000000ec134205bd34141f--
