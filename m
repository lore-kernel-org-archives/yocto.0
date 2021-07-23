Received: from mx01.optimcloud.com (mx01.optimcloud.com [46.23.89.156])
 by mx.groups.io with SMTP id smtpd.web12.6149.1627034241204370673
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jul 2021 02:57:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=f5th0P58;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.89.156, mailfrom: yocto@optimcloud.com)
Received: from mx01.optimcloud.com (localhost [127.0.0.1])
	by mx01.optimcloud.com (OpenSMTPD) with ESMTP id 7c508368;
	Fri, 23 Jul 2021 11:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:in-reply-to
	:references:mime-version; s=obsd; bh=Xx8AMjmYdhqV1/evPcqdAnINCqG
	ZVuBl8zl9dbn/0Gk=; b=f5th0P58PPNG3GVHkKoel1hVGq+SWfICyKtPGCeY5MK
	anBfmrhNzNLyKhFSOxwpmXiIfuZf7t/W7O1E4j4Bi484H96XI+Rf8w85Gk4Ils2U
	jsnzVfTa8PZqStwjK/Sck4OO8w49aviteDVEDcHwmHtU56oXYO2MSVc83ktOxYrT
	C5UjfJXpPMBXY+qxkqcmrtgpvul02E3CsRou47Wydakm6Q0grWHafS1IBJTzzBQl
	btafr8cxLS5eRrcKDw/wSeCEBwT/9SSqpOWXrneAFNUd/JEcXZ7UfVHaf2pA92yd
	sNU5SgC9WKWzVV1llTihAjqwlay5Gdk/EAz0LZHqUeA==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:in-reply-to
	:references:mime-version; q=dns; s=obsd; b=eFdUhKWGT7Z4lJwilcoXo
	EaEU4bp9scVj8G8qE0JTh9uXTz6w8iiucuWrHKRLgsf1n1mSM5BMDVCzVueCGoBQ
	3cmdpMKnSUsL4gS3T9gVmi8KhhkoBD8vNQOA21vHbTAQGMDN7ozCBdEZZiD4JEYv
	fvEueU/i119GWolcEw3sHOdiSegqt0ICTyOU6646EJTsptVFU+F4OxQBIhkic7ed
	OxrSKqsC3yViIOEn9mBJOyQjZJ7UWADKPDpj7xJAiaAokIDnchx6VVo2NeYTn45Q
	DaA9WML2tkiP/dcP4ELVnqFW00Jno2/G1xOC124RPoLaDcUin3y4Cf8JExbF2l19
	A==
Received: 
	by mx01.optimcloud.com (OpenSMTPD) with ESMTPSA id 03d4ce97 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com;
	Fri, 23 Jul 2021 11:57:17 +0200 (CEST)
Message-Id: <1627034184052.2164886629.3854490787@optimcloud.com>
From: "Yocto" <yocto@optimcloud.com>
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto
Date: Fri, 23 Jul 2021 09:57:12 +0000
In-Reply-To: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
References: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="----sinikael-?=_1-16270342325870.6752113794321226"

------sinikael-?=_1-16270342325870.6752113794321226
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

maybe clear your build tmp cache sstate and rebuild


On Friday 23 July 2021 13:26:08 PM (+07:00), sateesh m wrote:


Hi Guys,


               I am facing below error while compiling consul package. can 
