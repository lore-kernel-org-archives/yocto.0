Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.9727.1627382900993095209
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 03:48:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wa2Q0tBM;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: sateesh0457@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id v21so21432795ejg.1
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 03:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TakX4cZ/vR1wJJO22xPQRQpPtNmTdjnC4ZHdjNMtzaM=;
        b=Wa2Q0tBMISfOuEPmMRiSxczyTzABWoe4rIIEgg6ebevbpRtGHcyy8Q1Ie5v9hqIMu7
         g0eVcI/MgFMY6DT2FJwt6mCbF+jjpijBpeu7eFmtnXwtmphYtCEl/opz0hDkSC0crSjh
         cbD1iK6Kng0J9UJTjV/GZDv2m0MuHiGaxkN29wFp8bnFlVkSsuttOPL3H64Sk2yeDyrd
         UQGkaxccT8xi5gLKsh3cnV2nl0x072UyXOO5yKl/ULse0ZM0nNWVDifBEFK6c0QG62h6
         jZck7MlwmNZ4TOhgZbpA7b+PVkiSsxY0FLAqlPxtvx9qg5QtxX9LrsJnwc0ypTRvd8s+
         HFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TakX4cZ/vR1wJJO22xPQRQpPtNmTdjnC4ZHdjNMtzaM=;
        b=CL0LdrXoYXfRbafrue5n7/1k8MEaBS5C9t9TAT0tKDY4uUYm3TlNu8zJMdX7WvzQW5
         eUx9ul+YjP6E2JONuRg1gRw3tCwYCz+ZkRh4DVcK/jvtJ5hjl4twrZ/QWsZNb6SQ+eG7
         MnzV3lkd+WG85W67ry9qeZWstyZ501bQafAaVZgr06OtBZhrpn69iZQDB4dh+oz2h7mW
         1kOm8RBzfUT7zUfcWeTH+RDBto9kYnN0vjZ6ocjSmu6pJ7a+I0YgKSfgQ79PNvKwC6QJ
         51UcVfE3rwkpNTsL58WDgq4NQF/WFXBVvUQ3I5Qp4lgSFLCXVnBQQWI1SopTb0FTR34B
         f0qw==
X-Gm-Message-State: AOAM532q1CB1+aVYjGVyG2ezDEnXCgHM7dKlg+7qENbkszvswVjCca3G
	NgY6Cugx5pzghc5VGUhFeY3QSPwOy78kHILaAq8=
X-Google-Smtp-Source: ABdhPJyU88lMAi1l9QtultBsBiBg6N9dmuvSgS8SG/3Bl+pUleGNqWC2WYeuaZIg6QVJJZT8XH3gt0ooKOPm8utedew=
X-Received: by 2002:a17:906:76c1:: with SMTP id q1mr19518320ejn.156.1627382899460;
 Tue, 27 Jul 2021 03:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org> <1627034184052.2164886629.3854490787@optimcloud.com>
In-Reply-To: <1627034184052.2164886629.3854490787@optimcloud.com>
From: "sateesh m" <sateesh0457@gmail.com>
Date: Tue, 27 Jul 2021 16:18:08 +0530
Message-ID: <CACsETSsW1LsHumuMkLK+KJz9b-R-cKfnoYWdcnpZEjWdCWDyug@mail.gmail.com>
Subject: Re: [yocto] #yocto
To: Embedded Devel <yocto@optimcloud.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a2cfec05c8189bdc"

--000000000000a2cfec05c8189bdc
Content-Type: text/plain; charset="UTF-8"

Hi,

     I have cleared my cache state but also it's not compiling. Can you
suggest any other way ? Or any patchwork.


Thanks & Regards,
Sateesh

On Fri, 23 Jul 2021, 15:27 Embedded Devel, <yocto@optimcloud.com> wrote:

