Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 106B4E00E34; Fri, 12 Jan 2018 04:49:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mathewkunjumontharakan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE01E00DC2
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 04:48:59 -0800 (PST)
Received: by mail-yb0-f176.google.com with SMTP id b39so2603784ybj.13
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 04:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=yv/+pE+1+mXODD0MeX3/kHOX+f3Nw96LeyXgEAFWsrg=;
	b=iJo8yjhuV54JOq1bdLaboMzT+UtzqK6eOu1mFskWGMsTmi2eKhjljcW4Woc17awa31
	iSf10vCP94X1JEkXJE5UK8LWSWgiDxclwPtccG9NLtWm4Fep4gePY7s2yirlMdzoWku5
	NaJXICiBo7Ud1yeZroihlc5Uv1mXyXlICaSYCzfgfhcRXCufpgfPJ5uSVV6Gus3SCjXc
	LNoTdxX5VrFT8a+tiSYo3qgi9lwuoYdm98jt2w7DWMBzAPVhabTkztolnRpHXfqZ7tbG
	evivX9D30s9vXtcLzx7Ca/rF//8axU8BGvAxgBc/cerUaZkbdbuNOW43K4GqkjvCYKA9
	3E1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yv/+pE+1+mXODD0MeX3/kHOX+f3Nw96LeyXgEAFWsrg=;
	b=tVbFSsDd7yktSDS3JUxq9Iw7q8bzz2zbDyEnjubrlZldGi37wc+h19tpuTu9KtcmEL
	d6896S7avafIUHhHrecv+JtBBPMwyZxLeyD/g2JBda9uN2+m8Ah3KmBAUArVOKNrRIQ6
	IgRYZCv/Q73J4TImP1oWZhBe5mwp2/JclEn+iN4rHeHkLNcHX+BnNhVy6PgeyJMaB5Yj
	h6El7gTAAqaH5pdMhwmbTmGptlv8qrzre1k57FvAJ09s/d7envK3Q+eJ3Z3GXns0Llm0
	58JIMduZrqacL04e4m+0jxwUo8V7dyZNTZH8AV5HPVmxZ476didHIp70At+Y+3/x3v67
	rpuA==
X-Gm-Message-State: AKwxytfkFv5/2+vtRh70DZka9H5B+r/gqrGfs+St0iVq2RlVctx9TjiO
	KxakkQo02XIqI0TV84Wntdr9AMliuhdnRmMGklw=
X-Google-Smtp-Source: ACJfBosyWShcdSgzQohKmZ/KhTjqPcNIv987RJjHrEbzVm5MEHyzAG0FQGKvQYT24PIrdhC2DIdvLdkE6pO6es5wwos=
X-Received: by 10.37.142.3 with SMTP id p3mr8618831ybl.175.1515761338352; Fri,
	12 Jan 2018 04:48:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.231.197 with HTTP; Fri, 12 Jan 2018 04:48:57 -0800 (PST)
In-Reply-To: <mailman.75487.1515671901.15860.yocto@yoctoproject.org>
References: <mailman.75487.1515671901.15860.yocto@yoctoproject.org>
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Fri, 12 Jan 2018 18:18:57 +0530
Message-ID: <CA+JFif1+k-+WL93s2tmp62FLRCR9A6_np=z4d-X2SCqrJFg2fQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 88, Issue 32
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
X-List-Received-Date: Fri, 12 Jan 2018 12:49:02 -0000
Content-Type: multipart/alternative; boundary="089e0832c5002307a1056293b055"

--089e0832c5002307a1056293b055
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using iMX6ULL evk. I would like to change direction and value of some
gpios. How to do that?? Could you help me in this, since I'm completely new
to BSP.

Thanks and Regards

Mathew K Tharakan

