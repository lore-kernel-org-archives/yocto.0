Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B30DE00A94; Wed, 10 Oct 2018 11:18:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6887CE003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 11:18:58 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id l197-v6so4881954oib.8
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 11:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=+xSKdKwcJjtEz3wE7sVhEHR1G08wvLRB0nljpfAHFs4=;
	b=JFE6gql/noQHaRd+Mv2Qij4gKkKHhZ956KGywxyPXMds9WIEVLEgMGG5Hbal+W/rsy
	sk+h2wA65zgbFynmUuvtE7PNRDAO+4daeaDKhx4atWSvpVWiObgNrjiIH9KpmEfANWex
	62epvGdkQ68FirSah+RiLwDsVJdYBv/fPE5t7BMdMKoS1hruSBXnoY+COAcx0ZFFsTwg
	EhgQJcq59w13RhiMmYOY05pQGniex6cpN79p6B76ZbyUmaLySSt/rpboXsXfW2Jm1dxY
	vC2Q2PllJbd+4zwFFn+8gLDh/JeZSLj1YZuAXR7/xb7YN4Dcz8S2IU1QEgrTznSEb90B
	OxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=+xSKdKwcJjtEz3wE7sVhEHR1G08wvLRB0nljpfAHFs4=;
	b=CewR0QbPAvzYz1MHvhMmhdCSV547wdu531yU0UTYC43/5DUaKeoLDE/khk6qdrjTrn
	CIkgoGt1kEJABQtx5+xkPopgno9ITYzjcSfmKIdRMnKVccG+8v1pVPJqvNjF4x17f32K
	UgB5LC5bfcbePa7//+GRk04dRaTW3wSEhGFmTYJta920xlCx+HIjUnviI695EP0544eE
	1tFqfFpQOLxw/fs2rmNlRM7wGnGLqMtxYf1SO5RhdmQkr7hyNQ2Ga3hlTtZW3aZnhXSQ
	O5MWuHvxpuqb48ZK0E2fhGZx2tdKWglYszM+EMK69+z5SVFF61BPgQm45AK4Fit/P9RQ
	hDzg==
X-Gm-Message-State: ABuFfojuPfNVeWRyoP4NBQNpLlOTSVGt0PUTqEYYHeOb3ERAlBSSqhfh
	o+xbOPUbcFsR7rejZylzi8jRrwL+KpPDg1Qck8HLUA==
X-Google-Smtp-Source: ACcGV63WE859ghlUn2ll1CKXdSnrQBF4L+Rt0I30YPwNzgbs0HmOEACIPtKKTa8DbhnsltwKPK9xIry3NpE7/Q8mK5g=
X-Received: by 2002:aca:a88b:: with SMTP id
	r133-v6mr2452383oie.56.1539195537428; 
	Wed, 10 Oct 2018 11:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN1c9D=_LUz98vrW+HmGHsqH_2BL-PrchXcv54sgqY5sHQ@mail.gmail.com>
In-Reply-To: <CACKFPN1c9D=_LUz98vrW+HmGHsqH_2BL-PrchXcv54sgqY5sHQ@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 10 Oct 2018 20:18:46 +0200
Message-ID: <CACKFPN2xQWgyzieWEabhZARtYdfXaD3hk78c9rv77-YGZBCsig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: preempt-rt for 4.14.71 fails to build
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
X-List-Received-Date: Wed, 10 Oct 2018 18:18:59 -0000
Content-Type: multipart/alternative; boundary="0000000000003f95b70577e3e3eb"

--0000000000003f95b70577e3e3eb
Content-Type: text/plain; charset="UTF-8"

Hi all!

I've tried to build the latest preempt-rt kernel from the
`v4.14/standard/preempt-rt/base`
and it fails to build. These are the hashes I've used:

```
LINUX_VERSION = "4.14.71"
SRCREV_machine = "c37a14708f5b618602f84f83f902346e055824c3"
SRCREV_meta = "1fb0b0379fb5883ce5af7485374e3f78ee4272d3"
```

