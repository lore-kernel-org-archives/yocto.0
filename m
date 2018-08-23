Return-Path: <gabriele@analyticsfire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12EF2E00566; Thu, 23 Aug 2018 01:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78896E00529
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 01:38:14 -0700 (PDT)
Received: by mail-yb0-f181.google.com with SMTP id o17-v6so1727914yba.2
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 01:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=analyticsfire-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=SN740SdGdApPptnQ9RaixRPkcRbgnvNBQBmTY0t5nfo=;
	b=ifMn+xtWL+syGVIgyReU+ooxZ09lu1Y0mP745hKhzC7TnPENPMw8X9W8OycToyhaU6
	qmegvDiUxwXhXoCX03cqf3W+Dg1oX+XJ5MgWJGVwCP3pIY3KleB15HkfN87JIZ5Lp11z
	Lc3TXZTLsNS9wV9M9HryTfbrk0Gr6qYixmD1ENrpojjeSEEHxRKCLmRREUGfgA/6dqzH
	4E2YLS2YC1WFDXTwjtRE6T7nCLRwmzmc9sNYDmb+JhlFK3IvWFg+J39urrh/bO1BA6tj
	5WR/7UES5jkJs0FhN1moSDmgK0akMoWPLLnNDN89zUNYuEcxjxeicT5CAXpHmNrH9Ret
	3e9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=SN740SdGdApPptnQ9RaixRPkcRbgnvNBQBmTY0t5nfo=;
	b=ufUeUMeb1Zc0F8D5XAXR0UXc5wLO59e+YxMEzvNc5rTVBREAYBMhb7lSnFWWX6YHto
	VMAD0lFL7zI/Q5bugRyLJkaLXFPHGcWmhe/+YSL7lOUJQUWWOUUgukp1vGpu7KFznjtH
	d5R6A23S4mlGQn0ofFE5lxv/pfzO6+1KRSZb27+oZsnD7AmVZYfqHQjvcoFTmYsyrG1i
	xVqdHOzIFSVFZvSoilha/neCxO6bwVWvUi3siFCvEwNphiC8WTlQOxY7AnkHXBvVs3TC
	OfFpFW3d4uH59mc3PrKEo8ueqwrnJPQc3MjMqCKlnCCM0GRJmctVZXKXzqkBCwvQUYO3
	qb3w==
X-Gm-Message-State: AOUpUlFf3mXY4Deo3wdn16yG/TZcomWfdESryMKziHrY7QLVm8m1iIx/
	9JMaNKBcXBnIsLfDzcXtiy/dDK71hiMX+1X5acY5Nh7E
X-Google-Smtp-Source: AA+uWPxLwt+kQulAS8olNHprH2vaIYr+XlMOa756kD9M534gNiZbYybMXdTugR+O30K2WadBYnliNID0WezQJABj7Z0=
X-Received: by 2002:a25:bb49:: with SMTP id
	b9-v6mr31709274ybk.26.1535013493815; 
	Thu, 23 Aug 2018 01:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAMmNTe=6pGXZ2MgzE_orpchcQSCrgc0mS+30U0rFP9e_iXC0Ag@mail.gmail.com>
In-Reply-To: <CAMmNTe=6pGXZ2MgzE_orpchcQSCrgc0mS+30U0rFP9e_iXC0Ag@mail.gmail.com>
From: Gabriele Favalessa <gabriele@analyticsfire.com>
Date: Thu, 23 Aug 2018 10:38:02 +0200
Message-ID: <CAMmNTenu-UJGScoGiT39PQUozApr5DqWEU=siF5-61Q98AkfLA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Unable to add a dev package to the Extended SDK
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
X-List-Received-Date: Thu, 23 Aug 2018 08:38:15 -0000
X-Groupsio-MsgNum: 42253
Content-Type: multipart/mixed; boundary="0000000000000682400574162e35"

--0000000000000682400574162e35
Content-Type: multipart/alternative; boundary="00000000000006823e0574162e33"

--00000000000006823e0574162e33
Content-Type: text/plain; charset="UTF-8"

Hi!

I'm attempting to add `curl-dev` to an Extensible SDK for yocto (sumo
release) with target machine qemuarm.

On a fresh checkout I've added to `conf/local.conf`

  TOOLCHAIN_TARGET_TASK_append = " curl-dev"

