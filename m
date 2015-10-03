Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16671E00D92; Fri,  2 Oct 2015 18:32:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB3DE007C9
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 18:32:19 -0700 (PDT)
Received: by ioii196 with SMTP id i196so137491738ioi.3
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 18:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Clkh0e0DdrXAby4Ew1lqZLxIUgCt5hv54Ihvn78HkSg=;
	b=jAf5o1cmNxNMRvynCNoJM3npZeIzuNUdDNPt74bfCQw2U6h92/eUTcxax6B+ezXk8q
	giU2yJq87iiB3lJUJC+g8ySP7EbE5vywYpfma3/AkRI/0A4lOShtNPYJcO66h/rvWzLh
	BD6AJ4EJA/G9pRT+5ZC4rxpcbBkpkuJfhCsSEmQx2F4SzkgHx4IkBDXdrRCPH/AJ/B5o
	eZo6U3RKXhR4vHL1rtK1ciLgXyNNa1QNJ2aM8WDj81yXhGCjMi1E/9ch++v5/mAN4Djn
	u9EJhT4L/AM2+f/M5EfR7xZw47h+8cgFzAuG9EOC08aSBh0dBuWIiyL7rbnY71W2RsiV
	P7Qg==
X-Received: by 10.107.34.149 with SMTP id i143mr22116844ioi.195.1443835938912; 
	Fri, 02 Oct 2015 18:32:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Fri, 2 Oct 2015 18:31:49 -0700 (PDT)
In-Reply-To: <20151002223108.GC3484@resin>
References: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
	<1440402701-6195-2-git-send-email-raj.khem@gmail.com>
	<20150923225839.GF23493@resin>
	<36AF01E1-752C-47A6-90AE-09825F8D0685@gmail.com>
	<20151002223108.GC3484@resin>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Oct 2015 18:31:49 -0700
Message-ID: <CAMKF1sr24K+gbMrsjdnkuk9PQfZpKjLn5k90=qtb02+ckF76SA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V3 2/5] userland: Add wayland support
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
X-List-Received-Date: Sat, 03 Oct 2015 01:32:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Andrei

Userland have been updated plus some of my patches to userland has
been applied via another commit from different person but not all and
so on, not even me am certain as to whats needed and what not anymore.
So

I have rebased my remaining changes here.

https://github.com/kraj/meta-raspberrypi/commits/kraj/master

I am doing a build and will update if I see any issues or otherwise.

Thanks
-Khem

On Fri, Oct 2, 2015 at 3:31 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Wed, Sep 23, 2015 at 04:52:46PM -0700, Khem Raj wrote:
>> Andrei
>>
>> > On Sep 23, 2015, at 3:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> >
>> > On Mon, Aug 24, 2015 at 12:51:38AM -0700, Khem Raj wrote:
>> >> backport and fix needed patches for supporting wayland-egl
>> >> use PACKAGECONFIG for wayland so we can add proper DEPENDS on wayland
>> >> Fix QA warnings about dev-so
>> >>
>> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> >> ---
>> >> ...-applications-to-set-next-resource-handle.patch |  210 +++
>> >> ...ayland-Add-support-for-the-Wayland-winsys.patch | 1847 +++++++++++=
+++++++++
>> >> .../0006-wayland-Add-Wayland-example.patch         |  864 +++++++++
>> >> ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   30 +
>> >> recipes-graphics/userland/userland_git.bb          |   13 +-
>> >> 5 files changed, 2963 insertions(+), 1 deletion(-)
>> >> create mode 100644 recipes-graphics/userland/userland/0004-Allow-appl=
ications-to-set-next-resource-handle.patch
>> >> create mode 100644 recipes-graphics/userland/userland/0005-wayland-Ad=
d-support-for-the-Wayland-winsys.patch
>> >> create mode 100644 recipes-graphics/userland/userland/0006-wayland-Ad=
d-Wayland-example.patch
>> >> create mode 100644 recipes-graphics/userland/userland/0007-wayland-eg=
l-Add-bcm_host-to-dependencies.patch
>> >>
>> >
>> > Hello,
>> >
>> > Any ideas why I encounter difficulties while applying this patch?
>> >
>>
>> it was send few weeks back, I don=E2=80=99t know if something got into u=
pstream in between thats causing it. In any case
>> I have rebased the branch on my github fork
>>
>> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>>
>> Let me know if that will be convenient to pick up
>>
>
> I had to rebase your patches again. I created a temporary branch: khem_wa=
yland
> in git.yoctoproject.org:meta-raspberrypi . Now userland build fails with:
>
> interface/vmcs_host/wayland-dispmanx-server-protocol.h: No such file or
> directory
>
> Who should provide this header file? Userland? Could you throw a look on =
the
> branch above and try to replicate this?
>
> Thanks,
>
> --
> Andrei Gherzan

