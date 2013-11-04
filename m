Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CA90E0176E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 08:41:23 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id vb8so7244486obc.5
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 08:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=I0/02fkfMEL1PqmZE6TT7Z/JF4AeAkK/2IoaE+EtXeQ=;
	b=eUg9bB70VTaeJTUEiK4Y2+1W0qCRFH+xDwibS5Trz4gpP4kdShty7ADPyCiZCDCF29
	62pyG9OFxlbXV+8r5eU6pOBmQPMdnXPYoSSqffph/UdFYpGLbyKFttl+aamt5K0lmkhX
	np+zUV+JtC8Z2/GJemXk3ZkOkhbX8mrJY8zgPrDfdjpnxSRQdjzuXrd0hNEq/esvgraz
	wR32X7KTSQraSLhN1oSv96fEo2pDQ3nCbaIBq3ecOrAz/sSAfYFC+KAfITjiq7jL2/Q+
	8BzA6jTLSJv1F3CVDmc1Q1ps0cWpfp3VtR/nOYQMba5YrnLhsI6GUri/s5UruTPhUzaa
	KjQQ==
MIME-Version: 1.0
X-Received: by 10.60.103.106 with SMTP id fv10mr2655198oeb.44.1383583282492;
	Mon, 04 Nov 2013 08:41:22 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Mon, 4 Nov 2013 08:41:22 -0800 (PST)
In-Reply-To: <1383583014.1197.3.camel@firebird.rb.intel.com>
References: <CAFyqS9pSWH5Lee1xTCKmj8gTLYrQRgk340a-UcYTjWsGj+wjfw@mail.gmail.com>
	<20131104161112.GE3684@jama>
	<CAFyqS9q=jCAnL=ds-+ij3bCk3d58PKw4OQGBdxZi4JePb+GvAg@mail.gmail.com>
	<1383583014.1197.3.camel@firebird.rb.intel.com>
Date: Mon, 4 Nov 2013 17:41:22 +0100
Message-ID: <CAFyqS9oeeVcrChWZWdBJ9o=OyFfKUnP=pn9wDhfwz39OETP2sw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-openembedded/meta-oe and busbox issues in 'dora'
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
X-List-Received-Date: Mon, 04 Nov 2013 16:41:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2013 at 5:36 PM, Stanacar, StefanX
<stefanx.stanacar@intel.com> wrote:
>
>
> On Mon, 2013-11-04 at 17:21 +0100, Hans Beck=E9rus wrote:
>> On Mon, Nov 4, 2013 at 5:11 PM, Martin Jansa <martin.jansa@gmail.com> wr=
ote:
>> > On Mon, Nov 04, 2013 at 05:05:43PM +0100, Hans Beck=E9rus wrote:
>> >> Hello. We get the below error when trying to build our image in Yocto
>> >> 1.5 'dora'.
>> >>
>> >> ERROR: No recipes available for:
>> >>   /home/poky/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1=
.20.2.bbappend
>> >> ERROR: Command execution failed: Exited with 1
>> >>
>> >> We use the 'dora' branch also in meta-openembedded.
>> >
>> > Why are you using meta-openembedded from 'dora' branch when your oe-co=
re
>> > branch is 'master'?
>> Aha. We use the 'dora' branch in Yocto but need some packages provided
>> only in meta-openembedded.
>> Are you saying that we should not use the 'dora' branch in
>> meta-openembedded but instead go for 'master'?
>> I am probably confused here, but I distinctively though 'dora' in
>> Yocto would require the same in OE :(
>>
>
> No, Martin is saying: use the same branch across all your layers.
> If you are using dora for oe-core/yocto use dora for meta-openembdedded.
> If you are using master for oe-core use master for meta-openembedded
> (and this usually holds true for all layers, don't mix layers and
> branches). There is no busybox/busybox_1.20.2.bbappend in the dora
> branch of meta-openembedded, so you're probably not up to date with the
> branch.
Yea, that was what I thought. I need to check why this ended up out
wrong since I was
checking out from 'dora' in both Yocto and meta-openembedded.

Thanks.
Hans

>
>
> Cheers,
> Stefan
>
>> >
>> > Use the same branches for all layers.
>> >
>> >> But busybox has been upgraded to 1.21.1 in Yocto. Is there some simpl=
e
>> >> way to workaround this issue (besides removing the busybox recipe fro=
m
>> >> meta-oe)?
>> >> I.e is there some clean way to tell bitbake that it is expected that
>> >> this specific recipe is missing?
>> >>
>> >> Thanks.
>> >> Hans
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> > --
>> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

