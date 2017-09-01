Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A15EE00CF7; Fri,  1 Sep 2017 08:17:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.170 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C575E007EF
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 08:17:11 -0700 (PDT)
Received: by mail-wr0-f170.google.com with SMTP id z91so1412371wrc.1
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 08:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4gfmfgNfrABBvJ3rrJ/WsEfSt2etPSHaT713iaJyIEM=;
	b=eGS6K5uO8duSffQtbU5FGczY/HJwcK7WNdGktKZlKiciDW4gWZxqzoMq016Of4BHIX
	H8cuWNqvBqTmO8GZV0CpxFCQTRC2FGUvIXWywaF5ONQLDH802v/agFmxoJGCrf109NP3
	v5MmQ1YyMann7XrZYQY5Usqb8/7SoLyhMoB3jKgyl3Lu9oQ7JWr1pZC7qtT2QYg8gyig
	1YnhaPYNk9ag0QwcYwqmXuH3EkgkecIi40ci979t2tBhSyD7s+jItZiqKlJ7uEJLp8b/
	6lOMAZ6VOckqaRYKAC51aIWXhD8qkGotCCzch30L0i6vhtWPRtti0va8sf6Dl9PFcd/n
	mD+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4gfmfgNfrABBvJ3rrJ/WsEfSt2etPSHaT713iaJyIEM=;
	b=IGKTVYWWssCQWUhtDy3qJ8T9i/XHC4m+JTL6xJ2Aj7LoTlvjs7QsNAq4zaqLoHTEvc
	Wk1g8HOMJZ4o7SKlba60ACyAEFsdKg07JDbB9aP0VKQgUIBOcY3m+VxqskorEmVo6bsr
	DsrkejEhot8p8WSWpwX9ZbmjQE8viFu809HB9MBtY93jtSP26V4s5rl0ZY4zggiXGAi0
	Lzv2l+JuBGzJR0c33327CS8nMsP8MvPxBQb//kQjXXpUbJ5Vn+ADQyFw6SbtnJPMGYgS
	UB30r/fyjPoHShmCGwaMMhUp4YyeuhISDsXk7rVz0jWNdit/seGDJsy7FughIfrHTOWu
	C2tA==
X-Gm-Message-State: AHPjjUh6aq1TZnzdlUmrMVIUd++gMBsN2edCI0WPuG94SDTv+RJsyXg7
	oPmF9co7S6wrBJvPSsG7UC3d07N0M9qX
X-Google-Smtp-Source: ADKCNb5kVdHdZ3UKri7Pio7sj0wHxeFdTVozqUozxdxcp+mbpAchQ63J2WxWUaPSr0eDHTo4QHoj4aEBE4nd7FlezT4=
X-Received: by 10.223.184.85 with SMTP id u21mr1666345wrf.3.1504279030198;
	Fri, 01 Sep 2017 08:17:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.58.12 with HTTP; Fri, 1 Sep 2017 08:16:49 -0700 (PDT)
In-Reply-To: <CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
	<CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Fri, 1 Sep 2017 17:16:49 +0200
