Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AFB3E00BF3; Wed, 28 Jun 2017 12:39:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.173 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4342AE00BDC
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 12:39:16 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id s66so38304324pfs.1
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 12:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=mqVURMXS0ZBAWuGCAr1i35ZWDUbnPI62HiCPN9x38xM=;
	b=Hol3FF0/LJ8nrgeHWyfoW5h0m2L1TPg2Xjg17eu5iUXtNnR/puGrl0VXyiZ1tQk9MF
	ED9UgmYFef574ZRToObJFm3KP0KJSlZFOG2l0EGAxKFX/tHiP5MaNPsWntZob6Dt/n5j
	r9PuzuBIXtFoxhTCy6B+60vgE6qoP78j9Veo34PDJ2tg4PWHZjxPsFiPmnnzl2MED6dI
	GqsaiLffliPyQLPCEcanf0aVjQpYkmPaRgEuvbMS9n12mhsvTF2XDaVT7tGIaU8+VD9I
	jmIbRJ8txZAEtT7EHlC3ZJO+ssEoTP1NlmCBK7BZOscw17xBjUWnOX2tvMTgIuMjE1aO
	lC3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=mqVURMXS0ZBAWuGCAr1i35ZWDUbnPI62HiCPN9x38xM=;
	b=Nj2WQo7SSXYH4SkNDI75A104E/Cu0fBPbpx64BbCnqRCfS/JFqehdr38Mg3IaKVo4I
	KTdfquprboQjhaIzNwxZu0C+0W4WcOudAvnXWMaOKvlY2JnarQ82pF17Os+ep/F/B4cK
	rnXjUCGWLRxvYldihY4PYzHEcXwFQLvgzjCLttvlxeVQ1dRpv6vch7dElrKEv6wVvCOB
	raV44nkmBDn3TVrSNm8F+iRFA2yL0trf5vGwXKMx4LMHYn7i9E9Q7B+tYYrblsSw2hym
	Ua69WOfuyIdVaNLede4vU1ii5s8u8Ds3OKtcyCoRwi/IUjMWOLTTl7UZKFjZr0sKqpJE
	K9rQ==
X-Gm-Message-State: AKS2vOzTS6DJ8YKjY609OyG905MdX4otAvMMEq27KkcYB8XuNinNWwAO
	a3voNYQiXmvJbQ7X9PU=
X-Received: by 10.98.20.21 with SMTP id 21mr12515036pfu.29.1498678756116;
	Wed, 28 Jun 2017 12:39:16 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	t83sm6975580pfg.91.2017.06.28.12.39.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jun 2017 12:39:15 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <63d13fc4-c19c-5850-5358-397a61c6673b@gmail.com>
Date: Wed, 28 Jun 2017 12:39:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Saving all files using source mirror isn't capturing build packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Jun 2017 19:39:30 -0000
Content-Type: multipart/alternative;
	boundary="------------D13FE8C4A491FAD651749661"
Content-Language: en-US

--------------D13FE8C4A491FAD651749661
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,


I'm trying to save the entire build PLUS the tools used to create the=20
build and I'm finding that when I initially perform the


bitbake -c fetchall b2qt-embedded-qt5-image

followed by a copy of the required downloaded .tar.gz files to the=20
mirror directory and then creating a new build directory  ( with new=20
local.conf and bb.layers ) with the lines

SOURCE_MIRROR_URL ?=3D "file://media/build/mirror/"
INHERIT +=3D "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS =3D "1"
BB_NO_NETWORK =3D "1"

and I try to build , I get errors saying that certain Native tools are=20
missing like gcc-source, bison-native, flex-native...etc

Example

>
> Initialising tasks: 100%=20
> |######################################################################=
######################################|=20
> Time: 0:00:06
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: gcc-source-6.2.0-6.2.0-r0 do_fetch: Network access disabled=20
> through BB_NO_NETWORK (or set indirectly due to use of=20
> BB_FETCH_PREMIRRORONLY) but access requested with command /usr/bin/env =

> wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P=20
> /media/build/NewestBuild/build-nitrogen6x/../downloads=20
> 'http://ftp.gnu.org/gnu/gcc/gcc-6.2.0/gcc-6.2.0.tar.bz2' (for url None)=

