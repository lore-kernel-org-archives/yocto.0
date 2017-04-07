Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C2A1E009A0; Fri,  7 Apr 2017 06:50:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.187 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBD3E00812
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 06:50:39 -0700 (PDT)
Received: from oxbaltgw14.schlund.de ([172.19.246.20]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0Lbevf-1cFkrm2s7n-00lDkG; Fri, 07 Apr 2017 15:50:37 +0200
Date: Fri, 7 Apr 2017 14:50:37 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org, Joshua Watt <jpewhacker@gmail.com>
Message-ID: <405288610.117579.1491573037426@email.1and1.co.uk>
In-Reply-To: <4ae6dc60-627f-655e-1a1c-a4ec95e980ac@gmail.com>
References: <CY1PR0101MB1594E1133625F03E54753AA7B6740@CY1PR0101MB1594.prod.exchangelabs.com>
	<4ae6dc60-627f-655e-1a1c-a4ec95e980ac@gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:oybShimoJQuaEQf7h+sy9CmwU+MWNe2UfrvYtG/NbrzT0DbYPGv
	u1WaRaWp1g2FQcGMB2oZ0MRsWN6Uuo+hUacvZmT9puk0m5d/SEl1bsFqvIrboGAw5IdCU1l
	RvK/WUNSxSnTXjodpT9cLkbd1o2ZetOl0Yp7fG81xEk7saISo3M+M9/R6QVvLq170KUVq3L
	FVFrbbAb/BK8GTPvP3Qpg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Uy2rzyVFOBU=:N913te8dWiGHVzJ1u3v8ec
	+ohw4zSWJMkknlmIlCSqsig6NzeGpf1hGyJRZ0gmnDQ3YJ44O+EmTI7+octDCwd7d1N71L3Yx
	CTd3v4llXdFuFnvvmKprcuWrz0/MRYXXpYjojFxKX+wNhqBSD8QXGY1DncYDuUL2YkzEYX46z
	AFmjciG1JWaJCATfpa+3kVlpTJjKIIExLPBAEmVOU78Lxm04C0Ys2OpMNPZoXw5zFyAmPsn02
	r+GAcLG5IN7m/xjARfYL2Cxc1IrmGQUkRTXBOAILdMME9nYJ2J7uQ1DVV5ZIWT6NW8JJ+ZRwG
	3Q/eeqMj8Xvodb3yOj/rwIf1KYaN9PEO5jX0XLMke6mH+sY0XF43ETkdXwkUBEYRqEE0BEca6
	QKRCjJ0JprD5L93QJJwVFIq8UMSqMOSbSBIGTZ+qx+RtOVriDjxdO0pT+B4JsTd8yZDi6/l41
	NQO9Rp5C5qDCrFIH2/Yz66s89S7zebvOmXh77I9hwtFw98Cf7fPKjp+JSmlHCIMLbBfB68wOb
	VD+qvvo7QndnAMJ/06Vw6G3QqNWAbRglV7o3jZYc5om2zFO0t0tDyD+kODDEkBK9BaZ9B32Gs
	Ivxl3xdv8YsOt2dPuYHvxo3vL+22V17e/HaZAgF4+VeRkh7/0w4pqgzHM9k/W+54Et+TOmCxT
	Mey5MgMkqz63X8v8uvyEba7KEYVYkHlVGmYrRMLRvVYXq3cDXvRuFSfn00Hg6ShVUD9g1qvj0
	btbipXgE//biVl+w
Subject: Re: DISTRO_FEATURES vs IMAGE_FEATURES
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
X-List-Received-Date: Fri, 07 Apr 2017 13:50:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 26 January 2017 at 02:32 Joshua Watt <jpewhacker@gmail.com> wrote:
> 
> On 01/24/2017 06:40 PM, Takashi Matsuzawa wrote:
> 
> > Hello Yocto.
> > Though it may feel to me matter of taste, is there suggestion on when
> > which of these to use when you need to define your customized feature.
> > 
> > DISTRO_FEATURES seems to be more relaxed, you can define things in
> > your distro conf.
> > IMAGE_FEATURE seems to be more strict, and you need to add your item
> > also as one of the 'validitems', unless you use it through
> > FEATURE_PACKAGES.
> > (Or this is not needed when you use EXTRA_IMAGE_FEATURES?)
> > I've always understood DISTRO_FEATURES to be policy related items about
> > the distro you're creating (e.g. "my distro uses systemd for init", or
> > "my distro uses sysvinit for init", or "my distro support openGL").
> > Because they are more about policy, DISTRO_FEATURES aren't as tied to a
> > specific image. IMAGE_FEATURES are more about the attributes of a
> > particular image (e.g. "include debugging tools like GDB and strace when
> > you build this image"). The two have always been orthogonal in my mind.
> 
> I suppose it would come down to what the features is. If you think your
> new feature is more of a policy based thing, it probably belongs in
> DISTRO_FEATURES. If it is more about controlling something about a
> specific image, than IMAGE_FEATURES is probably more appropriate.
> 

I regularly try to get my head around the same question - haven't been able to find much which clearly differentiates how/when to use which. Maybe that's just because it is somewhat subjective, but the reason for my latest wondering:
I have package X, who's recipe configures the build using PACKAGECONFIG[]. However package Y, on which I want to 'switch', isn't in my distro recipe's DISTRO_FEATURES (e.g. to use ${@bb.utils.contains('DISTRO_FEATURES','Y','Y','--enable-Y=yes',d)} ) , but is instead in my image recipe's CORE_IMAGE_EXTRA_INSTALL.

(How does a package otherwise get itself included into the PACKAGECONFIG[] param?)

In short, I'm looking for the cleanest way to configure X based on whether Y is going to be in the image too (by whatever means it's enabled, distro or image).

Both X and Y are packages which relate to the product - the hardware has a modem therefore kinda needs Y [=ppp] for its intended usage/functionality.
Does this, and this PACKAGECONFIG quandary, make it more of a 'policy' option and therefore more suited to a distro type of thing? 
(I do have a superset development image recipe which adds in tools like strace - and I *can* see in this case that that is more Image than Distro).

