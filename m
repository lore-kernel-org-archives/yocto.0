Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web09.5892.1604417978458157651
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 07:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lj+6sYKT;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id j24so24693363ejc.11
        for <yocto@lists.yoctoproject.org>; Tue, 03 Nov 2020 07:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/E6veLlv1fdXqI7Mqv5bXry29u3Oyd63D6CFqV9UBk4=;
        b=Lj+6sYKT/XAj/xTVNyGP54VTMnYm4FlVWVJZiUoYbQP6V6i6k3UkGKoGh2YLHBp0Tb
         qQfOtHl7TNyQFktha0w7vD96HmhzrSkF/2y7hSayn32QphzY6NGgMctxeW6TT2sQjiuk
         S1DAkyJFyORVXe5gFTG6+0BZYji5Tr7pueEli/EMHnn0sAVH4u9eZfoeATns3GEX6Ng2
         1NDbggAhvDoCZuL/bIny+XEW4DwX+Jw3RQv/8sR2nHezUtziSvVPSB1yo8jlBhEWf3ok
         LBa73HGxf/V9XsFlzwfr3cKtIak8Zt3OxMozeLmoF1f+9lWYqZISzRz1Wtln7AhwwHLS
         G/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/E6veLlv1fdXqI7Mqv5bXry29u3Oyd63D6CFqV9UBk4=;
        b=KMqYe0ZUHk5B9EIC3tnaWMAfNW7f5Yl8kfQOwejhDII5MLA8Cdl4wrH2TurAxDMPvm
         qN/OT1n60s2ajluFst3ATFIfZwlkH8ucU6Xb2sU97a8LsmZzUbTLe2x4EcZj/lI+leTW
         Xl/lYSR8wlOGq/rkBudksV7JdAaB2iOpEETDwWZaSiUhqZWgi7Xv6roaY3Zc/fsIOwAE
         n+fU3LGN9oBvbpUAPZ6/RUqP18JRTFcx+IGaLdJ2o0y7gSDZL5g3ZQVwuW6g/u3EV2Au
         4S4Yc0NtNgAmRMsHkMGaAwFd8Z1WQGhwS6EqvBWW1blzNF5+vzsVprJEcytLmkZMHbAw
         w7XQ==
X-Gm-Message-State: AOAM530a/AZiiuGsxEZgzQQmgDEuw749IAwbT+CKD0J8fFj7tcL9ANda
	eHC9HnTaPYBEk/K/YzSSa9992Z9y7wy7H+ywlyE=
X-Google-Smtp-Source: ABdhPJx2KZ/5xRHFHsN9FmIytWhozK/tLZDGJ9CXIevEDS73zcU9rungqTJxaGNq5LDvxJXZxZ4ZbRPJ2L2QZ3qXh14=
X-Received: by 2002:a17:906:ca54:: with SMTP id jx20mr21676109ejb.541.1604417976948;
 Tue, 03 Nov 2020 07:39:36 -0800 (PST)
MIME-Version: 1.0
References: <VI1PR01MB64625A11D49D0373A1D1D6A9A8100@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
 <18906.1604414506455858702@lists.yoctoproject.org>
In-Reply-To: <18906.1604414506455858702@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 3 Nov 2020 16:39:25 +0100
Message-ID: <CA+chaQc5h=ROCtpn5CW+bJuf4JLj18TaOh3C8c-eDRq4Hwcmkg@mail.gmail.com>
Subject: Re: [yocto] #yocto -zeus
To: steven.monsees@baesystems.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000965eb405b335aba7"

--000000000000965eb405b335aba7
Content-Type: text/plain; charset="UTF-8"

> Note went and modified ./meta/recipes-core/ovmf/ovmf_git.bb to use
"http"...

That is clearly wrong, you shouldn't change the git:// at the beginning of
SRC_URI, just the ";protocol=git" to ";protocol=https" parameter later in
SRC_URI.

On Tue, Nov 3, 2020 at 3:41 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=baesystems.com@lists.yoctoproject.org>
wrote:

