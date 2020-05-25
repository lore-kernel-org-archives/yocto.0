Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web11.31097.1590413323516763419
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 06:28:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t7yVm4vh;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: lefevre.da@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id x29so546455qtv.4
        for <yocto@lists.yoctoproject.org>; Mon, 25 May 2020 06:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PGeFt4AMHb5JfUo7ujDUtfQ2ftLKEZNm64PlqhK3ws0=;
        b=t7yVm4vh3DIyKDtQSEmy2zEHrUtRWJS/ocLdSO8DnN3hrYlUy7c0yh7dcdqc+3z2Sv
         rTT8yaZ47vhL7J8mfgZcQev2odEA5y/hLf2H+ThfiWkcP23DcAn8YELjmGNxv0bdOC1z
         gsFIrERwLdpGeMfqAp94sSioIVPPWGfh6p5iPv+FqMXrqasE3X4D0nX3RmMkBtorGNFB
         fLoD8t8zTRzdXIJTHkzg9uyxfCnpLBd6vIHAzBP3s39f6Xzi1HHd/zUDTubXvIdxhp2U
         /vp8djWZTRgV7t6529XC/3gD2cMF1hii/ycPwL8BUWXgZ1BbogHmTxgLaNpMRFTik7PJ
         se3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PGeFt4AMHb5JfUo7ujDUtfQ2ftLKEZNm64PlqhK3ws0=;
        b=Is+phI4HpnfKB4zyaXkXb0NEzn8dCRdC6Hj8sUIV09KfzW+Px5CnlqaZhgFmIUn4VQ
         UudV46Dxtd1aHk2pxWmIzKwrgEL2iiRrPY3rRlOUKaWjbw+EYj+TvPkAeI1+NWh0sffT
         BEbSpIyflHHhTb9iNMcvFRzy5KGYgtWQ+pqI9guCdjL4hthIilWCSLXUs4ZQaftu9slA
         Sqy1PaEEx3tUg6uZBWC7kNFq9ei65wZzltMbMOalMfMGZhdRPrWHPXgqJN9vTeIPMjLD
         b3cDEzIJJMCe8ZAP1RHf6yfM8OyuDsUbTvwvkJ67O1GDcS5GkR1vnqQhHA2IfWxlrXYz
         3YAQ==
X-Gm-Message-State: AOAM530t87ekTGp2+g4rm9zPdKY/TnE1nVkdlmlZBM80eyJdZUEedc+J
	10+vOz7iCzYsYu4n56qp2nc9H86+CyYl1iHiRkgkz9M=
X-Google-Smtp-Source: ABdhPJxnDBaGqBT/5LGtIhDiYjmcmQkG9KEryh7NcDXFK6dzjJiQuRAWA3rYNml4tVnLM5GpmNOkDHqnG/Vs2nOHuOU=
X-Received: by 2002:ac8:5648:: with SMTP id 8mr12083643qtt.280.1590413322427;
 Mon, 25 May 2020 06:28:42 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Mon, 25 May 2020 16:28:31 +0300
Message-ID: <CA+FhBv8xRbibFkKB6cE8yr+ZiApOiGrk13WsWJ6tfxxNeFFt5A@mail.gmail.com>
Subject: gpg: can't connect to the agent: File name too long
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021213805a678f571"

--00000000000021213805a678f571
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using this command from a new image type
'''
gpg --homedir home --encrypt --sign --default-key "server@test.ltd"
--pinentry-mode loopback --passphrase-file server.passphrase  --recipient
"device@test.ltd" --output ${IMAGE_LINK_NAME}.fw
${IMGDEPLOYDIR}/${IMAGE_NAME}.img
'''

From yocto build I get this error

'''
| gpg: can't connect to the agent: File name too long
| gpg: Warning: not using 'server@test.ltd' as default key: No secret key
| gpg: all values passed to '--default-key' ignored
'''

I added this img_ota.bbclass

'''
inherit image_types image_types_tegra pythonnative

create_img_ota_pkg() {
    rm -rf "${WORKDIR}/my_img"
    mkdir -p "${WORKDIR}/my_img"
    oldwd=`pwd`
    cd "${WORKDIR}/my_img"
    ln -sf "${STAGING_DATADIR_NATIVE}/gpg-keys/" home
    ln -sf "${STAGING_DATADIR_NATIVE}/gpg-keys/update.passphrase"
update.passphrase
    ln -sf "${STAGING_DATADIR_NATIVE}/gpg-keys/encrypt.py" encrypt.py
    ln -sf "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.img" "${IMAGE_LINK_NAME}.img"
    #gpg --homedir home --encrypt --sign --default-key "server@test.ltd"
--pinentry-mode loopback --passphrase-file server.passphrase  --recipient
"device@test.ltd" --output ${IMAGE_LINK_NAME}.fw
${IMGDEPLOYDIR}/${IMAGE_NAME}.img
    echo $(which python3)
    python3 encrypt.py blabla.fw ${IMAGE_LINK_NAME}.img
    cd oldwd
}

create_my_pkg[vardepsexclude] += "DATETIME"

IMAGE_CMD_img_ota = "create_img_ota_pkg"
do_image_img_ota[depends] += " \
    gpg-keys-native:do_populate_sysroot \
"

IMAGE_TYPEDEP_img_ota += "tegraflash"
IMAGE_TYPES += "img_ota"
'''

