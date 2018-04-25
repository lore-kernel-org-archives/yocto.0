Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A19CAE00B28; Wed, 25 Apr 2018 13:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BCB5E005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 13:55:52 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id h19so4651382qkj.10
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 13:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=he9OuN0tgoOqy2Xog5dHPVZjmcBQkiV6HB3/j3tpiCU=;
	b=LaTkjiD7siFTJJPN271ansXfS9Q3oBrgpwwWFahayvstxM8z7xsfUne+/G+iyviWMn
	gDDjPd65r68TH53W4+rL/WZEga02NPGOFseJ88oSSyM1ntx2y1IwJ60nNXINhS0/Dgwi
	CRzNWXRTI7ctzNLwWaKG8zTs3E9YPG7Kt5voucpVP7+dOfEGIkry88aSxUwaeN7sQkmM
	3Wk0FJ68zGSPalRiw0MuBD6D1a32z6C/FnemOtbcxDbfBDLKR7YX0eJcm/Lhtrljif96
	9Na6Qc6ENAbEfcjsdqOSl/G+ZwVSJu+6aXnK5ks88J+bSl5VuGLTScyGR04QLQswg3VT
	9sdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=he9OuN0tgoOqy2Xog5dHPVZjmcBQkiV6HB3/j3tpiCU=;
	b=p0wYR3mlZBN4tJ/Hz1Rieii3KtItAKd2wzSvPi1Kxpe75MObGHE9T6Bm13llX46lvN
	XzVLDReqFf34QlHV+XIIoL1CdhS1TFo96ac693ENGVu7J1h+LRZCkqEiUuB4G2qKuwd+
	l8+2fu7iq1HTGTBsDFpeXjL/P+eH4jDLpb1LmVJlm0/yu4Ma3DlHMJhZDwcO+XcDLdBg
	k+O5JoijDsSJ43Y78k7zy9PrAhJ5WB8Gu8mth3YcKnsicFyXFmAwE1kgIE7xpr5tO0w2
	KftF39BFnibN+oQtkRsJQIwCKJbU987neOn+Sd5LInw8giy5DyuGxtyWejSABC/lC8K8
	kQ8g==
X-Gm-Message-State: ALQs6tCbE19fnnnqCBIuNq2qLM8sRPAHS4mGtpj55Sm5ZLwqSeEcLrNm
	PNWYM91HpCSvYLeVOt+ChiAUUPVRVx77r9zsVU8=
X-Google-Smtp-Source: AIpwx4+e8+TFzaosbn7QcGAJVA9NzUrBJDXPv3BQNNlhVzWcPlV7ClNlqIjYF3UdcLCnvBeM0a9Zdy3S978gyd5JwJA=
X-Received: by 10.55.86.133 with SMTP id k127mr32347859qkb.264.1524689751550; 
	Wed, 25 Apr 2018 13:55:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 25 Apr 2018 13:55:51 -0700 (PDT)
In-Reply-To: <CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
	<CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 25 Apr 2018 22:55:51 +0200
Message-ID: <CAGAf8LziVYUN6ZK622JURBer5CUHGTKQvx9t53Ut7NX9JO9-wA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Wed, 25 Apr 2018 20:55:53 -0000
Content-Type: text/plain; charset="UTF-8"

> Jethro doesn't support Yocto 16.* because it is very old (released 2015...)...

Now, I must admit, I have learned something new. Never gave any
consideration to these releases: example: Pyro 17.0.3.

But now I understand: it has direct link with Ubuntu 17... Even, YOCTO
Pyro, as given example, can be substituted with Ubuntu 17.04?! Wow...

Every day in every way, I'm progressing more and more! ;-)

> If you want to use Jethro despite the known serious security problems
> then you'll need to dig out the relevant fixes from the newer releases.

My question here is: how hard it is? Either to move/rebase complex
application and some system packages to Rocko (and rebase/revisit
APIs), either to back-port additional (security) packages from the
newer releases?!

Seems lot of hard work, considering both cases.

Zoran

On Wed, Apr 25, 2018 at 9:50 PM, Burton, Ross <ross.burton@intel.com> wrote:
> Jethro doesn't support Yocto 16.* because it is very old (released
> 2015, it's been unmaintained for six months now).  If you want to use
> Jethro despite the known serious security problems then you'll need to
> dig out the relevant fixes from the newer releases.
>
> Ross
>
> On 25 April 2018 at 20:36, Oliver Graute <oliver.graute@gmail.com> wrote:
>> On 25/04/18, Zoran Stojsavljevic wrote:
>>> > I try to compile yocto jethro environment which is working
>>> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .
>>>
>>> What would be the benefit for the successful compiling of YOCTO Jethro on
>>> Kubuntu 16.04 over Ubuntu 14.04???
>>
>> I tried to get my Yocto compiled on a PC of a colleague and his
>> installation was a Kubuntu 16.04. I've made the experience that often
>> only additional packages needs to be installed to step over these
>> compile issues. Sometimes its clear from the debug output but in this
>> case I have no Idea which packages is missing. On my develop PC and our
>> Buildserver with Ubuntu 14.04 everything is fine. But I'am afraid that I
>> can get similar trouble if I update to a newer ubuntu release there too.
>>
>> Best regards,
>>
>> Oliver
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

