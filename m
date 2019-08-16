Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBD58E00D89; Fri, 16 Aug 2019 00:37:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
	[209.85.208.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF5FE00BF8
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 00:37:23 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id x3so405018lji.5
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 00:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=5g/DHyLUP4kRRZ43igMitwXckVwvgfeFnP7i32hFbOA=;
	b=Q/2niLdQo1bXuF2oNM0TyalgCBr7sW+kdUY61+4CDe2iTX9zrZY9Yo+ixu6reLFqQJ
	qsu0Iq9pQvaCCcdRg37tOmeH8dpCigieWGryiafdE5X0/PJPmPPHTmZUEiCdDMh0rMk/
	DTqAL9cAzAGTF6PY8/qA3lTFiwGjeDCfOcWrNNHvp0BmvmXS4eVCE9g2vS7szYHLajPq
	sFHO7OJbKtbpipFWyoz9IkD2tdWhcYE7cekvZVu+3181iK/oeuQM1p3X4PXZ+HjsS6Un
	zQjcA8XpsMFEE3b6NYrqsggfZrlcvZcXHEKLDi0mxBxO27EOBmzJYNwv3NzfefPNTsH1
	B5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=5g/DHyLUP4kRRZ43igMitwXckVwvgfeFnP7i32hFbOA=;
	b=nY5Smwhk8zWH2NdejfA8LDtZtKS8EsWRAtYqXMnWqCIQDmljzy7wLBnngWUryEDd7D
	zrKq568IbwsYv+8wtEboHL9flAQIsJGVC5I5ZpYpctIoS4sRNL3VdByZKnanjEtVyBkJ
	/ZWChzPM1Md9npdx69X9QHGK3DyuBBJgau1Ue4X1HtteOJRTKF9EG1ryVXZ02oGrT/xW
	h5+Cur7JxaIB24NhEF9BqblyxMh8OWESouukGN4ko+ilZEopGcfoGmlE1+AX76ILpoHC
	dNGvmL5xSzHQX5iJo2GUHe2PYqnYI8e4fVt1ynEEwlgELTU8fxRzZrucnlxjhvKCFy7D
	eVag==
X-Gm-Message-State: APjAAAVU+3a1achfTS6tKgey5fzm44aTrqJAnwy47Is06UOUwU0Evuw1
	+I3kSDqaR2QKGPURoVp6jL+1a1SPXQ6W8zk80yFqA4Wu
X-Google-Smtp-Source: APXvYqyeV3x0QSynLeRv6BxdV3wAkVN4WELto+P88QZQngqCWYnPgvKFMbEnG9sehwCibEcTnGzOjzQ7Ug6uTi/eFa0=
X-Received: by 2002:a2e:b4d4:: with SMTP id r20mr4747556ljm.5.1565941041988;
	Fri, 16 Aug 2019 00:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAP71WjyWeiJA+3ahU1cdDi5kh6qTVvTi7CCNo5qzOA9_ti2vCw@mail.gmail.com>
In-Reply-To: <CAP71WjyWeiJA+3ahU1cdDi5kh6qTVvTi7CCNo5qzOA9_ti2vCw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 16 Aug 2019 09:37:10 +0200
Message-ID: <CAP71WjxRwFni-yjPepwqBkk=77UwN0kaMdxNCz==Y2_28e67VQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: LF Community Bridge Mentorship
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
X-List-Received-Date: Fri, 16 Aug 2019 07:37:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi there.
just a reminder!
cheers

On Tue, Jul 30, 2019 at 4:46 PM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> Dear all,
>
> The Community Bridge platform was launched earlier this year by the
> Linux Foundation. It=E2=80=99s a set of services available to LF projects=
 to
> help them build stronger ecosystems, and foster developers
> relationship within their respective communities. See [1] and [2]. The
> Yocto Project has joined the Community Bridge Funding and Mentorship
> programs.
>
> If you have any specific questions about these programs, please do not
> hesitate to reach out to me.
>
> Today, we would like to talk more about the mentorship program. We
> have tried several initiatives in the past about interns and
> mentorship, and we would like to do that again using the new LF
> platform. A mentorship program for the Yocto Project is a good
> opportunity for our overall community to reach out to new developers,
> improve our developers diversity. It will help increase the pool of
> available developers with appropriate skills about the Yocto Project
> and Open Embedded technologies and as a consequence create a more
> sustainable ecosystem around the Yocto Project. It also offers
> existing senior developers the chance to become mentors, and share
> their knowledge!
>
> We would like to request feedback about how to best define the Yocto
> Project Mentorship program.
>
> The structure of the mentorship is flexible and we can adjust as
> needed. Our initial thought is to set 12-week project, which is what
> the Linux Kernel Mentorship program is using, see [4]. The overall
> process involves:
>
> 1. Finding / defining work items for potential mentees.
> 2. Get appropriate funding for mentees=E2=80=99 stipends
> 3. Recruit mentors within our community
> 4. Review and select mentees=E2=80=99 applications
>
> There has already been some work on the potential work items in the
> form of the newcomer bugs, some of which could be turned into work
> suitable for a mentorship programme.
>
> =3D=3D=3D Call for ACTION =3D=3D=3D
>
> * We need your help for any of the items above, and especially #1 to
> get started. Whether you are a long time contributor to the project or
> you recently joined our mailing list, your feedback will be greatly
> appreciated.
> * If you are interested to participate as a mentor, please let me know!
> * You don=E2=80=99t need to be a project expert to be a mentor, you need =
to
> know how the project works and be willing to help guide someone
> through their task.
>
> There is no specific timeline set yet, it will most likely depend on
> how much feedback we receive about this initiative, but most likely
> the internships will have to be tied to the Yocto Project release
> timeline.
>
> If you have any questions or any suggestions, please reach out to me!
> cheers,
> Nico
>
> [1] https://www.linuxfoundation.org/press-release/2019/03/the-linux-found=
ation-launches-new-communitybridge-platform-to-help-sustain-open-source-com=
munities/
> [2] https://communitybridge.org/
> [3] https://people.communitybridge.org/
> [4] https://wiki.linuxfoundation.org/lkmp