anybody know this issue please suggest me. 
ERROR: consul-git-r0 do_compile: Execution of 
'/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/run.do_compile.26832' 
failed with exit code 2:
internal/unsafeheader
unicode/utf16
container/list
internal/cpu
crypto/internal/subtle
crypto/subtle
vendor/golang.org/x/crypto/cryptobyte/asn1
internal/nettrace
vendor/golang.org/x/crypto/internal/subtle
internal/race
unicode/utf8
runtime/internal/atomic
sync/atomic
internal/testlog
runtime/internal/sys
runtime/internal/math
internal/bytealg
encoding
unicode
math/bits
math
runtime
internal/reflectlite
sync
errors
internal/singleflight
sort
math/rand
strconv
internal/oserror
io
vendor/golang.org/x/net/dns/dnsmessage
container/heap
crypto/rc4
reflect
strings
bytes
syscall
hash
crypto
crypto/internal/randutil
crypto/hmac
hash/crc32
vendor/golang.org/x/crypto/hkdf
bufio
vendor/golang.org/x/text/transform
path
text/tabwriter
regexp/syntax
encoding/base32
html
hash/crc64
hash/fnv
internal/fmtsort
hash/adler32
encoding/binary
regexp
time
internal/syscall/unix
internal/syscall/execenv
encoding/base64
crypto/cipher
crypto/sha512
crypto/ed25519/internal/edwards25519
crypto/md5
crypto/aes
crypto/des
context
crypto/sha1
internal/poll
crypto/sha256
encoding/pem
vendor/golang.org/x/crypto/chacha20
vendor/golang.org/x/crypto/poly1305
vendor/golang.org/x/crypto/chacha20poly1305
os
fmt
path/filepath
net
io/ioutil
encoding/json
encoding/hex
vendor/golang.org/x/net/http2/hpack
mime
mime/quotedprintable
vendor/golang.org/x/crypto/curve25519
os/signal
log
compress/flate
vendor/golang.org/x/text/unicode/norm
vendor/golang.org/x/text/unicode/bidi
compress/gzip
runtime/debug
net/http/internal
math/big
net/textproto
net/url
go/token
compress/lzw
encoding/gob
os/exec
github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket
vendor/golang.org/x/text/secure/bidirule
vendor/golang.org/x/net/idna
github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
flag
runtime/trace
testing
os/user
encoding/asn1
crypto/elliptic
text/template/parse
crypto/rand
vendor/golang.org/x/crypto/cryptobyte
crypto/ed25519
crypto/rsa
crypto/dsa
crypto/x509/pkix
mime/multipart
vendor/golang.org/x/net/http/httpproxy
vendor/golang.org/x/net/http/httpguts
internal/lazyregexp
go/scanner
crypto/ecdsa
text/template
compress/zlib
crypto/x509
go/ast
archive/tar
github.com/hashicorp/consul/vendor/github.com/boltdb/bolt
html/template
github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host
go/parser
go/doc
crypto/tls
net/mail
log/syslog
  
encoding/xml
# github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:9:10: 
undefined: cmsghdr
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:10:10: 
undefined: cmsghdr
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:11:10: 
undefined: cmsghdr
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/mmsghdr_unix.go:11:17: 
undefined: mmsghdr
encoding/csv
net/http/httptrace
internal/profile
runtime/pprof
net/http
# github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host
src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:208:22: 
undefined: sizeOfUtmp
src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:213:14: 
undefined: sizeOfUtmp
src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:215:9: 
undefined: utmp
# github.com/hashicorp/consul/vendor/github.com/boltdb/bolt
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_unix.go:62:15: 
undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.go:135:15: 
undefined: brokenUnaligned
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:101:13: 
undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:317:12: 
undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:335:10: 
undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:336:8: 
undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:169:19: 
undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:176:14: 
undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:204:17: 
undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7: 
undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7: 
too many errors
expvar
net/http/httptest
net/rpc
net/http/httputil
net/http/cookiejar
# github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:10:6: 
missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:14:6: 
missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:12:6: 
missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:13:6: 
missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:14:6: 
missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:15:6: 
missing function body
net/http/pprof
WARNING: exit code 2 from a shell command.
  
ERROR: Logfile of failure stored in: 
/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832
  

--
Regards,
Sateesh

-- 
Sent with Vivaldi Mail. Download Vivaldi for free at vivaldi.com

------sinikael-?=_1-16270342325870.6752113794321226
Content-Type: text/html; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