> maybe clear your build tmp cache sstate and rebuild
>
>
> On Friday 23 July 2021 13:26:08 PM (+07:00), sateesh m wrote:
>
> Hi Guys,
>
>               I am facing below error while compiling consul package. can
> anybody know this issue please suggest me.
> ERROR: consul-git-r0 do_compile: Execution of
> '/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/run.do_compile.26832'
> failed with exit code 2:
> internal/unsafeheader
> unicode/utf16
> container/list
> internal/cpu
> crypto/internal/subtle
> crypto/subtle
> vendor/golang.org/x/crypto/cryptobyte/asn1
> internal/nettrace
> vendor/golang.org/x/crypto/internal/subtle
> internal/race
> unicode/utf8
> runtime/internal/atomic
> sync/atomic
> internal/testlog
> runtime/internal/sys
> runtime/internal/math
> internal/bytealg
> encoding
> unicode
> math/bits
> math
> runtime
> internal/reflectlite
> sync
> errors
> internal/singleflight
> sort
> math/rand
> strconv
> internal/oserror
> io
> vendor/golang.org/x/net/dns/dnsmessage
> container/heap
> crypto/rc4
> reflect
> strings
> bytes
> syscall
> hash
> crypto
> crypto/internal/randutil
> crypto/hmac
> hash/crc32
> vendor/golang.org/x/crypto/hkdf
> bufio
> vendor/golang.org/x/text/transform
> path
> text/tabwriter
> regexp/syntax
> encoding/base32
> html
> hash/crc64
> hash/fnv
> internal/fmtsort
> hash/adler32
> encoding/binary
> regexp
> time
> internal/syscall/unix
> internal/syscall/execenv
> encoding/base64
> crypto/cipher
> crypto/sha512
> crypto/ed25519/internal/edwards25519
> crypto/md5
> crypto/aes
> crypto/des
> context
> crypto/sha1
> internal/poll
> crypto/sha256
> encoding/pem
> vendor/golang.org/x/crypto/chacha20
> vendor/golang.org/x/crypto/poly1305
> vendor/golang.org/x/crypto/chacha20poly1305
> os
> fmt
> path/filepath
> net
> io/ioutil
> encoding/json
> encoding/hex
> vendor/golang.org/x/net/http2/hpack
> mime
> mime/quotedprintable
> vendor/golang.org/x/crypto/curve25519
> os/signal
> log
> compress/flate
> vendor/golang.org/x/text/unicode/norm
> vendor/golang.org/x/text/unicode/bidi
> compress/gzip
> runtime/debug
> net/http/internal
> math/big
> net/textproto
> net/url
> go/token
> compress/lzw
> encoding/gob
> os/exec
> github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket
> vendor/golang.org/x/text/secure/bidirule
> vendor/golang.org/x/net/idna
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
> flag
> runtime/trace
> testing
> os/user
> encoding/asn1
> crypto/elliptic
> text/template/parse
> crypto/rand
> vendor/golang.org/x/crypto/cryptobyte
> crypto/ed25519
> crypto/rsa
> crypto/dsa
> crypto/x509/pkix
> mime/multipart
> vendor/golang.org/x/net/http/httpproxy
> vendor/golang.org/x/net/http/httpguts
> internal/lazyregexp
> go/scanner
> crypto/ecdsa
> text/template
> compress/zlib
> crypto/x509
> go/ast
> archive/tar
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt
> html/template
> github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host
> go/parser
> go/doc
> crypto/tls
> net/mail
> log/syslog
>
> encoding/xml
> # github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:9:10:
> undefined: cmsghdr
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:10:10:
> undefined: cmsghdr
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:11:10:
> undefined: cmsghdr
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/mmsghdr_unix.go:11:17:
> undefined: mmsghdr
> encoding/csv
> net/http/httptrace
> internal/profile
> runtime/pprof
> net/http
> # github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host
> src/
> github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:208:22:
> undefined: sizeOfUtmp
> src/
> github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:213:14:
> undefined: sizeOfUtmp
> src/
> github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:215:9:
> undefined: utmp
> # github.com/hashicorp/consul/vendor/github.com/boltdb/bolt
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_unix.go:62:15:
> undefined: maxMapSize
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.go:135:15:
> undefined: brokenUnaligned
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:101:13:
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:317:12:
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:335:10:
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:336:8:
> undefined: maxMapSize
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:169:19:
> undefined: maxAllocSize
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:176:14:
> undefined: maxAllocSize
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:204:17:
> undefined: maxAllocSize
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7:
> undefined: maxAllocSize
> src/
> github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7:
> too many errors
> expvar
> net/http/httptest
> net/rpc
> net/http/httputil
> net/http/cookiejar
> # github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:10:6:
> missing function body
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:14:6:
> missing function body
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:12:6:
> missing function body
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:13:6:
> missing function body
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:14:6:
> missing function body
> src/
> github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:15:6:
> missing function body
> net/http/pprof
> WARNING: exit code 2 from a shell command.
>
> ERROR: Logfile of failure stored in:
> /home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832
>
> --
> Regards,
> Sateesh
>
>
> --
> Sent with Vivaldi Mail. Download Vivaldi for free at vivaldi.com
>

