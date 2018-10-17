Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E18E00BC6; Wed, 17 Oct 2018 02:44:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13266E00BBF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 02:44:01 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id x4so24114971otg.3
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 02:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=h4WFE8Q01UNHEX9S8NKzfHJmA1pL5RYJeMOMfiSntRg=;
	b=nW5gYW1F/Q1de37bsPLxBKdVx2ujtpivyH/y2tVsSwpwre1ygclLjQVstjnH4yL9P4
	/itkfZSmFEOhdXjprr+D+OejVkIttYDJaWaNa/IvusFLeEidbB0Fsdp99mmKSEWiIObz
	Qdux+2vN1xQz5O7lPThkAatr5LUtKRyEIBRZNhOv2EpntKo/IbcsBNZGiUihczRUPSt8
	o99sucIzcVt1EL5jNy0xMfSiTWBwTcOD5PPaJMp+bzutex/Ytd9WzKqWrmH41LRJls3j
	ovGzSpNiuN45mtkzNiGycVNYAx0/u2FJTAMj//Zkng++iEcIum26atlDRHXDMrx5XV18
	RZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=h4WFE8Q01UNHEX9S8NKzfHJmA1pL5RYJeMOMfiSntRg=;
	b=uVFPPHQjFuOtRw51cw4LE7z5BD0zUCaXmCWas6SMg6hpZLae2rQTCuVX6Ievzjmkk6
	bsiPvL0rlt36wCmLlsXTO4V0CybmafRTORhxAG+pnQtR+I4S5J7UeuVvP4XTdrM1i7lG
	U1892D/py2gNO9X+9ojtnOPv1zpj4lNP0R5TsekJ1dNbwg1MmZNXOZr4ia0MxsKJnK/i
	00lacNpih/NOP0xStle2+lzJhJ5o/VORj1Svxz8jrudNkEqxvclOdrmOgzCqvgX+RP7S
	Hza3G5pQCDidCMlOKaB61aTK3kPY9mDiZ+OJHCdP44IU+Cvu5M/FHgQGKoCGzekQQ1J+
	jrqg==
X-Gm-Message-State: ABuFfojYj1UYUmaReqxm/ZZj9m3scwaO46hmPp62FedVv3lZAkEfFfuB
	PihkAi5S5OgWR+7W0DxsSxiuyfTE+F6R+NA2xwIS9w==
X-Google-Smtp-Source: ACcGV639Ns6wquCFRTVwQZ9ppTSpveAdh0PB0hINcM8f4eyUTu/oYOSUsqA3VNnIRoG6eUoQtKSgTdUaxYcQs/YOcik=
X-Received: by 2002:a9d:3ee4:: with SMTP id b91mr16848254otc.330.1539769441178;
	Wed, 17 Oct 2018 02:44:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
	<CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
	<CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
	<CAJTo0LY3H1rckDOU-S05XzzEFRBeRrOci2D49Bu-YTZe2+4+sQ@mail.gmail.com>
	<CAFjmEbBJUJaGHc-zf8YTSRPsA=Nigd0YLDTwVTe=vJYXar60cg@mail.gmail.com>
	<CAJTo0LZxz-1E68vDX24v_LirA1+mCjA+irDeBEdVcQ8+oQb+fw@mail.gmail.com>
	<CAFjmEbD7DHsCmGNLQSoQQPt_P7eU8V65yOAp+N-XRh3EduLNcw@mail.gmail.com>
In-Reply-To: <CAFjmEbD7DHsCmGNLQSoQQPt_P7eU8V65yOAp+N-XRh3EduLNcw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Oct 2018 10:43:49 +0100
Message-ID: <CAJTo0LaEqCExfFF-2pK5jFyHsR23+LdjkKXD1Osrtniz8KMfjQ@mail.gmail.com>
To: Marwen BRIKCHA <marwen.brikcha@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Wed, 17 Oct 2018 09:44:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Easiest way to determine what is pulling it in is to try removing the
package on the target using the package manager.  That will tell you
what dependencies are keeping it in.

Ross
On Wed, 17 Oct 2018 at 08:32, Marwen BRIKCHA <marwen.brikcha@gmail.com> wro=
te:
>
> Yes. I've seen compilation log and it does do_install in final image.
> It's installed in /usr/lib64/python3.5 on RootFS.
>
> Le mer. 17 oct. 2018, =C3=A0 00 h 48, Burton, Ross <ross.burton@intel.com=
> a =C3=A9crit :
>>
>> On Tue, 16 Oct 2018 at 14:06, Marwen BRIKCHA <marwen.brikcha@gmail.com> =
wrote:
>> >
>> > because, when i run :
>> > :
>> > $> bitbake -v opencv
>> > I can see that python3 is fetched, configure, ... etc
>> > So, i think it the responsible for this.
>>
>> Please remember to CC the list.
>>
>> Python being built doesn't lead to Python being installed in the
>> image.  Have a look at the image manifest (in deploy/images) or look
>> at what is actually installed inside the image.
>>
>> Ross

