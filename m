Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 426E6E0086E; Wed, 28 Jan 2015 02:20:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11BAAE00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 02:20:22 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id hn18so9754312igb.2
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 02:20:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=69JCDHgKjykEaeUEKIspO+FqYUR6nOLp+3+B56SgjXY=;
	b=UWQq9rBiznXWoPmVPpdgoUry7eSWA3t10QB93uul8ZMtue3t68EUIcnw1xw3ayPPIK
	JGK+Ho5Pxmr0QeEhCzd4hV0EDf785kKqjjTkm0RcwRG9ZcWuBFU/tdPACbfLFmRXZqKg
	NShdAIB0g9PGJo+DaM8kaKA/yzZB+bxvJk54bZy6ymDCAlJpliGPRIz7/Kgc/7lJPxgW
	mYgxBUhItTqw0dWcfZGiYXZqeSg19Y8AeVJt9G+RLs1XWNWHRhRcU/Ed33mRqwAcH7WI
	b9huL/jOa+BjOdvyxM9OhYaTJb7aK62ITDvDFWK/A46pT/GF4TH5Wfqv0lZjcGeTxsMG
	pAug==
X-Gm-Message-State: ALoCoQkpO5ks4Z4m6lNgNJUELfWg3Vkiri1qK/yYcfKztIhpeCY918nuJ7iV6WJshwFmzVITG9Vd
MIME-Version: 1.0
X-Received: by 10.107.137.206 with SMTP id t75mr2916233ioi.78.1422440421408;
	Wed, 28 Jan 2015 02:20:21 -0800 (PST)
Received: by 10.36.124.210 with HTTP; Wed, 28 Jan 2015 02:20:21 -0800 (PST)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <1422441531.Lu0tPXzC8A@peggleto-mobl5.ger.corp.intel.com>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
	<1422441531.Lu0tPXzC8A@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 28 Jan 2015 11:20:21 +0100
Message-ID: <CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: adding meta-oracle-java
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
X-List-Received-Date: Wed, 28 Jan 2015 10:20:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jim,

On Wed, Jan 28, 2015 at 10:25 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Jim,
>
> On Tuesday 27 January 2015 15:24:09 James Abernathy wrote:
>> In looking at the meta-oracle-java README, I see the notes about adding =
the
>> License statement and switching to .deb packaging.  With that done, I ge=
t a
>> clean build, but my image boots and I can=E2=80=99t see any evidence tha=
t java was
>> included.
>>
>> What am I missing.
>
>> I have a web app server that in all inclusive and can be setup just by
>> running =E2=80=9Cjava -jar xxxx.jar=E2=80=9D.  But can=E2=80=99t run it =
without java installed.
>
> I assume you've just added the layer to your bblayers.conf - if so you've
> missed the next step of actually adding additional packages produced by
> recipes in the layer to your image. I haven't tried it but I assume the
> package to add would be "oracle-jse-jre".

As mentioned here, if you include "oracle-jse-jre" in the image, things
should work as expected (IMAGE_INSTALL_append =3D " oracle-jse-jre")

root@qemux86:~# ls -la /usr/bin/java
lrwxrwxrwx    1 root     root            31 Jan 28 10:11 /usr/bin/java
-> /usr/share/jre1.7.0_67/bin/java

root@qemux86:~# java -version
java version "1.7.0_67"
Java(TM) SE Runtime Environment (build 1.7.0_67-b01)
Java HotSpot(TM) Client VM (build 24.65-b04, mixed mode)


> Cheers,
> Paul

Best Regards,
Maxin

