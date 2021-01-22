Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web09.6996.1611311442648770501
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jan 2021 02:30:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRWj+KY1;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id c1so3737674qtc.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Jan 2021 02:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r1nPuIcziFBjqMP9W6/zKjdqbDr7Mz2ylZbuGITmjjw=;
        b=eRWj+KY1GKv+rHSI0xnghK9cAdze6ZUgZThxXrCInNF8/TWUATZ1VvQfxdOEj4hCgZ
         OC7puLw+DWVCcGgsVKTj90PLz2zRBXdLPGRuF9IxpkY2oLE6M74NS8DsmImsJepww3wk
         g9KqIArO8moitDvrzhg90A5fPleSTTERgET34pm/OvBRIiwhZc4sYT12o1zHrpj0Y/DU
         v4HmAi4BabmPHcQJKDKWoVakTjgbpajpxL/TuFzQwVW42uu3lKUjOxXHmjqV/cLdG7Fi
         eo60YYCtjStk+vDzcGU6g5DxNMZZQ5udSKkWl+AxgBlap1HLBK7GRc1mk28R5LFp1Lb5
         01oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r1nPuIcziFBjqMP9W6/zKjdqbDr7Mz2ylZbuGITmjjw=;
        b=G9KADvCEnsKKzSLNb+iddBuaE4c4zHARuxI1O8RZwM3iy+JWSB5SDeVC6fOXmNZX8L
         8k95EPBT+HS4RtuwccxgtNNtNy4LXEXWmfDgvP4xCvGjlkuzQxmOhM4ERf4RjAbB1Bso
         GhbJ9FS50oG8PBECRzQh+FzbOv0eJz+okXEW9ngyO46+vqzbPniyhScLdZI6UcEQA3iL
         yXalTDxEXmVM1E2wIOq1ZtZjaQwo7hxr2wZ9gKc61S9zBnz9BBEqFPwKBdLt6QEkFxzp
         KOqZj8Xj0R1XU/HoBG2jVFV9GXKh9LKoU436pnUPtdXUR3tLC6X5a+NZgnb9h6zpRhJP
         CtWQ==
X-Gm-Message-State: AOAM530nK/8r9CiT9Fky48yxLYLiL98jeVE15thy2eCNSY5z24+iqTjx
	Wb8ZKSNE5wsg/l5ufYdPnHsss5W8wm2rmppmDCM=
X-Google-Smtp-Source: ABdhPJzl/oNV8HIr29v7u6VRrsnLxom9VogUZv943/RBVXCnIsX/eG2ZuC2vuz/JJ4uVC754sxQBZ7Zc9s98EQKtDt8=
X-Received: by 2002:ac8:6049:: with SMTP id k9mr15522qtm.104.1611311441821;
 Fri, 22 Jan 2021 02:30:41 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR06MB6573437B09D8AD3427DB2E5086A09@MN2PR06MB6573.namprd06.prod.outlook.com>
In-Reply-To: <MN2PR06MB6573437B09D8AD3427DB2E5086A09@MN2PR06MB6573.namprd06.prod.outlook.com>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Fri, 22 Jan 2021 11:30:30 +0100
Message-ID: <CAAdc0hz2M9EnaF2bGBqBXcnJdK9=dyT-yMikK400Dh2rMMCSRg@mail.gmail.com>
Subject: Re: [yocto] NPM Fetcher & License collection in Yocto Zeus
To: Oliver Westermann <oliver.westermann@cognex.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001cc42505b97aae35"

--0000000000001cc42505b97aae35
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Olivier,

Thanks for your implication :)

I think the modification you want to make resides in the npm class file:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/npm.bbcl=
ass?h=3Dzeus

But, starting with dunfell, the npm related mechanism have been reworked
and also the npm class:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/npm.bbcl=
ass?h=3Ddunfell

Is it possible to test if you have the same issue with dunfell ?

Best Regards,
Jean-Marie

On Fri, Jan 22, 2021 at 10:00 AM Oliver Westermann <
oliver.westermann@cognex.com> wrote:

> Hey,
>
> We=E2=80=99ve upgraded to zeus some time ago and also updated some of ou=
r recipes
> around node-red and it=E2=80=99s nodes. Before I created my own class to=
 easily
