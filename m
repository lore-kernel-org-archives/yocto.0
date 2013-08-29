Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72BFEE01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 20:58:54 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id n15so3368429ead.30
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 20:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UjaqGIjSrHM/uyr8sB9gna7iJltDwuwEbKaQeGOSF6w=;
	b=OAdH6koKDVjvNQVvhcmXSBDvconV19REKfaNrQJ13EPrBI3DGydXph9SoamQYxgdzB
	xTpKlM1D2ahsmyodI/yPFnzkeIL96KMZn9T8XlemmpYkgigwg2ekicc07bCaT3DLEzFW
	HwJrZcjU7OSNvD7TR8Tx0cqhNabc3fDqRdDzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=UjaqGIjSrHM/uyr8sB9gna7iJltDwuwEbKaQeGOSF6w=;
	b=aJJHQ6YObtaVtxKc/GKv1Z3MbkHQOU0mwzDNa8jFm+4dhX5Sb+JkfYR8SNxe2G4VQW
	z6Dhyp/QT0PvoMdsXorJ3AWAB+q/Vi1Vq1uy/kp7bNpSZpVsOubtNOg4y0yb104iFjkn
	Cy7cvQEgCEzW7sGkVGLX8U5mO6RAqWNhfkLo0Qy5jeHnWIjfBdAz9tskAJ4ZbCH2qjj2
	Vq/8GgS2LggyJ0uL0VJjGy1bv0dKs6qTqfZJV8cw+RruceoFloB2+S4+m7HL/ywQjRWK
	9IRX+8JXctPdXW+zugxc+gPzkk9yCQNq4oOKQzInKBAYPB6yzPLBlYjeg0UeJJtWaOtD
	szVA==
X-Gm-Message-State: ALoCoQmomQH/DJ4MpCEmBUfPsJ4Fnuo96tLSZ0miSE+DL/YliDPJ7fS2KNk93ZAuUYY1qOB40FSZ
MIME-Version: 1.0
X-Received: by 10.15.64.1 with SMTP id n1mr1704102eex.15.1377748733341; Wed,
	28 Aug 2013 20:58:53 -0700 (PDT)
Received: by 10.223.3.66 with HTTP; Wed, 28 Aug 2013 20:58:53 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A016C87D6@039-SN2MPN1-023.039d.mgd.msft.net>
References: <CA+gsK-ogYkoRW0RFgGveiB6oHM-FKhF_KLg7L5JEM-k7r0omUA@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A016C87D6@039-SN2MPN1-023.039d.mgd.msft.net>
Date: Wed, 28 Aug 2013 20:58:53 -0700
Message-ID: <CA+gsK-oVt-dKEoaKPCACqRoH8npmBJefE6cPDyiFMjTxyZAKog@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] [meta-fsl-ppc] MPC8572 Machine with Dylan
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
X-List-Received-Date: Thu, 29 Aug 2013 03:58:55 -0000
Content-Type: multipart/alternative; boundary=001a1132f094d766fd04e50e1fab

--001a1132f094d766fd04e50e1fab
Content-Type: text/plain; charset=ISO-8859-1

Thank you, Zhenhua. I ended up using meta-fsl-ppc from [1] which has
support for mpc8572 and Dylan. It built the kernel, dtb and rootfs image.
It does not boot right now though stopping after "Uncompressing Kernel
Image ... OK". I guess I have to do more debugging.

Thanks,
Rudi

[1]
http://git.freescale.com/git/cgit.cgi/ppc/sdk/meta-fsl-ppc.git/tree/?h=dylan

On Wed, Aug 28, 2013 at 7:33 PM, Luo Zhenhua-B19537 <B19537@freescale.com>wrote:

>  Hi Rudi, ****
>
> ** **
>
> Mpc85xx series is not supported and removed since FSL QorIQ SDK
> 1.4(QorIQ-SDK-V1.4-20130625-yocto) which is based on Yocto 1.4(dylan), the
> machine configure files are removed from dylan/master of meta-fsl-ppc layer
> to avoid unexpected issues.
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?h=dylan&id=ee9e6378f4f2651b78bb5ccc804f7dda627569d6
> ****
>
> ** **
>
> QorIQ SDK 1.3.2 uses denzil of Poky, you can use danny/denzil/edison for
> image build of mpc85xx series. ****
>
> ** **
>
> ** **
>
> Best Regards,****
>
> ** **
>
> Zhenhua****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Rudolf Streif
> *Sent:* Thursday, August 29, 2013 12:34 AM
> *To:* Yocto Discussion Mailing List
> *Subject:* [yocto] [meta-freescale] [meta-fsl-ppc] MPC8572 Machine with
> Dylan****
>
> ** **
>
> I am looking to build for MPC8572 with Dylan and checked out the
> meta-fsl-ppc BSP layer. Seems like support for that machine was removed in
> May [1]. The reason given was " *u-boot code base can not support mpc85xx
> for sdk 1.3.2". Howerver, that was contested in a follow-up e-mail.
> Interestingly, the QorIQ-SDK-V1.3.2-20130325-yocto does contain
> meta-fsl-ppc with support for that machine.****
>
> ** **
>
> I grepped through the git log but could not even find the commit that
> removed it.****
>
> ** **
>
> Could someone please comment on the status? Is the BSP layer contained in
> QorIQ-SDK-V1.3.2-20130325-yocto compatible with Dylan?****
>
> ** **
>
> ** **
>
> Thanks,****
>
> Rudi****
>
> ** **
>
> ** **
>
> [1]
> https://lists.yoctoproject.org/pipermail/meta-freescale/2013-May/002679.html
> ****
>

