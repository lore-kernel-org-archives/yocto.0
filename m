Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B000E0030B
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 11:33:25 -0800 (PST)
Received: by dadp13 with SMTP id p13so455828dad.35
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 11:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.223.199 as permitted sender) client-ip=10.68.223.199; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.223.199 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.223.199])
	by 10.68.223.199 with SMTP id qw7mr92104078pbc.79.1329939205527
	(num_hops = 1); Wed, 22 Feb 2012 11:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=gT9f9q3yArFmr7nrcHjzO9HD+yP/9+xkibYC9Vs8v4w=;
	b=VNgDpGsq4fqxi8RzrHvprkiTyYlDIxQM1fBHWsKVsYLVCuNYvpo98KVHPWki/nw7Bl
	WVVP6h62UT1SjPhk+ttkMuTeIJskRc/uepwFfsVkW0iBr8GPA9QxDkD4NN5jkxRe2aTJ
	RqQu6u+OPS5+aMKL5SN2IJujts0i+qNp4L+5I=
MIME-Version: 1.0
Received: by 10.68.223.199 with SMTP id qw7mr75770857pbc.79.1329939205437;
	Wed, 22 Feb 2012 11:33:25 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Wed, 22 Feb 2012 11:33:25 -0800 (PST)
In-Reply-To: <CADzUK1JyrG3ju6mLuJEAaAmQzEpy_46z3D431R0SwJQHO8hxcg@mail.gmail.com>
References: <CADzUK1LiFS85BNaEpZt=4A_Qkuxdx0wPPx5g+7Jwwix069jdvw@mail.gmail.com>
	<CADzUK1JyrG3ju6mLuJEAaAmQzEpy_46z3D431R0SwJQHO8hxcg@mail.gmail.com>
Date: Wed, 22 Feb 2012 14:33:25 -0500
Message-ID: <CADzUK1KBjCNd9Y_WowKSOuetYJCdxT6gait-Bh3ZzhFhfzggHQ@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: meta-mono is released
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
X-List-Received-Date: Wed, 22 Feb 2012 19:33:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>> meta-mono has been released. I have tested it on x86 and ARM
>> successfully =A0and on PPC and MIPS unsuccessfully. I will work on those
>> architectures and time becomes available. If someone prefers that they
>> need mono for MIPS or PPC immediately, please email me and I will see
>> what I can do.
>
> At this point of time, I am using github for hosting the source.
>
> Michael Halstead is setting me up with git.yoctoproject
>
> The code will be moved over to git.yoctoproject in the next few days.

Things move at light speed apparently.

All the code is available at git.yoctoproject and github.

Only git.yoctoproject is authoritative, the code at github will be removed =
soon.

Layer Index has been updated to reflect this.

http://www.openembedded.org/wiki/LayerIndex

Source is in git:

git://git.yoctoproject.org:meta-mono.git

http://git.yoctoproject.org (under Yocto MetaData Layers)

> I neglected to include the link in the previous email. Here are the
> relevant links:
>
> http://www.openembedded.org/wiki/LayerIndex
>
> meta-mono is listed under software support layers
>
> http://github.com/KokoFitClub/meta-mono
>
> This URI will very soon be replaced with git.yoctoproject.org
>
> Of course, Layer Index will be updated when this is done.
>
> Once again, please use it and let me know if something does not work.

