Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18781D2A53D
	for <webhook@archiver.kernel.org>; Wed, 16 Oct 2024 19:09:29 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.30934.1729103452515767423
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Oct 2024 11:30:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=I4Npohsp;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: aymericdumaz@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7ea0ff74b15so83269a12.3
        for <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 11:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729103452; x=1729708252; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uebwDq4d51jXdDbnwAMPYqYrpj/YPWM9HJBNzfCFx30=;
        b=I4NpohspRgeGzTL75FvKdPDXAVmsVbzTPZeBhiVoUu8H6I6y1pxc1iQI8Sw8bRxZcI
         imPZs/48gGjglxAOKsQAJN6mqq4nkz+CfsgKJ5+PEKkYTFzcrOqsubLFNRi9uJAX5IRo
         cZ93+kMAQNmGwi0cO9OncpAyl6YWJgzQfqK+cnJz3DFVZiF0/tHdbHLhaC8ly87kZjDv
         P0cvR6ExRCFXZIF+FxTDufYaHinQtc9dr1T50lHNTg37ZRiJv/Yf/LODDDkU7xKPCv/L
         gCBpx+5/0KrEOuFNbtuqLHQC+7AH4aNfln2A33WvaLQD4WH8N8XAOyYqTppNxB/bXUt7
         jbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729103452; x=1729708252;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uebwDq4d51jXdDbnwAMPYqYrpj/YPWM9HJBNzfCFx30=;
        b=ZwiWjDw3+x2pqEsj2XxcJk1cpB30F0MyIWoDQnyzXQLtRueKsxopq7jOXsR4dlKpnb
         kAKuR87URIs4c/ftSLyTu93Qz17p/SDGS/fWj6mx2OkxPFf0FzcGrYIMxb6UjulB4BF8
         qw/G4MfyydH97zzg5mcpnTmyY4tQV9gf7U08D9dUe1YIVWbY8PGQJGvlJEiBU0M+1dpl
         qpFGO6gCsGM9CsWY2hhePCY0Fn8PoVm4FRPBZ/XI0RrFz3R6RQ8NEWZesTHoh9naJqIv
         jEUA+aX3BNRm6+eaNCPH0v30bZBtKVzy5bj8pXiIesMNpEh77INHjAoWNaBchyMR+FjS
         8uMg==
X-Gm-Message-State: AOJu0YyCzZ2T03s93EsRnE6VgBKnqw4B7gW/YTx6gvXpLr8GEZ+9ATDY
	YpOUNs2GYsygDz4lzzSgYWIvAv0uLNfaMSxqHbsVmT+wGYVjHcxS8cwj261la+xZaXAgaKJ4XuV
	yDKehDoRdA9euxN5TAhDF4gijn9edY+D+
X-Google-Smtp-Source: AGHT+IEMzlaZS/xpPXHY240A2quDMgFxvg5rmdfK9oqE75xfmwURQXz2/aBK5ghTk+4gHW4aSxEvB+6HT+r/ce/37xc=
X-Received: by 2002:a05:6a20:c990:b0:1cf:499c:f918 with SMTP id
 adf61e73a8af0-1d905ecb898mr6344584637.18.1729103451647; Wed, 16 Oct 2024
 11:30:51 -0700 (PDT)
MIME-Version: 1.0
From: "Aymeric Dumaz" <aymericdumaz@gmail.com>
Date: Wed, 16 Oct 2024 20:30:40 +0200
Message-ID: <CAESSzZxmWtRkK3ZSZYqLeTp0kTESc4NP5Rc3Oi8oEzW2qWtbbQ@mail.gmail.com>
Subject: Fetch recipes PV from a file?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000003f58406249c45aa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 19:09:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64031

--00000000000003f58406249c45aa
Content-Type: text/plain; charset="UTF-8"

