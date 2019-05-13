Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C85ADE00D4E; Mon, 13 May 2019 05:21:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 416FEE009A0
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 05:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1557750076;
	bh=OwESbQli76piqMuXFE9pciR5xNeArYrNfFHduz7/WZE=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=WvJFhfxdDOIDOLWxTmwzEUuV8//i/Fhmw8gxsNOrJVDJuHLgOPJsRyC5F+L2S/rtL
	Wj26DbJF362qyRjrNaEG8mIK2Mipew1CerijVeN3g5wR2lIFgNP0i3uBMTmhI5JD49
	5eMP56kBAua+HiwySKlEQpW2GAePS7gGWTePYuhw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP);
	Mon, 13 May 2019 14:21:16 +0200
MIME-Version: 1.0
Message-ID: <trinity-29bc066c-27fc-4f9d-b23b-7a34235e7c28-1557750076202@3c-app-gmx-bs34>
From: star@gmx.li
To: Mikko.Rapeli@bmw.de
Date: Mon, 13 May 2019 14:21:16 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190513114549.GL3459@hiutale>
References: <trinity-386cbe71-496d-4846-b7f6-5a3c5b4b7170-1557745665241@3c-app-gmx-bs34>
	<20190513114549.GL3459@hiutale>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:xuizK8d7lk8SvSIDf/WM0SjLbztOaJG7Q5PqTr72408heXiq7VZygfZobM72RKC68Qvdf
	AOK+hQQdCwTlMjrm0XAwhxkNlRMzmF404+xrj1L0af5jzXxfKn/a3bF10T/YqdH23cSd4Cjh6F7e
	kah+FuP82/w+C11R4EGwDOVcUvwTs12QyA7ZE3Z0VXnkCi9lV1OF0q5+u1WnV6D4for4oPerVl1O
	BClg9WQs3Rl8zVD5/u0EADnR06C8emXoOn4eU2+vSireCYEO01fz4ZDXZt72UQQYOfdI9BNqCsnV
	js=
X-UI-Out-Filterresults: notjunk:1;V03:K0:lSdQyVpNtyA=:0tyMh4RK6NKqz5bYBwCZeB
	fEIsmQymqagHVnh3S8NG4bP3ifegzToDcIpwIxNsKRTkeH6cXO3ba7xm54Dn95PTKPXUSUhPr
	evbju7t6UxPXX6Wli19qtbBRent1ugLMkm9lIipoZBtwVjKpeO6bUeqRTc9tt45qY86qptBeC
	mMgyKqlYY0F6vlcPjtCkMteRNpSPg00ooMp7J9CNhie6VUm/fd+B70O4gUdpnpLyY23KIYtZh
	DYa4mfVDC0EwANFw2pfRHV8GbhizgW/fdtjc48oqbSRcs4BrENS9mBbLNsW967Wf4jDFuDwu+
	cb64wPCJ8n9pYpBAc0UIdu3/YWwJocTpHrawfe8AEa5X0J199hsGIaG2+BNUhzkr+s1JqGkPU
	TOx+xleGK4ihkllsnoO8wZVbvWL1WcuZnbXcnBMJG+/9bq8fvx2wMv1tdSc+I4mfFdT67rHxf
	xkrKGUpTBHCSZNkkza5pmcDBivHucya/wFXJAfZ1Ks2lYPd2dBZKCmlh4wVViGSxYKrYSxxtm
	fCccLBiY+c4y4r2QtrX456dxAvlL80dbYwtLR2r5zubOKNtRiiWoIWlO3opWDtDhVKSOOG16s
	Bohs3UbvBouJL/ho5LTwj8YvrsQ/fXCpwS55WvlfMA/WRHH3o/iaF5KA==
Cc: yocto@yoctoproject.org
Subject: Re: long time for starting sshd (wait for crng init done ?)
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
X-List-Received-Date: Mon, 13 May 2019 12:21:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Montag, 13. Mai 2019 um 13:45 Uhr
> Von: Mikko.Rapeli@bmw.de
> An: star@gmx.li
> Cc: yocto@yoctoproject.org
> Betreff: Re: [yocto] long time for starting sshd (wait for crng init don=
e ?)
>
> Hi,
>
> On Mon, May 13, 2019 at 01:07:45PM +0200, star@gmx.li wrote:
> > >From yocto 2.5 to 2.7 I noticed a change in booting. The kernel stops=
 for around 85 seconds.
> > It seems to me that starting sshd takes time until crng init is done.
> > In 2.5 it doesn't wait for that. How can I avoid that?
> > Maybe I have to add that I use a recipe that adds keys as rootfs is us=
ually r/o.
>
> Depends on your HW platform, kernel version etc, but one possible soluti=
on
> is installing rng-tools binary package which starts rngd at boot.
>
> See http://lists.openembedded.org/pipermail/openembedded-core/2019-May/2=
82021.html
>
> -Mikko

With that in fact to boot time decreases. It stop for a 10..20s after "fai=
led to init entropy", but this is far less than w/o it.
Nevertheless, I didn't have stops at all in 2.5, as cnrg init finished onl=
y after booting (login message) and boot time is important.

run-parts: /etc/network/if-pre-up.d/nfsroot: exit status 1
Starting random number generator daemon
Initalizing available sources

Failed to init entropy source hwrng

Enabling JITTER rng support

Initalizing entropy source jitter

.
random: crng init done
Starting OpenBSD Secure Shell server: sshd


>
> > Another think I have observed (which is not clear to me): I don't get =
a message from system message bus anymore. ???
> >
> > Instead of it udevd complains about "specific group 'kvm' unknown. Loo=
king into source there are  mentioned:
> > # The static_node is required on s390x and ppc (they are using MODULE_=
ALIAS)
> > So, can I safely ignore that (use ARM).
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

