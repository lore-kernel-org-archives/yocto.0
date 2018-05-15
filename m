Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 526ACE00948; Tue, 15 May 2018 12:18:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f48.google.com (mail-pl0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0873E0044F
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 12:18:38 -0700 (PDT)
Received: by mail-pl0-f48.google.com with SMTP id e6-v6so597032plt.11
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 12:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=AuW5fsjH7Gf36MWBrHy0r/zPKZs34HA87xBvjO1LlTk=;
	b=MI8kRB79HLWl8K93SDH3Q+VjtCOpLcnqi34AndzLnJVLiKzO5cuKzEul/WQNY0cXgK
	ufTmCr5lZ1uk86gkmBpaUl4JkPYqgsYA0gsRgcUI19uOXpv5/s5qQ0JWHBaq7TzhvkcT
	JF5QU/4P0CNN9kuLTi5xMrVJrT1WrpLQUlL0NCz9WIkq5mNTzAZovu73mMgP1Vw0svtI
	P84DyoeUHzcFTVLa6+SwOyK3BRamBR6LlrF4TPa1aYgA0eteoq/SWhH7IXXNaiAQsD4g
	Eeic/klJeBiZ2yFiB0ZQdrPuQq54Z75YJiGhLZBtmfc/W/O9RAEIsNnFm4sUnTMZnkdp
	qSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=AuW5fsjH7Gf36MWBrHy0r/zPKZs34HA87xBvjO1LlTk=;
	b=Jmh8SKOHphA/im39xKpvKABWvcIO4otLVmQqckNXpYOOcg2Ng3FWPWsBFpz3E4Oo+N
	aNrqlJ5+zoRl9gDomnqcN+pZycLnNwyx9qm7JdrRwgKw/ARB7HCkzOEJ/rpcIKCOhwdF
	HTho9CWDO/6FrT4nFBHiE4mBCgdcioHxvRTuSgulalDyk/7MUPhVbuJTjlWmVNZqkhtM
	DPwkieS4j7k9nk617Q3T244ec9ZJs7CnvfNn0Fxf3b+t3Pvm+V4wUreLvWcpEa8qzwrL
	lyEdrBvkv+ZD1mRgEaFlO4Jrc8ouSFMSKKeMcaJkYSUS494Gg1VS4acfthYW5mtKDERx
	Twzg==
X-Gm-Message-State: ALKqPwcE+iHll/I50neWh74iDmATFxE/ZNDN3YxaU7rVj4IRBpx9dyjM
	rDqetQAlYa+2Aqc78OIc8RMp
X-Google-Smtp-Source: AB8JxZrD7Y89Yie4GNUvpK70lp9cIFRPoxi5FVICUf7w5EzHhfLJDHF+FSxNVGj0h/tBO2AAmtuzPA==
X-Received: by 2002:a17:902:2c83:: with SMTP id
	n3-v6mr15459631plb.211.1526411917916; 
	Tue, 15 May 2018 12:18:37 -0700 (PDT)
Received: from oasys-6086bb.korgrd.com ([50.193.38.132])
	by smtp.gmail.com with ESMTPSA id
	z15-v6sm733366pgr.55.2018.05.15.12.18.36
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 15 May 2018 12:18:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Bill Jenkins <bill@korgrd.com>
In-Reply-To: <CAK18fxHQdyPKGiGGJZ74EFoxYCXY+JzqF0aVawfYdehWx-77NA@mail.gmail.com>
Date: Tue, 15 May 2018 12:18:35 -0700
Message-Id: <427569D7-9D5D-444F-BE11-24693744D8E7@korgrd.com>
References: <0584D083-F27E-4336-9324-CFBACD55A653@korgrd.com>
	<D71A3695-AB82-4B4F-A56C-FF41B9403F7D@korgrd.com>
	<CAK18fxHQdyPKGiGGJZ74EFoxYCXY+JzqF0aVawfYdehWx-77NA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: hhromic@gmail.com, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] No package 'wayland-egl' found
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
X-List-Received-Date: Tue, 15 May 2018 19:18:39 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E427A706-9CF6-4D30-A5AF-BDD2CEB724C9"

--Apple-Mail=_E427A706-9CF6-4D30-A5AF-BDD2CEB724C9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Andrei,

Thanks so much for confirming the issue.

