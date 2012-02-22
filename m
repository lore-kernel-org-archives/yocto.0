Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2589E0030B
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 10:34:34 -0800 (PST)
Received: by qauh8 with SMTP id h8so606393qau.14
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 10:34:34 -0800 (PST)
Received-SPF: pass (google.com: domain of kergoth@gmail.com designates
	10.229.135.85 as permitted sender) client-ip=10.229.135.85; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of kergoth@gmail.com
	designates 10.229.135.85 as permitted sender)
	smtp.mail=kergoth@gmail.com;
	dkim=pass header.i=kergoth@gmail.com
Received: from mr.google.com ([10.229.135.85])
	by 10.229.135.85 with SMTP id m21mr24007031qct.26.1329935674355
	(num_hops = 1); Wed, 22 Feb 2012 10:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=oY0k2K/yDPTF8Nze5UKjtSxbqZUYcZYIleOAkcDa/9M=;
	b=SAL59/WijIUUKM/DIadUUZBBcDLnyViE7XokxCRMt2wH36YaJ8tNeYYLndm4MNt0ND
	SbArsn4K29AzIXkbeSUFWQpz4QV2oVwkrRphaj2CWDmcfa+Z3GsEoqoZz7Ljk6X/acp1
	oEa4qfdMJApEmxrmIyWKb27m+4K7vkvZHGZpY=
Received: by 10.229.135.85 with SMTP id m21mr20229962qct.26.1329935674246;
	Wed, 22 Feb 2012 10:34:34 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.224.145 with HTTP; Wed, 22 Feb 2012 10:34:14 -0800 (PST)
In-Reply-To: <CADzUK1LiFS85BNaEpZt=4A_Qkuxdx0wPPx5g+7Jwwix069jdvw@mail.gmail.com>
References: <CADzUK1LiFS85BNaEpZt=4A_Qkuxdx0wPPx5g+7Jwwix069jdvw@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 22 Feb 2012 11:34:14 -0700
X-Google-Sender-Auth: ePjjrWBHTXgCSNrZuLvI38kdxu8
Message-ID: <CABcZANmNQiONgP+tZBE6srMJ6PhZNp9F4mgBQtkFqUR4OzYR3Q@mail.gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 22 Feb 2012 18:34:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 22, 2012 at 11:25 AM, Autif Khan <autif.mlist@gmail.com> wrote:
> meta-mono has been released. I have tested it on x86 and ARM
> successfully =C2=A0and on PPC and MIPS unsuccessfully. I will work on tho=
se
> architectures and time becomes available. If someone prefers that they
> need mono for MIPS or PPC immediately, please email me and I will see
> what I can do.

Nice work :)
--=20
Christopher Larson

