Subject: #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (157.48.220.146)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 Jul 2021 23:26:08 -0700
Message-ID: <r3RP.1627021568007502036.uuv1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wVk1bIpQ7upVQVPjWFl5"

--wVk1bIpQ7upVQVPjWFl5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am facing below error while compiling consul package. can anybody know t=
his issue please suggest me.
ERROR: consul-git-r0 do_compile: Execution of '/home/sources/fu540-build/t=
mp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/run.do_compile.26832' fai=
led with exit code 2:
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
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cm=
sghdr.go:9:10: undefined: cmsghdr
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cm=
sghdr.go:10:10: undefined: cmsghdr
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/cm=
sghdr.go:11:10: undefined: cmsghdr
src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket/mm=
sghdr_unix.go:11:17: undefined: mmsghdr
encoding/csv
net/http/httptrace
internal/profile
runtime/pprof
net/http
# github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host
src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/hos=
t_linux.go:208:22: undefined: sizeOfUtmp
src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/hos=
t_linux.go:213:14: undefined: sizeOfUtmp
src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host/hos=
t_linux.go:215:9: undefined: utmp
# github.com/hashicorp/consul/vendor/github.com/boltdb/bolt
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_unix.go=
:62:15: undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.go:13=
5:15: undefined: brokenUnaligned
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:101:13=
: undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:317:12=
: undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:335:10=
: undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:336:8:=
 undefined: maxMapSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:=
169:19: undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:=
176:14: undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:=
204:17: undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:=
207:7: undefined: maxAllocSize
src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelist.go:=
207:7: too many errors
expvar
net/http/httptest
net/rpc
net/http/httputil
net/http/cookiejar
# github.com/hashicorp/consul/vendor/golang.org/x/sys/unix
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux=
_gc.go:10:6: missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_linux=
_gc.go:14:6: missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_=
gc.go:12:6: missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_=
gc.go:13:6: missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_=
gc.go:14:6: missing function body
src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_unix_=
gc.go:15:6: missing function body
net/http/pprof
WARNING: exit code 2 from a shell command.

ERROR: Logfile of failure stored in: /home/sources/fu540-build/tmp-glibc/w=
ork/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832

--
Regards,
Sateesh

--wVk1bIpQ7upVQVPjWFl5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br />
<div><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am facing be=
low error while compiling consul package. can anybody know this issue pleas=
e suggest me.&nbsp;<br />ERROR: consul-git-r0 do_compile: Execution of '/ho=
me/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/consul/git-r0/temp/r=
un.do_compile.26832' failed with exit code 2:</div>
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
<div>github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket</=
div>
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
<div>github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host</d=
iv>
<div>go/parser</div>
<div>go/doc</div>
<div>crypto/tls</div>
<div>net/mail</div>
<div>log/syslog</div>
<div>&nbsp;</div>
<div>encoding/xml</div>
<div># github.com/hashicorp/consul/vendor/golang.org/x/net/internal/socket=
</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/sock=
et/cmsghdr.go:9:10: undefined: cmsghdr</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/sock=
et/cmsghdr.go:10:10: undefined: cmsghdr</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/sock=
et/cmsghdr.go:11:10: undefined: cmsghdr</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/net/internal/sock=
et/mmsghdr_unix.go:11:17: undefined: mmsghdr</div>
<div>encoding/csv</div>
<div>net/http/httptrace</div>
<div>internal/profile</div>
<div>runtime/pprof</div>
<div>net/http</div>
<div># github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/host<=
/div>
<div>src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/hos=
t/host_linux.go:208:22: undefined: sizeOfUtmp</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/hos=
t/host_linux.go:213:14: undefined: sizeOfUtmp</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/shirou/gopsutil/hos=
t/host_linux.go:215:9: undefined: utmp</div>
<div># github.com/hashicorp/consul/vendor/github.com/boltdb/bolt</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bolt_un=
ix.go:62:15: undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/bucket.=
go:135:15: undefined: brokenUnaligned</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:1=
01:13: undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:3=
17:12: undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:3=
35:10: undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/db.go:3=
36:8: undefined: maxMapSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelis=
t.go:169:19: undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelis=
t.go:176:14: undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelis=
t.go:204:17: undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelis=
t.go:207:7: undefined: maxAllocSize</div>
<div>src/github.com/hashicorp/consul/vendor/github.com/boltdb/bolt/freelis=
t.go:207:7: too many errors</div>
<div>expvar</div>
<div>net/http/httptest</div>
<div>net/rpc</div>
<div>net/http/httputil</div>
<div>net/http/cookiejar</div>
<div># github.com/hashicorp/consul/vendor/golang.org/x/sys/unix</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_=
linux_gc.go:10:6: missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_=
linux_gc.go:14:6: missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_=
unix_gc.go:12:6: missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_=
unix_gc.go:13:6: missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_=
unix_gc.go:14:6: missing function body</div>
<div>src/github.com/hashicorp/consul/vendor/golang.org/x/sys/unix/syscall_=
unix_gc.go:15:6: missing function body</div>
<div>net/http/pprof</div>
<div>WARNING: exit code 2 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/sources/fu540-build/tmp-gl=
ibc/work/riscv64-oe-linux/consul/git-r0/temp/log.do_compile.26832</div>
<div>&nbsp;</div>
-- <br />Regards,<br />Sateesh

--wVk1bIpQ7upVQVPjWFl5--
