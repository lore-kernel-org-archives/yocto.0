Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3882EE00942; Tue, 23 Apr 2019 03:56:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB1BBE0053F
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 03:56:45 -0700 (PDT)
Received: from [192.168.0.49] (unknown [192.168.0.49])
	by kozue.soulik.info (Postfix) with ESMTPSA id 657B8101FC5;
	Tue, 23 Apr 2019 19:57:01 +0900 (JST)
Mime-Version: 1.0 (1.0)
From: Ayaka <ayaka@soulik.info>
X-Mailer: iPad Mail (16A404)
In-Reply-To: <20190423080240.GA12920@linux-uys3>
Date: Tue, 23 Apr 2019 18:56:42 +0800
Message-Id: <E97DD227-F2FE-4269-9587-E95120B007A7@soulik.info>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190423080240.GA12920@linux-uys3>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH 0/5] add new SoCs support
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
X-List-Received-Date: Tue, 23 Apr 2019 10:56:47 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Apr 23, 2019, at 4:02 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
> Hi Randy,
>=20
>> On Sun 2019-04-21 @ 11:53:34 PM, Randy 'ayaka' Li wrote:
>> After the FOSDEM, my patches for ARMv8 cortex tuning
>> are finally merged. So I think it is complete the
>> lose piece at meta-rockchip.
>>=20
>> Since the big-litte is not supported by OE now,
>> I make all the chips' configure to use the big core
>> tuning.
>>=20
>> Randy 'ayaka' Li (5):
>>  conf/machine: rk3288: Add some machine files
>>  conf/machine: add rk3399 support
>>  conf/machine: add support for rk3328
>>  conf/machine: add support for rk3036
>>  conf/machine: add support for rv1108
>=20
> I don't get the impression any of these patches were created for
> git.yoctoproject.org/meta-rockchip. Although they apply, none of them ac=
tually
> work. Or if they were intended for git.yoctoproject.org/meta-rockchip, t=
hen it
> doesn't look like they were intended for the master branch (which is the
> assumption when no branch tags are mentioned).
I am very sorry, it was based on a old version of meta-rockchip(two years =
ago) and I thought this project is not that active, when I pick up them fro=
m my repository(the one with GPU and VPU support) I didn=E2=80=99t meet any=
 problem, so I thought it would work.
 I forgot the linux-rockchip is removed now I fix them soon. About the dup=
lication configuration, as the bitbake doesn=E2=80=99t warn them so I didn=
=E2=80=99t notice this problem.

I would sent out a new version later.
>=20
> For example, many of these new MACHINEs indicate the Linux kernel
> to use is "linux-rockchip" or "linux". Neither of these exist in
> git.yoctoproject.org/meta-rockchip (or openembedded-core), so building a=
ny of
> the MACHINEs introduced in these patches that specify either of these ke=
rnels
> will fail.
>=20
> git.yoctoproject.org/meta-rockchip is a community layer focused on provi=
ding
> builds composed of upstream and open-source components (i.e. U-Boot from
> git.denx.de/u-boot.git and the Linux kernel from kernel.org). Some BSP l=
ayers
> (e.g. meta-freescale) are able to provide users with a switch so that bu=
ilds
> can be built either from vendor sources or upstream sources by setting o=
ne
> parameter, but so far git.yoctoproject.org/meta-rockchip doesn't have th=
is
> functionality and my attempts to get this functionality integrated at a
> higher level (i.e. instead of having every BSP layer implement this logi=
c
> independently) haven't met with success.
>=20
> Best regards,
>    Trevor