--000000000000a2cfec05c8189bdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">=C2=A0 =
=C2=A0 =C2=A0I have cleared my cache state but also it&#39;s not compiling=
. Can you suggest any other way ? Or any patchwork.</div><div dir=3D"auto">=
<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks &amp; Regard=
s,</div><div dir=3D"auto">Sateesh</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 23 Jul 2021, 15:27 Embedded =
Devel, &lt;<a href=3D"mailto:yocto@optimcloud.com">yocto@optimcloud.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>maybe clear your b=
uild tmp cache sstate and=20
rebuild<div><br><br>On Friday 23 July 2021 13:26:08 PM (+07:00), sateesh m=
=
=20
wrote:<br><br><blockquote style=3D"margin:0 0 0.80ex;border-left:#0000ff 2=
px solid;padding-left:1ex">Hi Guys,<br>
<div><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I am facing belo=
w=20
error while compiling consul package. can anybody know this issue please=
=20
suggest me.=C2=A0<br>ERROR: consul-git-r0 do_compile: Execution of=20
&#39;/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-=
r0/temp/run.do_compile.26832&#39;=20
failed with exit code 2:</div>
<div>internal/unsafeheader</div>
<div>unicode/utf16</div>
<div>container/list</div>
<div>internal/cpu</div>
<div>crypto/internal/subtle</div>
<div>crypto/subtle</div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/cryptobyte/asn1" target=
=3D"_blank" rel=3D"noreferrer">golang.org/x/crypto/cryptobyte/asn1</a></di=
v>
<div>internal/nettrace</div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/internal/subtle" target=
=3D"_blank" rel=3D"noreferrer">golang.org/x/crypto/internal/subtle</a></di=
v>
<div>internal/race</div>
<div>unicode/utf8</div>
<div>runtime/internal/atomic</div>
<div>sync/atomic</div>
<div>internal/testlog</div>
<div>runtime/internal/sys</div>
<div>runtime/internal/math</div>
<div>internal/bytealg</div>
<div>encoding</div>
<div>unicode</div>
<div>math/bits</div>
<div>math</div>
<div>runtime</div>
<div>internal/reflectlite</div>
<div>sync</div>
<div>errors</div>
<div>internal/singleflight</div>
<div>sort</div>
<div>math/rand</div>
<div>strconv</div>
<div>internal/oserror</div>
<div>io</div>
<div>vendor/<a href=3D"http://golang.org/x/net/dns/dnsmessage" target=3D"_=
blank" rel=3D"noreferrer">golang.org/x/net/dns/dnsmessage</a></div>
<div>container/heap</div>
<div>crypto/rc4</div>
<div>reflect</div>
<div>strings</div>
<div>bytes</div>
<div>syscall</div>
<div>hash</div>
<div>crypto</div>
<div>crypto/internal/randutil</div>
<div>crypto/hmac</div>
<div>hash/crc32</div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/hkdf" target=3D"_blank" =
rel=3D"noreferrer">golang.org/x/crypto/hkdf</a></div>
<div>bufio</div>
<div>vendor/<a href=3D"http://golang.org/x/text/transform" target=3D"_blan=
k" rel=3D"noreferrer">golang.org/x/text/transform</a></div>
<div>path</div>
<div>text/tabwriter</div>
<div>regexp/syntax</div>
<div>encoding/base32</div>
<div>html</div>
<div>hash/crc64</div>
<div>hash/fnv</div>
<div>internal/fmtsort</div>
<div>hash/adler32</div>
<div>encoding/binary</div>
<div>regexp</div>
<div>time</div>
<div>internal/syscall/unix</div>
<div>internal/syscall/execenv</div>
<div>encoding/base64</div>
<div>crypto/cipher</div>
<div>crypto/sha512</div>
<div>crypto/ed25519/internal/edwards25519</div>
<div>crypto/md5</div>
<div>crypto/aes</div>
<div>crypto/des</div>
<div>context</div>
<div>crypto/sha1</div>
<div>internal/poll</div>
<div>crypto/sha256</div>
<div>encoding/pem</div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/chacha20" target=3D"_bla=
nk" rel=3D"noreferrer">golang.org/x/crypto/chacha20</a></div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/poly1305" target=3D"_bla=
nk" rel=3D"noreferrer">golang.org/x/crypto/poly1305</a></div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/chacha20poly1305" target=
=
=3D"_blank" rel=3D"noreferrer">golang.org/x/crypto/chacha20poly1305</a></d=
iv>
<div>os</div>
<div>fmt</div>
<div>path/filepath</div>
<div>net</div>
<div>io/ioutil</div>
<div>encoding/json</div>
<div>encoding/hex</div>
<div>vendor/<a href=3D"http://golang.org/x/net/http2/hpack" target=3D"_bla=
nk" rel=3D"noreferrer">golang.org/x/net/http2/hpack</a></div>
<div>mime</div>
<div>mime/quotedprintable</div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/curve25519" target=3D"_b=
lank" rel=3D"noreferrer">golang.org/x/crypto/curve25519</a></div>
<div>os/signal</div>
<div>log</div>
<div>compress/flate</div>
<div>vendor/<a href=3D"http://golang.org/x/text/unicode/norm" target=3D"_b=
lank" rel=3D"noreferrer">golang.org/x/text/unicode/norm</a></div>
<div>vendor/<a href=3D"http://golang.org/x/text/unicode/bidi" target=3D"_b=
lank" rel=3D"noreferrer">golang.org/x/text/unicode/bidi</a></div>
<div>compress/gzip</div>
<div>runtime/debug</div>
<div>net/http/internal</div>
<div>math/big</div>
<div>net/textproto</div>
<div>net/url</div>
<div>go/token</div>
<div>compress/lzw</div>
<div>encoding/gob</div>
<div>os/exec</div>
<div><a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x/net=
/internal/socket" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp=
/consul/vendor/golang.org/x/net/internal/socket</a></div>

