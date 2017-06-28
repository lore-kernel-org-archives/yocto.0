Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 318CEE00BE0; Wed, 28 Jun 2017 16:03:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57DC7E00BD5
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 16:03:51 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id c73so40529768pfk.2
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 16:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:from:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=WmljFlv0x9U3clMCKJ1g14zxssCsMohHh7aAan9fHBI=;
	b=NkosBfxkw5u04pQMIEWS+p/MQK8sYQqsqG5MwO/OBMlPBDVFnjiWzIxK4FjSTOCgV/
	/E74VVYXI2UafUjVRyzqDwdt7bITjfiBlg6eh1Bj8bleD2FY6VozqfllN0gPoawxODa/
	uPLENmLCFtb2XQvAoZScr4onL05Z5p9jQ75c5mvGIZpY9z14KgAg3ziwv24SK+hOy0qB
	2lBeiSWueyHuv4eqqKODERcfDtAPuoNaaY1H3q+CBTxAQjWnyJtnM8L+3Z9W/gV//B1p
	GBz1ketfWcitY486R2EOZ+PHwZLdp/mTprrXzZK9TlMv5zqr+XA5Mrkf3pJA4az2xWVT
	EOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=WmljFlv0x9U3clMCKJ1g14zxssCsMohHh7aAan9fHBI=;
	b=p+X5LPdnmURphRHfQRyjgi2ppJL9KNHRiY/FcCB7PFjyrsCNkQK1RLddAag/Pq9Fiz
	epv9iUc6NC1adT6LQ9XXASD9ggk9GZgcf87Db1nf85Qs/cpELUsViHbN3ggkBxWnMA8E
	fyvqH2JoZus5XJnDHx0y8YecQMuqF4+9fLdBvmAfaBee0YFCstgI7cQTPhWyZYYmdd93
	t8UCiqZkrpBuEZMuDwD99Y7toA0/Mp/bIyPAoO/MBhreiST752I4goQi6eoXX0KZG5Rh
	FlMh5cx/6v32SIuUPa6YoBtvR1bV90RpVqAzNCO8yA0QeW7YtOLh39/q2BftnydWWJCS
	8Ltg==
X-Gm-Message-State: AKS2vOz7g9DC4Ud9pxYrpx64MqJI7AAL1s1a/rSvMpaMLpjwsuj4JV49
	m/N8Ni4NeG1e+TJzhF8=
X-Received: by 10.99.97.78 with SMTP id v75mr12913307pgb.158.1498691030843;
	Wed, 28 Jun 2017 16:03:50 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	j29sm5285205pfj.68.2017.06.28.16.03.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jun 2017 16:03:49 -0700 (PDT)
From: Jimi Damon <jdamon@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <63d13fc4-c19c-5850-5358-397a61c6673b@gmail.com>
Message-ID: <e3b35bbf-b8cd-5eb9-af0a-fe024cf824e0@gmail.com>
Date: Wed, 28 Jun 2017 16:03:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <63d13fc4-c19c-5850-5358-397a61c6673b@gmail.com>
Subject: Re: Saving all files using source mirror isn't capturing build packages
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
X-List-Received-Date: Wed, 28 Jun 2017 23:03:55 -0000
Content-Type: multipart/alternative;
	boundary="------------0922CF483A80B83553E64436"
Content-Language: en-US

--------------0922CF483A80B83553E64436
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Please ignore if you received this twice. My email client wasn't giving=20
me confirmation /sent mail.


Problem was solved with


>
> MIRRORS ?=3D "\
> git://.*/.*    file://media/build/mirror/ \n \
> git://.*/.*/.* file://media/build/mirror/ \n \
> ftp://.*/.*    file://media/build/mirror/ \n \
> http://.*/.*   file://media/build/mirror/ \n \
> svn://.*/.*    file://media/build/mirror/ \n \
> https://.*/.*    file://media/build/mirror/ \n \
> "
>
>
> BB_FETCH_PREMIRRORONLY =3D "1"
> SOURCE_MIRROR_URL ?=3D "file:///media/build/mirror/"




On 06/28/2017 12:39 PM, Jimi Damon wrote:
>
> Hi,
>
>
> I'm trying to save the entire build PLUS the tools used to create the=20
> build and I'm finding that when I initially perform the
>
>
> bitbake -c fetchall b2qt-embedded-qt5-image
>
> followed by a copy of the required downloaded .tar.gz files to the=20
> mirror directory and then creating a new build directory  ( with new=20
> local.conf and bb.layers ) with the lines
>
> SOURCE_MIRROR_URL ?=3D "file://media/build/mirror/"
> INHERIT +=3D "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
> BB_NO_NETWORK =3D "1"
>
> and I try to build , I get errors saying that certain Native tools are =

