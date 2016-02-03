Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A823BE00C3C; Wed,  3 Feb 2016 10:15:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71863E00C38
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 10:15:32 -0800 (PST)
Received: by mail-yk0-f173.google.com with SMTP id z7so26378198yka.3
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 10:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mtj/AgxBSYCu06cTUX80qhVnYAuB808AO/QbGbqEegQ=;
	b=Hkf6I0YpKV0QDBHdN0ER1oRLYXFso4wYKNZcVabL/8QVcGHpZ7bLTq+cDB6KkIpa7X
	CMbI9fpnDSpamcuHGo53gaHjQKIXuwiAAAqS9pJbRmdxw+8O1Va1SttJyXRhxp5u+K4Y
	htK5BA11Vvq3QJfhBkN4Plaum87QuAqyedlhj5Whw6o9CdmG60u3H4TGatOFg4yBrpiV
	B1X+NOqXSCS/xQk6PEdhvr16DFgtjPgK6ERUakGb4LQ77DB9I+lwDFv/uWkHrHONiK8q
	qY2YLjxPJaqlFY5Hiq7aMeLY5C6umkWJzxjiyeI5KZ5toY5/9/R+nsnN23lfnbidj1tt
	mf6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=mtj/AgxBSYCu06cTUX80qhVnYAuB808AO/QbGbqEegQ=;
	b=T34k3yQbXZIPWPUOsjeWVu84ZTvVT1OPP6XJptIJ9EL+mlrb/x2mXqWpwCpDxUO16d
	nWiHcSS7KyLG9fx7L550etWTM/pxv+jkWacY60VbFpctM4h7KKpxYH8HMHZgYpQV+Rt5
	owDD2jf3mSs+G/D7EeWGsRzOBavF3Ojx1ozQu8Q6j/F18uaEBzAPGbnlP9dfV+OCz1oe
	iUBZaDP3Ho2GRljWkQ8xPTEVgGhM/k3nl5W2rix+YoNK3pTIBKTIj6P6bcpO0ENW2DEP
	M9KViZcomnoFqaF2WXxtztAysk08phoJOvyqQx26vk3Lf0faBXVxD5g3DmCPz5cniEyY
	kjWw==
X-Gm-Message-State: AG10YOStcvcV87Qk1fuMhybaoCzIfTd8kT2vhlOmiooVBCH6dC7/oiSaGb+wr0Eh5V2gzMdlLCKPZJYwD0B8Yg==
MIME-Version: 1.0
X-Received: by 10.129.73.208 with SMTP id w199mr1950549ywa.346.1454523331572; 
	Wed, 03 Feb 2016 10:15:31 -0800 (PST)
Received: by 10.37.88.197 with HTTP; Wed, 3 Feb 2016 10:15:31 -0800 (PST)
In-Reply-To: <CAJTo0LbiKF0w=NeNFRYmh_fc73HYH-1Zg6p1-8r46-oexFt6-A@mail.gmail.com>
References: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
	<CAJTo0LbiKF0w=NeNFRYmh_fc73HYH-1Zg6p1-8r46-oexFt6-A@mail.gmail.com>
Date: Wed, 3 Feb 2016 18:15:31 +0000
Message-ID: <CALf_N3bW91zwfebcdvfseHFKQrnykSdAsvodjchVKGr2eym-2w@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which Toolchain is being used to build Yocto ?
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
X-List-Received-Date: Wed, 03 Feb 2016 18:15:35 -0000
Content-Type: multipart/alternative; boundary=001a114dd1f67eff20052ae19a2d

--001a114dd1f67eff20052ae19a2d
Content-Type: text/plain; charset=UTF-8

Thanks. That makes sense; all the cross compile tools are built using the
Host machines native toolchain on the host then the cross-toolchain used to
cross compile yocto for the target.



On 3 February 2016 at 17:13, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 3 February 2016 at 15:07, Mark T <mtl1nuxd3v@gmail.com> wrote:
>
>> I notice there is a meta/recipes-devtools  -  I assume this pulls in from
>> build/downloads - so gcc-5.2.0.tar.bz2 for example. Does the tool-chain
>> comprised of these recipes get built by /usr/bin/gcc before being used to
>> compile Yocto ?
>>
>
> The host's gcc (typically /usr/bin/gcc) is used to build gcc-cross, which
> is then used to compile everything that needs to be cross-compiled.  We
> don't build our own native compiler to replace the host compiler.
>
> Ross
>

--001a114dd1f67eff20052ae19a2d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks. That makes sense; all the cross compile tools are =
built using the Host machines native toolchain on the host then the cross-t=
oolchain used to cross compile yocto for the target.<br><br><br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 3 February 2016 at =
17:13, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@int=
el.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><s=
pan class=3D""><br><div class=3D"gmail_quote">On 3 February 2016 at 15:07, =
Mark T <span dir=3D"ltr">&lt;<a href=3D"mailto:mtl1nuxd3v@gmail.com" target=
=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div>I notice there is a meta/recipes-devtools=C2=A0 -=C2=A0 =
I assume this pulls in from build/downloads - so gcc-5.2.0.tar.bz2 for exam=
ple. Does the tool-chain comprised of these recipes get built by /usr/bin/g=
cc before being used to compile Yocto ?=C2=A0 <br></div></blockquote></div>=
<br></span>The host&#39;s gcc (typically /usr/bin/gcc) is used to build gcc=
-cross, which is then used to compile everything that needs to be cross-com=
piled.=C2=A0 We don&#39;t build our own native compiler to replace the host=
 compiler.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></sp=
an></div>
</blockquote></div><br></div>

--001a114dd1f67eff20052ae19a2d--
