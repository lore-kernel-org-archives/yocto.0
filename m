Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.5058.1627409044393399580
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 11:04:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gs1lP0wQ;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id ca5so428466pjb.5
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 11:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lBN7Ua35qEKyPE6QcVKDhc9lrAmcz/Yf/9y325WlhRE=;
        b=Gs1lP0wQ4A5zTzd4IxFbxNst1mcca1JNs08k8VWaJhBm8J60e1yluEoVqsVawuGjr9
         SekxkypmAyoVdgzw7JGOUxIWwk1KZ8XCR4QOPoxoGXOqBtMQu7s/Wti2J9yyD/BjQOEo
         Wlx/Lz4gxMpo39/EabojF8sIJckKK/ZYEpzZERzEatj1z0erJwrTNHW294yyMeUS/XpC
         iG3/y3vx55YLIsptfMxExEBXADNpSpUCStLBb9tyTD6hec458FOMLEmlK8kitiwVCaRo
         KQudAzio/wD7uBw/Njy2GykTv9+F+VxcydZQpAZwWMAQ/wCNvmy+N3oyoFDVYOjoSoPd
         XWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=lBN7Ua35qEKyPE6QcVKDhc9lrAmcz/Yf/9y325WlhRE=;
        b=uBMgDuq3GXTHIN9ZVldp/QkFfOPe8UcM7u6X9suL2Nw9QBMulX8P2y3ak6NyqZN0oP
         NA0H3qR7yFE+uGCQfyntT0a3XM/RD7ms/z0G6W53FAA2DGuLh3kWANyYFwktDZvoXSuK
         DDQUyqGnFfkjSb0tzCl5dM75rJHIW4Eu1JabDC1ljsTwNe5bn+4nDVq32NlVgMUGvqR6
         92sqqpeP1cy8rGYPa5heDW1vMl9vHLwxdSan2UkYtNdbHvMXoFIAHCaFl3/kFD6U7A23
         gbksLbo7AUfbKPX54BOnutdLbQhj7kqY7Jd1z3cznKFtyqs9xT2OdqsFR0ZZVHwAth3i
         N2IQ==
X-Gm-Message-State: AOAM5318oz3Txksx8S7gun0YX0N0x6kmpOehjVSl1hnzbHAu+ZYjx4cO
	th8QmNXn+DCqmZ8vVCbDQPCex7yv89xqjg==
X-Google-Smtp-Source: ABdhPJzeGjqjNY+GLaoTzWylSx5r9WY0gk4+SD2k7I5XNkGuh4UJaNXqMTg+Ar9YEta7T6+H0dTbfw==
X-Received: by 2002:a63:a0f:: with SMTP id 15mr11736192pgk.80.1627409043590;
        Tue, 27 Jul 2021 11:04:03 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:4888:96cd:7ffd:e939? ([2601:646:9200:a0f0:4888:96cd:7ffd:e939])
        by smtp.gmail.com with ESMTPSA id z11sm295730pjq.13.2021.07.27.11.04.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 11:04:02 -0700 (PDT)
Subject: Re: [yocto] #yocto
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
References: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <2314bf18-3725-2adb-e249-daf54cb79032@gmail.com>
Date: Tue, 27 Jul 2021 11:04:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

you need a patch like this

https://patches.openembedded.org/patch/169519/

On 7/22/21 11:26 PM, sateesh m wrote:
> Hi Guys,
> 
>                I am facing below error while compiling consul package. 
> can anybody know this issue please suggest me.
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
> encoding/xml
> # github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket
> src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:9:10: 
> undefined: cmsghdr
> src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:10:10: 
> undefined: cmsghdr
> src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:11:10: 
> undefined: cmsghdr
> src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/mmsghdr_unix.go:11:17: 
> undefined: mmsghdr
> encoding/csv
> net/http/httptrace
> internal/profile
> runtime/pprof
> net/http
> # github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host
> src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:208:22: 
> undefined: sizeOfUtmp
> src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:213:14: 
> undefined: sizeOfUtmp
> src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:215:9: 
> undefined: utmp
> # github.com/hashicorp/consul/vendor/github.com/boltdb/bolt
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_unix.go:62:15: 
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.go:135:15: 
> undefined: brokenUnaligned
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:101:13: 
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:317:12: 
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:335:10: 
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:336:8: 
> undefined: maxMapSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:169:19: 
> undefined: maxAllocSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:176:14: 
> undefined: maxAllocSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:204:17: 
> undefined: maxAllocSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7: 
> undefined: maxAllocSize
> src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7: 
> too many errors
> expvar
> net/http/httptest
> net/rpc
> net/http/httputil
> net/http/cookiejar
> # github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:10:6: 
> missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:14:6: 
> missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:12:6: 
> missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:13:6: 
> missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:14:6: 
> missing function body
> src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:15:6: 
> missing function body
> net/http/pprof
> WARNING: exit code 2 from a shell command.
> ERROR: Logfile of failure stored in: 
> /home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832
> -- 
> Regards,
> Sateesh
> 
> 
> 
> 