--001a1132f094d766fd04e50e1fab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, Zhenhua. I ended up using meta-fsl-ppc from [1]=
 which has support for mpc8572 and Dylan. It built the kernel, dtb and root=
fs image. It does not boot right now though stopping after &quot;Uncompress=
ing Kernel Image ... OK&quot;. I guess I have to do more debugging.<div>
<br></div><div>Thanks,</div><div>Rudi</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">[1]=A0<a href=3D"http://git.freescale.com/g=
it/cgit.cgi/ppc/sdk/meta-fsl-ppc.git/tree/?h=3Ddylan">http://git.freescale.=
com/git/cgit.cgi/ppc/sdk/meta-fsl-ppc.git/tree/?h=3Ddylan</a><br>
<br><div class=3D"gmail_quote">On Wed, Aug 28, 2013 at 7:33 PM, Luo Zhenhua=
-B19537 <span dir=3D"ltr">&lt;<a href=3D"mailto:B19537@freescale.com" targe=
t=3D"_blank">B19537@freescale.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;b=
order-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"=
>






<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Hi Rudi,
<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Mpc85xx series is not supported and removed since FSL=
 QorIQ SDK 1.4(QorIQ-SDK-V1.4-20130625-yocto) which is based on Yocto 1.4(d=
ylan), the machine configure
 files are removed from dylan/master of meta-fsl-ppc layer to avoid unexpec=
ted issues. =A0</span><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/=
meta-fsl-ppc/commit/?h=3Ddylan&amp;id=3Dee9e6378f4f2651b78bb5ccc804f7dda627=
569d6" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl=
-ppc/commit/?h=3Ddylan&amp;id=3Dee9e6378f4f2651b78bb5ccc804f7dda627569d6</a=
><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)"><u></u><u></u></span></p>

<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">QorIQ SDK 1.3.2 uses denzil of Poky, you can use dann=
y/denzil/edison for image build of mpc85xx series.
<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Best Regards,<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Zhenhua<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<div style=3D"border-style:none none none solid;border-left-color:blue;bord=
er-left-width:1.5pt;padding:0in 0in 0in 4pt">
<div>
<div style=3D"border-style:solid none none;border-top-color:rgb(181,196,223=
);border-top-width:1pt;padding:3pt 0in 0in">
<p class=3D""><b><span style=3D"font-size:10pt;font-family:Tahoma,sans-seri=
f">From:</span></b><span style=3D"font-size:10pt;font-family:Tahoma,sans-se=
rif"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@y=
octoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Thursday, August 29, 2013 12:34 AM<br>
<b>To:</b> Yocto Discussion Mailing List<br>
<b>Subject:</b> [yocto] [meta-freescale] [meta-fsl-ppc] MPC8572 Machine wit=
h Dylan<u></u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D""><u></u>=A0<u></u></p>
<div>
<div>
<p class=3D""><span style=3D"font-size:10pt;font-family:Arial,sans-serif;co=
lor:rgb(102,102,102)">I am looking to build for MPC8572 with Dylan and chec=
ked out the meta-fsl-ppc BSP layer. Seems like support for that machine was=
 removed in May [1]. The reason
 given was &quot;</span><span style> *u-boot code base can not support mpc8=
5xx for sdk 1.3.2&quot;. Howerver, that was contested in a follow-up e-mail=
. Interestingly, the QorIQ-SDK-V1.3.2-20130325-yocto does contain meta-fsl-=
ppc with support for that machine.</span><u></u><u></u></p>

</div>
<div>
<p class=3D""><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D""><span style=3D"font-size:10pt;font-family:Arial,sans-serif;co=
lor:rgb(102,102,102)">I grepped through the git log but could not even find=
 the commit that removed it.</span><u></u><u></u></p>
</div>
<div>
<p class=3D""><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D""><span style=3D"font-family:Arial,sans-serif;color:rgb(102,102=
,102)">Could someone please comment on the status? Is the BSP layer contain=
ed in QorIQ-SDK-V1.3.2-20130325-yocto compatible with Dylan?</span><u></u><=
u></u></p>

</div>
<div>
<p class=3D""><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D""><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D""><span style=3D"font-family:Arial,sans-serif;color:rgb(102,102=
,102)">Thanks,</span><u></u><u></u></p>
</div>
<div>
<p class=3D""><span style=3D"font-family:Arial,sans-serif;color:rgb(102,102=
,102)">Rudi</span><u></u><u></u></p>
</div>
<div>
<p class=3D""><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D""><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D""><span style=3D"font-size:10pt;font-family:Arial,sans-serif;co=
lor:rgb(102,102,102)">[1]=A0</span><a href=3D"https://lists.yoctoproject.or=
g/pipermail/meta-freescale/2013-May/002679.html" target=3D"_blank">https://=
lists.yoctoproject.org/pipermail/meta-freescale/2013-May/002679.html</a><u>=
</u><u></u></p>

</div>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div>

--001a1132f094d766fd04e50e1fab--
