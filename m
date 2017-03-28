Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B197E0093F; Tue, 28 Mar 2017 07:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B0F9E00839
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 07:59:46 -0700 (PDT)
Received: from oxbsltgw54.schlund.de ([172.19.249.7]) by
	mrelayeu.kundenserver.de (mreue101 [212.227.15.179]) with ESMTPSA
	(Nemesis) id 0MUnfA-1ceSJJ1iii-00YEV8 for <yocto@yoctoproject.org>;
	Tue, 28 Mar 2017 16:59:45 +0200
Date: Tue, 28 Mar 2017 15:59:45 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <1477277853.227829.1490713185175@email.1and1.co.uk>
In-Reply-To: <1ee401d2a7ae$cc2fabb0$648f0310$@ln-systems.com>
References: <1ee401d2a7ae$cc2fabb0$648f0310$@ln-systems.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:Fbzet+wLm57tGZP+Z5XIslqC4Yuufjdtt8eyOhffCHk0PL63w16
	PvT55jmantfcKhjuCCG5QtnLEkFbU0NCZDwOLMAb8x6LR0dKpND/ufpWRlYXdkItEHDlmf/
	nfAf/yZBoHZ9bCEfXs+uftUzY8Qzh3PN+3aVdzr5uVpPR1omVGotthPgKt1Qqs0mENce+aP
	GYd46yq1gIYyxywBY76gg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:errarbGtiYY=:c61j5IsqyBzyFNzhASzHnJ
	M7UbSdUYoKdy1HoWJLfOrjxT3FscQkm6d1NVjiZbzQ3CrKFnjkRc6qjK8dQxKEswwrApBTkqv
	+ypdpDS5sSKmo2TIFXUfhQHf3CS84TRwQgizTyFRjB81qncAClUfiiti/B4h+rAtEFzebbmhN
	yGowZzZeznq3SYYiBSgHnRpYbU9xERLc9wT9VkTnoPYaxGbsnm0eZ7ZXxDNISr06sL564XB8L
	HQh407cKFfGrRpffiZMKma5CzxVIkyS9bFkFO94hmW4jtKYnKFbtI1ZlmGxaKo7rmVU0Ox2bC
	DZVbZVyMb+d16vxOFXVhBqaves+5Vci+M1WykEgizmaJGArgSzvUm+VByLi1ceveCCfSa5ajJ
	mn69Kg7JOl58TsLmbBNpY/1sY6FHU3SN2gbODEwzK1lefCh4v5U5g04YZlzZ61dbdgsf8MOnh
	B3hJg7LG23bW/aMshprZX14m5hpWjqj7kPVsiN995cIZ5G1U42M1TwEUN5t32VxvTHIV0zcBd
	OlzQc3et9ZB5YPAvL3DzmHe+9aBWSMkJs6BT9lWCiUblqiYNXforMpRM/zhiEKzBdL08ytKFx
	dg7yaIRNR6es/vl2wpi8T9X46LoWkEUshfE+wBiHjFH2VpyURXH5T1PR8e+jKa8R7hRNDyd+I
	NHIXBjTgkHZDCE3DBUwrxw7601TIs31l2nKqJ41VkoxwsJdQO/Gm/J/5m10Qg3EyI6QMiOS1t
	81x/AhKfLrHlkk0x
Subject: Re: Unpack hierarchy - jethro vs. krogoth
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Mar 2017 14:59:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 28 March 2017 at 11:33 colin.helliwell@ln-systems.com wrote:
> 
> Is there a change to recipe parsing and/or variables between jethro and
> krogoth?
> I'm migrating from the former to the latter and have hit a patch failure.
> Looking at the unpacked source, jethro has the relevant file at
>  build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/
> whereas krogoth has it at
>  build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/driver/
> 
> Indeed, all the sources have been unpacked under an additional 'driver'
> directory level .e.g.
>  src/driver/* -> 3.0.2-r0/driver/driver/
>  src/config/* -> 3.0.2-r0/driver/config/
> instead of
>  src/driver/* -> 3.0.2-r0/driver/
>  src/config/* -> 3.0.2-r0/config/
> 
> The recipe includes
> SRC_URI = "file://driver/*.c \
>  file://driver/*.h \
>  file://Makefile \
>  file://COPYING \
>  "
> FILESEXTRAPATHS_prepend := "${BSPDIR}/../Apps/MyDriver/src:"
> S = "${WORKDIR}"
> 
> As I say, it works on jethro...!
> 

Can't spot a reason, even in the bbclass's, why it's unpacking differently. 
log.do_unpack reports:
DEBUG: Searching for driver/*.c in paths:
....
DEBUG: Searching for driver/*.c in path: /home/colin/100051-krogoth/fsl-community-bsp/../Apps/MyDriver/src/.
NOTE: Unpacking /home/colin/100051-krogoth/fsl-community-bsp/../Apps/MyDriver/src/. to /home/colin/100051-krogoth/fsl-community-bsp/build/tmp/work/wg2xx_tx6s-poky-linux-gnueabi/linmux/3.0.2-r0/

which suggests it should've ended up in the 'right' place?