And the errors I get are:
```
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:
In function '__rt_mutex_lock':
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2044:48:
error: passing argument 3 of 'rt_mutex_fastlock' from incompatible pointer
type [-Werror=incompatible-pointer-types]
  rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);
                                                ^~~~~~~~~~~~~~~~~
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935:1:
note: expected 'struct ww_acquire_ctx *' but argument is of type 'int
(*)(struct rt_mutex *, int,  struct hrtimer_sleeper *, enum
rtmutex_chainwalk,  struct ww_acquire_ctx *)'
 rt_mutex_fastlock(struct rt_mutex *lock, int state,
 ^~~~~~~~~~~~~~~~~
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2044:2:
error: too few arguments to function 'rt_mutex_fastlock'
  rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);
  ^~~~~~~~~~~~~~~~~
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935:1:
note: declared here
 rt_mutex_fastlock(struct rt_mutex *lock, int state,
 ^~~~~~~~~~~~~~~~~
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:
In function 'rt_mutex_lock':
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2069:2:
error: too many arguments to function 'rt_mutex_lock_state'
  rt_mutex_lock_state(lock, TASK_UNINTERRUPTIBLE, 0);
  ^~~~~~~~~~~~~~~~~~~
/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2028:20:
note: declared here
 static int __sched rt_mutex_lock_state(struct rt_mutex *lock, int state)
```

Is there any change that the latest rt44 patches are nor applied?

Thanks!
Dimitris

--0000000000003f95b70577e3e3eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hi all!<br></d=
iv><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
><br></div><div>I&#39;ve tried to build the latest preempt-rt kernel from t=
he `v4.14/standard/preempt-rt/base`</div><div>and it fails to build. These =
are the hashes I&#39;ve used:</div><div><br></div><div>```</div><div><div>L=
INUX_VERSION =3D &quot;4.14.71&quot;</div><div>SRCREV_machine =3D &quot;c37=
a14708f5b618602f84f83f902346e055824c3&quot;</div><div>SRCREV_meta =3D &quot=
;1fb0b0379fb5883ce5af7485374e3f78ee4272d3&quot;</div></div><div>```</div><d=
iv><br></div><div>And the errors I get are:</div><div>```</div><div><div>/r=
nd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locki=
ng/rtmutex.c: In function &#39;__rt_mutex_lock&#39;:</div><div>/rnd/yocto/n=
ativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex=
.c:2044:48: error: passing argument 3 of &#39;rt_mutex_fastlock&#39; from i=
ncompatible pointer type [-Werror=3Dincompatible-pointer-types]</div><div>=
=C2=A0 rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);</d=
iv><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~</div><div>/rnd/yocto/nativeos=
/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935=
:1: note: expected &#39;struct ww_acquire_ctx *&#39; but argument is of typ=
e &#39;int (*)(struct rt_mutex *, int,=C2=A0 struct hrtimer_sleeper *, enum=
 rtmutex_chainwalk,=C2=A0 struct ww_acquire_ctx *)&#39;</div><div>=C2=A0rt_=
mutex_fastlock(struct rt_mutex *lock, int state,</div><div>=C2=A0^~~~~~~~~~=
~~~~~~~</div><div>/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel=
-source/kernel/locking/rtmutex.c:2044:2: error: too few arguments to functi=
on &#39;rt_mutex_fastlock&#39;</div><div>=C2=A0 rt_mutex_fastlock(lock, TAS=
K_UNINTERRUPTIBLE, rt_mutex_slowlock);</div><div>=C2=A0 ^~~~~~~~~~~~~~~~~</=
div><div>/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/k=
ernel/locking/rtmutex.c:1935:1: note: declared here</div><div>=C2=A0rt_mute=
x_fastlock(struct rt_mutex *lock, int state,</div><div>=C2=A0^~~~~~~~~~~~~~=
~~~</div><div>/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-sou=
rce/kernel/locking/rtmutex.c: In function &#39;rt_mutex_lock&#39;:</div><di=
v>/rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/l=
ocking/rtmutex.c:2069:2: error: too many arguments to function &#39;rt_mute=
x_lock_state&#39;</div><div>=C2=A0 rt_mutex_lock_state(lock, TASK_UNINTERRU=
PTIBLE, 0);</div><div>=C2=A0 ^~~~~~~~~~~~~~~~~~~</div><div>/rnd/yocto/nativ=
eos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2=
028:20: note: declared here</div><div>=C2=A0static int __sched rt_mutex_loc=
k_state(struct rt_mutex *lock, int state)</div></div><div>```</div><div><br=
></div><div>Is there any change that the latest rt44 patches are nor applie=
d?</div><div><br></div><div>Thanks!</div><div>Dimitris</div></div></div></d=
iv></div>
</div></div>

--0000000000003f95b70577e3e3eb--
