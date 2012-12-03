Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D816E011C0
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 03:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=wo5S2dxwxVXqIax1Ws17/SV3CiKgoXm96R7h/IrNw9s=; 
	b=Qvq/G5h0tMANyPZQK9ChRhXNujQDMKf7fgO61rhTHxd4LSV46lEuDDzBRG7ZxxBohkmEL8ve3gn/GLI3F5HjeW5ovwQifS3V+qyCEkGzGZCpefRWKdh3ZN49gfZMwJP3;
Received: from [109.224.129.17] (port=58648
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1TfUbf-000558-Ko
	for yocto@yoctoproject.org; Mon, 03 Dec 2012 11:54:39 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0Lbox5b5u0re10VhrYghP1LZ7he8N2oFRULBy8+x+ua62g@mail.gmail.com>
Date: Mon, 3 Dec 2012 11:54:43 +0000
Message-Id: <2F1E8F96-4E1B-4971-BCA4-09CE414F7B1C@keylevel.com>
References: <09515033-71CF-44CC-8FD5-CA51C85CF3E0@keylevel.com>
	<CAJTo0Lbox5b5u0re10VhrYghP1LZ7he8N2oFRULBy8+x+ua62g@mail.gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Re: Image libraries
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
X-List-Received-Date: Mon, 03 Dec 2012 11:54:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On 3 Dec 2012, at 09:51, Burton, Ross wrote:

> On 1 December 2012 22:39, Chris Tapp <opensource@keylevel.com> wrote:
>> Is there a recipe available for a library which can load image files =
into memory / GL textures?
>=20
> Into memory, the lowest level would be libjpeg or libpng, but then
> it's your responsibility to match the pixel formats.

> If you're using GL and you don't have a higher level abstraction, you
> might want to look at Cogl (GL specifics abstraction and sanity layer)
> or Clutter (toolkit based on Cogl).  Both of these are in oe-core.

Thanks, I'll have a look at that.

I've been using libsdl-image to get me going as I can use that to get at =
the image data and it's fairly easy to work out the pixel format.

> Ross

Chris Tapp

opensource@keylevel.com
www.keylevel.com