I have a native recipe creating the gpg db and install the keys.

I did check the gpg and gpg-agent binaries used come from
/test-warrior/build-jetson-xavier/tmp/work/jetson_xavier-poky-linux/test-image/1.0-r0/recipe-sysroot-native/usr/bin

I tried to wrap the command in a python script but it had no effect.

If I open a terminal, add
/test-warrior/build-jetson-xavier/tmp/work/jetson_xavier-poky-linux/test-image/1.0-r0/recipe-sysroot-native/usr/bin
to PATH and run the commands, they go through successfully and I don't
manage to reproduce the error.

What is different with bitbake which could make this fail?

Thanks
-Damien

--00000000000021213805a678f571
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using this command from a n=
ew image type</div><div>&#39;&#39;&#39;</div><div>gpg --homedir home --encr=
ypt --sign --default-key &quot;server@test.ltd&quot; --pinentry-mode loopba=
ck --passphrase-file server.passphrase =C2=A0--recipient &quot;device@test.=
ltd&quot; --output ${IMAGE_LINK_NAME}.fw ${IMGDEPLOYDIR}/${IMAGE_NAME}.img<=
/div><div>&#39;&#39;&#39;</div><div><br></div><div>From yocto build I get t=
his error<br></div><div><br></div><div>&#39;&#39;&#39;</div><div>| gpg: can=
&#39;t connect to the agent: File name too long<br>| gpg: Warning: not usin=
g &#39;server@test.ltd&#39; as default key: No secret key<br>| gpg: all val=
ues passed to &#39;--default-key&#39; ignored<br></div><div>&#39;&#39;&#39;=
<br></div><div><br></div><div>I added this=C2=A0img_ota.bbclass</div><div><=
br></div><div>&#39;&#39;&#39;</div><div>inherit image_types image_types_teg=
ra pythonnative<br><br>create_img_ota_pkg() {<br>=C2=A0 =C2=A0 rm -rf &quot=
;${WORKDIR}/my_img&quot;<br>=C2=A0 =C2=A0 mkdir -p &quot;${WORKDIR}/my_img&=
quot;<br>=C2=A0 =C2=A0 oldwd=3D`pwd`<br>=C2=A0 =C2=A0 cd &quot;${WORKDIR}/m=
y_img&quot;<br>=C2=A0 =C2=A0 ln -sf &quot;${STAGING_DATADIR_NATIVE}/gpg-key=
s/&quot; home<br>=C2=A0 =C2=A0 ln -sf &quot;${STAGING_DATADIR_NATIVE}/gpg-k=
eys/update.passphrase&quot; update.passphrase<br>=C2=A0 =C2=A0 ln -sf &quot=
;${STAGING_DATADIR_NATIVE}/gpg-keys/encrypt.py&quot; encrypt.py<br>=C2=A0 =
=C2=A0 ln -sf &quot;${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.img&quot; &quot;${IM=
AGE_LINK_NAME}.img&quot;<br>=C2=A0 =C2=A0 #gpg --homedir home --encrypt --s=
ign --default-key &quot;server@test.ltd&quot; --pinentry-mode loopback --pa=
ssphrase-file server.passphrase =C2=A0--recipient &quot;device@test.ltd&quo=
t; --output ${IMAGE_LINK_NAME}.fw ${IMGDEPLOYDIR}/${IMAGE_NAME}.img <br>=C2=
=A0 =C2=A0 echo $(which python3)<br>=C2=A0 =C2=A0 python3 encrypt.py blabla=
.fw ${IMAGE_LINK_NAME}.img<br>=C2=A0 =C2=A0 cd oldwd<br>}<br><br>create_my_=
pkg[vardepsexclude] +=3D &quot;DATETIME&quot;<br><br>IMAGE_CMD_img_ota =3D =
&quot;create_img_ota_pkg&quot;<br>do_image_img_ota[depends] +=3D &quot; \<b=
r>=C2=A0 =C2=A0 gpg-keys-native:do_populate_sysroot \ <br>&quot;<br><br>IMA=
GE_TYPEDEP_img_ota +=3D &quot;tegraflash&quot;<br>IMAGE_TYPES +=3D &quot;im=
g_ota&quot;<br></div><div>&#39;&#39;&#39;</div><div><br></div><div>I have a=
 native recipe creating the gpg db and install the keys.</div><div><br></di=
v><div>I did check the gpg and gpg-agent binaries used come from /test-warr=
ior/build-jetson-xavier/tmp/work/jetson_xavier-poky-linux/test-image/1.0-r0=
/recipe-sysroot-native/usr/bin</div><div><br></div><div>I tried to wrap the=
=C2=A0command in a python script but it had no effect.</div><div><br></div>=
<div>If I open a terminal, add=C2=A0 /test-warrior/build-jetson-xavier/tmp/=
work/jetson_xavier-poky-linux/test-image/1.0-r0/recipe-sysroot-native/usr/b=
in to PATH and run the commands, they go through successfully and I don&#39=
;t manage to reproduce the error.</div><div><br></div><div>What is differen=
t with bitbake which could make this fail?</div><div><br></div><div>Thanks<=
/div><div>-Damien</div><div><br></div></div>

--00000000000021213805a678f571--