and then run `bitbake -c populate_sdk_ext core-image-minimal`.

This is the error I get:

ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke dnf.
Command '/vol/space/poky-sumo/build/tmp/work/x8
6_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c /vol/space/poky-sumo/bui
ld/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/none/etc/dnf/dnf
.conf
--setopt=reposdir=/vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sd
k/image/opt/poky/2.5.1/sysroots/none/etc/yum.repos.d
--repofrompath=oe-repo,/vol/space/poky-sumo/build/tmp/work/x86_64-
nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-sdk-repo
--installroot=/vol/space/poky-sumo/build/tmp/work/x86_64-
nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/none
--setopt=logdir=/vol/space/pok
y-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp
--nogpgcheck install curl-dev' retu
rned 1:
Added oe-repo repo from
/vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe
-sdk-repo
Last metadata expiration check: 0:00:00 ago on Thu 23 Aug 2018 07:38:40 AM
UTC.
Error:
 Problem: conflicting requests
  - package curl-dev-7.61.0-r0.armv5e does not have a compatible
architecture

(The full log is attached)

I'm new to yocto and I have no clue how to proceed to fix the problem. I
haven't found anything relevant in the official documentation or on the
internet.

Thanks

Gabriele

--00000000000006823e0574162e33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hi!=C2=A0<div>=
<br></div><div>I&#39;m attempting to add `curl-dev` to an Extensible SDK fo=
r yocto (sumo release) with target machine qemuarm.=C2=A0</div><div><br></d=
iv><div>On a fresh checkout I&#39;ve added to `conf/local.conf`</div><div><=
br></div><div>=C2=A0 TOOLCHAIN_TARGET_TASK_append =3D &quot; curl-dev&quot;=
</div><div><br></div><div>and then run `bitbake -c populate_sdk_ext core-im=
age-minimal`.<br></div><div><br></div><div>This is the error I get:</div><d=
iv><br></div><div><div>ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Co=
uld not invoke dnf. Command &#39;/vol/space/poky-sumo/build/tmp/work/x8</di=
v><div>6_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroo=
t-native/usr/bin/dnf -y -c /vol/space/poky-sumo/bui</div><div>ld/tmp/work/x=
86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/=
2.5.1/sysroots/none/etc/dnf/dnf</div><div>.conf --setopt=3Dreposdir=3D/vol/=
space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-ta=
rball/1.0-r0/sd</div><div>k/image/opt/poky/2.5.1/sysroots/none/etc/yum.repo=
s.d --repofrompath=3Doe-repo,/vol/space/poky-sumo/build/tmp/work/x86_64-</d=
iv><div>nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-sdk-repo --ins=
tallroot=3D/vol/space/poky-sumo/build/tmp/work/x86_64-</div><div>nativesdk-=
pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/n=
one --setopt=3Dlogdir=3D/vol/space/pok</div><div>y-sumo/build/tmp/work/x86_=
64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgcheck inst=
all curl-dev&#39; retu</div><div>rned 1:</div><div>Added oe-repo repo from =
/vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtoo=
ls-tarball/1.0-r0/oe</div><div>-sdk-repo</div><div>Last metadata expiration=
 check: 0:00:00 ago on Thu 23 Aug 2018 07:38:40 AM UTC.</div><div>Error:=C2=
=A0</div><div>=C2=A0Problem: conflicting requests</div><div>=C2=A0 - packag=
e curl-dev-7.61.0-r0.armv5e does not have a compatible architecture</div></=
div><div><br></div><div>(The full log is attached)</div><div><br></div><div=
>I&#39;m new to yocto and I have no clue how to proceed to fix the problem.=
 I haven&#39;t found anything relevant in the official documentation or on =
the internet.</div><div><br></div><div>Thanks</div><div><br></div><div>Gabr=
iele</div></div>
</div></div>

--00000000000006823e0574162e33--

