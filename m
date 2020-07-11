Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web12.6875.1594464887531130964
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jul 2020 03:54:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=acGOBLVH;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: dusinski.adrian@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id y2so8666438ioy.3
        for <yocto@lists.yoctoproject.org>; Sat, 11 Jul 2020 03:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Mx7VzaHCFONSKIM1GEXbm1+9F2OcaKOjoqNFRoMJpW4=;
        b=acGOBLVH5REW2a834XKSW0JmDW1vDEZvelCdH9NpAMvFJ3NlQ31rXmi8ZfF46V5NqX
         ljGxAHZh3zgjFHccir+tTcxiN99FxMdljIHXRh9evsZ+y1+D70vnendFnXPKP6zdc7yb
         3jvjSbekK2gYWTevp3VZmADqxMFLJwKgsl0GnNb++bLpVEyGRYAflMoKtRUk3nOZck9e
         p8qrbHraMGXhWMYY1oWkRscqd+1+beUtOTM3I9ISk59ydnZDKen8bshq9UzycOS262XW
         whIGIXrYeMbvqojO7C57JCy0UCenMz6zzU/gKSTVrFAwKVOY75b4niAwfnmSs6CjeHBF
         EBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Mx7VzaHCFONSKIM1GEXbm1+9F2OcaKOjoqNFRoMJpW4=;
        b=X7CxC0watEa/dF1TGsevndohicUUNyj+JoFGl+3d5ztcaRrXpNvQoqyLMMq62RZQQY
         E33ZK4ZsOM11JCA6EC8fm29H9Ce3guy++nSNYLA5EIxCdj3U19nKfhOffdjmwutH21wC
         CvnOqXU10eG7/SUj5ekSkXNa/pKYNFlcu15Vxs0c1Sv9h8+n2g4s7aKQ5KQZXKOJiwIk
         7E3yZ2X0tT9Ik1kXDBBLhuunTXjrvhKN2yvjr8W8tRU1Lm0IxgkO5k+4BZ3rfx+mVTyB
         TPtqzWiDgoYUX0Ms2WEYvLcfun9+3HDeyrFdxirlLiWUgWiO2WhYuAyI3GDoQeE6PEpY
         65eg==
X-Gm-Message-State: AOAM530sOy8L6Mdj1xdJqLVpWWdUTEFMIfIzQsejVtj8CcY+iVykoi9/
	H+jnVm3QHVB/9UnroIsjfF6jPBGVp61zT7nb9KM27WBm
X-Google-Smtp-Source: ABdhPJy5FBzdfTKc81gCC0YNZQS5iuvFZeBNLIIRAafhNHI27A6wE44LTXI67eBvEys/U56dUiOhKb+fKp2Wg+TDyY4=
X-Received: by 2002:a6b:c897:: with SMTP id y145mr34663672iof.190.1594464886161;
 Sat, 11 Jul 2020 03:54:46 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?QWRyaWFuIER1c2nFhHNraQ==?= <dusinski.adrian@gmail.com>
Date: Sat, 11 Jul 2020 12:54:34 +0200
Message-ID: <CAO80Z=rbH2JzHV4G33pyj3A0LJYq17PN=i1bPeg0XgOp8BCzZw@mail.gmail.com>
Subject: Image with trustfence
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000025829905aa2849c2"

--00000000000025829905aa2849c2
Content-Type: text/plain; charset="UTF-8"

Do I have to change the address of loading the image into ram when
trustfence is enabled?
Because after enabling trustfence I have got error:

##  Flattened Device Tree blob at 8300000

      Booting using the fdt blob at 0x8300000

      Using Device Tree in place at 8300000, end 8300b55a

fdt_find_or_add_subnode: chosen: FDT_ERR_BADSTRUCTURE

ERROR: /chosen node create failed

- must RESET the board....

--00000000000025829905aa2849c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Do I have to change the address of loading the image into =
ram when trustfence is enabled?<br>Because after enabling trustfence I have=
 got error:<div></div><div><p>##=C2=A0 Flattened Device Tree blob at 830000=
0</p><p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Booting using the fdt blob at 0=
x8300000</p><p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Using Device Tree in pla=
ce at 8300000, end 8300b55a</p><p>fdt_find_or_add_subnode: chosen: FDT_ERR_=
BADSTRUCTURE</p><p>ERROR: /chosen node create failed</p><p>- must RESET the=
 board....</p></div><div><br></div></div>

--00000000000025829905aa2849c2--