> missing like gcc-source, bison-native, flex-native...etc
>
> Example
>
>>
>> Initialising tasks: 100%=20
>> |#####################################################################=
#######################################|=20
>> Time: 0:00:06
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: gcc-source-6.2.0-6.2.0-r0 do_fetch: Network access disabled=20
>> through BB_NO_NETWORK (or set indirectly due to use of=20
>> BB_FETCH_PREMIRRORONLY) but access requested with command=20
>> /usr/bin/env wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate =

>> -P /media/build/NewestBuild/build-nitrogen6x/../downloads=20
>> 'http://ftp.gnu.org/gnu/gcc/gcc-6.2.0/gcc-6.2.0.tar.bz2' (for url None=
)
>> ERROR: gcc-source-6.2.0-6.2.0-r0 do_fetch: Function failed: base_do_fe=
tch
>> ERROR: Logfile of failure stored in:=20
>> /media/build/NewestBuild/build-nitrogen6x/tmp/work-shared/gcc-6.2.0-r0=
/temp/log.do_fetch.30899
>> ERROR: Task=20
>> (/media/build/NewestBuild/sources/poky/meta/recipes-devtools/gcc/gcc-s=
ource_6.2.bb:do_fetch)=20
>> failed with exit code '1'
>> ERROR: bison-native-3.0.4-r0 do_unpack: Unpack failure for URL:=20
>> 'http://ftp.gnu.org/gnu/bison/bison-3.0.4.tar.xz'. Unpack command=20
>> PATH=3D"/media/build/NewestBuild/sources/poky/scripts/native-intercept=
:/media/build/NewestBuild/build-nitrogen6x/tmp/sysroots/x86_64-linux/usr/=
bin/texinfo-dummy-native:/media/build/NewestBuild/build-nitrogen6x/tmp/sy=
sroots-uninative/x86_64-linux/usr/bin:/media/build/NewestBuild/sources/po=
ky/scripts:/media/build/NewestBuild/build-nitrogen6x/tmp/sysroots/x86_64-=
linux/usr/bin/x86_64-linux:/media/build/NewestBuild/build-nitrogen6x/tmp/=
sysroots/x86_64-linux/usr/bin:/media/build/NewestBuild/build-nitrogen6x/t=
mp/sysroots/x86_64-linux/usr/sbin:/media/build/NewestBuild/build-nitrogen=
6x/tmp/sysroots/x86_64-linux/usr/bin:/media/build/NewestBuild/build-nitro=
gen6x/tmp/sysroots/x86_64-linux/sbin:/media/build/NewestBuild/build-nitro=
gen6x/tmp/sysroots/x86_64-linux/bin:/media/build/NewestBuild/sources/poky=
/scripts:/media/build/NewestBuild/sources/poky/bitbake/bin:/media/build/N=
ewBuild:/home/jdamon/.rvm/gems/ruby-2.4.0/bin:/home/jdamon/.rvm/gems/ruby=
-2.4.0@global/bin:/home/jdamon/.rvm/rubies/ruby-2.4.0/bin:/home/jdamon/.r=
vm/bin:/usr/bin:/bin:/sbin:/sbin:/bin:/usr/bin:/usr/local/bin:/usr/sbin:/=
home/jdamon/Scripts:/usr/games:/usr/lib/lapack:/opt/local/bin:/home/jdamo=
n/Tools/bin:/home/jdamon/Scripts/Work:/home/jdamon/Tools/android-sdk-linu=
x/platform-tools:/home/jdamon/Tools/android-ndk-r10e:/Developer/SDKs/andr=
oid-sdk-mac_86/tools/:/opt/local/lib/mysql5/bin:/usr/share/apache-maven-3=
=2E0.5/bin:/home/jdamon/.rvm/bin:/home/jdamon/.rvm/bin:/home/jdamon/.rvm/=
bin"=20
>> xz -dc=20
>> /media/build/NewestBuild/build-nitrogen6x/../downloads/bison-3.0.4.tar=
=2Exz=20
>> | tar x --no-same-owner -f - failed with return value 2
>> ERROR: bison-native-3.0.4-r0 do_unpack: Function failed: base_do_unpac=
k
>> ERROR: Logfile of failure stored in:=20
>> /media/build/NewestBuild/build-nitrogen6x/tmp/work/x86_64-linux/bison-=
native/3.0.4-r0/temp/log.do_unpack.30904
>> ERROR: Task=20
>> (virtual:native:/media/build/NewestBuild/sources/poky/meta/recipes-dev=
tools/bison/bison_3.0.4.bb:do_unpack)=20
>> failed with exit code '1'
>> ERROR: flex-native-2.6.0-r0 do_fetch: Network access disabled through =

