Return-Path: <mathieu.allard@evalan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C9B0E00931; Fri,  1 Jul 2016 07:11:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 474 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jul 2016 07:11:37 PDT
Received: from claus.evalan.com (claus.evalan.com [176.9.90.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDE74E006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 07:11:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id 26651320605;
	Fri,  1 Jul 2016 16:03:53 +0200 (CEST)
Received: from claus.evalan.com ([127.0.0.1])
	by localhost (claus.evalan.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id kwDU6CPRouJy; Fri,  1 Jul 2016 16:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id BA38A320608;
	Fri,  1 Jul 2016 16:03:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at claus.evalan.com
Received: from claus.evalan.com ([127.0.0.1])
	by localhost (claus.evalan.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 1KKkTKPs_PVG; Fri,  1 Jul 2016 16:03:51 +0200 (CEST)
Received: from claus.evalan.com (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id 8E4D0320605;
	Fri,  1 Jul 2016 16:03:51 +0200 (CEST)
Date: Fri, 1 Jul 2016 16:03:51 +0200 (CEST)
From: Mathieu Allard <mathieu.allard@evalan.com>
To: "Daniel." <danielhilst@gmail.com>
Message-ID: <1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
In-Reply-To: <CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [92.111.78.37]
X-Mailer: Zimbra 8.6.0_GA_1194 (ZimbraWebClient - FF47 (Linux)/8.6.0_GA_1194)
Thread-Topic: setcap using recipe
Thread-Index: 0geibOR+sBVxuJkmZH+AypjfkFgvuw==
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 01 Jul 2016 14:11:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I think that the main issue here is that the pkg_postinst function runs its=
 action at the rootfs creation time, and not on the target as advised by Ro=
ss.

The chapter 5.3.16, "post-installation scripts" in the mega-manual offers s=
ome detailed explanations on how to make it run after the first boot.


Regards,

Mathieu


----- Original Message -----
From: "Daniel." <danielhilst@gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: yocto@yoctoproject.org
Sent: Friday, July 1, 2016 3:54:15 PM
Subject: Re: [yocto] setcap using recipe

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
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

