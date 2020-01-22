Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web10.98.1579726128546469366
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 12:48:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZEqZMpmw;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id p191so334828vkf.8
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2020 12:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hrILWjnVgRWcPQEQBJUuIOttHZEdqTubcWv7ZQvJGJg=;
        b=ZEqZMpmwEvDHzjqNHnQpw6iCz/k2CZOq0DbnjP3qC7anSpiXoS0Bbsd27TRCofMbrw
         qyJMRVTkvLrEm2iwO25r9m6ZBzGmzIJesGWtEMIOYahGzytSfG4vMLYmvakddahPze6Z
         pgBq0jshg6Sl+mvY7POMM5Ld/8limgtc+ZuzzAaFY8u0ARXteHzY0ImgGMQSKpMyyb6n
         QnUubYk6dm9UKBLKYAhjZqe3fhAihfOqxP368q0y3B35oqnkZHIjIXGb7aYsCQmCfJtI
         uECy74QE7f0ENRGTu7szK+uYclQruwui6fUs1mS6BThgpwvgYZyoi+Qr4qO7Sl9fiqU3
         InkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hrILWjnVgRWcPQEQBJUuIOttHZEdqTubcWv7ZQvJGJg=;
        b=qWJYIKk4K18ANab+D5Li0iSPdJmzu+szIYokfp36cgUO8pmk6n4iqGCG2g/ekh6/73
         GUIil/cTorqeObCsBC0+kOgfXvYwYIX0EpoHcqv9SGtXNqlTLCheLF2g3yoQTrP6NojH
         cQiNOHGjoU+coB0LR1t3tdXwAP74TyzjIdIhdj2fL0siuGkZSPhW7YGEG+QqvZWK8suE
         N9J0DH/Osu/mwxMUmag7RRKNuX1UiWff72E+MotZK+fk5+AC91a2bJNunDNDXUUSPJuS
         svxZiLuO0RrgnqlqygIguZSNPAp/0c611dXYIIlAVWmag/NjkcVSgRzE67AIOX/zrM3d
         Z34g==
X-Gm-Message-State: APjAAAXQNIHlSxk8J8FZOdsAMFsDT9J7DCI0WAeYJMSbBCnIuNAiTnrq
	Gi0YyxYJYLUWdtAO0KVlPLtgmd6pHXO9sp7cLw8=
X-Google-Smtp-Source: APXvYqyaYgd8i3zGH2HJG+L9K5R5OJMymF8YLZ+FtrjkP90TwDkuVm6wR43Zeb4v6UWkQ58xnk8RHWTvlnhBx5HFvuM=
X-Received: by 2002:a05:6122:2b6:: with SMTP id 22mr7482847vkq.49.1579726127681;
 Wed, 22 Jan 2020 12:48:47 -0800 (PST)
MIME-Version: 1.0
References: <AM4PR05MB3380ED2DBB7FB292BA411E8FA80C0@AM4PR05MB3380.eurprd05.prod.outlook.com>
In-Reply-To: <AM4PR05MB3380ED2DBB7FB292BA411E8FA80C0@AM4PR05MB3380.eurprd05.prod.outlook.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 22 Jan 2020 21:48:36 +0100
Message-ID: <CANNYZj-azKAJky6sxQS9r=Ev36nrJzQ0uPoj0ffK_RzBM9NYzg@mail.gmail.com>
Subject: Re: [yocto] Prevent tools from host to be used
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aed4af059cc0a6b6"

--000000000000aed4af059cc0a6b6
Content-Type: text/plain; charset="UTF-8"

If the tool is executed with a direct path in a script e.g.
#!/usr/bin/python