>> BB_NO_NETWORK (or set indirectly due to use of=20
>> BB_FETCH_PREMIRRORONLY) but access requested with command=20
>> /usr/bin/env wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate =

>> -P /media/build/NewestBuild/build-nitrogen6x/../downloads=20
>> 'http://downloads.sourceforge.net/flex/flex-2.6.0.tar.bz2' (for url No=
ne)
>> ERROR: flex-native-2.6.0-r0 do_fetch: Function failed: base_do_fetch
>> ERROR: Logfile of failure stored in:=20
>> /media/build/NewestBuild/build-nitrogen6x/tmp/work/x86_64-linux/flex-n=
ative/2.6.0-r0/temp/log.do_fetch.30905
>> ERROR: Task=20
>> (virtual:native:/media/build/NewestBuild/sources/poky/meta/recipes-dev=
tools/flex/flex_2.6.0.bb:do_fetch)=20
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 92 tasks of which 83 didn't need to be =

>> rerun and 3 failed.
>
>
> Why aren't these being downloaded when I did my initial fetchall ?
>
> Also, what is the way to capture all of the required packages for an=20
> image AND the development tools required to build the image ?
>
>
> Thanks
>
>


--------------0922CF483A80B83553E64436
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+CiAgPGhlYWQ+CiAgICA8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNv
bnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+CiAgPC9oZWFkPgogIDxib2R5IHRl
eHQ9IiMwMDAwMDAiIGJnY29sb3I9IiNGRkZGRkYiPgogICAgPHA+PGZvbnQgZmFjZT0iTW9u
YWNvIj5QbGVhc2UgaWdub3JlIGlmIHlvdSByZWNlaXZlZCB0aGlzIHR3aWNlLiBNeQogICAg
ICAgIGVtYWlsIGNsaWVudCB3YXNuJ3QgZ2l2aW5nIG1lIGNvbmZpcm1hdGlvbiAvc2VudCBt
YWlsLiA8YnI+CiAgICAgIDwvZm9udD48L3A+CiAgICA8cD48Zm9udCBmYWNlPSJNb25hY28i
Pjxicj4KICAgICAgPC9mb250PjwvcD4KICAgIDxwPjxmb250IGZhY2U9Ik1vbmFjbyI+UHJv
YmxlbSB3YXMgc29sdmVkIHdpdGggPGJyPgogICAgICA8L2ZvbnQ+PC9wPgogICAgPHA+PGZv
bnQgZmFjZT0iTW9uYWNvIj48YnI+CiAgICAgIDwvZm9udD48L3A+CiAgICA8cD48Zm9udCBm
YWNlPSJNb25hY28iPgogICAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxicj4KICAg
ICAgICAgIE1JUlJPUlMgPz0gIlw8YnI+CiAgICAgICAgICBnaXQ6Ly8uKi8uKsKgwqDCoCA8
YSBjbGFzcz0ibW96LXR4dC1saW5rLWZyZWV0ZXh0IiBocmVmPSJmaWxlOi8vbWVkaWEvYnVp
bGQvbWlycm9yLyI+ZmlsZTovL21lZGlhL2J1aWxkL21pcnJvci88L2E+IFxuIFwgPGJyPgog
ICAgICAgICAgZ2l0Oi8vLiovLiovLiogPGEgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4
dCIgaHJlZj0iZmlsZTovL21lZGlhL2J1aWxkL21pcnJvci8iPmZpbGU6Ly9tZWRpYS9idWls
ZC9taXJyb3IvPC9hPiBcbiBcIDxicj4KICAgICAgICAgIGZ0cDovLy4qLy4qwqDCoMKgIDxh
IGNsYXNzPSJtb3otdHh0LWxpbmstZnJlZXRleHQiIGhyZWY9ImZpbGU6Ly9tZWRpYS9idWls
ZC9taXJyb3IvIj5maWxlOi8vbWVkaWEvYnVpbGQvbWlycm9yLzwvYT4gXG4gXDxicj4KICAg
ICAgICAgIGh0dHA6Ly8uKi8uKsKgwqAgPGEgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4
dCIgaHJlZj0iZmlsZTovL21lZGlhL2J1aWxkL21pcnJvci8iPmZpbGU6Ly9tZWRpYS9idWls
ZC9taXJyb3IvPC9hPiBcbiBcPGJyPgogICAgICAgICAgc3ZuOi8vLiovLirCoMKgwqAgPGEg
Y2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4dCIgaHJlZj0iZmlsZTovL21lZGlhL2J1aWxk
L21pcnJvci8iPmZpbGU6Ly9tZWRpYS9idWlsZC9taXJyb3IvPC9hPiBcbiBcPGJyPgogICAg
ICAgICAgaHR0cHM6Ly8uKi8uKsKgwqDCoCA8YSBjbGFzcz0ibW96LXR4dC1saW5rLWZyZWV0
ZXh0IiBocmVmPSJmaWxlOi8vbWVkaWEvYnVpbGQvbWlycm9yLyI+ZmlsZTovL21lZGlhL2J1
aWxkL21pcnJvci88L2E+IFxuIFw8YnI+CiAgICAgICAgICAiPGJyPgogICAgICAgICAgPGJy
PgogICAgICAgICAgPGJyPgogICAgICAgICAgQkJfRkVUQ0hfUFJFTUlSUk9ST05MWSA9ICIx
Ijxicj4KICAgICAgICAgIFNPVVJDRV9NSVJST1JfVVJMID89IDxhIGNsYXNzPSJtb3otdHh0
LWxpbmstcmZjMjM5NkUiIGhyZWY9ImZpbGU6Ly8vbWVkaWEvYnVpbGQvbWlycm9yLyI+ImZp
bGU6Ly8vbWVkaWEvYnVpbGQvbWlycm9yLyI8L2E+PC9ibG9ja3F1b3RlPgogICAgICA8L2Zv
bnQ+PC9wPgogICAgPHA+PGJyPgogICAgPC9wPgogICAgPHA+PGJyPgogICAgPC9wPgogICAg
PGJyPgogICAgPGRpdiBjbGFzcz0ibW96LWNpdGUtcHJlZml4Ij5PbiAwNi8yOC8yMDE3IDEy
OjM5IFBNLCBKaW1pIERhbW9uCiAgICAgIHdyb3RlOjxicj4KICAgIDwvZGl2PgogICAgPGJs
b2NrcXVvdGUgdHlwZT0iY2l0ZSIKICAgICAgY2l0ZT0ibWlkOjYzZDEzZmM0LWMxOWMtNTg1
MC01MzU4LTM5N2E2MWM2NjczYkBnbWFpbC5jb20iPgogICAgICA8bWV0YSBodHRwLWVxdWl2
PSJjb250ZW50LXR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+CiAg
ICAgIDxwPjxmb250IGZhY2U9Ik1vbmFjbyI+SGksPC9mb250PjwvcD4KICAgICAgPHA+PGZv
bnQgZmFjZT0iTW9uYWNvIj48YnI+CiAgICAgICAgPC9mb250PjwvcD4KICAgICAgPHA+PGZv
bnQgZmFjZT0iTW9uYWNvIj5JJ20gdHJ5aW5nIHRvIHNhdmUgdGhlIGVudGlyZSBidWlsZCBQ
TFVTCiAgICAgICAgICB0aGUgdG9vbHMgdXNlZCB0byBjcmVhdGUgdGhlIGJ1aWxkIGFuZCBJ
J20gZmluZGluZyB0aGF0IHdoZW4gSQogICAgICAgICAgaW5pdGlhbGx5IHBlcmZvcm0gdGhl
PC9mb250PjwvcD4KICAgICAgPHA+PGZvbnQgZmFjZT0iTW9uYWNvIj48YnI+CiAgICAgICAg
PC9mb250PjwvcD4KICAgICAgPHA+PGZvbnQgZmFjZT0iTW9uYWNvIj5iaXRiYWtlIC1jIGZl
dGNoYWxsIDwvZm9udD5iMnF0LWVtYmVkZGVkLXF0NS1pbWFnZTwvcD4KICAgICAgPHA+Zm9s
bG93ZWQgYnkgYSBjb3B5IG9mIHRoZSByZXF1aXJlZCBkb3dubG9hZGVkIC50YXIuZ3ogZmls
ZXMgdG8KICAgICAgICB0aGUgbWlycm9yIGRpcmVjdG9yeSBhbmQgdGhlbiBjcmVhdGluZyBh
IG5ldyBidWlsZCBkaXJlY3RvcnnCoCAoCiAgICAgICAgd2l0aCBuZXcgbG9jYWwuY29uZiBh
bmQgYmIubGF5ZXJzICkgd2l0aCB0aGUgbGluZXM8L3A+CiAgICAgIDxwPlNPVVJDRV9NSVJS
T1JfVVJMID89IDxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiCiAgICAgICAgICBo
cmVmPSJmaWxlOi8vbWVkaWEvYnVpbGQvbWlycm9yLyIgbW96LWRvLW5vdC1zZW5kPSJ0cnVl
Ij4iZmlsZTovL21lZGlhL2J1aWxkL21pcnJvci8iPC9hPjxicj4KICAgICAgICBJTkhFUklU
ICs9ICJvd24tbWlycm9ycyIgPGJyPgogICAgICAgIEJCX0dFTkVSQVRFX01JUlJPUl9UQVJC
QUxMUyA9ICIxIiA8YnI+CiAgICAgICAgQkJfTk9fTkVUV09SSyA9ICIxIjxicj4KICAgICAg
PC9wPgogICAgICA8cD5hbmQgSSB0cnkgdG8gYnVpbGQgLCBJIGdldCBlcnJvcnMgc2F5aW5n
IHRoYXQgY2VydGFpbiBOYXRpdmUKICAgICAgICB0b29scyBhcmUgbWlzc2luZyBsaWtlIGdj
Yy1zb3VyY2UsIGJpc29uLW5hdGl2ZSwKICAgICAgICBmbGV4LW5hdGl2ZS4uLmV0YzwvcD4K
ICAgICAgPHA+RXhhbXBsZTwvcD4KICAgICAgPHA+IDwvcD4KICAgICAgPGJsb2NrcXVvdGUg
dHlwZT0iY2l0ZSI+PGJyPgogICAgICAgIEluaXRpYWxpc2luZyB0YXNrczogMTAwJQp8IyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjfAog
ICAgICAgIFRpbWU6IDA6MDA6MDY8YnI+CiAgICAgICAgTk9URTogRXhlY3V0aW5nIFNldFNj
ZW5lIFRhc2tzPGJyPgogICAgICAgIE5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrczxi
cj4KICAgICAgICBFUlJPUjogZ2NjLXNvdXJjZS02LjIuMC02LjIuMC1yMCBkb19mZXRjaDog
TmV0d29yayBhY2Nlc3MKICAgICAgICBkaXNhYmxlZCB0aHJvdWdoIEJCX05PX05FVFdPUksg
KG9yIHNldCBpbmRpcmVjdGx5IGR1ZSB0byB1c2Ugb2YKICAgICAgICBCQl9GRVRDSF9QUkVN
SVJST1JPTkxZKSBidXQgYWNjZXNzIHJlcXVlc3RlZCB3aXRoIGNvbW1hbmQKICAgICAgICAv
dXNyL2Jpbi9lbnYgd2dldCAtdCAyIC1UIDMwIC1udiAtLXBhc3NpdmUtZnRwCiAgICAgICAg
LS1uby1jaGVjay1jZXJ0aWZpY2F0ZSAtUAogICAgICAgIC9tZWRpYS9idWlsZC9OZXdlc3RC
dWlsZC9idWlsZC1uaXRyb2dlbjZ4Ly4uL2Rvd25sb2FkcyAnPGEKICAgICAgICAgIGNsYXNz
PSJtb3otdHh0LWxpbmstZnJlZXRleHQiCiAgICAgICAgICBocmVmPSJodHRwOi8vZnRwLmdu
dS5vcmcvZ251L2djYy9nY2MtNi4yLjAvZ2NjLTYuMi4wLnRhci5iejIiCiAgICAgICAgICBt
b3otZG8tbm90LXNlbmQ9InRydWUiPmh0dHA6Ly9mdHAuZ251Lm9yZy9nbnUvZ2NjL2djYy02
LjIuMC9nY2MtNi4yLjAudGFyLmJ6MjwvYT4nCiAgICAgICAgKGZvciB1cmwgTm9uZSk8YnI+
CiAgICAgICAgRVJST1I6IGdjYy1zb3VyY2UtNi4yLjAtNi4yLjAtcjAgZG9fZmV0Y2g6IEZ1
bmN0aW9uIGZhaWxlZDoKICAgICAgICBiYXNlX2RvX2ZldGNoPGJyPgogICAgICAgIEVSUk9S
OiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOgovbWVkaWEvYnVpbGQvTmV3ZXN0QnVp
bGQvYnVpbGQtbml0cm9nZW42eC90bXAvd29yay1zaGFyZWQvZ2NjLTYuMi4wLXIwL3RlbXAv
bG9nLmRvX2ZldGNoLjMwODk5PGJyPgogICAgICAgIEVSUk9SOiBUYXNrCigvbWVkaWEvYnVp
bGQvTmV3ZXN0QnVpbGQvc291cmNlcy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2Mv
Z2NjLXNvdXJjZV82LjIuYmI6ZG9fZmV0Y2gpCiAgICAgICAgZmFpbGVkIHdpdGggZXhpdCBj
b2RlICcxJzxicj4KICAgICAgICBFUlJPUjogYmlzb24tbmF0aXZlLTMuMC40LXIwIGRvX3Vu
cGFjazogVW5wYWNrIGZhaWx1cmUgZm9yIFVSTDoKICAgICAgICAnPGEgY2xhc3M9Im1vei10
eHQtbGluay1mcmVldGV4dCIKICAgICAgICAgIGhyZWY9Imh0dHA6Ly9mdHAuZ251Lm9yZy9n
bnUvYmlzb24vYmlzb24tMy4wLjQudGFyLnh6IgogICAgICAgICAgbW96LWRvLW5vdC1zZW5k
PSJ0cnVlIj5odHRwOi8vZnRwLmdudS5vcmcvZ251L2Jpc29uL2Jpc29uLTMuMC40LnRhci54
ejwvYT4nLgogICAgICAgIFVucGFjayBjb21tYW5kCiAgICAgICAgUEFUSD08YSBjbGFzcz0i
bW96LXR4dC1saW5rLXJmYzIzOTZFIgpocmVmPSJtYWlsdG86L21lZGlhL2J1aWxkL05ld2Vz
dEJ1aWxkL3NvdXJjZXMvcG9reS9zY3JpcHRzL25hdGl2ZS1pbnRlcmNlcHQ6L21lZGlhL2J1
aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5c3Jvb3RzL3g4Nl82NC1s
aW51eC91c3IvYmluL3RleGluZm8tZHVtbXktbmF0aXZlOi9tZWRpYS9idWlsZC9OZXdlc3RC
dWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNyb290cy11bmluYXRpdmUveDg2XzY0LWxp
bnV4L3Vzci9iaW46L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL3NvdXJjZXMvcG9reS9zY3Jp
cHRzOi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNy
b290cy94ODZfNjQtbGludXgvdXNyL2Jpbi94ODZfNjQtbGludXg6L21lZGlhL2J1aWxkL05l
d2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91
c3IvYmluOi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9z
eXNyb290cy94ODZfNjQtbGludXgvdXNyL3NiaW46L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxk
L2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluOi9t
ZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNyb290cy94
ODZfNjQtbGludXgvc2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9n
ZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0
QnVpbGQvc291cmNlcy9wb2t5L3NjcmlwdHM6L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL3Nv
dXJjZXMvcG9reS9iaXRiYWtlL2JpbjovbWVkaWEvYnVpbGQvTmV3QnVpbGQ6L2hvbWUvamRh
bW9uLy5ydm0vZ2Vtcy9ydWJ5LTIuNC4wL2JpbjovaG9tZS9qZGFtb24vLnJ2bS9nZW1zL3J1
YnktMi40LjBAZ2xvYmFsL2JpbjovaG9tZS9qZGFtb24vLnJ2bS9ydWJpZXMvcnVieS0yLjQu
MC9iaW46L2hvbWUvamRhbW9uLy5ydm0vYmluOi91c3IvYmluOi9iaW46L3NiaW46L3NiaW46
L2JpbjovdXNyL2JpbjovdXNyL2xvY2FsL2JpbjovdXNyL3NiaW46L2hvbWUvamRhbW9uL1Nj
cmlwdHM6L3Vzci9nYW1lczovdXNyL2xpYi9sYXBhY2s6L29wdC9sb2NhbC9iaW46L2hvbWUv
amRhbW9uL1Rvb2xzL2JpbjovaG9tZS9qZGFtb24vU2NyaXB0cy9Xb3JrOi9ob21lL2pkYW1v
bi9Ub29scy9hbmRyb2lkLXNkay1saW51eC9wbGF0Zm9ybS10b29sczovaG9tZS9qZGFtb24v
VG9vbHMvYW5kcm9pZC1uZGstcjEwZTovRGV2ZWxvcGVyL1NES3MvYW5kcm9pZC1zZGstbWFj
Xzg2L3Rvb2xzLzovb3B0L2xvY2FsL2xpYi9teXNxbDUvYmluOi91c3Ivc2hhcmUvYXBhY2hl
LW1hdmVuLTMuMC41L2JpbjovaG9tZS9qZGFtb24vLnJ2bS9iaW46L2hvbWUvamRhbW9uLy5y
dm0vYmluOi9ob21lL2pkYW1vbi8ucnZtL2JpbiIKICAgICAgICAgIG1vei1kby1ub3Qtc2Vu
ZD0idHJ1ZSI+Ii9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvc2NyaXB0
cy9uYXRpdmUtaW50ZXJjZXB0Oi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRy
b2dlbjZ4L3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2Jpbi90ZXhpbmZvLWR1bW15
LW5hdGl2ZTovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQtbml0cm9nZW42eC90bXAv
c3lzcm9vdHMtdW5pbmF0aXZlL3g4Nl82NC1saW51eC91c3IvYmluOi9tZWRpYS9idWlsZC9O
ZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvc2NyaXB0czovbWVkaWEvYnVpbGQvTmV3ZXN0QnVp
bGQvYnVpbGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9iaW4v
eDg2XzY0LWxpbnV4Oi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4
L3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0
QnVpbGQvYnVpbGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9z
YmluOi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9idWlsZC1uaXRyb2dlbjZ4L3RtcC9zeXNy
b290cy94ODZfNjQtbGludXgvdXNyL2JpbjovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVp
bGQtbml0cm9nZW42eC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3NiaW46L21lZGlhL2J1
aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngvdG1wL3N5c3Jvb3RzL3g4Nl82NC1s
aW51eC9iaW46L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL3NvdXJjZXMvcG9reS9zY3JpcHRz
Oi9tZWRpYS9idWlsZC9OZXdlc3RCdWlsZC9zb3VyY2VzL3Bva3kvYml0YmFrZS9iaW46L21l
ZGlhL2J1aWxkL05ld0J1aWxkOi9ob21lL2pkYW1vbi8ucnZtL2dlbXMvcnVieS0yLjQuMC9i
aW46L2hvbWUvamRhbW9uLy5ydm0vZ2Vtcy9ydWJ5LTIuNC4wQGdsb2JhbC9iaW46L2hvbWUv
amRhbW9uLy5ydm0vcnViaWVzL3J1YnktMi40LjAvYmluOi9ob21lL2pkYW1vbi8ucnZtL2Jp
bjovdXNyL2JpbjovYmluOi9zYmluOi9zYmluOi9iaW46L3Vzci9iaW46L3Vzci9sb2NhbC9i
aW46L3Vzci9zYmluOi9ob21lL2pkYW1vbi9TY3JpcHRzOi91c3IvZ2FtZXM6L3Vzci9saWIv
bGFwYWNrOi9vcHQvbG9jYWwvYmluOi9ob21lL2pkYW1vbi9Ub29scy9iaW46L2hvbWUvamRh
bW9uL1NjcmlwdHMvV29yazovaG9tZS9qZGFtb24vVG9vbHMvYW5kcm9pZC1zZGstbGludXgv
cGxhdGZvcm0tdG9vbHM6L2hvbWUvamRhbW9uL1Rvb2xzL2FuZHJvaWQtbmRrLXIxMGU6L0Rl
dmVsb3Blci9TREtzL2FuZHJvaWQtc2RrLW1hY184Ni90b29scy86L29wdC9sb2NhbC9saWIv
bXlzcWw1L2JpbjovdXNyL3NoYXJlL2FwYWNoZS1tYXZlbi0zLjAuNS9iaW46L2hvbWUvamRh
bW9uLy5ydm0vYmluOi9ob21lL2pkYW1vbi8ucnZtL2JpbjovaG9tZS9qZGFtb24vLnJ2bS9i
aW4iPC9hPgogICAgICAgIHh6IC1kYwovbWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvYnVpbGQt
bml0cm9nZW42eC8uLi9kb3dubG9hZHMvYmlzb24tMy4wLjQudGFyLnh6CiAgICAgICAgfCB0
YXIgeCAtLW5vLXNhbWUtb3duZXIgLWYgLSBmYWlsZWQgd2l0aCByZXR1cm4gdmFsdWUgMjxi
cj4KICAgICAgICBFUlJPUjogYmlzb24tbmF0aXZlLTMuMC40LXIwIGRvX3VucGFjazogRnVu
Y3Rpb24gZmFpbGVkOgogICAgICAgIGJhc2VfZG9fdW5wYWNrPGJyPgogICAgICAgIEVSUk9S
OiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOgovbWVkaWEvYnVpbGQvTmV3ZXN0QnVp
bGQvYnVpbGQtbml0cm9nZW42eC90bXAvd29yay94ODZfNjQtbGludXgvYmlzb24tbmF0aXZl
LzMuMC40LXIwL3RlbXAvbG9nLmRvX3VucGFjay4zMDkwNDxicj4KICAgICAgICBFUlJPUjog
VGFzawoodmlydHVhbDpuYXRpdmU6L21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL3NvdXJjZXMv
cG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYmlzb24vYmlzb25fMy4wLjQuYmI6ZG9fdW5w
YWNrKQogICAgICAgIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMSc8YnI+CiAgICAgICAgRVJS
T1I6IGZsZXgtbmF0aXZlLTIuNi4wLXIwIGRvX2ZldGNoOiBOZXR3b3JrIGFjY2VzcyBkaXNh
YmxlZAogICAgICAgIHRocm91Z2ggQkJfTk9fTkVUV09SSyAob3Igc2V0IGluZGlyZWN0bHkg
ZHVlIHRvIHVzZSBvZgogICAgICAgIEJCX0ZFVENIX1BSRU1JUlJPUk9OTFkpIGJ1dCBhY2Nl
c3MgcmVxdWVzdGVkIHdpdGggY29tbWFuZAogICAgICAgIC91c3IvYmluL2VudiB3Z2V0IC10
IDIgLVQgMzAgLW52IC0tcGFzc2l2ZS1mdHAKICAgICAgICAtLW5vLWNoZWNrLWNlcnRpZmlj
YXRlIC1QCiAgICAgICAgL21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2Vu
NngvLi4vZG93bmxvYWRzICc8YQogICAgICAgICAgY2xhc3M9Im1vei10eHQtbGluay1mcmVl
dGV4dCIKICAgICAgICAgIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMuc291cmNlZm9yZ2UubmV0
L2ZsZXgvZmxleC0yLjYuMC50YXIuYnoyIgogICAgICAgICAgbW96LWRvLW5vdC1zZW5kPSJ0
cnVlIj5odHRwOi8vZG93bmxvYWRzLnNvdXJjZWZvcmdlLm5ldC9mbGV4L2ZsZXgtMi42LjAu
dGFyLmJ6MjwvYT4nCiAgICAgICAgKGZvciB1cmwgTm9uZSk8YnI+CiAgICAgICAgRVJST1I6
IGZsZXgtbmF0aXZlLTIuNi4wLXIwIGRvX2ZldGNoOiBGdW5jdGlvbiBmYWlsZWQ6CiAgICAg
ICAgYmFzZV9kb19mZXRjaDxicj4KICAgICAgICBFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJl
IHN0b3JlZCBpbjoKL21lZGlhL2J1aWxkL05ld2VzdEJ1aWxkL2J1aWxkLW5pdHJvZ2VuNngv
dG1wL3dvcmsveDg2XzY0LWxpbnV4L2ZsZXgtbmF0aXZlLzIuNi4wLXIwL3RlbXAvbG9nLmRv
X2ZldGNoLjMwOTA1PGJyPgogICAgICAgIEVSUk9SOiBUYXNrCih2aXJ0dWFsOm5hdGl2ZTov
bWVkaWEvYnVpbGQvTmV3ZXN0QnVpbGQvc291cmNlcy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0
b29scy9mbGV4L2ZsZXhfMi42LjAuYmI6ZG9fZmV0Y2gpCiAgICAgICAgZmFpbGVkIHdpdGgg
ZXhpdCBjb2RlICcxJzxicj4KICAgICAgICBOT1RFOiBUYXNrcyBTdW1tYXJ5OiBBdHRlbXB0
ZWQgOTIgdGFza3Mgb2Ygd2hpY2ggODMgZGlkbid0IG5lZWQKICAgICAgICB0byBiZSByZXJ1
biBhbmQgMyBmYWlsZWQuIDxicj4KICAgICAgPC9ibG9ja3F1b3RlPgogICAgICA8cD48YnI+
CiAgICAgIDwvcD4KICAgICAgPHA+V2h5IGFyZW4ndCB0aGVzZSBiZWluZyBkb3dubG9hZGVk
IHdoZW4gSSBkaWQgbXkgaW5pdGlhbAogICAgICAgIGZldGNoYWxsID8gPGJyPgogICAgICA8
L3A+CiAgICAgIDxwPkFsc28sIHdoYXQgaXMgdGhlIHdheSB0byBjYXB0dXJlIGFsbCBvZiB0
aGUgcmVxdWlyZWQgcGFja2FnZXMKICAgICAgICBmb3IgYW4gaW1hZ2UgQU5EIHRoZSBkZXZl
bG9wbWVudCB0b29scyByZXF1aXJlZCB0byBidWlsZCB0aGUKICAgICAgICBpbWFnZSA/PC9w
PgogICAgICA8cD48YnI+CiAgICAgIDwvcD4KICAgICAgPHA+VGhhbmtzPGJyPgogICAgICA8
L3A+CiAgICAgIDxwPjxicj4KICAgICAgPC9wPgogICAgPC9ibG9ja3F1b3RlPgogICAgPGJy
PgogIDwvYm9keT4KPC9odG1sPgo=

--------------0922CF483A80B83553E64436--