On Thu, Jan 11, 2018 at 5:28 PM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. How can I change the default ext4 or etx3 of the rootfs to
>       ext2 or jffs2 in yocto build? (Nguy?n Thanh V?)
>    2. Re: How can I change the default ext4 or etx3 of the rootfs
>       to ext2 or jffs2 in yocto build? (John, Maxin)
>    3. libgcc.a size (Mircea Gliga)
>    4. Re: [meta-oic] Question about Iotivity 1.3.0/1 and fixes
>       status (Philippe Coval)
>    5. Re: libgcc.a size (Zoran Stojsavljevic)
>    6. Re: libgcc.a size (Mircea Gliga)
>    7. Re: libgcc.a size (Stefano Babic)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Thu, 11 Jan 2018 15:05:06 +0700
> From: Nguy?n Thanh V?  <ngthanh.vu94@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] How can I change the default ext4 or etx3 of the
>         rootfs to ext2 or jffs2 in yocto build?
> Message-ID:
>         <CAGJSYqmyc+yZm9vi4OG8C2KU0=6RUv+Wfpx66yPqFCaze_AWCQ@mail.
> gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> I want to minimize the size of the image built in core-image-minimal.
> However, I have no idea how to change the local.conf file or recipe file.
> Can anyone help me?
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/
> attachments/20180111/2808d656/attachment-0001.html>
>
> ------------------------------
>
> Message: 2
> Date: Thu, 11 Jan 2018 08:23:26 +0000
> From: "John, Maxin" <maxin.john@intel.com>
> To: "ngthanh.vu94@gmail.com" <ngthanh.vu94@gmail.com>,
>         "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] How can I change the default ext4 or etx3 of the
>         rootfs to ext2 or jffs2 in yocto build?
> Message-ID:
>         <61C0517EAD808B429A1DE2DD9164D400326686DC@IRSMSX103.ger.
> corp.intel.com>
>
> Content-Type: text/plain; charset="utf-8"
>
> Hi,
>
> An easy way will be to refer Yocto documentation:
> http://www.yoctoproject.org/docs/current/yocto-project-qs/
> yocto-project-qs.html
>
> and for required rootfs changes, use IMAGE_FSTYPES:
> http://www.yoctoproject.org/docs/2.4/mega-manual/mega-
> manual.html#var-IMAGE_FSTYPES
>
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org] On Behalf Of Nguy?n Thanh Vu
> >Sent: Thursday, January 11, 2018 10:05 AM
> >To: yocto@yoctoproject.org
> >Subject: [yocto] How can I change the default ext4 or etx3 of the rootfs
> to ext2 or jffs2 in yocto build?
>
> >I want to minimize the size of the image built in core-image-minimal.
> However, I have no idea how to change the >local.conf file or recipe file.
> Can anyone help me?
>
> Best Regards,
> Maxin
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/
> attachments/20180111/0cb5fe97/attachment-0001.html>
>
> ------------------------------
>
> Message: 3
> Date: Thu, 11 Jan 2018 11:04:46 +0200
> From: Mircea Gliga <mircea.gliga@vitheia.com>
> To: Yocto Project <yocto@yoctoproject.org>
> Subject: [yocto] libgcc.a size
> Message-ID: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
> Content-Type: text/plain; charset=utf-8; format=flowed
>
> Hello
>
> I just upgraded from krogoth to rocko, and noticed the resulting rootfs
> image increased significantly.
> What stands out is a big bump in size for
> /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc
> 5.3.0) to 25 MB in rocko.
> Can someone shed some light ? What can be done ?
>
> Thanks
>
>
>
> ------------------------------
>
> Message: 4
> Date: Thu, 11 Jan 2018 10:39:00 +0100
> From: Philippe Coval <philippe.coval@osg.samsung.com>
> To: yocto@yoctoproject.org
> Cc: "iotivity-dev@lists.iotivity.org"
>         <iotivity-dev@lists.iotivity.org>,      "Maloor, Kishen"
>         <kishen.maloor@intel.com>
> Subject: Re: [yocto] [meta-oic] Question about Iotivity 1.3.0/1 and
>         fixes   status
> Message-ID: <952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
> Content-Type: text/plain; charset=utf-8
>
>
> On 11/01/18 02:30, Chanho Park wrote:
> > Hi Philippe,
> >
> Hi Chanho Park, HNY to you
> > I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes
> > in your github tree[1].
>
> Yes they are still under review, did you test them ?
>
> Maybe I should resend them, now.
>
> > I wonder why you don?t post them in the meta-oic.
>
> Well I shared patches to list couple of time:
>
> https://lists.yoctoproject.org/pipermail/yocto/2017-June/036896.html
> https://lists.yoctoproject.org/pipermail/yocto/2017-September/037829.html
> https://lists.yoctoproject.org/pipermail/yocto/2017-December/039355.html
>
> > Do you have a plan to upstream them?
> I need reviewer to approve and commit them (@Kishen ?)
> or may I do it by my own
> since? nobody objected on previous changes ?
>
> Side note, I also simplified a recipe for iotivity master branch
> (it now relies on scons install like tizen, debian etc)
>
> so if it helps I will update devel branch and this page soon:
> https://wiki.iotivity.org/wiki/yocto
>
>
> > Best Regards,
> BR, Keep in touch your feedback is valuable.
>
> > Chanho Park
> >
> > [1]:?https://github.com/TizenTeam/meta-oic/tree/
> sandbox/pcoval/on/master/review
>
> --
> mailto:philippe.coval@osg.samsung.com gpg:0x467094BC
> https://blogs.s-osg.org/author/pcoval/
>
>
>
> ------------------------------
>
> Message: 5
> Date: Thu, 11 Jan 2018 11:16:46 +0100
> From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> To: Mircea Gliga <mircea.gliga@vitheia.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] libgcc.a size
> Message-ID:
>         <CAGAf8LxNUgWsCSTT6_oH+WaysN6nxvTR5Q=5qLhFCuVYgKfE=w@
> mail.gmail.com>
> Content-Type: text/plain; charset="UTF-8"
>
> > What stands out is a big bump in size for /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a
> from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.
>
> Static library, probably compiled with -g (debug info included). You
> need to recompile libgcc excluding -g option... My best guess.
>
> Zoran
>
> On Thu, Jan 11, 2018 at 10:04 AM, Mircea Gliga <mircea.gliga@vitheia.com>
> wrote:
> > Hello
> >
> > I just upgraded from krogoth to rocko, and noticed the resulting rootfs
> > image increased significantly.
> > What stands out is a big bump in size for
> > /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc
> > 5.3.0) to 25 MB in rocko.
> > Can someone shed some light ? What can be done ?
> >
> > Thanks
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 6
> Date: Thu, 11 Jan 2018 13:54:53 +0200
> From: Mircea Gliga <mircea.gliga@vitheia.com>
> To: Stefano Babic <sbabic@denx.de>,     Zoran Stojsavljevic
>         <zoran.stojsavljevic@gmail.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] libgcc.a size
> Message-ID: <1ac69a4c-188b-875d-8000-944cc6e04510@vitheia.com>
> Content-Type: text/plain; charset=utf-8; format=flowed
>
> Hi guys
>
>  >libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be
> integrated in rootfs ?
>
> I asked myself the same question. Not clear for me yet how and why it
> gets in the rootfs.
>
> Thanks and regards
> Mircea
>
>
> On 11/01/18 13:51, Stefano Babic wrote:
> > Hi Zoran, Mircea,
> >
> > On 11/01/2018 11:16, Zoran Stojsavljevic wrote:
> >>> What stands out is a big bump in size for /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a
> from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.
> >> Static library, probably compiled with -g (debug info included). You
> >> need to recompile libgcc excluding -g option... My best guess.
> >>
> > libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be
> > integrated in rootfs ? The libc-2.26.so is still 1.2MB (ARM) and
> > footprint is comparable to the past.
> >
> > Stefano
> >
> >
>
>
>
> ------------------------------
>
> Message: 7
> Date: Thu, 11 Jan 2018 12:51:33 +0100
> From: Stefano Babic <sbabic@denx.de>
> To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,        Mircea
> Gliga
>         <mircea.gliga@vitheia.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] libgcc.a size
> Message-ID: <aa4ae0f3-f8b8-2ee9-29b4-5d4ab7cd3feb@denx.de>
> Content-Type: text/plain; charset=utf-8
>
> Hi Zoran, Mircea,
>
> On 11/01/2018 11:16, Zoran Stojsavljevic wrote:
> >> What stands out is a big bump in size for /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a
> from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.
> >
> > Static library, probably compiled with -g (debug info included). You
> > need to recompile libgcc excluding -g option... My best guess.
> >
>
> libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be
> integrated in rootfs ? The libc-2.26.so is still 1.2MB (ARM) and
> footprint is comparable to the past.
>
> Stefano
>
>
> --
> =====================================================================
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================
>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 88, Issue 32
> *************************************
>

