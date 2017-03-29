Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EB84E00655; Wed, 29 Mar 2017 01:43:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8015E004E5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:43:02 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue004 [212.227.15.163]) with ESMTPSA
	(Nemesis) id 0Lpzv9-1cFwgc0rNn-00fmEc for <yocto@yoctoproject.org>;
	Wed, 29 Mar 2017 10:43:01 +0200
Date: Wed, 29 Mar 2017 09:43:01 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <1290000518.259871.1490776981127@email.1and1.co.uk>
In-Reply-To: <CAJ86T=VgcbeULG-UWeQd1bDF3zop7A+tjtjWOi6D+sFia8677w@mail.gmail.com>
References: <1ee401d2a7ae$cc2fabb0$648f0310$@ln-systems.com>
	<CAJ86T=VgcbeULG-UWeQd1bDF3zop7A+tjtjWOi6D+sFia8677w@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:/pbT7XeZ+HTFl/r7PdMeGSljycDmbM/VJKsvgPDnrTXtaToiTzQ
	QS2E4qsWf4RKjkNJvOvjf2F9TCSceTLwm55IeznufIc1by0UTMmZUm/rPeeWjCTxjC5Wp2h
	Y85gC5hSG27W2A9namYZe9qMTCxqILoFKDm18Lj5X2/A0tqDvBH0dM6DpC5OxnLb7OWguzk
	iMmlTqg6Rb36xqAlqH71A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:qKAATMVKuWA=:iNfmks2Ic5z+dQAzOBk4O2
	9FkqOSFjF++cAagkHI0pTPAsjnd2KWey9hTBGFraZVRRYmOyrEgaUToEBsHCGa53odhB63EOs
	F9teVHuVfmADlAPLxXxtQE5UfJ8OAFiV+qCQFaLp4D1g9NlfBzDT+aJl8pApCulimCsbPJLx7
	G2gUkua4VvJGMo4PNWmLl3JqUMftuSfAfeRluVjHP+SCIachI+aLcb57xoE9yVA33lexEYmn5
	EIb/tbZS1mZXptSbSNQpzJY6qv6hD2j2XHm2hHTqvN2/BGcjSSSaCcy9frVZs/dGLrJ6akrX7
	/hM7sZ2gHmegSvN+mFCVNqizqt1+FskFPmn7OfZZTZWIfVR6O9S9ORGTVu4IB9B0GlabHF2Te
	5VnksZwEbd8JJrXo8o7fRYBMT9Z9+rBneUPZ2kkGX7mieXHlN1WrYx+NyEm+nGZXT8gN0tA0/
	YJlT+lpn9RXVhAyNlAS7hUz631WpTxQ+YYKtNaBxhfNszwzx71vwGu2kJSt+cvKUihuRrKHXn
	tDwJPa5SIYu5NSK5662jleMSNqrV1WxG5G3b1jCAkXU1UTm4DBhLrNehfCPblui5MTqxuRC8l
	sgqeM/rZTL3J01lvEZB9hBkij7uRrN5ZbFomkYMPJPPW7ZuWxWwzB1ieoKVfJzTurQqw2ZEYO
	dfAH8BhZMTXTiU4NEm1AJeOQAGrFIjA9ua0XdgKpbFLxQY3DTVzW0fSa5WYkRaQq38xIzGrgt
	e0k59gxMzHRtZ6jq
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
X-List-Received-Date: Wed, 29 Mar 2017 08:43:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 29 March 2017 at 00:05 Andre McCurdy <armccurdy@gmail.com> wrote:
> 
> On Tue, Mar 28, 2017 at 3:33 AM, <colin.helliwell@ln-systems.com> wrote:
> 
> > Is there a change to recipe parsing and/or variables between jethro and
> > krogoth?
> > I'm migrating from the former to the latter and have hit a patch failure.
> > Looking at the unpacked source, jethro has the relevant file at
> >  build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/
> > whereas krogoth has it at
> >  build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/driver/
> > 
> > Indeed, all the sources have been unpacked under an additional 'driver'
> > directory level .e.g.
> >  src/driver/* -> 3.0.2-r0/driver/driver/
> >  src/config/* -> 3.0.2-r0/driver/config/
> > instead of
> >  src/driver/* -> 3.0.2-r0/driver/
> >  src/config/* -> 3.0.2-r0/config/
> > 
> > The recipe includes
> > SRC_URI = "file://driver/*.c \
> >  file://driver/*.h \
> >  file://Makefile \
> >  file://COPYING \
> >  "
> > FILESEXTRAPATHS_prepend := "${BSPDIR}/../Apps/MyDriver/src:"
> > S = "${WORKDIR}"
> > 
> > As I say, it works on jethro...!
> 
> There were some changes in bitbake's handling of file:// SRC_URI entries:
> 
> http://git.openembedded.org/bitbake/commit/?id=e659a3b0c2771679057ee3e13cd42e6c62383ff2
> 
> Is the behaviour more consistent if you remove one of the
> "file://driver/*.[ch]" entries from SRC_URI? 

> Or if you replace both
> with a single entry to copy entire driver directory (ie
> "file://driver") and avoid using wildcards?

Yep - that worked. Thanks!