> fetch several nodes, now we used devtool to create those recipes. In zeu=
s,
> this happens using the npm:// fetcher.
>
> This worked fine, but we sometimes had QA errors, hard to reproduce.
> Sometimes on some peoples PC, the license files were missing when
> do_populate_lic was running.
>
> ERROR: node-red-contrib-socketio-1.0.7-r0 do_populate_lic: QA Issue:
> node-red-contrib-socketio: LIC_FILES_CHKSUM points to an invalid file:
> /data/workspace/yocto-build/build/cognex-myna/tmp/work/aarch64-poky-linu=
x/node-red-contrib-socketio/1.0.7-r0/npmpkg/node_modules/
> socket.io/node_modules/@types/cookie/LICENSE [license-checksum]
>
> Turned out that do_unpack would download the dependencies of the
> node-red-module (so in the example above, node-red-contrib-socketio depe=
nds
> on socket.io), but do_install would package those away/clean them up.
> Since they go into the resulting package, we still have to list those
> licenses, so I fixed it by adding
>
> do_install[depends] +=3D "${PN}:do_populate_lic"
>
> to my packages to fix the order.
>
> However I would like to fix this upstream, but couldn't find the correct
> source location to add this dependency. Can sb help me figure this out a=
s I
> would like to contribute =F0=9F=98=89
>
> Best regards, Olli
>
>=20
>
>

--0000000000001cc42505b97aae35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Olivier,<div><br></div><div>Thanks for=
 your implication :)</div><div><br></div><div>I think the modification you =
want to make resides in the npm class file:</div><div><a href=3D"https://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/npm.bbclass?h=3Dzeu=
s">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/npm.bb=
class?h=3Dzeus</a></div><div><br></div><div>But, starting with dunfell, the=
 npm related mechanism have been reworked and also the npm class:</div><div=
><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/class=
es/npm.bbclass?h=3Ddunfell">https://git.yoctoproject.org/cgit/cgit.cgi/poky=
/tree/meta/classes/npm.bbclass?h=3Ddunfell</a><br></div><div><br></div><div=
>Is it possible to test if you have the same issue with dunfell ?</div><div=
><br></div><div>Best Regards,</div><div>Jean-Marie</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 22, 202=
1 at 10:00 AM Oliver Westermann &lt;<a href=3D"mailto:oliver.westermann@cog=
nex.com">oliver.westermann@cognex.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hey,<br>
<br>
We=E2=80=99ve upgraded to zeus some time ago and also updated some of our =
recipes around node-red and it=E2=80=99s nodes. Before I created my own cla=
ss to easily fetch several nodes, now we used devtool to create those recip=
es. In zeus, this happens using the npm:// fetcher.<br>
<br>
This worked fine, but we sometimes had QA errors, hard to reproduce. Somet=
imes on some peoples PC, the license files were missing when do_populate_li=
c was running.<br>
<br>
ERROR: node-red-contrib-socketio-1.0.7-r0 do_populate_lic: QA Issue: node-=
red-contrib-socketio: LIC_FILES_CHKSUM points to an invalid file: /data/wor=
kspace/yocto-build/build/cognex-myna/tmp/work/aarch64-poky-linux/node-red-c=
ontrib-socketio/1.0.7-r0/npmpkg/node_modules/<a href=3D"http://socket.io/no=
de_modules/@types/cookie/LICENSE" rel=3D"noreferrer" target=3D"_blank">sock=
et.io/node_modules/@types/cookie/LICENSE</a> [license-checksum]<br>
<br>
Turned out that do_unpack would download the dependencies of the node-red-=
module (so in the example above, node-red-contrib-socketio depends on <a hr=
ef=3D"http://socket.io" rel=3D"noreferrer" target=3D"_blank">socket.io</a>)=
, but do_install would package those away/clean them up.<br>
Since they go into the resulting package, we still have to list those lice=
nses, so I fixed it by adding <br>
<br>
do_install[depends] +=3D &quot;${PN}:do_populate_lic&quot;<br>
<br>
to my packages to fix the order.<br>
<br>
However I would like to fix this upstream, but couldn&#39;t find the corre=
ct source location to add this dependency. Can sb help me figure this out a=
s I would like to contribute =F0=9F=98=89<br>
<br>
Best regards, Olli<br>
<br>
<br>
<br>
</blockquote></div></div>

--0000000000001cc42505b97aae35--
