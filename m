Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8143E00931; Fri,  1 Jul 2016 07:23:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56551E006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 07:23:41 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id m127so95458823vkb.3
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 07:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=eL/pA2u4Ry187H5S+PZiGBn61PbDGAmduRz5rBvt5eg=;
	b=AznBa2i4fndrWPj8ntKTR1mwd666PxxCAcxvlvwi7JEzirND1tKxS2YiI/zH95ZDwH
	G+b29J9rkLC0wrNQyGTBHeaLvY4ypkRPQBI7zzgJyhkEiAc961hCkf2I6U+L0DnM/LaU
	hu+dCNViiJ3F1FM12kEoj5p/JZo15RB/F8mFh4q7A0qj9MwyGQzaUOt1hVjaanyy58b5
	ODIX0YJkNyyhEUdF0GO8LJ0Sp6wsGfLqdAD1LcVGFVxOwzJjRcGhGX7hQljqkVjb7Mjp
	WQ4jzPTfsyMIH7RjbKsjx0oyYEv196M5b4F6GKJapM2RL+ey8MoVRUHg/eco2ncvQ0iy
	z9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=eL/pA2u4Ry187H5S+PZiGBn61PbDGAmduRz5rBvt5eg=;
	b=MfjOFcaTaGef5OHdlmfj8C8z/3qNByUpfu3/nUmqy04UVTMyZoPUNGN5bvsr2fqhjO
	71UPOa4VJhIgJQ5ViN8xJwtbnz5DG7V+1tW5F1Mwq3WOp/M7aGuFMQ+lcYRG3a/r3D+x
	RhnQY/UvBk8VNtuAc4jkgkHpfKiLzrBIk3WifuHCvV6K/A3EaiweOgwalhPCm+ihRLh4
	dgys5hJ2Sqv/HG/4wGih66r5AWdMFWVXHIflv4OGY6y0LyZuzTdHu3WExU0ilqPo+ndT
	wJDg1teNQ84FWeSNciUkgnOzZBzA4ChKtK8Cdn0ouaJIQ/BA0TTEtrSiyKDg9TluZH17
	97bQ==
X-Gm-Message-State: ALyK8tK7ohunRTM9XDH4oiSPaZDwUDzzk2No5C3Zxix4Z3azSC22o9Mfkta9QgytqgsJfp/NV03R/oA4DMJ6mQ==
X-Received: by 10.159.34.229 with SMTP id 92mr8091815uan.150.1467383021455;
	Fri, 01 Jul 2016 07:23:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.201 with HTTP; Fri, 1 Jul 2016 07:23:40 -0700 (PDT)
In-Reply-To: <1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
	<1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 1 Jul 2016 11:23:40 -0300
Message-ID: <CAF3SDA5jrx7n5C6WpFGKJSxnnwY=VJJ-EDdUYwYt45Z5xfTw9Q@mail.gmail.com>
To: Mathieu Allard <mathieu.allard@evalan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Fri, 01 Jul 2016 14:23:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hmmm I see,

Well, I didn't note that. And yeah, that command should be ran at
first boot, (that feature saved my life a bunch of times :) )

Regards,

2016-07-01 11:03 GMT-03:00 Mathieu Allard <mathieu.allard@evalan.com>:
> Hello,
>
> I think that the main issue here is that the pkg_postinst function runs i=
ts action at the rootfs creation time, and not on the target as advised by =
Ross.
>
> The chapter 5.3.16, "post-installation scripts" in the mega-manual offers=
 some detailed explanations on how to make it run after the first boot.
>
>
> Regards,
>
> Mathieu
>
>
> ----- Original Message -----
> From: "Daniel." <danielhilst@gmail.com>
> To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
> Cc: yocto@yoctoproject.org
> Sent: Friday, July 1, 2016 3:54:15 PM
> Subject: Re: [yocto] setcap using recipe
>
> Does your target filesystem support it? ubifs doesn't :(
> http://www.linux-mtd.infradead.org/doc/ubifs.html#L_xattr
>
> 2016-07-01 9:53 GMT-03:00 Kumar, Shrawan <Shrawan.Kumar@harman.com>:
>> Hello Ross,
>>
>>
>>
>> None of the approach is working .  I have attached the  recipe where I a=
m
>> trying to execute postinst . It builds successfully , But when I run get=
cap
>> on the target , does not return the set capabilities.
>>
>>
>>
>> Help will be highly appreciated .
>>
>>
>>
>> Regards
>>
>> Shrawan
>>
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Friday, June 24, 2016 6:40 PM
>>
>>
>> To: Kumar, Shrawan
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] setcap using recipe
>>
>>
>>
>> Looks like using setcap directly is broken currently, there are two
>> workarounds:
>>
>>
>>
>> 1) use a postinst to invoke setcap on the target instead
>>
>> 2) test the patch for pseudo that is on this list ([PATCH] Add capset ps=
eudo
>> function that always succeeds) and verify that it fixes the problem for =
you.
>>
>>
>>
>> Ross
>>
>>
>>
>> On 24 June 2016 at 13:31, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrot=
e:
>>
>> I am using Yocto 2.0.2
>>
>>
>>
>> Thanks and Regards
>>
>> Shrawan
>>
>>
>>
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Friday, June 24, 2016 5:56 PM
>>
>>
>> To: Kumar, Shrawan
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] setcap using recipe
>>
>>
>>
>> What version of OE/Yocto are you using?  Old versions of pseudo didn't
>> support xattrs at all.
>>
>>
>>
>> Ross
>>
>>
>>
>> On 24 June 2016 at 13:23, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrot=
e:
>>
>> Thanks Ross for your quick turn around , I am getting below error
>>
>>
>>
>> =E2=80=9CUnable le to set CAP_SETFCAP effective capability: Operation no=
t
>> permitted.=E2=80=9D
>>
>>
>>
>> But when I use    # sudo setcap cap_net_raw+ep  helloworld        on com=
mand
>> line I am able to set the cap.
>>
>>
>>
>> To achieve the sudo realization  in recipe , I tried  as below , but no
>> luck=E2=80=A6=E2=80=A6 Can you suggest something here  ?
>>
>>
>>
>> fakeroot do_install() {
>>
>>                     install -d ${D}${bindir}
>>
>>                     install -m 0755 helloworld ${D}${bindir}
>>
>>                     install -d ${D}/lib/systemd/system
>>
>>                     install -m 0755 hello.service ${D}/lib/systemd/syste=
m/
>>
>>              setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>>
>>
>>
>> }
>>
>>
>>
>> Thanks and Regards
>>
>> Shrawan
>>
>>
>>
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Friday, June 24, 2016 5:09 PM
>> To: Kumar, Shrawan
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] setcap using recipe
>>
>>
>>
>> Hi,
>>
>>
>>
>> On 24 June 2016 at 11:41, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrot=
e:
>>
>> Is there a way to  add a capability to a binary (cap_net_raw+ep),into a
>> recipe?
>>
>>
>>
>> Example :
>>
>> do_install() {
>>
>>            install -d ${D}${bindir}
>>
>>            install -m 0755 helloworld ${D}${bindir}
>>
>>            install -d ${D}/lib/systemd/system
>>
>>            install -m 0755 hello.service ${D}/lib/systemd/system/
>>
>>            setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>>
>> }
>>
>>
>>
>> If yes is this correct approach to achieve the same from  package recipe
>> itself ?
>>
>>
>> capabilities on files are just extended attributes, so assuming that you
>> have a fairly recent Yocto and your host and target filesystems support
>> extended attributes, yes this should work.
>>
>>
>>
>> Ross
>>
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Do or do not. There is no try"
  Yoda Master

