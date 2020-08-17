Received: from resqmta-ch2-09v.sys.comcast.net (resqmta-ch2-09v.sys.comcast.net [69.252.207.41])
 by mx.groups.io with SMTP id smtpd.web10.51496.1597692715209654377
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 12:31:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=mhQn/IuM;
 spf=pass (domain: comcast.net, ip: 69.252.207.41, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-09v.sys.comcast.net ([69.252.207.105])
	by resqmta-ch2-09v.sys.comcast.net with ESMTP
	id 7icakHlVSeHox7krKk3L9k; Mon, 17 Aug 2020 19:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1597692714;
	bh=9213CSkponyT2Bgrd2QvfKsG3tRizB+s11ll2iY4Zx4=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=mhQn/IuMPwgyOunguwrIyRIKSQFWg+BuT3QTDL60aDoIG1i59aCY9kHSqPFfgCWEV
	 xLxLTTZBJ8izfsY/8C7AqAqMx3pfJkzPXedOhK7i7e/HycIDRB0UFVbV1qPO6HMfn3
	 m/XYcvkoMGE5Eo1e+Osu6/n07m5+RCnBtg54LN5R2k0FfxBofCxXFy9FtO6ngzeSK5
	 kTW+oCHX1fhQ1oAOMyJj6e8IoGw1hBV0RsFCsr+5RIE2+pCPYMRKd7vWHPy4RxnH+z
	 DrJXGrom7/hSdY9yhPOVV4XdbA7kSOQkGv09NhNDNEGjhKQiTyrjrfK/5aUknw+01N
	 PgaQAR+y8x4Bw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-09v.sys.comcast.net with ESMTPSA
	id 7krIkXYdSOgom7krJkhSn4; Mon, 17 Aug 2020 19:31:53 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedruddtgedggeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthejredttdefheenucfhrhhomheptfhosgcurfhrohifvghluceorhhprhhofigvlhestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepgedvhfekgeetudeuiedtudektefhffeukeevgfettdeggfettedvgedvvdetleeunecukfhppeejfedrudejgedrvdegrdegvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegluddtrddurdduuddruddtvdgnpdhinhgvthepjeefrddujeegrddvgedrgedvpdhmrghilhhfrhhomheprhhprhhofigvlhestghomhgtrghsthdrnhgvthdprhgtphhtthhopegrlhgvgidrkhgrnhgrvhhinhesghhmrghilhdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-Xfinity-VMeta: sc=-100.00;st=legit
Subject: Re: [yocto] pkg-config dependencies?
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
 <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com>
From: "Rob Prowel" <rprowel@comcast.net>
Message-ID: <d2c4a71f-315e-77c0-93b4-36aa216a4d3e@comcast.net>
Date: Mon, 17 Aug 2020 15:31:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2020-08-17 14:25, Alexander Kanavin wrote:
> You need to add DEPENDS = "libmnl" maybe?
> 
> RDEPENDS is needed for runtime things like script interpreters or
> supplementary data; plain library dependencies are build-time.

Tried both: DEPENDS and RDEPENDS.  libmnl.pc does exist in another tree 
but not visible to the ipset and not sure what environment var is proper 
to bring it into the build for ipset.bb

There is a temp/sysroots-components/... tree that contains the .pc file, 
but it's not visible to the ipset.bb recipe.  How do I make it visible 
in a way that's not a hack?

tmp/sysroots-components/cortexa9hf-neon/libmnl/usr/lib/pkgconfig/libmnl.pc

is not visible under

${WORKDIR}


> On Mon, 17 Aug 2020 at 19:14, Rob Prowel <rprowel@comcast.net> wrote:
> 
>> I'm trying to add the ipset utility to my arm build so that I can group
>> IP/ports for use in tc and netfilter.  I was able to update the vendor
>> supplied iptools2 recipe to install tc and iptables, but ipset is a
>> fresh recipe, not included in another existing layer.
>>
>> I'm adding the following in its bb file:
>>
>> # -----------------------------------------------------------------
>> SRC_URI =  "file://ipset-7.6.tar.bz2"
>> SRC_URI[md5sum] = "3a6f5952fd1bcf0eefb9c7c087acbfc9"
>>
>>
>> inherit pkgconfig
>>
>> S = "${WORKDIR}/ipset-7.6"
>>
>> RDEPENDS_${PN} += "libmnl"
>