> On May 15, 2018, at 4:18 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> Hi,
>=20
> On Tue, May 15, 2018 at 1:48 AM, Bill Jenkins <bill@korgrd.com =
<mailto:bill@korgrd.com>> wrote:
>=20
> > On May 14, 2018, at 2:43 PM, Bill Jenkins <bill@korgrd.com =
<mailto:bill@korgrd.com>> wrote:
> >=20
> > Hi,
> >=20
> > I just sync'd to the head of the master branch in the poky and =
meta-raspberrypi repos today=20
> > and tried a build that successfully completed last week, but now =
fails with the error message
> > "No package 'wayland-egl' found" during the =
gtk+3_3.22.29.bb:do_configure task.
> >=20
> > I see some recent commits in both branches related to egl movement =
between wayland
> > and userland. I made sure to be up-to-date in both repos. What could =
I be missing?
> >=20
>=20
> I found that by removing the do_install_append_rpi() from commit =
de8912cb, the build
> finishes successfully. Is there something else that this commit is =
depending on that I do
> not have?
>=20
>=20
> I can confirm this is an issue introduced by =
https://github.com/agherzan/meta-raspberrypi/pull/247 =
<https://github.com/agherzan/meta-raspberrypi/pull/247> . We will be =
fixing this soon but in the meanwhile could you create a new issue in =
github?

Done. It is entered as issue 259 in the meta-raspberry repo =
(https://github.com/agherzan/meta-raspberrypi/issues/259 =
<https://github.com/agherzan/meta-raspberrypi/issues/259>).

Best regards,
Bill



--Apple-Mail=_E427A706-9CF6-4D30-A5AF-BDD2CEB724C9
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class="">Hi Andrei,<div class=""><br class=""></div><div class="">Thanks so much for confirming the issue.</div><div class=""><br class=""><div><blockquote type="cite" class=""><div class="">On May 15, 2018, at 4:18 AM, Andrei Gherzan &lt;<a href="mailto:andrei@gherzan.ro" class="">andrei@gherzan.ro</a>&gt; wrote:</div><br class="Apple-interchange-newline"><div class=""><div dir="ltr" class=""><div class="gmail_extra">Hi,<br class="">
<br class=""><div class="gmail_quote">On Tue, May 15, 2018 at 1:48 AM, Bill Jenkins <span dir="ltr" class="">&lt;<a href="mailto:bill@korgrd.com" target="_blank" class="">bill@korgrd.com</a>&gt;</span> wrote:<br class=""><blockquote class="gmail_quote" style="margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class="m_-4702776726305338450gmail-"><br class="">
&gt; On May 14, 2018, at 2:43 PM, Bill Jenkins &lt;<a href="mailto:bill@korgrd.com" target="_blank" class="">bill@korgrd.com</a>&gt; wrote:<br class="">
&gt; <br class="">
&gt; Hi,<br class="">
&gt; <br class="">
&gt; I just sync'd to the head of the master branch in the poky and meta-raspberrypi repos today <br class="">
&gt; and tried a build that successfully completed last week, but now fails with the error message<br class="">
&gt; "No package 'wayland-egl' found" during the gtk+3_3.22.29.bb:do_configure task.<br class="">
&gt; <br class="">
&gt; I see some recent commits in both branches related to egl movement between wayland<br class="">
&gt; and userland. I made sure to be up-to-date in both repos. What could I be missing?<br class="">
&gt; <br class="">
<br class="">
</span>I found that by removing the do_install_append_rpi() from commit de8912cb, the build<br class="">
finishes successfully. Is there something else that this commit is depending on that I do<br class="">
not have?<br class="">
<div class="m_-4702776726305338450gmail-HOEnZb"><div class="m_-4702776726305338450gmail-h5"><br class=""></div></div></blockquote><div class=""><br class=""></div><div class="">I can confirm this is an issue introduced by&nbsp;<a href="https://github.com/agherzan/meta-raspberrypi/pull/247" target="_blank" class="">https://github.com/<wbr class="">agherzan/meta-raspberrypi/<wbr class="">pull/247</a> . We will be fixing this soon but in the meanwhile could you create a new issue in github?</div></div></div></div></div></blockquote><div><br class=""></div><div>Done. It is entered as issue 259 in the meta-raspberry repo (<a href="https://github.com/agherzan/meta-raspberrypi/issues/259" class="">https://github.com/agherzan/meta-raspberrypi/issues/259</a>).</div><br class=""></div><div>Best regards,</div><div>Bill</div><div><br class=""></div><br class=""></div></body></html>

--Apple-Mail=_E427A706-9CF6-4D30-A5AF-BDD2CEB724C9--