or the host path is hardcoded inside a binary, there's nothing you can do
(other than temporarily rename python to something else, and fix all
instances of breakage to use #!/usr/bin/env python).

If the execution relies on PATH, then native tool paths are always in the
front of host paths. So you only need to DEPEND on the native tool you
want, and it will be picked over the one from the host. Note that tools
from hosts are additionally sanitized via a whitelist, so only a limited
subset is available to begin with (see HOSTTOOLS variable).

Alex

On Wed, 22 Jan 2020 at 21:38, Konrad Weihmann <kweihmann@outlook.com> wrote:

> Hi all,
>
> it maybe a already solved, very trivial thing to do, but is there any
> way in bitbake to prevent that a tool from the build host is executed
> instead of the same tool (maybe) available via the sysroot-native?
>
> In shell I would typically do (e.g.) something like this
>
> python() { echo "Custom python used"; /path/to/my/custom/python $@ }
>
> python -c ...
>
> In bitbake this is somehow hard to catch, as tools are usually picked
> from PATH, which is extended while executing a parsed recipe and
> therefore involves the host way to much.
>
> Really useful would be if one could define such a thing within a recipe
> like
>
> HIDETOOL_python = "nativepython"
>
> which then will be translated into
>
> python() { nativepython $@ }
>
> or something similar, in the resulting run scripts, so it doesn't matter
> if any script sourced afterwards using some fixed shebang/assumption.
>
> This would clearly minimize the effort of making sources work within
> yocto, so one doesn't have to rely on multiple containers and CI to
> catch all those host->build-conterminations.
>
> One could surely inject it into the PATH-var, but what I want is to
> "redirect" certain calls to any reasonable binary I can think off,
> instead of relying on the PATH order.
> I had this multiple times with python scripts being "shebanged" onto a
> certain python version, although not really needed, which I currently
> can only solve by modifying the sources.
>
> Any thoughts, suggestions?
>
> Regards
>
> Konrad
>
> 
>

--000000000000aed4af059cc0a6b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If the tool is executed with a direct path in a scrip=
t e.g.</div><div>#!/usr/bin/python</div><div><br></div><div>or the host pat=
h is hardcoded inside a binary, there&#39;s nothing you can do (other than =
temporarily rename python to something else, and fix all instances of break=
age to use #!/usr/bin/env python).</div><div><br></div><div>If the executio=
n relies on PATH, then native tool paths are always in the front of host pa=
ths. So you only need to DEPEND on the native tool you want, and it will be=
 picked over the one from the host. Note that tools from hosts are addition=
ally sanitized via a whitelist, so only a limited subset is available to be=
gin with (see HOSTTOOLS variable).</div><div><br></div><div>Alex<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, 22 Jan 2020 at 21:38, Konrad Weihmann &lt;<a href=3D"mailto:kweihman=
n@outlook.com">kweihmann@outlook.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
it maybe a already solved, very trivial thing to do, but is there any <br>
way in bitbake to prevent that a tool from the build host is executed <br>
instead of the same tool (maybe) available via the sysroot-native?<br>
<br>
In shell I would typically do (e.g.) something like this<br>
<br>
python() { echo &quot;Custom python used&quot;; /path/to/my/custom/python =
$@ }<br>
<br>
python -c ...<br>
<br>
In bitbake this is somehow hard to catch, as tools are usually picked <br>
from PATH, which is extended while executing a parsed recipe and <br>
therefore involves the host way to much.<br>
<br>
Really useful would be if one could define such a thing within a recipe li=
ke<br>
<br>
HIDETOOL_python =3D &quot;nativepython&quot;<br>
<br>
which then will be translated into<br>
<br>
python() { nativepython $@ }<br>
<br>
or something similar, in the resulting run scripts, so it doesn&#39;t matt=
er <br>
if any script sourced afterwards using some fixed shebang/assumption.<br>
<br>
This would clearly minimize the effort of making sources work within <br>
yocto, so one doesn&#39;t have to rely on multiple containers and CI to <b=
r>
catch all those host-&gt;build-conterminations.<br>
<br>
One could surely inject it into the PATH-var, but what I want is to <br>
&quot;redirect&quot; certain calls to any reasonable binary I can think of=
f, <br>
instead of relying on the PATH order.<br>
I had this multiple times with python scripts being &quot;shebanged&quot; =
onto a <br>
certain python version, although not really needed, which I currently <br>
can only solve by modifying the sources.<br>
<br>
Any thoughts, suggestions?<br>
<br>
Regards<br>
<br>
Konrad<br>
<br>
<br>
</blockquote></div>

--000000000000aed4af059cc0a6b6--
