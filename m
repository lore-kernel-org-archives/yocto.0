Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E65F5E00931; Fri,  1 Jul 2016 06:54:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B46DE006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 06:54:17 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id u68so111280246vkf.2
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 06:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bGVooXQlVtx246bUUZLLGa1l3YcEOW3IRnGjbG2e6iU=;
	b=QeOkZ4wscsBBSpv5ewUU0/R8gNme9vuPY2hOCS1GGi0IKWYd+Bj3iut+Psiu2Wl41O
	QKbpOdWHAjaXXkkJGDYqSJgq+LvJFbAtA0mt65oxsb1HTR1OUHd9WGnFrXXER8iKJ5ls
	sO9x2koWkIfGPXw+XLoR0Nfgum0LT76Q196+8NZg+p9u64BbaTcmxTCxFhh5h/L8V/cZ
	ZpnGb5Sm4J3GcFW2Sk8BYjT/cVNal0Fya/mINKkcNj7vFMqbqykgjSIaEnIE86Eo+aIx
	ji86S9kmydF3LYPkm1Lc++5YMZ4mue0QdYEf/a0Znur7m1X836hIUhzZ/vFg43HgJxfp
	ErhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bGVooXQlVtx246bUUZLLGa1l3YcEOW3IRnGjbG2e6iU=;
	b=le+69ZX1GLvXcIyid4li0YkDmP2+g3SPPUzngsG8MUY6zXdQL3B5s5FzTkzJAF8GjU
	kH/m2LdvU9rl5YwsK1FkCCtL6BBjaZa+WWQq8fXh7E5n3Ukq2kFt7TiSJcp2kG9OYBHH
	MG/Zr/63BGb2GJEaICImdeopy3pFzW18NtCAZL1eQWaAgm4b+DlbEjxgDkOBsn7c5eBN
	EX1mA1m+pT3i5GjAqtMRLjadX2oN7XEE1P24fvzWTlDRmmDBbjUP4TJoeMMRxpAjZk5m
	gjkSwuIL37ok0t8ksGbLwFjKOteRFXUCBW9D6h3eLjBk1HYZ08UQdeWiE9RHTxKbUFuw
	c0UA==
X-Gm-Message-State: ALyK8tJlBUdPPJZc6bfvEeMguvfeOngEQRmAhD9At+7hBdeF6QSHkWQJR2Q0oAt/VfzRnQDpE/0/jpEb+KfdlA==
X-Received: by 10.31.192.14 with SMTP id q14mr9801307vkf.51.1467381256525;
	Fri, 01 Jul 2016 06:54:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.201 with HTTP; Fri, 1 Jul 2016 06:54:15 -0700 (PDT)
In-Reply-To: <0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 1 Jul 2016 10:54:15 -0300
Message-ID: <CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
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
X-List-Received-Date: Fri, 01 Jul 2016 13:54:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Does your target filesystem support it? ubifs doesn't :(
http://www.linux-mtd.infradead.org/doc/ubifs.html#L_xattr

2016-07-01 9:53 GMT-03:00 Kumar, Shrawan <Shrawan.Kumar@harman.com>:
> Hello Ross,
>
>
>
> None of the approach is working .  I have attached the  recipe where I am
> trying to execute postinst . It builds successfully , But when I run getc=
ap
> on the target , does not return the set capabilities.
>
>
>
> Help will be highly appreciated .
>
>
>
> Regards
>
> Shrawan
>
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Friday, June 24, 2016 6:40 PM
>
>
> To: Kumar, Shrawan
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] setcap using recipe
>
>
>
> Looks like using setcap directly is broken currently, there are two
> workarounds:
>
>
>
> 1) use a postinst to invoke setcap on the target instead
>
> 2) test the patch for pseudo that is on this list ([PATCH] Add capset pse=
udo
> function that always succeeds) and verify that it fixes the problem for y=
ou.
>
>
>
> Ross
>
>
>
> On 24 June 2016 at 13:31, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote=
:
>
> I am using Yocto 2.0.2
>
>
>
> Thanks and Regards
>
> Shrawan
>
>
>
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Friday, June 24, 2016 5:56 PM
>
>
> To: Kumar, Shrawan
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] setcap using recipe
>
>
>
> What version of OE/Yocto are you using?  Old versions of pseudo didn't
> support xattrs at all.
>
>
>
> Ross
>
>
>
> On 24 June 2016 at 13:23, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote=
:
>
> Thanks Ross for your quick turn around , I am getting below error
>
>
>
> =E2=80=9CUnable le to set CAP_SETFCAP effective capability: Operation not
> permitted.=E2=80=9D
>
>
>
> But when I use    # sudo setcap cap_net_raw+ep  helloworld        on comm=
and
> line I am able to set the cap.
>
>
>
> To achieve the sudo realization  in recipe , I tried  as below , but no
> luck=E2=80=A6=E2=80=A6 Can you suggest something here  ?
>
>
>
> fakeroot do_install() {
>
>                     install -d ${D}${bindir}
>
>                     install -m 0755 helloworld ${D}${bindir}
>
>                     install -d ${D}/lib/systemd/system
>
>                     install -m 0755 hello.service ${D}/lib/systemd/system=
/
>
>              setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
>
>
> }
>
>
>
> Thanks and Regards
>
> Shrawan
>
>
>
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Friday, June 24, 2016 5:09 PM
> To: Kumar, Shrawan
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] setcap using recipe
>
>
>
> Hi,
>
>
>
> On 24 June 2016 at 11:41, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote=
:
>
> Is there a way to  add a capability to a binary (cap_net_raw+ep),into a
> recipe?
>
>
>
> Example :
>
> do_install() {
>
>            install -d ${D}${bindir}
>
>            install -m 0755 helloworld ${D}${bindir}
>
>            install -d ${D}/lib/systemd/system
>
>            install -m 0755 hello.service ${D}/lib/systemd/system/
>
>            setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
> }
>
>
>
> If yes is this correct approach to achieve the same from  package recipe
> itself ?
>
>
> capabilities on files are just extended attributes, so assuming that you
> have a fairly recent Yocto and your host and target filesystems support
> extended attributes, yes this should work.
>
>
>
> Ross
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Do or do not. There is no try"
  Yoda Master

