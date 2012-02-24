Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2651E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 13:21:29 -0800 (PST)
Received: by bkcjm1 with SMTP id jm1so3564341bkc.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 13:21:28 -0800 (PST)
Received-SPF: pass (google.com: domain of b.hutchman@gmail.com designates
	10.205.120.10 as permitted sender) client-ip=10.205.120.10; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of b.hutchman@gmail.com
	designates 10.205.120.10 as permitted sender)
	smtp.mail=b.hutchman@gmail.com;
	dkim=pass header.i=b.hutchman@gmail.com
Received: from mr.google.com ([10.205.120.10])
	by 10.205.120.10 with SMTP id fw10mr1981116bkc.94.1330118488661
	(num_hops = 1); Fri, 24 Feb 2012 13:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Lb/XIXzCCVIR9Kj4z+ViapQrULK/LV8aYlW7lB85Bk0=;
	b=CbrHpUmzlGWjeNSXEc7W38/DRzyglKW+WgSEYKG1GR6mvRHMKAOHwz0padzICxQjRX
	9JEwTraVY7D4r/V/sYx1O/ex2PieYIdzFLKGWQCcoUJJ5kk5UoizAp+gfdGBQtoQOMgI
	HJ6jM6nKGKK9Xpa92tLLW4DPRQ7O+TiGAAbxc=
MIME-Version: 1.0
Received: by 10.205.120.10 with SMTP id fw10mr1638530bkc.94.1330118488514;
	Fri, 24 Feb 2012 13:21:28 -0800 (PST)
Received: by 10.204.229.198 with HTTP; Fri, 24 Feb 2012 13:21:28 -0800 (PST)
In-Reply-To: <E95BAB41-4F4A-4A90-A975-FFD882EB41F3@ti.com>
References: <CAFZh4h909x+Ckk2Fed-YtEyZ_YhKJQV82=RHV++AE1mdp3DFGw@mail.gmail.com>
	<CAFZh4h_DZVM0-P6VjiZd4Czqiq5UGppS1qRhg2G7sKR5W2n5aw@mail.gmail.com>
	<E95BAB41-4F4A-4A90-A975-FFD882EB41F3@ti.com>
Date: Fri, 24 Feb 2012 16:21:28 -0500
Message-ID: <CAFZh4h_NjvLfqjJfY6eMhESrNOubE5LWRqYwgnWxRndD=6w_qQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "Monk, Roger" <r-monk@ti.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-ti] bitbake ti-syslink fails for MACHINE=c6a816x
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
X-List-Received-Date: Fri, 24 Feb 2012 21:21:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 24, 2012 at 4:07 PM, Monk, Roger <r-monk@ti.com> wrote:
> I don't think it is worth spending too much time debugging this, since th=
is version of syslink is pretty old now and there will likely be further is=
sues in this environment even if we can can get th build to complete, since=
 there are other related dependencies. =A0Best would be to look at adding t=
he version >=3D those versions that are used in DVSDK 5.03. =A0This is plan=
ned, but we don't have a schedule at the moment. =A0If you have some time t=
o help integrate these newer components it would be a big help.
>
> Thanks,
> ~roger

I just need to get syslink and sysbios going on C6A816x & L138.  We
bitbake our rootfs image from Angstrom at the moment.  Can you advise
the best way to get syslink/sysbios going on these two targets?  Our
build machines a Linux based.  Should I be using the versions that are
packaged inside the ezsdk .bin file?

I can also help integrating but I might need some direction to get started.

Regards,

Brian