<div>vendor/<a href=3D"http://golang.org/x/text/secure/bidirule" target=3D=
"_blank" rel=3D"noreferrer">golang.org/x/text/secure/bidirule</a></div>
<div>vendor/<a href=3D"http://golang.org/x/net/idna" target=3D"_blank" rel=
=
=3D"noreferrer">golang.org/x/net/idna</a></div>
<div><a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x/sys=
/unix" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/consul/ven=
dor/golang.org/x/sys/unix</a></div>
<div>flag</div>
<div>runtime/trace</div>
<div>testing</div>
<div>os/user</div>
<div>encoding/asn1</div>
<div>crypto/elliptic</div>
<div>text/template/parse</div>
<div>crypto/rand</div>
<div>vendor/<a href=3D"http://golang.org/x/crypto/cryptobyte" target=3D"_b=
lank" rel=3D"noreferrer">golang.org/x/crypto/cryptobyte</a></div>
<div>crypto/ed25519</div>
<div>crypto/rsa</div>
<div>crypto/dsa</div>
<div>crypto/x509/pkix</div>
<div>mime/multipart</div>
<div>vendor/<a href=3D"http://golang.org/x/net/http/httpproxy" target=3D"_=
blank" rel=3D"noreferrer">golang.org/x/net/http/httpproxy</a></div>
<div>vendor/<a href=3D"http://golang.org/x/net/http/httpguts" target=3D"_b=
lank" rel=3D"noreferrer">golang.org/x/net/http/httpguts</a></div>
<div>internal/lazyregexp</div>
<div>go/scanner</div>
<div>crypto/ecdsa</div>
<div>text/template</div>
<div>compress/zlib</div>
<div>crypto/x509</div>
<div>go/ast</div>
<div>archive/tar</div>
<div><a href=3D"http://github.com/hashicorp/consul/vendor/github.com/boltd=
b/bolt" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/consul/ve=
ndor/github.com/boltdb/bolt</a></div>
<div>html/template</div>
<div><a href=3D"http://github.com/hashicorp/consul/vendor/github.com/shiro=
u/gopsutil/host" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/=
consul/vendor/github.com/shirou/gopsutil/host</a></div>

