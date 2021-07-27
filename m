Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.615.1627390032672410990
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 05:47:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1m8MUI-0003d9-7J; Tue, 27 Jul 2021 14:47:10 +0200
Message-ID: <3786375082f11b9a0943edbb786cbfc219b089d0.camel@delisys.ch>
Subject: Re: [yocto] #yocto
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Tue, 27 Jul 2021 14:47:09 +0200
In-Reply-To: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
References: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1627390032;8c3b76b8;
X-HE-SMSGID: 1m8MUI-0003d9-7J
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-07-22 at 23:26 -0700, sateesh m wrote:
> Hi Guys,
> 
>               I am facing below error while compiling consul package.
> can anybody know this issue please suggest me. 
> ERROR: consul-git-r0 do_compile: Execution of '/home/sources/fu540-
> build/tmp-glibc/work/riscv64-oe-linux/consul/git-
> r0/temp/run.do_compile.26832' failed with exit code 2:
> internal/unsafeheader
> unicode/utf16
> container/list
> internal/cpu
> 
<snip>
> # github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> linux_gc.go:10:6: missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> linux_gc.go:14:6: missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> unix_gc.go:12:6: missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> unix_gc.go:13:6: missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> unix_gc.go:14:6: missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_
> unix_gc.go:15:6: missing function body

Searching for these error messages I found a comment on GitHub [1]
which states that this is caused by missing assembly syscall wrappers.

Experimental support for RISC-V was added in Go 1.14 [2] and improved
in the next two versions, so make sure you use at least 1.14.

If the problem persists, I suggest to ask in a dedicated RISC-V or Go
forum/mailing list/chat.

I don't have any experience with Go or RISC-V, so take this information
with a grain of salt.

[1]: https://github.com/golang/go/issues/27532#issuecomment-493384077
[2]: https://golang.org/doc/go1.14#riscv

> net/http/pprof
> WARNING: exit code 2 from a shell command.
>  
> ERROR: Logfile of failure stored in: /home/sources/fu540-build/tmp-
> glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832
>  
> -- 
> Regards,
> Sateesh


