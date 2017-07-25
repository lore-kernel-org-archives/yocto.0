Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FB50E00C2B; Tue, 25 Jul 2017 04:38:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.187 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A52E00C1C
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 04:38:38 -0700 (PDT)
Received: from oxbsltgw11.schlund.de ([172.19.249.28]) by
	mrelayeu.kundenserver.de (mreue002 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0MK9RN-1dYaam1z8f-001VXR; Tue, 25 Jul 2017 13:38:37 +0200
Date: Tue, 25 Jul 2017 12:38:37 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Belisko Marek <marek.belisko@gmail.com>
Message-ID: <558519376.154736.1500982717252@email.1and1.co.uk>
In-Reply-To: <CAAfyv35yPSd4KQW4UqGiiA+56UP=W7H8m+0uhiQGmr-ZHoByTg@mail.gmail.com>
References: <083d01d3052f$d367e6c0$7a37b440$@ln-systems.com>
	<CAAfyv35yPSd4KQW4UqGiiA+56UP=W7H8m+0uhiQGmr-ZHoByTg@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.2-Rev34
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:lL9RE1HmC1WdD1L0WrAOvhjuxi2xaEpO+40dAJSOMzjUcaqKzDz
	sset3rnI4WoWeOy98S1l8OXkKQV253iiHIC0N1PpJqQJP96yfpzT2gwOQH3dPBwQs12eEV3
	Ebb8AXkYbI1sMqDNlYblg4IgE8V1j08OACq+vvFBtQNrVF8cSFQWSlAcz5x1l1Z2RQUooJj
	7lP/S5paqyTU4BoBAyu4A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:L14iD8LkITA=:D6iQ9utW/qs64t5Ct221yX
	SIgDoBmHj/1G9ooZk8sAYBW1PMpLoi7zFCSAoRBXMVF4V1zbOureNN9WSU0HatOuDW3CGonVj
	6aYTeralS9RqLpi0jFSmvVoZP5RWsIXg5OTHrm0QigjFmPAKi5KrG6eb3+MG/ji49qEYSklJV
	beZzaT9AE0/1xEyok/IcLcXOb4fxKDXM8chk28P4pacgbpAVNfilrJolyHOb1YIDMknoQKPqd
	onqeyzpd7G1NB74Nvzkfn8Kb9+OsIoPjlqhztk/UgCi1MLkasjejghqundE+7SLmjlmKnULpy
	n8JqfE7dPnTmBHTnjor3sAZaY7sfNluYAeGCWAbTLGNjJegLNSjelpn78+ZGPBgFB3SB17lEw
	fRYlecbdBVQiJ+mbcmqxHZxinSzNmRNzYpal76ws2gh6h+Vtq3FLp5mDMifwjsOXoit+890MH
	e7L8JOmT5LrJezotJrLuYLA6ej1a1p1N6SdTuIDsFrB326Ow1xDiaGMxFb1bLwtUCJwcJFUYD
	C27YWCX4MqTGrD28cLd+wkCKASygqF+qfjrjLbbKhsjIRMnxMC1kSyoEu09slihvby17IazvV
	zg8jcn0g1803zuMXZ6JDm2wsHIfvKtHNGECh0pWlr2xBzh0OEm9BKTGZgf+1n3hV/B+nEYJHv
	7TFSDlmfUxkYoE5gDQdNYTbEXvdKVV4Fa2Mf7cDWUf4Q+u6Iu5k9ojhZ594AYVfBO4R5JVGmj
	pSxHJOaLw/ZrcOWPRSaxmsfYXFmxSkhCAUd6PAsrGGQGXToE7dKj5J4hb1Q=
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Migrating from krogoth to morty (can't boot fitImage)
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
X-List-Received-Date: Tue, 25 Jul 2017 11:38:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 25 July 2017 at 12:16 Belisko Marek <marek.belisko@gmail.com> wrote:
> 
> Hi Colin,
> 
> On Tue, Jul 25, 2017 at 12:21 PM, <colin.helliwell@ln-systems.com> wrote:
> 
> > I'm trying to migrate my krogoth environment to morty. I have custom recipes
> > for u-boot and kernel; the only change necessary to build under morty was to
> > patch u-boot for gcc6 - other than that the source versions and configs
> > used are the same.
> > On krogoth I can boot a fitImage kernel, but not on morty. (uImage works on
> > both).
> > Looking at the image info on the morty image, it looks like the load/entry
> > addresses are completely wrong.
> Do you have those variables in your conf: UBOOT_ENTRYPOINT and
> UBOOT_LOADADDRESS.
> For details please check: meta/classes/kernel-fitimage.bbclass
> 

Ah yes, thanks that was the problem - added UBOOT_ENTRYPOINT and it now boots.
(I have my own machine defined, which borrows from meta-freescale-3rdparty/conf/machine/include/tx6-karo-common.inc - there must be some subtle difference between that and the meta-fsl-arm-extra/conf/machine/include/tx6-karo-common.inc that I was using on krogoth)