Message-ID: <CAD4b0_JKFqTDVhFGhxutBOsdHns+NSPLOn4bMoPQ28Ny0FcPGA@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Fri, 01 Sep 2017 15:17:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 1, 2017 at 5:04 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi Maciej,
>
> On Fri, Sep 1, 2017 at 4:08 PM, Maciej Borz=C4=99cki <maciej.borzecki@rnd=
ity.com>
> wrote:
>>
>> On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com> wrot=
e:
>> > Hi!
>> >
>> > I was trying to share sstate between different hosts, but the consumer
>> > build
>> > system seems to be unable to use re-use any sstate object. My scenario
>> > is
>> > setup as follows:
>> >
>> > * The cache was populated by a pristine qemux86 core-image-minimal bui=
ld
>> > of
>> > morty. This was done in a crops/poky container (running in docker on
>> > Mac)
>> > * The cache was then served via HTTP
>>
>> Make sure that you use a decent HTTP server. Simple `python3 -m
>> http.server` will quickly choke when the mirror is being checked. Also
>> running bitbake -DDD -v makes investigating this much easier.
>
>
> To be honest, the current server was indeed setup with python's
> SimpleHTTPServer... As you suggest, I checked the verbose debug log and
> noticed what's happening behind the apparently happy "Checking sstate mir=
ror
> object availability" step. After a first "SState: Successful fetch test f=
or"
> that I see correctly served with 200 on the server side, tests for any ot=
her
> sstate object suddenly and systematically fail with logs like this:
>
> DEBUG: SState: Attempting to fetch
> file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed010=
2d23bdb86ac7ab32_package_qa.tgz
> DEBUG: Searching for
> 7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb=
86ac7ab32_package_qa.tgz
> in paths:
>     /home/vagrant/koan/morty/build/sstate-cache
> DEBUG: Defaulting to
> /home/vagrant/koan/morty/build/sstate-cache/7d/sstate:libxml2:i586-poky-l=
inux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
> for 7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d2=
3b
> db86ac7ab32_package_qa.tgz
> DEBUG: Testing URL
> file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed010=
2d23bdb86ac7ab32_package_qa.tgz
> DEBUG: For url ['file', '',
> '7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bd=
b86ac7ab32_package_qa.tgz',
> '', '', OrderedDict()] comparing ['file', '', '.*', '', '', OrderedDict()=
]
> to ['http', '192.168.33.1:8000', '
> /sstate-cache/PATH', '', '', OrderedDict([('downloadfilename', 'PATH')])]
> DEBUG: For url
> file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed010=
2d23bdb86ac7ab32_package_qa.tgz
> returning
> http://192.168.33.1:8000/sstate-cache/7d/sstate%3Alibxml2%3Ai586-poky-lin=
ux%3A2.9.4%3Ar0%3Ai586%3A3%3A7da8fc
> 3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz;downloadfilename=3D7d/sstate:li=
bxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_pack=
age_qa.tgz
> DEBUG: checkstatus: trying again
> DEBUG: checkstatus() urlopen failed: <urlopen error [Errno 9] Bad file
> descriptor>
> DEBUG: SState: Unsuccessful fetch test for
> file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed010=
2d23bdb86ac7ab32_package_qa.tgz
>
> Nothing is reported server-side for any of these failures... As you
> recommend, I'll try to setup something more "decent" for the HTTP server =
and
> see if it helps.

Yeah, I think this has to do with HTTP keepalive. Anyways, caddy
worked just fine (https://caddyserver.com).

>
>
>>
>> > * The second host is a VM running Ubuntu 16.04 where I set
>> > SSTATE_MIRRORS to
>> > point to the hosted sstate cache like this:
>> >
>> > SSTATE_MIRRORS ?=3D "\
>> > file://.*
>> > http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=3DPATH"
>> >
>> > * I checked with curl that the VM can successfully get sstate objects
>> > from
>> > the server.
>> > * Then I start a new build (same metadata revisions, default
>> > configuration
>> > for core-image-minimal) and each and every task run from scratch with =
no
>> > sstate cache re-use.
>> >
>> > Here are the two configurations from bitbake and /etc/lsb-release file=
s:
>> >
>> > On the container used to seed sstate cache:
>> >
>> > Build Configuration:
>> > BB_VERSION        =3D "1.32.0"
>> > BUILD_SYS         =3D "x86_64-linux"
>> > NATIVELSBSTRING   =3D "universal"
>> > TARGET_SYS        =3D "i586-poky-linux"
>> > MACHINE           =3D "qemux86"
>> > DISTRO            =3D "poky"
>> > DISTRO_VERSION    =3D "2.2.2"
>> > TUNE_FEATURES     =3D "m32 i586"
>> > TARGET_FPU        =3D ""
>> > meta
>> > meta-poky
>> > meta-yocto-bsp    =3D "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>> >
>> > $ cat /etc/lsb-release
>> > DISTRIB_ID=3DUbuntu
>> > DISTRIB_RELEASE=3D16.04
>> > DISTRIB_CODENAME=3Dxenial
>> > DISTRIB_DESCRIPTION=3D"Ubuntu 16.04.2 LTS"
>> >
>> > On the VM that should consume the cache:
>> >
>> > Build Configuration:
>> > BB_VERSION        =3D "1.32.0"
>> > BUILD_SYS         =3D "x86_64-linux"
>> > NATIVELSBSTRING   =3D "Ubuntu-16.04"
>> > TARGET_SYS        =3D "i586-poky-linux"
>> > MACHINE           =3D "qemux86"
>> > DISTRO            =3D "poky"
>> > DISTRO_VERSION    =3D "2.2.2"
>> > TUNE_FEATURES     =3D "m32 i586"
>> > TARGET_FPU        =3D ""
>> > meta
>> > meta-poky
>> > meta-yocto-bsp    =3D "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
>> >
>> > $ cat /etc/lsb-release
>> > DISTRIB_ID=3DUbuntu
>> > DISTRIB_RELEASE=3D16.04
>> > DISTRIB_CODENAME=3Dxenial
>> > DISTRIB_DESCRIPTION=3D"Ubuntu 16.04.3 LTS"
>> >
>> >
>> > To me, the only differing bit that in my understanding can lead to
>> > sstate
>> > cache objects invalidation is the value of NATIVELSBSTRING which is
>> > "universal" inside the container and "Ubuntu-16.04". This sounds stran=
ge
>> > to
>> > me, since both underlying systems are Ubuntu 16.04 (although not exact=
ly
>> > the
>> > same dot release) as confirmed by /etc/lsb-release contents.
>> >
>> > Is the different NATIVELSBSTRING the root cause for everything being
>> > re-built? If so, what's causing them being different in the end and wh=
at
>> > does "universal" exactly mean (to me it looks like a more generic and
>> > incluse term than any distro label, so I'm confused...)?
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>>
>>
>> --
>> Maciej Borzecki
>> RnDity
>
>



--=20
Maciej Borzecki
RnDity