> ERROR: gcc-source-6.2.0-6.2.0-r0 do_fetch: Function failed: base_do_fet=
ch
> ERROR: Logfile of failure stored in:=20
> /media/build/NewestBuild/build-nitrogen6x/tmp/work-shared/gcc-6.2.0-r0/=
temp/log.do_fetch.30899
> ERROR: Task=20
> (/media/build/NewestBuild/sources/poky/meta/recipes-devtools/gcc/gcc-so=
urce_6.2.bb:do_fetch)=20
> failed with exit code '1'
> ERROR: bison-native-3.0.4-r0 do_unpack: Unpack failure for URL:=20
> 'http://ftp.gnu.org/gnu/bison/bison-3.0.4.tar.xz'. Unpack command=20
> PATH=3D"/media/build/NewestBuild/sources/poky/scripts/native-intercept:=
/media/build/NewestBuild/build-nitrogen6x/tmp/sysroots/x86_64-linux/usr/b=
in/texinfo-dummy-native:/media/build/NewestBuild/build-nitrogen6x/tmp/sys=
roots-uninative/x86_64-linux/usr/bin:/media/build/NewestBuild/sources/pok=
y/scripts:/media/build/NewestBuild/build-nitrogen6x/tmp/sysroots/x86_64-l=
inux/usr/bin/x86_64-linux:/media/build/NewestBuild/build-nitrogen6x/tmp/s=
ysroots/x86_64-linux/usr/bin:/media/build/NewestBuild/build-nitrogen6x/tm=
p/sysroots/x86_64-linux/usr/sbin:/media/build/NewestBuild/build-nitrogen6=
x/tmp/sysroots/x86_64-linux/usr/bin:/media/build/NewestBuild/build-nitrog=
en6x/tmp/sysroots/x86_64-linux/sbin:/media/build/NewestBuild/build-nitrog=
en6x/tmp/sysroots/x86_64-linux/bin:/media/build/NewestBuild/sources/poky/=
scripts:/media/build/NewestBuild/sources/poky/bitbake/bin:/media/build/Ne=
wBuild:/home/jdamon/.rvm/gems/ruby-2.4.0/bin:/home/jdamon/.rvm/gems/ruby-=
2.4.0@global/bin:/home/jdamon/.rvm/rubies/ruby-2.4.0/bin:/home/jdamon/.rv=
m/bin:/usr/bin:/bin:/sbin:/sbin:/bin:/usr/bin:/usr/local/bin:/usr/sbin:/h=
ome/jdamon/Scripts:/usr/games:/usr/lib/lapack:/opt/local/bin:/home/jdamon=
/Tools/bin:/home/jdamon/Scripts/Work:/home/jdamon/Tools/android-sdk-linux=
/platform-tools:/home/jdamon/Tools/android-ndk-r10e:/Developer/SDKs/andro=
id-sdk-mac_86/tools/:/opt/local/lib/mysql5/bin:/usr/share/apache-maven-3.=
0.5/bin:/home/jdamon/.rvm/bin:/home/jdamon/.rvm/bin:/home/jdamon/.rvm/bin=
"=20
> xz -dc=20
> /media/build/NewestBuild/build-nitrogen6x/../downloads/bison-3.0.4.tar.=
xz=20
> | tar x --no-same-owner -f - failed with return value 2
> ERROR: bison-native-3.0.4-r0 do_unpack: Function failed: base_do_unpack=

> ERROR: Logfile of failure stored in:=20
> /media/build/NewestBuild/build-nitrogen6x/tmp/work/x86_64-linux/bison-n=
ative/3.0.4-r0/temp/log.do_unpack.30904
> ERROR: Task=20
> (virtual:native:/media/build/NewestBuild/sources/poky/meta/recipes-devt=
ools/bison/bison_3.0.4.bb:do_unpack)=20
> failed with exit code '1'
> ERROR: flex-native-2.6.0-r0 do_fetch: Network access disabled through=20
> BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) =

