Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web08.2662.1627399141507596161
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 08:19:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bovPz1Ns;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: sateesh0457@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id gn26so16568948ejc.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 08:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cHVhovdFmA5h9CyARA+6ZL+LEdhoml2LT5QqUaryl1o=;
        b=bovPz1NsB9OD4D+36DciF6ojKSvIyaDIX+GPvBYhpiV4YPSs0R1tvkLNW/mY8k0kIm
         hLZrO7OmhFi/+886hylroYfeVlDbKUiJ22mz5BrOVT+7r0CE7KjaCHC70umqF5lE2wqb
         mY743Iqtfc83LW2rZqYGie3ZXB2MLga8ApQVIAG9jdJjKWVf70TdtE1qlqslBEAeO4rK
         oeNuOiPjqiHNIIX82+Lmk/ipIMEYK2L+X7f1WyPPVyl5GVoiRUW2jyz+4kKoPaNeAGHR
         riZc+vOVE9h41zBzPeTiUzvjHqumxQUBD5Pb3MFjbcl3xvWHJYMdvcMBhwJJmL+ZZnl0
         iYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cHVhovdFmA5h9CyARA+6ZL+LEdhoml2LT5QqUaryl1o=;
        b=IW9L30gFyiSfsDfR0erZgGKSbL0f1zNrPLUjSAiNcqhhrm+FZ58ySYndzbxVVzGpl8
         P8/rWs5DbsKiXM1EouOwapzlLBI3mCAPSB2fDQPj3PW7mOmrCb8H+1A7Rsn4/oPJ7AQu
         k+4riNG8j0Wq8VVA85CXNFMsm5PEKa5l/qL/U5sF3S2Sei5mYhHvAC9/qx0v21Kjvq48
         SWy0L2nASbMt+rcdZskRRb9BNso13JseQ7O+daC2iDd4YKHrrf4ix03FFv9LPna/b7XV
         uQua8QR+7+rq+y2FhU7CaH9ppseiRHeHE3wZbK+MsG39DyveHD/jWT6UYOHC838u8s9M
         KJQw==
X-Gm-Message-State: AOAM530dhv/stXuoBTpeHjywrvpuKTFYl11k19yFbDOViPSJ7m84QsHd
	yvA2oVcyp/x71Om/PK0VDIne6lhzObz6uTTviEs=
X-Google-Smtp-Source: ABdhPJxf9692Afynwk2bUOKNDbfBDFUaCdzKt4ln+/JTXBNjcuVHi3u+loisx5kJltbCrKbpHvpC1swmjPnZ+S9If4c=
X-Received: by 2002:a17:906:95ce:: with SMTP id n14mr12999536ejy.130.1627399139985;
 Tue, 27 Jul 2021 08:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org> <3786375082f11b9a0943edbb786cbfc219b089d0.camel@delisys.ch>
In-Reply-To: <3786375082f11b9a0943edbb786cbfc219b089d0.camel@delisys.ch>
From: "sateesh m" <sateesh0457@gmail.com>
Date: Tue, 27 Jul 2021 20:48:47 +0530
Message-ID: <CACsETSvURF1AojSw+-Q45ALOcaCoAQF4-iCSsRD0DOH9=i6X3Q@mail.gmail.com>
Subject: Re: [yocto] #yocto
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a58c4e05c81c6317"

--000000000000a58c4e05c81c6317
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll check them out.

On Tue, 27 Jul 2021, 18:17 Nicolas Jeker, <n.jeker@delisys.ch> wrote:

> On Thu, 2021-07-22 at 23:26 -0700, sateesh m wrote:
> > Hi Guys,
> >
> >               I am facing below error while compiling consul package.
> > can anybody know this issue please suggest me.
> > ERROR: consul-git-r0 do_compile: Execution of '/home/sources/fu540-
> > build/tmp-glibc/work/riscv64-oe-linux/consul/git-
> > r0/temp/run.do_compile.26832' failed with exit code 2:
> > internal/unsafeheader
> > unicode/utf16
> > container/list
> > internal/cpu
> >
> <snip>
> > # github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
> > src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> > linux_gc.go:10:6: missing function body
> > src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> > linux_gc.go:14:6: missing function body
> > src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> > unix_gc.go:12:6: missing function body
> > src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> > unix_gc.go:13:6: missing function body
> > src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> > unix_gc.go:14:6: missing function body
> > src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> > unix_gc.go:15:6: missing function body
>
> Searching for these error messages I found a comment on GitHub [1]
> which states that this is caused by missing assembly syscall wrappers.
>
> Experimental support for RISC-V was added in Go 1.14 [2] and improved
> in the next two versions, so make sure you use at least 1.14.
>
> If the problem persists, I suggest to ask in a dedicated RISC-V or Go
> forum/mailing list/chat.
>
> I don't have any experience with Go or RISC-V, so take this information
> with a grain of salt.
>
> [1]: https://github.com/golang/go/issues/27532#issuecomment-493384077
> [2]: https://golang.org/doc/go1.14#riscv
>
> > net/http/pprof
> > WARNING: exit code 2 from a shell command.
> >
> > ERROR: Logfile of failure stored in: /home/sources/fu540-build/tmp-
> > glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832
> >
> > --
> > Regards,
> > Sateesh
>
>
>