<html><head></head><body>maybe clear your build tmp cache sstate and 
rebuild<div><br><br>On Friday 23 July 2021 13:26:08 PM (+07:00), sateesh m 
wrote:<br><br><blockquote style="margin: 0 0 0.80ex; border-left: #0000FF 
2px solid; padding-left: 1ex">Hi Guys,<br>
<div><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am facing below 
error while compiling consul package. can anybody know this issue please 
suggest me.&nbsp;<br>ERROR: consul-git-r0 do_compile: Execution of 
'/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/run.do_compile.26832' 
failed with exit code 2:</div>
<div>internal/unsafeheader</div>
<div>unicode/utf16</div>
<div>container/list</div>
<div>internal/cpu</div>
<div>crypto/internal/subtle</div>
<div>crypto/subtle</div>
<div>vendor/golang.org/x/crypto/cryptobyte/asn1</div>
<div>internal/nettrace</div>
<div>vendor/golang.org/x/crypto/internal/subtle</div>
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
<div>vendor/golang.org/x/net/dns/dnsmessage</div>
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
<div>vendor/golang.org/x/crypto/hkdf</div>
<div>bufio</div>
<div>vendor/golang.org/x/text/transform</div>
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
<div>vendor/golang.org/x/crypto/chacha20</div>
<div>vendor/golang.org/x/crypto/poly1305</div>
<div>vendor/golang.org/x/crypto/chacha20poly1305</div>
<div>os</div>
<div>fmt</div>
<div>path/filepath</div>
<div>net</div>
<div>io/ioutil</div>
<div>encoding/json</div>
<div>encoding/hex</div>
<div>vendor/golang.org/x/net/http2/hpack</div>
<div>mime</div>
<div>mime/quotedprintable</div>
<div>vendor/golang.org/x/crypto/curve25519</div>
<div>os/signal</div>
<div>log</div>
<div>compress/flate</div>
<div>vendor/golang.org/x/text/unicode/norm</div>
<div>vendor/golang.org/x/text/unicode/bidi</div>
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
<div>github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket</div>

<div>vendor/golang.org/x/text/secure/bidirule</div>
<div>vendor/golang.org/x/net/idna</div>
<div>github.com/hashicorp/consul/vendor/golang.org/x/sys/unix</div>
<div>flag</div>
<div>runtime/trace</div>
<div>testing</div>
<div>os/user</div>
<div>encoding/asn1</div>
<div>crypto/elliptic</div>
<div>text/template/parse</div>
<div>crypto/rand</div>
<div>vendor/golang.org/x/crypto/cryptobyte</div>
<div>crypto/ed25519</div>
<div>crypto/rsa</div>
<div>crypto/dsa</div>
<div>crypto/x509/pkix</div>
<div>mime/multipart</div>
<div>vendor/golang.org/x/net/http/httpproxy</div>
<div>vendor/golang.org/x/net/http/httpguts</div>
<div>internal/lazyregexp</div>
<div>go/scanner</div>
<div>crypto/ecdsa</div>
<div>text/template</div>
<div>compress/zlib</div>
<div>crypto/x509</div>
<div>go/ast</div>
<div>archive/tar</div>
<div>github.com/hashicorp/consul/vendor/github.com/boltdb/bolt</div>
<div>html/template</div>
<div>github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host</div>

<div>go/parser</div>
<div>go/doc</div>
<div>crypto/tls</div>
<div>net/mail</div>
<div>log/syslog</div>
<div>&nbsp;</div>
<div>encoding/xml</div>
<div># 
github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:9:10: 
undefined: cmsghdr</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:10:10: 
undefined: cmsghdr</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cmsghdr.go:11:10: 
undefined: cmsghdr</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/mmsghdr_unix.go:11:17: 
undefined: mmsghdr</div>
<div>encoding/csv</div>
<div>net/http/httptrace</div>
<div>internal/profile</div>
<div>runtime/pprof</div>
<div>net/http</div>
<div># 
github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:208:22: 
undefined: sizeOfUtmp</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:213:14: 
undefined: sizeOfUtmp</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/host_linux.go:215:9: 
undefined: utmp</div>
<div># github.com/hashicorp/consul/vendor/github.com/boltdb/bolt</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_unix.go:62:15: 
undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.go:135:15: 
undefined: brokenUnaligned</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:101:13: 
undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:317:12: 
undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:335:10: 
undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:336:8: 
undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:169:19: 
undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:176:14: 
undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:204:17: 
undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7: 
undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:207:7: 
too many errors</div>
<div>expvar</div>
<div>net/http/httptest</div>
<div>net/rpc</div>
<div>net/http/httputil</div>
<div>net/http/cookiejar</div>
<div># github.com/hashicorp/consul/vendor/golang.org/x/sys/unix</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:10:6: 
missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux_gc.go:14:6: 
missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:12:6: 
missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:13:6: 
missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:14:6: 
missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_gc.go:15:6: 
missing function body</div>
<div>net/http/pprof</div>
<div>WARNING: exit code 2 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: 
/home/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832</div>

<div>&nbsp;</div>
-- <br>Regards,<br>Sateesh
</blockquote><br>--&nbsp;<br>Sent with Vivaldi Mail. Download Vivaldi for 
free at vivaldi.com</div></body></html>

------sinikael-?=_1-16270342325870.6752113794321226--
