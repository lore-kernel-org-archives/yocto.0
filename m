Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F34A5E0121B
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 11:15:43 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id t10so2579222eei.7
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 11:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=DzAO9MOqtBsC2iQTRJKvLU2u6DvNDQ33NdSbPDpQXZ0=;
	b=BJg4zmVr3AnlEo5VF8jOJ1MBGNp2J91GeHyZecSTqZSj8KtZRDZuUIXximG+G+m3s+
	qMeDvT7VLoR5EVtCSI2fqwZasvsh6EcjJiVwgXxDCrgiGayqA6gNgam6UwpNob5pcbjf
	ViEHKeDYDVY29Zaa2rdc6zod1PK+8Wy81wekY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=DzAO9MOqtBsC2iQTRJKvLU2u6DvNDQ33NdSbPDpQXZ0=;
	b=pXV8HQD9QcUCObJTLtsWQhihwR1eEP+kcnvfiWmF3ZOX1s/BZ0iODUpLr6N0J60qmn
	N81PGoTu0BPRvIY2uf73mYtbFxs/Q9+qU1dum3B04CrS3sJrdqYiBNcDF8mKnbHssrcc
	IieawxS7JeKDqUR18A7CpYJI/ds+j7vDeCxECCcTjv73gRMISz6BTdfgpOPnJGS0F4L/
	1wXbUbUaypscJp91xbcVA/wvaEXndBneMyvdhu9o4fwatct7jrD81SHMnWtRAi59zmco
	uxjZpThTSNebWsxQQQS30jZDUX1Jr2Pmo4f5KrSsz3YrLyz7Dz6aNTFRCuACZYDaHwi0
	bEHQ==
MIME-Version: 1.0
X-Received: by 10.14.215.193 with SMTP id e41mr30876521eep.32.1362165342177;
	Fri, 01 Mar 2013 11:15:42 -0800 (PST)
Received: by 10.223.43.200 with HTTP; Fri, 1 Mar 2013 11:15:42 -0800 (PST)
In-Reply-To: <5130E57C.5090802@windriver.com>
References: <CAHUNapRBgEjmtJNCsY+t59uJ8p1+HzJuQKaJxNExbPx_fJKZZQ@mail.gmail.com>
	<5130E57C.5090802@windriver.com>
Date: Fri, 1 Mar 2013 11:15:42 -0800
Message-ID: <CA+gsK-qsTjhRnH26Oc5YD++jcgGda4f4kV+CJ3aAJCdkqV=Kng@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQkor481aXQOeKMBe+C++JjEDS6jcfR9l1bqimOlEi8sfZ9n0rQ926u/zQq4QYYCopxzpVm9
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux 3.8
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 19:15:44 -0000
Content-Type: multipart/alternative; boundary=e89a8f647ac358dd9304d6e1d5ba

--e89a8f647ac358dd9304d6e1d5ba
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

On Fri, Mar 1, 2013 at 9:29 AM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> But note, Greg is talking specifically about LTSI, we don't
> expect more than one LTSI per year, and we are already locked into
> the LTSI 3.4.
>
> However, as far as I understand it the 3.4 snapshot in
git.yoctoproject.org is from kernel.org and not from
http://git.linuxfoundation.org/ltsi-kernel.git. GregKH has been merging
patches into the LTSI kernel, such as AF_BUS, that have not been accepted
by upstream. I do not think that those patches are being merged into the YP
kernel tree. But please correct me if I am wrong.

Cheers,
Rudi

--e89a8f647ac358dd9304d6e1d5ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Bruce,</div><div><br></div>On Fri, Mar 1, 2013 =
at 9:29 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.as=
hfield@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt=
;</span> wrote:<br>
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div=
 class=3D"im">
<span style=3D"color:rgb(34,34,34)">But note, Greg is talking specifically =
about LTSI, we don&#39;t</span><br></div>
expect more than one LTSI per year, and we are already locked into<br>
the LTSI 3.4.<div class=3D""><div class=3D"h5"><br></div></div></blockquote=
><div style>However, as far as I understand it the 3.4 snapshot in <a href=
=3D"http://git.yoctoproject.org">git.yoctoproject.org</a> is from <a href=
=3D"http://kernel.org">kernel.org</a> and not from=A0<a href=3D"http://git.=
linuxfoundation.org/ltsi-kernel.git" target=3D"_blank" style=3D"font-size:1=
3px;color:rgb(51,102,153);font-family:Tahoma,Verdana,Arial,Helvetica,&#39;B=
itstream Vera Sans&#39;,sans-serif;line-height:16.875px">http://git.linuxfo=
undation.org/ltsi-kernel.git</a>. GregKH has been merging patches into the =
LTSI kernel, such as AF_BUS, that have not been accepted by upstream. I do =
not think that those patches are being merged into the YP kernel tree. But =
please correct me if I am wrong.</div>
<div style><br></div><div style>Cheers,</div><div style>Rudi</div></div>
</div></div>

--e89a8f647ac358dd9304d6e1d5ba--