--089e0832c5002307a1056293b055
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m using iMX6ULL evk.=
 I would like to change direction and value of some gpios. How to do that??=
 Could you help me in this, since I&#39;m completely new to BSP.<br><br></d=
iv>Thanks and Regards<br><br></div>Mathew K Tharakan<br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jan 11, 2018 at 5:28 P=
M,  <span dir=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org"=
 target=3D"_blank">yocto-request@yoctoproject.org</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Send yocto mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
<wbr>org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-request@yoctoproject.or=
g">yocto-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org"=
>yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. How can I change the default ext4 or etx3 of the rootfs to<=
br>
=C2=A0 =C2=A0 =C2=A0 ext2 or jffs2 in yocto build? (Nguy?n Thanh V?)<br>
=C2=A0 =C2=A02. Re: How can I change the default ext4 or etx3 of the rootfs=
<br>
=C2=A0 =C2=A0 =C2=A0 to ext2 or jffs2 in yocto build? (John, Maxin)<br>
=C2=A0 =C2=A03. libgcc.a size (Mircea Gliga)<br>
=C2=A0 =C2=A04. Re: [meta-oic] Question about Iotivity 1.3.0/1 and fixes<br=
>
=C2=A0 =C2=A0 =C2=A0 status (Philippe Coval)<br>
=C2=A0 =C2=A05. Re: libgcc.a size (Zoran Stojsavljevic)<br>
=C2=A0 =C2=A06. Re: libgcc.a size (Mircea Gliga)<br>
=C2=A0 =C2=A07. Re: libgcc.a size (Stefano Babic)<br>
<br>
<br>
------------------------------<wbr>------------------------------<wbr>-----=
-----<br>
<br>
Message: 1<br>
Date: Thu, 11 Jan 2018 15:05:06 +0700<br>
From: Nguy?n Thanh V?=C2=A0 &lt;<a href=3D"mailto:ngthanh.vu94@gmail.com">n=
gthanh.vu94@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] How can I change the default ext4 or etx3 of the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rootfs to ext2 or jffs2 in yocto build?<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAGJSYqmyc+yZm9vi4OG8C2KU0=3D<a href=3D"mai=
lto:6RUv%2BWfpx66yPqFCaze_AWCQ@mail.gmail.com">6R<wbr>Uv+Wfpx66yPqFCaze_AWC=
Q@mail.<wbr>gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
I want to minimize the size of the image built in core-image-minimal.<br>
However, I have no idea how to change the local.conf file or recipe file.<b=
r>
Can anyone help me?<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20180111/2808d656/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.<wbr>org/pipermail/yocto/<wbr>attachments/20=
180111/2808d656/<wbr>attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Thu, 11 Jan 2018 08:23:26 +0000<br>
From: &quot;John, Maxin&quot; &lt;<a href=3D"mailto:maxin.john@intel.com">m=
axin.john@intel.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:ngthanh.vu94@gmail.com">ngthanh.vu94@gmail.com<=
/a>&quot; &lt;<a href=3D"mailto:ngthanh.vu94@gmail.com">ngthanh.vu94@gmail.=
com</a>&gt;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<a href=3D"mailto:yocto@yoctoproject.org"=
>yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] How can I change the default ext4 or etx3 of the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rootfs to ext2 or jffs2 in yocto build?<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:61C0517EAD808B429A1DE2DD9=
164D400326686DC@IRSMSX103.ger.corp.intel.com">61C0517EAD808B429A1DE2DD9164D=
<wbr>400326686DC@IRSMSX103.ger.<wbr>corp.intel.com</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi,<br>
<br>
An easy way will be to refer Yocto documentation:<br>
<a href=3D"http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-=
project-qs.html" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproje=
ct.org/<wbr>docs/current/yocto-project-qs/<wbr>yocto-project-qs.html</a><br=
>
<br>
and for required rootfs changes, use IMAGE_FSTYPES:<br>
<a href=3D"http://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.htm=
l#var-IMAGE_FSTYPES" rel=3D"noreferrer" target=3D"_blank">http://www.yoctop=
roject.org/<wbr>docs/2.4/mega-manual/mega-<wbr>manual.html#var-IMAGE_FSTYPE=
S</a><br>
<br>
&gt;From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@y=
octoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.or=
g">yocto-bounces@<wbr>yoctoproject.org</a>] On Behalf Of Nguy?n Thanh Vu<br=
>
&gt;Sent: Thursday, January 11, 2018 10:05 AM<br>
&gt;To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br>
&gt;Subject: [yocto] How can I change the default ext4 or etx3 of the rootf=
s to ext2 or jffs2 in yocto build?<br>
<br>
&gt;I want to minimize the size of the image built in core-image-minimal. H=
owever, I have no idea how to change the &gt;local.conf file or recipe file=
. Can anyone help me?<br>
<br>
Best Regards,<br>
Maxin<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20180111/0cb5fe97/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.<wbr>org/pipermail/yocto/<wbr>attachments/20=
180111/0cb5fe97/<wbr>attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Thu, 11 Jan 2018 11:04:46 +0200<br>
From: Mircea Gliga &lt;<a href=3D"mailto:mircea.gliga@vitheia.com">mircea.g=
liga@vitheia.com</a>&gt;<br>
To: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: [yocto] libgcc.a size<br>
Message-ID: &lt;<a href=3D"mailto:d0f37752-e921-9ed5-47cb-dadd737b5b0e@vith=
eia.com">d0f37752-e921-9ed5-47cb-<wbr>dadd737b5b0e@vitheia.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
Hello<br>
<br>
I just upgraded from krogoth to rocko, and noticed the resulting rootfs<br>
image increased significantly.<br>
What stands out is a big bump in size for<br>
/usr/lib/arm-poky-linux-<wbr>gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gc=
c<br>
5.3.0) to 25 MB in rocko.<br>
Can someone shed some light ? What can be done ?<br>
<br>
Thanks<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Thu, 11 Jan 2018 10:39:00 +0100<br>
From: Philippe Coval &lt;<a href=3D"mailto:philippe.coval@osg.samsung.com">=
philippe.coval@osg.samsung.<wbr>com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Cc: &quot;<a href=3D"mailto:iotivity-dev@lists.iotivity.org">iotivity-dev@l=
ists.iotivity.<wbr>org</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:iotivity-dev@lists.iotivi=
ty.org">iotivity-dev@lists.iotivity.<wbr>org</a>&gt;,=C2=A0 =C2=A0 =C2=A0 &=
quot;Maloor, Kishen&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:kishen.maloor@intel.com">=
kishen.maloor@intel.com</a>&gt;<br>
Subject: Re: [yocto] [meta-oic] Question about Iotivity 1.3.0/1 and<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fixes=C2=A0 =C2=A0status<br>
Message-ID: &lt;<a href=3D"mailto:952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.=
samsung.com">952a174d-ae9f-e82f-3294-<wbr>1d9490cf8da7@osg.samsung.com</a>&=
gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
<br>
On 11/01/18 02:30, Chanho Park wrote:<br>
&gt; Hi Philippe,<br>
&gt;<br>
Hi Chanho Park, HNY to you<br>
&gt; I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes<b=
r>
&gt; in your github tree[1].<br>
<br>
Yes they are still under review, did you test them ?<br>
<br>
Maybe I should resend them, now.<br>
<br>
&gt; I wonder why you don?t post them in the meta-oic.<br>
<br>
Well I shared patches to list couple of time:<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-June/036896.=
html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>=
org/pipermail/yocto/2017-June/<wbr>036896.html</a><br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-September/03=
7829.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
<wbr>org/pipermail/yocto/2017-<wbr>September/037829.html</a><br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-December/039=
355.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<=
wbr>org/pipermail/yocto/2017-<wbr>December/039355.html</a><br>
<br>
&gt; Do you have a plan to upstream them?<br>
I need reviewer to approve and commit them (@Kishen ?)<br>
or may I do it by my own<br>
since? nobody objected on previous changes ?<br>
<br>
Side note, I also simplified a recipe for iotivity master branch<br>
(it now relies on scons install like tizen, debian etc)<br>
<br>
so if it helps I will update devel branch and this page soon:<br>
<a href=3D"https://wiki.iotivity.org/wiki/yocto" rel=3D"noreferrer" target=
=3D"_blank">https://wiki.iotivity.org/<wbr>wiki/yocto</a><br>
<br>
<br>
&gt; Best Regards,<br>
BR, Keep in touch your feedback is valuable.<br>
<br>
&gt; Chanho Park<br>
&gt;<br>
&gt; [1]:?<a href=3D"https://github.com/TizenTeam/meta-oic/tree/sandbox/pco=
val/on/master/review" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/<wbr>TizenTeam/meta-oic/tree/<wbr>sandbox/pcoval/on/master/<wbr>review</=
a><br>
<br>
--<br>
mailto:<a href=3D"mailto:philippe.coval@osg.samsung.com">philippe.coval@osg=
.<wbr>samsung.com</a> gpg:0x467094BC<br>
<a href=3D"https://blogs.s-osg.org/author/pcoval/" rel=3D"noreferrer" targe=
t=3D"_blank">https://blogs.s-osg.org/<wbr>author/pcoval/</a><br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Thu, 11 Jan 2018 11:16:46 +0100<br>
From: Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.c=
om">zoran.stojsavljevic@gmail.com</a><wbr>&gt;<br>
To: Mircea Gliga &lt;<a href=3D"mailto:mircea.gliga@vitheia.com">mircea.gli=
ga@vitheia.com</a>&gt;<br>
Cc: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: Re: [yocto] libgcc.a size<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAGAf8LxNUgWsCSTT6_oH+<wbr>WaysN6nxvTR5Q=3D=
5qLhFCuVYgKfE=3D<a href=3D"mailto:w@mail.gmail.com">w@<wbr>mail.gmail.com</=
a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
&gt; What stands out is a big bump in size for /usr/lib/arm-poky-linux-<wbr=
>gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.<=
br>
<br>
Static library, probably compiled with -g (debug info included). You<br>
need to recompile libgcc excluding -g option... My best guess.<br>
<br>
Zoran<br>
<br>
On Thu, Jan 11, 2018 at 10:04 AM, Mircea Gliga &lt;<a href=3D"mailto:mircea=
.gliga@vitheia.com">mircea.gliga@vitheia.com</a>&gt; wrote:<br>
&gt; Hello<br>
&gt;<br>
&gt; I just upgraded from krogoth to rocko, and noticed the resulting rootf=
s<br>
&gt; image increased significantly.<br>
&gt; What stands out is a big bump in size for<br>
&gt; /usr/lib/arm-poky-linux-<wbr>gnueabi/7.2.0/libgcc.a from 5 MB in krogo=
th(gcc<br>
&gt; 5.3.0) to 25 MB in rocko.<br>
&gt; Can someone shed some light ? What can be done ?<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Thu, 11 Jan 2018 13:54:53 +0200<br>
From: Mircea Gliga &lt;<a href=3D"mailto:mircea.gliga@vitheia.com">mircea.g=
liga@vitheia.com</a>&gt;<br>
To: Stefano Babic &lt;<a href=3D"mailto:sbabic@denx.de">sbabic@denx.de</a>&=
gt;,=C2=A0 =C2=A0 =C2=A0Zoran Stojsavljevic<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail=
.com">zoran.stojsavljevic@gmail.com</a><wbr>&gt;<br>
Cc: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: Re: [yocto] libgcc.a size<br>
Message-ID: &lt;<a href=3D"mailto:1ac69a4c-188b-875d-8000-944cc6e04510@vith=
eia.com">1ac69a4c-188b-875d-8000-<wbr>944cc6e04510@vitheia.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
Hi guys<br>
<br>
=C2=A0&gt;libgcc.a is &quot;out-f-the-box&quot; in rocko 25MB, but why shou=
ld it be<br>
integrated in rootfs ?<br>
<br>
I asked myself the same question. Not clear for me yet how and why it<br>
gets in the rootfs.<br>
<br>
Thanks and regards<br>
Mircea<br>
<br>
<br>
On 11/01/18 13:51, Stefano Babic wrote:<br>
&gt; Hi Zoran, Mircea,<br>
&gt;<br>
&gt; On 11/01/2018 11:16, Zoran Stojsavljevic wrote:<br>
&gt;&gt;&gt; What stands out is a big bump in size for /usr/lib/arm-poky-li=
nux-<wbr>gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 5.3.0) to 25 MB in=
 rocko.<br>