>
> Note went and modified ./meta/recipes-core/ovmf/ovmf_git.bb to use
> "http"...
>
> When I change to use http I get the following error now, NOTE: I see the
> same error with new check sum values every time I update checksums and
> rebuild...
>
> WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Checksum mismatch for
> local file
> /disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git
> Cleaning and trying again.
> WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Renaming
> /disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git to
> /disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git_bad-checksum_e5feebc5dc55e02d9d26c3ecce2f696c
> WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Checksum failure
> encountered with download of
> https://github.com/tianocore/edk2.git;branch=master;protocol=https - will
> attempt other sources if available
> ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for URL:
> 'https://github.com/tianocore/edk2.git;branch=master;protocol=https'.
> Checksum mismatch!
> File: '/disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git'
> has md5 checksum e5feebc5dc55e02d9d26c3ecce2f696c when
> b285f3c0bc1fc983c4c3eb2d47fc27bc was expected
> File: '/disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git'
> has sha256 checksum
> df09a56b38195dc68d1a83f31287e38669c165eb637739660216bbc71aa694af when
> bb9d1df02a645dcd071d2d0540156be96c3c5a616ef93ff9872bd86b3c35e77e was
> expected
> If this change is expected (e.g. you have upgraded to a new version
> without updating the checksums) then you can use these lines within the
> recipe:
> SRC_URI[md5sum] = "e5feebc5dc55e02d9d26c3ecce2f696c"
> SRC_URI[sha256sum] =
> "df09a56b38195dc68d1a83f31287e38669c165eb637739660216bbc71aa694af"
> Otherwise you should retry the download and/or check with upstream to
> determine if the file has become corrupted or otherwise unexpectedly
> modified.
>
> ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for URL:
> 'https://github.com/tianocore/edk2.git;branch=master;protocol=https'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/temp/log.do_fetch.19694
> ERROR: Task
> (virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch)
> failed with exit code '1'
>
> 
>
>

--000000000000965eb405b335aba7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; Note went and modified ./meta/recipes-core/ovmf/<a hr=
ef=3D"http://ovmf_git.bb/" target=3D"_blank">ovmf_git.bb</a>=C2=A0to use &q=
uot;http&quot;...<div><br></div><div>That is clearly wrong, you shouldn&#39=
;t change the git:// at the beginning=C2=A0of SRC_URI, just the &quot;;prot=
ocol=3Dgit&quot; to &quot;;protocol=3Dhttps&quot; parameter later in SRC_UR=
I.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Nov 3, 2020 at 3:41 PM Monsees, Steven C (US) via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;steven.m=
onsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.org">baesystem=
s.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p><br>Note went and modified ./meta/recipes-co=
re/ovmf/<a href=3D"http://ovmf_git.bb" target=3D"_blank">ovmf_git.bb</a> to=
 use &quot;http&quot;...<br><br>When I change to use http I get the followi=
ng error now,=C2=A0NOTE: I see the same error with new check sum values eve=
ry time I update checksums and rebuild...<br><br>WARNING: ovmf-native-edk2-=
stable201905-r0 do_fetch: Checksum mismatch for local file /disk0/scratch/s=
monsees/yocto/workspace_3/downloads/intel/edk2.git<br>Cleaning and trying a=
gain.<br>WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Renaming /disk=
0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git to /disk0/scr=
atch/smonsees/yocto/workspace_3/downloads/intel/edk2.git_bad-checksum_e5fee=
bc5dc55e02d9d26c3ecce2f696c<br>WARNING: ovmf-native-edk2-stable201905-r0 do=
_fetch: Checksum failure encountered with download of <a href=3D"https://gi=
thub.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps" target=3D"_bl=
ank">https://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps=
</a> - will attempt other sources if available<br>ERROR: ovmf-native-edk2-s=
table201905-r0 do_fetch: Fetcher failure for URL: &#39;<a href=3D"https://g=
ithub.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps" target=3D"_b=
lank">https://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttp=
s</a>&#39;. Checksum mismatch!<br>File: &#39;/disk0/scratch/smonsees/yocto/=
workspace_3/downloads/intel/edk2.git&#39; has md5 checksum e5feebc5dc55e02d=
9d26c3ecce2f696c when b285f3c0bc1fc983c4c3eb2d47fc27bc was expected<br>File=
: &#39;/disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git&#=
39; has sha256 checksum df09a56b38195dc68d1a83f31287e38669c165eb63773966021=
6bbc71aa694af when bb9d1df02a645dcd071d2d0540156be96c3c5a616ef93ff9872bd86b=
3c35e77e was expected<br>If this change is expected (e.g. you have upgraded=
 to a new version without updating the checksums) then you can use these li=
nes within the recipe:<br>SRC_URI[md5sum] =3D &quot;e5feebc5dc55e02d9d26c3e=
cce2f696c&quot;<br>SRC_URI[sha256sum] =3D &quot;df09a56b38195dc68d1a83f3128=
7e38669c165eb637739660216bbc71aa694af&quot;<br>Otherwise you should retry t=
he download and/or check with upstream to determine if the file has become =
corrupted or otherwise unexpectedly modified.</p>
<p>ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for U=
RL: &#39;<a href=3D"https://github.com/tianocore/edk2.git;branch=3Dmaster;p=
rotocol=3Dhttps" target=3D"_blank">https://github.com/tianocore/edk2.git;br=
anch=3Dmaster;protocol=3Dhttps</a>&#39;. Unable to fetch URL from any sourc=
e.<br>ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/wo=
rkspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovm=
f-native/edk2-stable201905-r0/temp/log.do_fetch.19694<br>ERROR: Task (virtu=
al:native:/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-core/=
ovmf/ovmf_git.bb:do_fetch) failed with exit code &#39;1&#39;</p>
<br>
<br>
<br>
</blockquote></div>

--000000000000965eb405b335aba7--