<div>go/parser</div>
<div>go/doc</div>
<div>crypto/tls</div>
<div>net/mail</div>
<div>log/syslog</div>
<div>=C2=A0</div>
<div>encoding/xml</div>
<div>#=20
<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x/net/inte=
rnal/socket" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/cons=
ul/vendor/golang.org/x/net/internal/socket</a></div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/net/internal/socket/cmsghdr.go:9:10" target=3D"_blank" rel=3D"noreferrer">=
github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr=
.go:9:10</a>:=20
undefined: cmsghdr</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/net/internal/socket/cmsghdr.go:10:10" target=3D"_blank" rel=3D"noreferrer"=
>github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghd=
r.go:10:10</a>:=20
undefined: cmsghdr</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/net/internal/socket/cmsghdr.go:11:10" target=3D"_blank" rel=3D"noreferrer"=
>github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghd=
r.go:11:10</a>:=20
undefined: cmsghdr</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/net/internal/socket/mmsghdr_unix.go:11:17" target=3D"_blank" rel=3D"norefe=
rrer">github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/m=
msghdr_unix.go:11:17</a>:=20
undefined: mmsghdr</div>
<div>encoding/csv</div>
<div>net/http/httptrace</div>
<div>internal/profile</div>
<div>runtime/pprof</div>
<div>net/http</div>
<div>#=20
<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/shirou/gop=
sutil/host" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/consu=
l/vendor/github.com/shirou/gopsutil/host</a></div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/s=
hirou/gopsutil/host/host_linux.go:208:22" target=3D"_blank" rel=3D"noreferr=
er">github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host=
_linux.go:208:22</a>:=20
undefined: sizeOfUtmp</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/s=
hirou/gopsutil/host/host_linux.go:213:14" target=3D"_blank" rel=3D"noreferr=
er">github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host=
_linux.go:213:14</a>:=20
undefined: sizeOfUtmp</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/s=
hirou/gopsutil/host/host_linux.go:215:9" target=3D"_blank" rel=3D"noreferre=
r">github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_=
linux.go:215:9</a>:=20
undefined: utmp</div>
<div># <a href=3D"http://github.com/hashicorp/consul/vendor/github.com/bol=
tdb/bolt" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/consul/=
vendor/github.com/boltdb/bolt</a></div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/bolt_unix.go:62:15" target=3D"_blank" rel=3D"noreferrer">github.=
com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_unix.go:62:15</a>:=
=20
undefined: maxMapSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/bucket.go:135:15" target=3D"_blank" rel=3D"noreferrer">github.co=
m/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.go:135:15</a>:=20
undefined: brokenUnaligned</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/db.go:101:13" target=3D"_blank" rel=3D"noreferrer">github.com/ha=
shicorp/consul/vendor/github.com/boltdb/bolt/db.go:101:13</a>:=20
undefined: maxMapSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/db.go:317:12" target=3D"_blank" rel=3D"noreferrer">github.com/ha=
shicorp/consul/vendor/github.com/boltdb/bolt/db.go:317:12</a>:=20
undefined: maxMapSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/db.go:335:10" target=3D"_blank" rel=3D"noreferrer">github.com/ha=
shicorp/consul/vendor/github.com/boltdb/bolt/db.go:335:10</a>:=20
undefined: maxMapSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/db.go:336:8" target=3D"_blank" rel=3D"noreferrer">github.com/has=
hicorp/consul/vendor/github.com/boltdb/bolt/db.go:336:8</a>:=20
undefined: maxMapSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/freelist.go:169:19" target=3D"_blank" rel=3D"noreferrer">github.=
com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:169:19</a>:=
=20
undefined: maxAllocSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/freelist.go:176:14" target=3D"_blank" rel=3D"noreferrer">github.=
com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:176:14</a>:=
=20
undefined: maxAllocSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/freelist.go:204:17" target=3D"_blank" rel=3D"noreferrer">github.=
com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:204:17</a>:=
=20
undefined: maxAllocSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/freelist.go:207:7" target=3D"_blank" rel=3D"noreferrer">github.c=
om/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7</a>:=20
undefined: maxAllocSize</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/github.com/b=
oltdb/bolt/freelist.go:207:7" target=3D"_blank" rel=3D"noreferrer">github.c=
om/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7</a>:=20
too many errors</div>
<div>expvar</div>
<div>net/http/httptest</div>
<div>net/rpc</div>
<div>net/http/httputil</div>
<div>net/http/cookiejar</div>
<div># <a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x/s=
ys/unix" target=3D"_blank" rel=3D"noreferrer">github.com/hashicorp/consul/v=
endor/golang.org/x/sys/unix</a></div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_linux_gc.go:10:6" target=3D"_blank" rel=3D"noreferrer">gi=
thub.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:=
10:6</a>:=20
missing function body</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_linux_gc.go:14:6" target=3D"_blank" rel=3D"noreferrer">gi=
thub.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:=
14:6</a>:=20
missing function body</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_unix_gc.go:12:6" target=3D"_blank" rel=3D"noreferrer">git=
hub.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:12=
:6</a>:=20
missing function body</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_unix_gc.go:13:6" target=3D"_blank" rel=3D"noreferrer">git=
hub.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:13=
:6</a>:=20
missing function body</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_unix_gc.go:14:6" target=3D"_blank" rel=3D"noreferrer">git=
hub.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:14=
:6</a>:=20
missing function body</div>
<div>src/<a href=3D"http://github.com/hashicorp/consul/vendor/golang.org/x=
/sys/unix/syscall_unix_gc.go:15:6" target=3D"_blank" rel=3D"noreferrer">git=
hub.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:15=
:6</a>:=20
missing function body</div>
<div>net/http/pprof</div>
<div>WARNING: exit code 2 from a shell command.</div>
<div>=C2=A0</div>
<div>ERROR: Logfile of failure stored in:=20
/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/te=
mp/log.do_compile.26832</div>

<div>=C2=A0</div>
-- <br>Regards,<br>Sateesh
</blockquote><br>--=C2=A0<br>Sent with Vivaldi Mail. Download Vivaldi for=
=20
free at <a href=3D"http://vivaldi.com" target=3D"_blank" rel=3D"noreferrer=
">vivaldi.com</a></div></div></blockquote></div>
<br>-- <br>Regards,<br />Sateesh

--000000000000a2cfec05c8189bdc--