Hello, we use a script to generate updates for our products; it is
contained inside a git repo (let's call it "gen-update") with a cmake file
describing each sub-projects tags for the tagged update (example [1]).
We also generate a new rootfs to have up-to-date machines during their
manufacture.

I tried a few things and discovered that a recipe cannot export variables,
and adding the "gen-update" repo inside each sub-projects SRC_URI was not
working because their PV need to be defined first.

I managed to get a half-working solution:
- create a "gen-update.bb" [2], its only aim it to download the tagged
"update.cmake" [1]
- create a "gen-update-parser.bbclass" [3] to export the variables
Each sub-projects use them inside with "SRC_URI" and "inherit".

It has a lot of issues:
1/ the biggest one, everytime I change the "gen-update.bb" PV [2] and
generate a new image, every sub-projects fail with a "metadata is not
deterministic" [4]
   If I add a whitespace or simply run "touch" on the bb files bitbake
works again.
2/ the hard-coded file path inside "gen-update-parser.bbclass" [3]
   By the way I'm surprised it's in the "work/cortexa53-crypto-fslc-linux"
folder, not inside "work/all-fslc-linux"
3/ sometimes the "gen-update.bb" [2] is not unpacked and the parser fails

What would be the correct way to do that?
Thanks.


####################
[1] update.cmake:

set(PROJECT_FOO "1.2")
set(PROJECT_BAR "2.6")
...

####################
[2] gen-update.bb:

SRC_URI = "git://git@our_server
/gen-update.git;protocol=ssh;nobranch=1;tag=${PV}"
PV = "update-2.0"

####################
[3] gen-update-parser.bbclass:

python () {
    import re
    import glob

    with
open(glob.glob(d.expand('${BASE_WORKDIR}/cortexa53-crypto-fslc-linux/gen-update/*/git/update.cmake'))[0],
'r') as f:
        for line in f:
            vars = re.split("\(|\)|\s+", line)
            d.setVar(vars[1], vars[3].strip('\"'))
}

####################
[4] checksum mismatch error example:

ERROR: When reparsing project_foo.bb:do_patch, the basehash value changed
from 14abf321 to 4af89bb2. The metadata is not deterministic and this needs
to be fixed.

For each subprojects, multiple similar error messages for project_foo.bb:
do_patch/do_fetch/do_unpack/do_configure/do_compile/do_install...

--00000000000003f58406249c45aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, we use a script to generate updates for our product=
s; it is contained inside a git repo (let&#39;s call it &quot;gen-update&qu=
ot;) with a cmake file describing each sub-projects tags for the tagged upd=
ate (example [1]).<br>We also generate a new rootfs to have up-to-date mach=
ines during their manufacture.<br><br>I tried a few things and discovered t=
hat a recipe cannot export variables, and adding the &quot;gen-update&quot;=
 repo inside each sub-projects SRC_URI was not working because their PV nee=
d to be defined first.<br><br>I managed to get a half-working solution:<br>=
- create a &quot;<a href=3D"http://gen-update.bb">gen-update.bb</a>&quot; [=
2], its only aim it to download the tagged &quot;update.cmake&quot; [1]<br>=
- create a &quot;gen-update-parser.bbclass&quot; [3] to export the variable=
s<br>Each sub-projects use them inside with &quot;SRC_URI&quot; and &quot;i=
nherit&quot;.<br><br>It has a lot of issues:<br>1/ the biggest one, everyti=
me I change the &quot;<a href=3D"http://gen-update.bb">gen-update.bb</a>&qu=
ot; PV [2] and generate a new image, every sub-projects fail with a &quot;m=
etadata is not deterministic&quot; [4]<br>=C2=A0 =C2=A0If I add a whitespac=
e or simply run &quot;touch&quot; on the bb files bitbake works again.<br>2=
/ the hard-coded file path inside &quot;gen-update-parser.bbclass&quot; [3]=
<br>=C2=A0 =C2=A0By the way I&#39;m surprised it&#39;s in the &quot;work/co=
rtexa53-crypto-fslc-linux&quot; folder, not inside &quot;work/all-fslc-linu=
x&quot;<br>3/ sometimes the &quot;<a href=3D"http://gen-update.bb">gen-upda=
te.bb</a>&quot; [2] is not unpacked and the parser fails <br><br>What would=
 be the correct way to do that?<br>Thanks.<br><br><br>####################<=
br>[1] update.cmake:<br><br>set(PROJECT_FOO &quot;1.2&quot;)<br>set(PROJECT=
_BAR &quot;2.6&quot;)<br>...<br><br>####################<br>[2] <a href=3D"=
http://gen-update.bb">gen-update.bb</a>:<br><br>SRC_URI =3D &quot;git://git=
@our_server/gen-update.git;protocol=3Dssh;nobranch=3D1;tag=3D${PV}&quot;<br=
>PV =3D &quot;update-2.0&quot;<br><br>####################<br>[3] gen-updat=
e-parser.bbclass:<br><br>python () {<br>=C2=A0 =C2=A0 import re<br>=C2=A0 =
=C2=A0 import glob<br><br>=C2=A0 =C2=A0 with open(glob.glob(d.expand(&#39;$=
{BASE_WORKDIR}/cortexa53-crypto-fslc-linux/gen-update/*/git/update.cmake&#3=
9;))[0], &#39;r&#39;) as f:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in f:<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vars =3D re.split(&quot;\(|\)|\=
s+&quot;, line)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(vars[=
1], vars[3].strip(&#39;\&quot;&#39;))<br>}<br><br>####################<br>[=
4] checksum mismatch error example:<br><br>ERROR: When reparsing project_fo=
o.bb:do_patch, the basehash value changed from 14abf321 to 4af89bb2. The me=
tadata is not deterministic and this needs to be fixed.<br><br>For each sub=
projects, multiple similar error messages for project_foo.bb:do_patch/do_fe=
tch/do_unpack/do_configure/do_compile/do_install...<br></div>

--00000000000003f58406249c45aa--

