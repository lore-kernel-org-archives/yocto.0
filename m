Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FD0EE00A75; Wed, 18 Apr 2018 13:00:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f44.google.com (mail-pl0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59632E009DF
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 13:00:24 -0700 (PDT)
Received: by mail-pl0-f44.google.com with SMTP id m7-v6so1753890plt.3
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 13:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=s6YOmwBKKj3d3rst8v79jqW/Gx5rU5Ds2JuTUnGSQiU=;
	b=A/c9bQXlBy46OvaVHdsbr13bgwUVbMV640VrpS5dp32DHU1LHAEDDJt5tWaSNIF/1r
	bJk4EYkgM17EdMlgi2t3AIPZu3rshhpD06338YSYD1O5KxZFk24aitlwyco13VGHW4PX
	t3iozYnzc7825MFsG+b8z4cGNIgpWs5d4cZ53GZIN3me10SwTZaoQuE7g83G/4S0WC8H
	f6PpPJnkK+vQ61q3RPwHNcNYBqaY1O8wPL+nPtuVnwfVDHjQTO7SaF3TqMhXuEA1kYzL
	58T52pd/zsUJRCR+Us40TmTOzvYKdTA4DCOQXsZ//VpUgYejE1yKBVXI5sgjsE5d/aOd
	Pxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=s6YOmwBKKj3d3rst8v79jqW/Gx5rU5Ds2JuTUnGSQiU=;
	b=BU1pcRWwn7h/cLe6cFJxyTgZhT1D7x24VhlKtju70gVQf84bUTmKcH5HCIRap1llf5
	2/nsOSl8z3oicMFphawQYrAHEDoDdPrftOR1jEhNcsj7wTurVv2f2Q12sYWfYdJtAFmN
	I8NfjHwjjx0ZIJQ4OsJIpuJSKpLPfoVatT6m4j4EQ/SNQ7zdY9yggFbS/l3ifPmiP+Bn
	sSmp50oL22DTaU9J6n6GJinXx8n4gEdcxTcv/JLDYvtWfyyvLQRmlhAy4vlzLDJb2/1V
	80wNtGt02hf+lh2PUTD9hJ6/ZJq9UYX/cL4l5Yo744jqOaaKChaO0qiuWzOMzKQ6Iayl
	gEMw==
X-Gm-Message-State: ALQs6tDykJsiT89ggrbfw8zJuz/324ERzaHMmqyqJoa2GI2naGcLNSQU
	qD+1bO2BoGBPK3bRakqnpl364ZiLnkBdW9272qI=
X-Google-Smtp-Source: AIpwx4/AeaQN/xV1un4g+aVXUHF1bHuH6RvMP8qbk8bMPnSmhB5hw+JNTl3BeElwBarZCRzVEt6vrXjeQm+2ZQz+u98=
X-Received: by 2002:a17:902:28ab:: with SMTP id
	f40-v6mr548441plb.208.1524081623021; 
	Wed, 18 Apr 2018 13:00:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.190.8 with HTTP; Wed, 18 Apr 2018 12:59:52 -0700 (PDT)
In-Reply-To: <AM5PR0402MB2721E721141756999BAAF315C4B60@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721E721141756999BAAF315C4B60@AM5PR0402MB2721.eurprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 Apr 2018 12:59:52 -0700
Message-ID: <CAMKF1soHgmwuaSLKVA3N_LfzDjDRrnJ0Fuk+Xy1d94P2a23fEA@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extensible SDK and DEFAULT_PREFERENCE
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
X-List-Received-Date: Wed, 18 Apr 2018 20:00:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 18, 2018 at 5:41 AM, Martin Siegumfeldt <mns@gomspace.com> wrot=
e:
> Hi,
>
> I am having a number of recipes residing in two versions, some (developme=
nt versions) being down-prioritized using:
>
> DEFAULT_PREFERENCE =3D "-1"
>
>
> The source code is hosted at a private git repository, and the git versio=
n is selected using 'AUTOREV'. The extensible SDK renders successfully, how=
ever the installation (by third party) fails:
>
> Traceback (most recent call last):
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 412, in DataSmart.expandWithRefs(s=3D'dev+git${SRCPV}', varname=3D=
'PV'):
>                  try:
>     >                s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
>                      try:
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 111, in VariableParse.var_sub(match=3D<_sre.SRE_Match object; span=
=3D(7, 15), match=3D'${SRCPV}'>):
>                  else:
>     >                var =3D self.d.getVarFlag(key, "_content")
>                  self.references.add(key)
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 794, in DataSmart.getVarFlag(var=3D'SRCPV', flag=3D'_content', exp=
and=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):
>                      cachename =3D var + "[" + flag + "]"
>     >            value =3D self.expand(value, cachename)
>
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 436, in DataSmart.expand(s=3D'${@bb.fetch2.get_srcrev(d)}', varnam=
e=3D'SRCPV'):
>          def expand(self, s, varname =3D None):
>     >        return self.expandWithRefs(s, varname).value
>
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 426, in DataSmart.expandWithRefs(s=3D'${@bb.fetch2.get_srcrev(d)}'=
, varname=3D'SRCPV'):
>                  except Exception as exc:
>     >                raise ExpansionError(varname, s, exc) from exc
>
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fet=
cher failure: Fetch command export GIT_SSL_CAINFO=3D"/home
> /martin/gomspace_sdk/buildtools/sysroots/x86_64-gomspacesdk-linux/etc/ssl=
/certs/ca-certificates.crt"; export PATH=3D"/home/martin/gomspace_sdk/tmp/w=
ork/aarch64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0
> /recipe-sysroot-native/usr/bin/python-native:/home/martin/gomspace_sdk/la=
yers/poky/scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux=
/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/u
> sr/bin/aarch64-gomspace-linux:/home/martin/gomspace_sdk/tmp/work/aarch64-=
gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/cross=
scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomsp
> ace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sbin:=
/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetchera=
voidrecurse-r0/recipe-sysroot-native/usr/bin:/home/marti
> n/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravoidrecur=
se-r0/recipe-sysroot-native/sbin:/home/martin/gomspace_sdk/tmp/work/aarch64=
-gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-s
> ysroot-native/bin:/home/martin/gomspace_sdk/layers/poky/bitbake/bin:/home=
/martin/gomspace_sdk/tmp/hosttools"; export HOME=3D"/home/martin"; git -c c=
ore.fsyncobjectfiles=3D0 ls-remote ssh://git@github.com/GomS
> pace/libisl  failed with exit code 128, output:
> Host key verification failed.
> fatal: Could not read from remote repository.
>
>
> Please make sure you have the correct access rights
> and the repository exists.
>
> It is not the intention that third party will ever need access to the dev=
elopment version, and I don't see why the version information is fetched gi=
ven the reduced priority. Have I encountered an 'undocumented bug' or is th=
ere an alternate approach to achieve this?

AUTOREV is floating dependency, fetcher has to ensure to get a value
for it to populate version strings
before comparing which one to use. you might be able to use BBMASK
effectively to eliminate these
recips from parsers visibility completely.

>
> Thanks,
> Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