&gt;&gt; Static library, probably compiled with -g (debug info included). Y=
ou<br>
&gt;&gt; need to recompile libgcc excluding -g option... My best guess.<br>
&gt;&gt;<br>
&gt; libgcc.a is &quot;out-f-the-box&quot; in rocko 25MB, but why should it=
 be<br>
&gt; integrated in rootfs ? The <a href=3D"http://libc-2.26.so" rel=3D"nore=
ferrer" target=3D"_blank">libc-2.26.so</a> is still 1.2MB (ARM) and<br>
&gt; footprint is comparable to the past.<br>
&gt;<br>
&gt; Stefano<br>
&gt;<br>
&gt;<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Thu, 11 Jan 2018 12:51:33 +0100<br>
From: Stefano Babic &lt;<a href=3D"mailto:sbabic@denx.de">sbabic@denx.de</a=
>&gt;<br>
To: Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com=
">zoran.stojsavljevic@gmail.com</a><wbr>&gt;,=C2=A0 =C2=A0 =C2=A0 =C2=A0 Mi=
rcea Gliga<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:mircea.gliga@vitheia.com"=
>mircea.gliga@vitheia.com</a>&gt;<br>
Cc: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: Re: [yocto] libgcc.a size<br>
Message-ID: &lt;<a href=3D"mailto:aa4ae0f3-f8b8-2ee9-29b4-5d4ab7cd3feb@denx=
.de">aa4ae0f3-f8b8-2ee9-29b4-<wbr>5d4ab7cd3feb@denx.de</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
Hi Zoran, Mircea,<br>
<br>
On 11/01/2018 11:16, Zoran Stojsavljevic wrote:<br>
&gt;&gt; What stands out is a big bump in size for /usr/lib/arm-poky-linux-=
<wbr>gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 5.3.0) to 25 MB in roc=
ko.<br>
&gt;<br>
&gt; Static library, probably compiled with -g (debug info included). You<b=
r>
&gt; need to recompile libgcc excluding -g option... My best guess.<br>
&gt;<br>
<br>
libgcc.a is &quot;out-f-the-box&quot; in rocko 25MB, but why should it be<b=
r>
integrated in rootfs ? The <a href=3D"http://libc-2.26.so" rel=3D"noreferre=
r" target=3D"_blank">libc-2.26.so</a> is still 1.2MB (ARM) and<br>
footprint is comparable to the past.<br>
<br>
Stefano<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: <a href=3D"mailto:sb=
abic@denx.de">sbabic@denx.de</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
<br>
------------------------------<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
<br>
End of yocto Digest, Vol 88, Issue 32<br>
******************************<wbr>*******<br>
</font></span></blockquote></div><br></div>

--089e0832c5002307a1056293b055--