--000000000000a58c4e05c81c6317
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks, I&#39;ll check them out.=C2=A0</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 27 Jul 2021=
, 18:17 Nicolas Jeker, &lt;<a href=3D"mailto:n.jeker@delisys.ch">n.jeker@de=
lisys.ch</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, 202=
1-07-22 at 23:26 -0700, sateesh m wrote:<br>
&gt; Hi Guys,<br>
&gt; <br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I am facing below er=
ror while compiling consul package.<br>
&gt; can anybody know this issue please suggest me.=C2=A0<br>
&gt; ERROR: consul-git-r0 do_compile: Execution of &#39;/home/sources/fu54=
0-<br>
&gt; build/tmp-glibc/work/riscv64-oe-linux/consul/git-<br>
&gt; r0/temp/run.do_compile.26832&#39; failed with exit code 2:<br>
&gt; internal/unsafeheader<br>
&gt; unicode/utf16<br>
&gt; container/list<br>
&gt; internal/cpu<br>
&gt; <br>
&lt;snip&gt;<br>
&gt; # <a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x/s=
ys/unix" rel=3D"noreferrer noreferrer" target=3D"_blank">github.com/hashico=
rp/consul/vendor/golang.org/x/sys/unix</a><br>
&gt; src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_" rel=3D"noreferrer noreferrer" target=3D"_blank">github.=
com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_</a><br>
&gt; linux_gc.go:10:6: missing function body<br>
&gt; src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_" rel=3D"noreferrer noreferrer" target=3D"_blank">github.=
com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_</a><br>
&gt; linux_gc.go:14:6: missing function body<br>
&gt; src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_" rel=3D"noreferrer noreferrer" target=3D"_blank">github.=
com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_</a><br>
&gt; unix_gc.go:12:6: missing function body<br>
&gt; src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_" rel=3D"noreferrer noreferrer" target=3D"_blank">github.=
com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_</a><br>
&gt; unix_gc.go:13:6: missing function body<br>
&gt; src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_" rel=3D"noreferrer noreferrer" target=3D"_blank">github.=
com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_</a><br>
&gt; unix_gc.go:14:6: missing function body<br>
&gt; src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_" rel=3D"noreferrer noreferrer" target=3D"_blank">github.=
com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_</a><br>
&gt; unix_gc.go:15:6: missing function body<br>
<br>
Searching for these error messages I found a comment on GitHub [1]<br>
which states that this is caused by missing assembly syscall wrappers.<br>
<br>
Experimental support for RISC-V was added in Go 1.14 [2] and improved<br>
in the next two versions, so make sure you use at least 1.14.<br>
<br>
If the problem persists, I suggest to ask in a dedicated RISC-V or Go<br>
forum/mailing list/chat.<br>
<br>
I don&#39;t have any experience with Go or RISC-V, so take this informatio=
n<br>
with a grain of salt.<br>
<br>
[1]: <a href=3D"https://github.com/golang/go/issues/27532#issuecomment-493=
384077" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/=
golang/go/issues/27532#issuecomment-493384077</a><br>
[2]: <a href=3D"https://golang.org/doc/go1.14#riscv" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://golang.org/doc/go1.14#riscv</a><br>
<br>
&gt; net/http/pprof<br>
&gt; WARNING: exit code 2 from a shell command.<br>
&gt; =C2=A0<br>
&gt; ERROR: Logfile of failure stored in: /home/sources/fu540-build/tmp-<b=
r>
&gt; glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832<b=
r>
&gt; =C2=A0<br>
&gt; -- <br>
&gt; Regards,<br>
&gt; Sateesh<br>
<br>
<br>
</blockquote></div>
<br>-- <br>Regards,<br />Sateesh

--000000000000a58c4e05c81c6317--