> but access requested with command /usr/bin/env wget -t 2 -T 30 -nv=20
> --passive-ftp --no-check-certificate -P=20
> /media/build/NewestBuild/build-nitrogen6x/../downloads=20
> 'http://downloads.sourceforge.net/flex/flex-2.6.0.tar.bz2' (for url Non=
e)
> ERROR: flex-native-2.6.0-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:=20
> /media/build/NewestBuild/build-nitrogen6x/tmp/work/x86_64-linux/flex-na=
tive/2.6.0-r0/temp/log.do_fetch.30905
> ERROR: Task=20
> (virtual:native:/media/build/NewestBuild/sources/poky/meta/recipes-devt=
ools/flex/flex_2.6.0.bb:do_fetch)=20
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 92 tasks of which 83 didn't need to be=20
> rerun and 3 failed.


Why aren't these being downloaded when I did my initial fetchall ?

Also, what is the way to capture all of the required packages for an=20
image AND the development tools required to build the image ?


Thanks



--------------D13FE8C4A491FAD651749661
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+CiAgPGhlYWQ+CgogICAgPG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBj
b250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPgogIDwvaGVhZD4KICA8Ym9keSB0
ZXh0PSIjMDAwMDAwIiBiZ2NvbG9yPSIjRkZGRkZGIj4KICAgIDxwPjxmb250IGZhY2U9Ik1v
bmFjbyI+SGksPC9mb250PjwvcD4KICAgIDxwPjxmb250IGZhY2U9Ik1vbmFjbyI+PGJyPgog
ICAgICA8L2ZvbnQ+PC9wPgogICAgPHA+PGZvbnQgZmFjZT0iTW9uYWNvIj5JJ20gdHJ5aW5n
IHRvIHNhdmUgdGhlIGVudGlyZSBidWlsZCBQTFVTIHRoZQogICAgICAgIHRvb2xzIHVzZWQg
dG8gY3JlYXRlIHRoZSBidWlsZCBhbmQgSSdtIGZpbmRpbmcgdGhhdCB3aGVuIEkgaW5pdGlh
bGx5CiAgICAgICAgcGVyZm9ybSB0aGU8L2ZvbnQ+PC9wPgogICAgPHA+PGZvbnQgZmFjZT0i
TW9uYWNvIj48YnI+CiAgICAgIDwvZm9udD48L3A+CiAgICA8cD48Zm9udCBmYWNlPSJNb25h
Y28iPmJpdGJha2UgLWMgZmV0Y2hhbGwgPC9mb250PmIycXQtZW1iZWRkZWQtcXQ1LWltYWdl
PC9wPgogICAgPHA+Zm9sbG93ZWQgYnkgYSBjb3B5IG9mIHRoZSByZXF1aXJlZCBkb3dubG9h
ZGVkIC50YXIuZ3ogZmlsZXMgdG8KICAgICAgdGhlIG1pcnJvciBkaXJlY3RvcnkgYW5kIHRo
ZW4gY3JlYXRpbmcgYSBuZXcgYnVpbGQgZGlyZWN0b3J5wqAgKAogICAgICB3aXRoIG5ldyBs
b2NhbC5jb25mIGFuZCBiYi5sYXllcnMgKSB3aXRoIHRoZSBsaW5lczwvcD4KICAgIDxwPlNP
VVJDRV9NSVJST1JfVVJMID89IDxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiIGhy
ZWY9ImZpbGU6Ly9tZWRpYS9idWlsZC9taXJyb3IvIj4iZmlsZTovL21lZGlhL2J1aWxkL21p
cnJvci8iPC9hPjxicj4KICAgICAgSU5IRVJJVCArPSAib3duLW1pcnJvcnMiIDxicj4KICAg
ICAgQkJfR0VORVJBVEVfTUlSUk9SX1RBUkJBTExTID0gIjEiIDxicj4KICAgICAgQkJfTk9f
TkVUV09SSyA9ICIxIjxicj4KICAgIDwvcD4KICAgIDxwPmFuZCBJIHRyeSB0byBidWlsZCAs
IEkgZ2V0IGVycm9ycyBzYXlpbmcgdGhhdCBjZXJ0YWluIE5hdGl2ZQogICAgICB0b29scyBh
cmUgbWlzc2luZyBsaWtlIGdjYy1zb3VyY2UsIGJpc29uLW5hdGl2ZSwgZmxleC1uYXRpdmUu
Li5ldGM8L3A+CiAgICA8cD5FeGFtcGxlPC9wPgogICAgPHA+CiAgICAgIDxibG9ja3F1b3Rl
IHR5cGU9ImNpdGUiPjxicj4KICAgICAgICBJbml0aWFsaXNpbmcgdGFza3M6IDEwMCUKfCMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wK
ICAgICAgICBUaW1lOiAwOjAwOjA2PGJyPgogICAgICAgIE5PVEU6IEV4ZWN1dGluZyBTZXRT
Y2VuZSBUYXNrczxicj4KICAgICAgICBOT1RFOiBFeGVjdXRpbmcgUnVuUXVldWUgVGFza3M8
YnI+CiAgICAgICAgRVJST1I6IGdjYy1zb3VyY2UtNi4yLjAtNi4yLjAtcjAgZG9fZmV0Y2g6
IE5ldHdvcmsgYWNjZXNzCiAgICAgICAgZGlzYWJsZWQgdGhyb3VnaCBCQl9OT19ORVRXT1JL
IChvciBzZXQgaW5kaXJlY3RseSBkdWUgdG8gdXNlIG9mCiAgICAgICAgQkJfRkVUQ0hfUFJF
TUlSUk9ST05MWSkgYnV0IGFjY2VzcyByZXF1ZXN0ZWQgd2l0aCBjb21tYW5kCiAgICAgICAg
L3Vzci9iaW4vZW52IHdnZXQgLXQgMiAtVCAzMCAtbnYgLS1wYXNzaXZlLWZ0cAogICAgICAg
IC0tbm8tY2hlY2stY2VydGlmaWNhdGUgLVAKICAgICAgICAvbWVkaWEvYnVpbGQvTmV3ZXN0
QnVpbGQvYnVpbGQtbml0cm9nZW42eC8uLi9kb3dubG9hZHMKICAgICAgICAnPGEgY2xhc3M9
Im1vei10eHQtbGluay1mcmVldGV4dCIgaHJlZj0iaHR0cDovL2Z0cC5nbnUub3JnL2dudS9n
Y2MvZ2NjLTYuMi4wL2djYy02LjIuMC50YXIuYnoyIj5odHRwOi8vZnRwLmdudS5vcmcvZ251
L2djYy9nY2MtNi4yLjAvZ2NjLTYuMi4wLnRhci5iejI8L2E+JyAoZm9yCiAgICAgICAgdXJs
IE5vbmUpPGJyPgogICAgICAgIEVSUk9SOiBnY2Mtc291cmNlLTYuMi4wLTYuMi4wLXIwIGRv
X2ZldGNoOiBGdW5jdGlvbiBmYWlsZWQ6CiAgICAgICAgYmFzZV9kb19mZXRjaDxicj4KICAg
ICAgICBFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjoKL21lZGlhL2J1aWxk
L05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvdG1wL3dvcmstc2hhcmVkL2djYy02LjIu
MC1yMC90ZW1wL2xvZy5kb19mZXRjaC4zMDg5OTxicj4KICAgICAgICBFUlJPUjogVGFzawoo
L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL3NvdXJjZXMvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvZ2NjL2djYy1zb3VyY2VfNi4yLmJiOmRvX2ZldGNoKQogICAgICAgIGZhaWxlZCB3
aXRoIGV4aXQgY29kZSAnMSc8YnI+CiAgICAgICAgRVJST1I6IGJpc29uLW5hdGl2ZS0zLjAu
NC1yMCBkb191bnBhY2s6IFVucGFjayBmYWlsdXJlIGZvciBVUkw6CiAgICAgICAgJzxhIGNs
YXNzPSJtb3otdHh0LWxpbmstZnJlZXRleHQiIGhyZWY9Imh0dHA6Ly9mdHAuZ251Lm9yZy9n
bnUvYmlzb24vYmlzb24tMy4wLjQudGFyLnh6Ij5odHRwOi8vZnRwLmdudS5vcmcvZ251L2Jp
c29uL2Jpc29uLTMuMC40LnRhci54ejwvYT4nLiBVbnBhY2sKICAgICAgICBjb21tYW5kClBB
VEg9PGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOi9tZWRp
YS9idWlsZC9OZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvc2NyaXB0cy9uYXRpdmUtaW50ZXJj
ZXB0Oi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNy
b290cy94ODZfNjQtbGludXgvdXNyL2Jpbi90ZXhpbmZvLWR1bW15LW5hdGl2ZTovbWVkaWEv
YnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMtdW5pbmF0
aXZlL3g4Nl82NC1saW51eC91c3IvYmluOi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9zb3Vy
Y2VzL3Bva3kvc2NyaXB0czovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9n
ZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9iaW4veDg2XzY0LWxpbnV4Oi9t
ZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNyb290cy94
ODZfNjQtbGludXgvdXNyL2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0
cm9nZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9zYmluOi9tZWRpYS9idWls
ZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNyb290cy94ODZfNjQtbGlu
dXgvdXNyL2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9nZW42eC90
bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3NiaW46L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxk
L2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC9iaW46L21lZGlh
L2J1aWxkL05ld2VzdEJ1aWxkL3NvdXJjZXMvcG9reS9zY3JpcHRzOi9tZWRpYS9idWlsZC9O
ZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvYml0YmFrZS9iaW46L21lZGlhL2J1aWxkL05ld0J1
aWxkOi9ob21lL2pkYW1vbi8ucnZtL2dlbXMvcnVieS0yLjQuMC9iaW46L2hvbWUvamRhbW9u
Ly5ydm0vZ2Vtcy9ydWJ5LTIuNC4wQGdsb2JhbC9iaW46L2hvbWUvamRhbW9uLy5ydm0vcnVi
aWVzL3J1YnktMi40LjAvYmluOi9ob21lL2pkYW1vbi8ucnZtL2JpbjovdXNyL2JpbjovYmlu
Oi9zYmluOi9zYmluOi9iaW46L3Vzci9iaW46L3Vzci9sb2NhbC9iaW46L3Vzci9zYmluOi9o
b21lL2pkYW1vbi9TY3JpcHRzOi91c3IvZ2FtZXM6L3Vzci9saWIvbGFwYWNrOi9vcHQvbG9j
YWwvYmluOi9ob21lL2pkYW1vbi9Ub29scy9iaW46L2hvbWUvamRhbW9uL1NjcmlwdHMvV29y
azovaG9tZS9qZGFtb24vVG9vbHMvYW5kcm9pZC1zZGstbGludXgvcGxhdGZvcm0tdG9vbHM6
L2hvbWUvamRhbW9uL1Rvb2xzL2FuZHJvaWQtbmRrLXIxMGU6L0RldmVsb3Blci9TREtzL2Fu
ZHJvaWQtc2RrLW1hY184Ni90b29scy86L29wdC9sb2NhbC9saWIvbXlzcWw1L2JpbjovdXNy
L3NoYXJlL2FwYWNoZS1tYXZlbi0zLjAuNS9iaW46L2hvbWUvamRhbW9uLy5ydm0vYmluOi9o
b21lL2pkYW1vbi8ucnZtL2JpbjovaG9tZS9qZGFtb24vLnJ2bS9iaW4iPiIvbWVkaWEvYnVp
bGQvTmV3ZXN0QnVpbGQvc291cmNlcy9wb2t5L3NjcmlwdHMvbmF0aXZlLWludGVyY2VwdDov
bWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMv
eDg2XzY0LWxpbnV4L3Vzci9iaW4vdGV4aW5mby1kdW1teS1uYXRpdmU6L21lZGlhL2J1aWxk
L05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5c3Jvb3RzLXVuaW5hdGl2ZS94
ODZfNjQtbGludXgvdXNyL2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvc291cmNlcy9w
b2t5L3NjcmlwdHM6L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngv
dG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL3g4Nl82NC1saW51eDovbWVkaWEv
YnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMveDg2XzY0
LWxpbnV4L3Vzci9iaW46L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2Vu
NngvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Ivc2JpbjovbWVkaWEvYnVpbGQvTmV3
ZXN0QnVpbGQvYnVpbGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vz
ci9iaW46L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5
c3Jvb3RzL3g4Nl82NC1saW51eC9zYmluOi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWls
ZC1uaXRyb2dlbjZ4L3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvYmluOi9tZWRpYS9idWls
ZC9OZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvc2NyaXB0czovbWVkaWEvYnVpbGQvTmV3ZXN0
QnVpbGQvc291cmNlcy9wb2t5L2JpdGJha2UvYmluOi9tZWRpYS9idWlsZC9OZXdCdWlsZDov
aG9tZS9qZGFtb24vLnJ2bS9nZW1zL3J1YnktMi40LjAvYmluOi9ob21lL2pkYW1vbi8ucnZt
L2dlbXMvcnVieS0yLjQuMEBnbG9iYWwvYmluOi9ob21lL2pkYW1vbi8ucnZtL3J1Ymllcy9y
dWJ5LTIuNC4wL2JpbjovaG9tZS9qZGFtb24vLnJ2bS9iaW46L3Vzci9iaW46L2Jpbjovc2Jp
bjovc2JpbjovYmluOi91c3IvYmluOi91c3IvbG9jYWwvYmluOi91c3Ivc2JpbjovaG9tZS9q
ZGFtb24vU2NyaXB0czovdXNyL2dhbWVzOi91c3IvbGliL2xhcGFjazovb3B0L2xvY2FsL2Jp
bjovaG9tZS9qZGFtb24vVG9vbHMvYmluOi9ob21lL2pkYW1vbi9TY3JpcHRzL1dvcms6L2hv
bWUvamRhbW9uL1Rvb2xzL2FuZHJvaWQtc2RrLWxpbnV4L3BsYXRmb3JtLXRvb2xzOi9ob21l
L2pkYW1vbi9Ub29scy9hbmRyb2lkLW5kay1yMTBlOi9EZXZlbG9wZXIvU0RLcy9hbmRyb2lk
LXNkay1tYWNfODYvdG9vbHMvOi9vcHQvbG9jYWwvbGliL215c3FsNS9iaW46L3Vzci9zaGFy
ZS9hcGFjaGUtbWF2ZW4tMy4wLjUvYmluOi9ob21lL2pkYW1vbi8ucnZtL2JpbjovaG9tZS9q
ZGFtb24vLnJ2bS9iaW46L2hvbWUvamRhbW9uLy5ydm0vYmluIjwvYT4KICAgICAgICB4eiAt
ZGMKL21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvLi4vZG93bmxv
YWRzL2Jpc29uLTMuMC40LnRhci54egogICAgICAgIHwgdGFyIHggLS1uby1zYW1lLW93bmVy
IC1mIC0gZmFpbGVkIHdpdGggcmV0dXJuIHZhbHVlIDI8YnI+CiAgICAgICAgRVJST1I6IGJp
c29uLW5hdGl2ZS0zLjAuNC1yMCBkb191bnBhY2s6IEZ1bmN0aW9uIGZhaWxlZDoKICAgICAg
ICBiYXNlX2RvX3VucGFjazxicj4KICAgICAgICBFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJl
IHN0b3JlZCBpbjoKL21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngv
dG1wL3dvcmsveDg2XzY0LWxpbnV4L2Jpc29uLW5hdGl2ZS8zLjAuNC1yMC90ZW1wL2xvZy5k
b191bnBhY2suMzA5MDQ8YnI+CiAgICAgICAgRVJST1I6IFRhc2sKKHZpcnR1YWw6bmF0aXZl
Oi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvbWV0YS9yZWNpcGVzLWRl
dnRvb2xzL2Jpc29uL2Jpc29uXzMuMC40LmJiOmRvX3VucGFjaykKICAgICAgICBmYWlsZWQg
d2l0aCBleGl0IGNvZGUgJzEnPGJyPgogICAgICAgIEVSUk9SOiBmbGV4LW5hdGl2ZS0yLjYu
MC1yMCBkb19mZXRjaDogTmV0d29yayBhY2Nlc3MgZGlzYWJsZWQKICAgICAgICB0aHJvdWdo
IEJCX05PX05FVFdPUksgKG9yIHNldCBpbmRpcmVjdGx5IGR1ZSB0byB1c2Ugb2YKICAgICAg
ICBCQl9GRVRDSF9QUkVNSVJST1JPTkxZKSBidXQgYWNjZXNzIHJlcXVlc3RlZCB3aXRoIGNv
bW1hbmQKICAgICAgICAvdXNyL2Jpbi9lbnYgd2dldCAtdCAyIC1UIDMwIC1udiAtLXBhc3Np
dmUtZnRwCiAgICAgICAgLS1uby1jaGVjay1jZXJ0aWZpY2F0ZSAtUAogICAgICAgIC9tZWRp
YS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4Ly4uL2Rvd25sb2FkcwogICAg
ICAgICc8YSBjbGFzcz0ibW96LXR4dC1saW5rLWZyZWV0ZXh0IiBocmVmPSJodHRwOi8vZG93
bmxvYWRzLnNvdXJjZWZvcmdlLm5ldC9mbGV4L2ZsZXgtMi42LjAudGFyLmJ6MiI+aHR0cDov
L2Rvd25sb2Fkcy5zb3VyY2Vmb3JnZS5uZXQvZmxleC9mbGV4LTIuNi4wLnRhci5iejI8L2E+
JyAoZm9yCiAgICAgICAgdXJsIE5vbmUpPGJyPgogICAgICAgIEVSUk9SOiBmbGV4LW5hdGl2
ZS0yLjYuMC1yMCBkb19mZXRjaDogRnVuY3Rpb24gZmFpbGVkOgogICAgICAgIGJhc2VfZG9f
ZmV0Y2g8YnI+CiAgICAgICAgRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQgaW46
Ci9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC93b3JrL3g4
Nl82NC1saW51eC9mbGV4LW5hdGl2ZS8yLjYuMC1yMC90ZW1wL2xvZy5kb19mZXRjaC4zMDkw
NTxicj4KICAgICAgICBFUlJPUjogVGFzawoodmlydHVhbDpuYXRpdmU6L21lZGlhL2J1aWxk
L05ld2VzdEJ1aWxkL3NvdXJjZXMvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZmxleC9m
bGV4XzIuNi4wLmJiOmRvX2ZldGNoKQogICAgICAgIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAn
MSc8YnI+CiAgICAgICAgTk9URTogVGFza3MgU3VtbWFyeTogQXR0ZW1wdGVkIDkyIHRhc2tz
IG9mIHdoaWNoIDgzIGRpZG4ndCBuZWVkCiAgICAgICAgdG8gYmUgcmVydW4gYW5kIDMgZmFp
bGVkLiA8YnI+CiAgICAgIDwvYmxvY2txdW90ZT4KICAgIDwvcD4KICAgIDxwPjxicj4KICAg
IDwvcD4KICAgIDxwPldoeSBhcmVuJ3QgdGhlc2UgYmVpbmcgZG93bmxvYWRlZCB3aGVuIEkg
ZGlkIG15IGluaXRpYWwgZmV0Y2hhbGwKICAgICAgPyA8YnI+CiAgICA8L3A+CiAgICA8cD5B
bHNvLCB3aGF0IGlzIHRoZSB3YXkgdG8gY2FwdHVyZSBhbGwgb2YgdGhlIHJlcXVpcmVkIHBh
Y2thZ2VzIGZvcgogICAgICBhbiBpbWFnZSBBTkQgdGhlIGRldmVsb3BtZW50IHRvb2xzIHJl
cXVpcmVkIHRvIGJ1aWxkIHRoZSBpbWFnZSA/PC9wPgogICAgPHA+PGJyPgogICAgPC9wPgog
ICAgPHA+VGhhbmtzPGJyPgogICAgPC9wPgogICAgPHA+PGJyPgogICAgPC9wPgogIDwvYm9k
eT4KPC9odG1sPgo=

--------------D13FE8C4A491FAD651749661--