--0000000000000682400574162e35
Content-Type: application/octet-stream; name="log.do_populate_sdk.30384"
Content-Disposition: attachment; filename="log.do_populate_sdk.30384"
Content-Transfer-Encoding: base64
Content-ID: <f_jl6alfyo0>
X-Attachment-Id: f_jl6alfyo0

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcHJlZnVuYwpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIHNzdGF0ZV90YXNrX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4
ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5PVEU6IERpcmVj
dCBkZXBlbmRlbmNpZXMgYXJlIFsndmlydHVhbDpuYXRpdmU6L3ZvbC9zcGFjZS9wb2t5LXN1bW8v
bWV0YS9yZWNpcGVzLWRldnRvb2xzL3BzZXVkby9wc2V1ZG9fZ2l0LmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L3ZvbC9zcGFjZS9wb2t5LXN1bW8vbWV0YS9yZWNpcGVz
LWRldnRvb2xzL3JwbS9ycG1fNC4xNC4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL3ZvbC9z
cGFjZS9wb2t5LXN1bW8vbWV0YS9yZWNpcGVzLWRldnRvb2xzL3FlbXUvcWVtdXdyYXBwZXItY3Jv
c3NfMS4wLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL3ZvbC9zcGFjZS9wb2t5LXN1bW8vbWV0
YS9yZWNpcGVzLWNvcmUvZ2xpYmMvY3Jvc3MtbG9jYWxlZGVmLW5hdGl2ZV8yLjI3LmJiOmRvX3Bv
cHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmVzZGs6L3ZvbC9zcGFjZS9wb2t5LXN1bW8v
bWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmMtbG9jYWxlXzIuMjcuYmI6ZG9fcG9wdWxhdGVf
c3lzcm9vdCcsICcvdm9sL3NwYWNlL3Bva3ktc3Vtby9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvbWts
aWJzL21rbGlicy1uYXRpdmVfMC4xLjQzLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVh
bDpuYXRpdmU6L3ZvbC9zcGFjZS9wb2t5LXN1bW8vbWV0YS9yZWNpcGVzLWRldnRvb2xzL3ByZWxp
bmsvcHJlbGlua19naXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTov
dm9sL3NwYWNlL3Bva3ktc3Vtby9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvb3BrZy9vcGtnXzAuMy42
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L3ZvbC9zcGFjZS9wb2t5
LXN1bW8vbWV0YS9yZWNpcGVzLWRldnRvb2xzL2NyZWF0ZXJlcG8tYy9jcmVhdGVyZXBvLWNfZ2l0
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L3ZvbC9zcGFjZS9wb2t5
LXN1bW8vbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3h6L3h6XzUuMi4zLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L3ZvbC9zcGFjZS9wb2t5LXN1bW8vbWV0YS9yZWNpcGVz
LWRldnRvb2xzL2RuZi9kbmZfMi43LjUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCddCk5PVEU6IElu
c3RhbGxlZCBpbnRvIHN5c3Jvb3Q6IFsncHNldWRvLW5hdGl2ZScsICdycG0tbmF0aXZlJywgJ3Fl
bXV3cmFwcGVyLWNyb3NzJywgJ2Nyb3NzLWxvY2FsZWRlZi1uYXRpdmUnLCAnbmF0aXZlc2RrLWds
aWJjLWxvY2FsZScsICdta2xpYnMtbmF0aXZlJywgJ3ByZWxpbmstbmF0aXZlJywgJ29wa2ctbmF0
aXZlJywgJ2NyZWF0ZXJlcG8tYy1uYXRpdmUnLCAneHotbmF0aXZlJywgJ2RuZi1uYXRpdmUnLCAn
b3BrZy11dGlscy1uYXRpdmUnLCAnZ2V0dGV4dC1taW5pbWFsLW5hdGl2ZScsICdwa2djb25maWct
bmF0aXZlJywgJ2RidXMtbmF0aXZlJywgJ2ZpbGUtbmF0aXZlJywgJ25zcy1uYXRpdmUnLCAnZ251
LWNvbmZpZy1uYXRpdmUnLCAnbGlidG9vbC1uYXRpdmUnLCAnYXV0b2NvbmYtbmF0aXZlJywgJ3B5
dGhvbjMtbmF0aXZlJywgJ2F1dG9tYWtlLW5hdGl2ZScsICdlbGZ1dGlscy1uYXRpdmUnLCAncXVp
bHQtbmF0aXZlJywgJ3BvcHQtbmF0aXZlJywgJ2RiLW5hdGl2ZScsICdsaWJhcmNoaXZlLW5hdGl2
ZScsICdiemlwMi1uYXRpdmUnLCAncWVtdS1uYXRpdmUnLCAnZGViaWFudXRpbHMtbmF0aXZlJywg
J29wZW5zc2wtbmF0aXZlJywgJ25hdGl2ZXNkay1saW51eC1saWJjLWhlYWRlcnMnLCAnYmludXRp
bHMtbmF0aXZlJywgJ2xpYnNvbHYtbmF0aXZlJywgJ25pbmphLW5hdGl2ZScsICdleHBhdC1uYXRp
dmUnLCAnbGlieG1sMi1uYXRpdmUnLCAnemxpYi1uYXRpdmUnLCAnc3FsaXRlMy1uYXRpdmUnLCAn
Z2xpYi0yLjAtbmF0aXZlJywgJ2N1cmwtbmF0aXZlJywgJ2NtYWtlLW5hdGl2ZScsICdweXRob24z
LWluaXBhcnNlLW5hdGl2ZScsICdsaWJkbmYtbmF0aXZlJywgJ2xpYnJlcG8tbmF0aXZlJywgJ2xp
YmNvbXBzLW5hdGl2ZScsICdhdXRvY29uZi1hcmNoaXZlLW5hdGl2ZScsICduc3ByLW5hdGl2ZScs
ICd0ZXhpbmZvLWR1bW15LW5hdGl2ZScsICdtNC1uYXRpdmUnLCAnZ2RibS1uYXRpdmUnLCAncmVh
ZGxpbmUtbmF0aXZlJywgJ2x6by1uYXRpdmUnLCAnZTJmc3Byb2dzLW5hdGl2ZScsICdsaWJzZGwt
bmF0aXZlJywgJ2Fsc2EtbGliLW5hdGl2ZScsICdwaXhtYW4tbmF0aXZlJywgJ2R0Yy1uYXRpdmUn
LCAnY3J5cHRvZGV2LWxpbnV4LW5hdGl2ZScsICdtYWtlZGVwZW5kLW5hdGl2ZScsICdmbGV4LW5h
dGl2ZScsICdiaXNvbi1uYXRpdmUnLCAncmUyYy1uYXRpdmUnLCAnZ3RrLWRvYy1uYXRpdmUnLCAn
dXRpbC1saW51eC1uYXRpdmUnLCAnbGlicGNyZS1uYXRpdmUnLCAnbGliZmZpLW5hdGl2ZScsICdw
eXRob24zLXNpeC1uYXRpdmUnLCAnZ29iamVjdC1pbnRyb3NwZWN0aW9uLW5hdGl2ZScsICdsaWJj
aGVjay1uYXRpdmUnLCAnYXR0ci1uYXRpdmUnLCAnZ3BnbWUtbmF0aXZlJywgJ25jdXJzZXMtbmF0
aXZlJywgJ2xpYnhleHQtbmF0aXZlJywgJ2xpYnhyYW5kci1uYXRpdmUnLCAnbGlieDExLW5hdGl2
ZScsICdsaWJ4cmVuZGVyLW5hdGl2ZScsICdsaWJwbmctbmF0aXZlJywgJ3V0aWwtbWFjcm9zLW5h
dGl2ZScsICd4cHJvdG8tbmF0aXZlJywgJ3B5dGhvbjMtc2V0dXB0b29scy1uYXRpdmUnLCAnbGli
Z3BnLWVycm9yLW5hdGl2ZScsICdsaWJhc3N1YW4tbmF0aXZlJywgJ3N3aWctbmF0aXZlJywgJ3hl
eHRwcm90by1uYXRpdmUnLCAncmFuZHJwcm90by1uYXRpdmUnLCAneHRyYW5zLW5hdGl2ZScsICds
aWJ4Y2ItbmF0aXZlJywgJ2lucHV0cHJvdG8tbmF0aXZlJywgJ2ticHJvdG8tbmF0aXZlJywgJ3Jl
bmRlcnByb3RvLW5hdGl2ZScsICd1bnppcC1uYXRpdmUnLCAnbGlieGRtY3AtbmF0aXZlJywgJ2xp
YnhhdS1uYXRpdmUnLCAnbGlicHRocmVhZC1zdHVicy1uYXRpdmUnLCAneGNiLXByb3RvLW5hdGl2
ZSddCk5PVEU6IFNraXBwaW5nIGFzIGFscmVhZHkgZXhpc3RzIGluIHN5c3Jvb3Q6IFtdCkRFQlVH
OiBzZWQgLWUgJ3M6XlteL10qLzovdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94
ODZfNjQtbmF0aXZlc2RrLXBva3lzZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9y
ZWNpcGUtc3lzcm9vdC1uYXRpdmUvOmcnIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9z
eXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9ycG0tbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNl
L3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvcGtnY29uZmln
LW5hdGl2ZS9maXhtZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3N5c3Jvb3Rz
LWNvbXBvbmVudHMveDg2XzY0L2RidXMtbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNlL3Bva3kt
c3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvZ251LWNvbmZpZy1uYXRp
dmUvZml4bWVwYXRoIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9zeXNyb290cy1jb21w
b25lbnRzL3g4Nl82NC9saWJ0b29sLW5hdGl2ZS9maXhtZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1
bW8vYnVpbGQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L2F1dG9jb25mLW5hdGl2ZS9m
aXhtZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVu
dHMveDg2XzY0L3B5dGhvbjMtbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNlL3Bva3ktc3Vtby9i
dWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvYXV0b21ha2UtbmF0aXZlL2ZpeG1l
cGF0aCAvdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94
ODZfNjQvZWxmdXRpbHMtbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNlL3Bva3ktc3Vtby9idWls
ZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvcXVpbHQtbmF0aXZlL2ZpeG1lcGF0aCAv
dm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQv
b3BlbnNzbC1uYXRpdmUvZml4bWVwYXRoIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9z
eXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9saWJ4bWwyLW5hdGl2ZS9maXhtZXBhdGggL3ZvbC9z
cGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L2dsaWIt
Mi4wLW5hdGl2ZS9maXhtZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3N5c3Jv
b3RzLWNvbXBvbmVudHMveDg2XzY0L2N1cmwtbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNlL3Bv
a3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvbnNwci1uYXRpdmUv
Zml4bWVwYXRoIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9zeXNyb290cy1jb21wb25l
bnRzL3g4Nl82NC9lMmZzcHJvZ3MtbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNlL3Bva3ktc3Vt
by9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvbGlic2RsLW5hdGl2ZS9maXht
ZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMv
eDg2XzY0L2Jpc29uLW5hdGl2ZS9maXhtZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQv
dG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L2d0ay1kb2MtbmF0aXZlL2ZpeG1lcGF0aCAv
dm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQv
bGlicGNyZS1uYXRpdmUvZml4bWVwYXRoIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9z
eXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9nb2JqZWN0LWludHJvc3BlY3Rpb24tbmF0aXZlL2Zp
eG1lcGF0aCAvdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50
cy94ODZfNjQvbGliY2hlY2stbmF0aXZlL2ZpeG1lcGF0aCAvdm9sL3NwYWNlL3Bva3ktc3Vtby9i
dWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvZ3BnbWUtbmF0aXZlL2ZpeG1lcGF0
aCAvdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZf
NjQvbmN1cnNlcy1uYXRpdmUvZml4bWVwYXRoIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3Rt
cC9zeXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9saWJ4MTEtbmF0aXZlL2ZpeG1lcGF0aCAvdm9s
L3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvbGli
cG5nLW5hdGl2ZS9maXhtZXBhdGggL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3N5c3Jv
b3RzLWNvbXBvbmVudHMveDg2XzY0L2xpYmdwZy1lcnJvci1uYXRpdmUvZml4bWVwYXRoIC92b2wv
c3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9zeXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9saWJh
c3N1YW4tbmF0aXZlL2ZpeG1lcGF0aCB8IHhhcmdzIHNlZCAtaSAtZSAnczpGSVhNRVNUQUdJTkdE
SVJUQVJHRVQ6L3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2
ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvcmVjaXBlLXN5c3Jv
b3Q6ZzsgczpGSVhNRVNUQUdJTkdESVJIT1NUOi92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3Rt
cC93b3JrL3g4Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xzLXRhcmJhbGwv
MS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZTpnJyAtZSAnczpGSVhNRV9DT01QT05FTlRTX0RJ
Ujovdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvc3lzcm9vdHMtY29tcG9uZW50czpnJyAt
ZSAnczpGSVhNRV9IT1NUVE9PTFNfRElSOi92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC9o
b3N0dG9vbHM6ZycgLWUgJ3M6RklYTUVfUEtHREFUQV9ESVI6L3ZvbC9zcGFjZS9wb2t5LXN1bW8v
YnVpbGQvdG1wL3BrZ2RhdGEvcWVtdWFybTpnJyAtZSAnczpGSVhNRV9QU0VVRE9fTE9DQUxTVEFU
RURJUjovdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQtbmF0aXZlc2Rr
LXBva3lzZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9wc2V1ZG8vOmcnIC1lICdz
OkZJWE1FX0xPR0ZJRk86L3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0
LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvdGVtcC9m
aWZvLjMwMzg0OmcnCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290
IGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIGRvX3BvcHVsYXRlX3Nk
awpOT1RFOiBJbml0aWFsaXppbmcgaW50ZXJjZXB0IGRpciBmb3IgL3ZvbC9zcGFjZS9wb2t5LXN1
bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9v
bHMtdGFyYmFsbC8xLjAtcjAvc2RrL2ltYWdlL29wdC9wb2t5LzIuNS4xL3N5c3Jvb3RzL25vbmUK
Tk9URTogSW5pdGlhbGl6aW5nIGludGVyY2VwdCBkaXIgZm9yIC92b2wvc3BhY2UvcG9reS1zdW1v
L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xz
LXRhcmJhbGwvMS4wLXIwL3Nkay9pbWFnZQpOT1RFOiBJbnN0YWxsaW5nIFRBUkdFVCBwYWNrYWdl
cwpOT1RFOiBFeGVjdXRpbmcgJy92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC93b3JrL3g4
Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xzLXRhcmJhbGwvMS4wLXIwL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2NyZWF0ZXJlcG9fYyAtLXVwZGF0ZSAtcSAvdm9s
L3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGst
bGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9vZS1zZGstcmVwbycgLi4uCk5PVEU6IFJ1
bm5pbmcgL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNk
ay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3Qt
bmF0aXZlL3Vzci9iaW4vZG5mIC15IC1jIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC93
b3JrL3g4Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xzLXRhcmJhbGwvMS4w
LXIwL3Nkay9pbWFnZS9vcHQvcG9reS8yLjUuMS9zeXNyb290cy9ub25lL2V0Yy9kbmYvZG5mLmNv
bmYgLS1zZXRvcHQ9cmVwb3NkaXI9L3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsv
eDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAv
c2RrL2ltYWdlL29wdC9wb2t5LzIuNS4xL3N5c3Jvb3RzL25vbmUvZXRjL3l1bS5yZXBvcy5kIC0t
cmVwb2Zyb21wYXRoPW9lLXJlcG8sL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsv
eDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAv
b2Utc2RrLXJlcG8gLS1pbnN0YWxscm9vdD0vdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAv
d29yay94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEu
MC1yMC9zZGsvaW1hZ2Uvb3B0L3Bva3kvMi41LjEvc3lzcm9vdHMvbm9uZSAtLXNldG9wdD1sb2dk
aXI9L3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1w
b2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvdGVtcCBtYWtlY2FjaGUgLS1y
ZWZyZXNoCk5PVEU6IEFkZGVkIG9lLXJlcG8gcmVwbyBmcm9tIC92b2wvc3BhY2UvcG9reS1zdW1v
L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xz
LXRhcmJhbGwvMS4wLXIwL29lLXNkay1yZXBvCm9lLXJlcG8gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDE3MCBNQi9zIHwgMS4zIE1CICAgICAwMDowMCAgICAKTGFzdCBt
ZXRhZGF0YSBleHBpcmF0aW9uIGNoZWNrOiAwOjAwOjAwIGFnbyBvbiBUaHUgMjMgQXVnIDIwMTgg
MDc6Mzg6NDAgQU0gVVRDLgpNZXRhZGF0YSBjYWNoZSBjcmVhdGVkLgoKTk9URTogUnVubmluZyAv
dm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQtbmF0aXZlc2RrLXBva3lz
ZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUv
dXNyL2Jpbi9kbmYgLXkgLWMgL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2
XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvc2Rr
L2ltYWdlL29wdC9wb2t5LzIuNS4xL3N5c3Jvb3RzL25vbmUvZXRjL2RuZi9kbmYuY29uZiAtLXNl
dG9wdD1yZXBvc2Rpcj0vdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQt
bmF0aXZlc2RrLXBva3lzZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9zZGsvaW1h
Z2Uvb3B0L3Bva3kvMi41LjEvc3lzcm9vdHMvbm9uZS9ldGMveXVtLnJlcG9zLmQgLS1yZXBvZnJv
bXBhdGg9b2UtcmVwbywvdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQt
bmF0aXZlc2RrLXBva3lzZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9vZS1zZGst
cmVwbyAtLWluc3RhbGxyb290PS92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC93b3JrL3g4
Nl82NC1uYXRpdmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xzLXRhcmJhbGwvMS4wLXIwL3Nk
ay9pbWFnZS9vcHQvcG9reS8yLjUuMS9zeXNyb290cy9ub25lIC0tc2V0b3B0PWxvZ2Rpcj0vdm9s
L3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGst
bGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC90ZW1wIC0tbm9ncGdjaGVjayBpbnN0YWxs
IGN1cmwtZGV2CkVSUk9SOiBDb3VsZCBub3QgaW52b2tlIGRuZi4gQ29tbWFuZCAnL3ZvbC9zcGFj
ZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4
L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4v
ZG5mIC15IC1jIC92b2wvc3BhY2UvcG9reS1zdW1vL2J1aWxkL3RtcC93b3JrL3g4Nl82NC1uYXRp
dmVzZGstcG9reXNkay1saW51eC9idWlsZHRvb2xzLXRhcmJhbGwvMS4wLXIwL3Nkay9pbWFnZS9v
cHQvcG9reS8yLjUuMS9zeXNyb290cy9ub25lL2V0Yy9kbmYvZG5mLmNvbmYgLS1zZXRvcHQ9cmVw
b3NkaXI9L3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNk
ay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvc2RrL2ltYWdlL29wdC9w
b2t5LzIuNS4xL3N5c3Jvb3RzL25vbmUvZXRjL3l1bS5yZXBvcy5kIC0tcmVwb2Zyb21wYXRoPW9l
LXJlcG8sL3ZvbC9zcGFjZS9wb2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNk
ay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvb2Utc2RrLXJlcG8gLS1p
bnN0YWxscm9vdD0vdm9sL3NwYWNlL3Bva3ktc3Vtby9idWlsZC90bXAvd29yay94ODZfNjQtbmF0
aXZlc2RrLXBva3lzZGstbGludXgvYnVpbGR0b29scy10YXJiYWxsLzEuMC1yMC9zZGsvaW1hZ2Uv
b3B0L3Bva3kvMi41LjEvc3lzcm9vdHMvbm9uZSAtLXNldG9wdD1sb2dkaXI9L3ZvbC9zcGFjZS9w
b2t5LXN1bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1
aWxkdG9vbHMtdGFyYmFsbC8xLjAtcjAvdGVtcCAtLW5vZ3BnY2hlY2sgaW5zdGFsbCBjdXJsLWRl
dicgcmV0dXJuZWQgMToKQWRkZWQgb2UtcmVwbyByZXBvIGZyb20gL3ZvbC9zcGFjZS9wb2t5LXN1
bW8vYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4L2J1aWxkdG9v
bHMtdGFyYmFsbC8xLjAtcjAvb2Utc2RrLXJlcG8KTGFzdCBtZXRhZGF0YSBleHBpcmF0aW9uIGNo
ZWNrOiAwOjAwOjAwIGFnbyBvbiBUaHUgMjMgQXVnIDIwMTggMDc6Mzg6NDAgQU0gVVRDLgpFcnJv
cjogCiBQcm9ibGVtOiBjb25mbGljdGluZyByZXF1ZXN0cwogIC0gcGFja2FnZSBjdXJsLWRldi03
LjYxLjAtcjAuYXJtdjVlIGRvZXMgbm90IGhhdmUgYSBjb21wYXRpYmxlIGFyY2hpdGVjdHVyZQoK
REVCVUc6IFB5dGhvbiBmdW5jdGlvbiBkb19wb3B1bGF0ZV9zZGsgZmluaXNoZWQKRVJST1I6IEZ1
bmN0aW9uIGZhaWxlZDogZG9fcG9wdWxhdGVfc2RrCg==

--0000000000000682400574162e35--
