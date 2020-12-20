Received: from resqmta-ch2-06v.sys.comcast.net (resqmta-ch2-06v.sys.comcast.net [69.252.207.38])
 by mx.groups.io with SMTP id smtpd.web10.30936.1608503357959276151
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Dec 2020 14:29:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=Ph3WQh9M;
 spf=pass (domain: comcast.net, ip: 69.252.207.38, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-17v.sys.comcast.net ([69.252.207.113])
	by resqmta-ch2-06v.sys.comcast.net with ESMTP
	id r6MzkSZnWbBITr7CXkTi3U; Sun, 20 Dec 2020 22:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1608503357;
	bh=ky+5t5Ujv8hGllNgCCSWrjhUD9KoVNSOZUyhPGaP3r8=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=Ph3WQh9M0lGj9Ehb3LjealbJ2n34pikhfCyv5Is9HOWMHo4aTzzpn3zz/964nxVM3
	 G6DR2KjuRAsmJj2SyLOapDX3cLpNw2bJsjFfeRk5YyWyU8VUhd3GbGudVFk47e/wge
	 /6R/0jBfR2ENAbrDY73TTwF3jIt+t2Jyp03HJtn8K4ZtAeTyAMjqU70dLegSxcciRf
	 cacaTwxhahrQhlMXTROYt21oih9eCLuBA4L1PlT/dkSXdx/+WVdewEDSSQKMlv67x2
	 GR+1rtXndMdxv3Fkb8S4JwivfyeZAnTANR72X07DbfaBHM4yXn6wP3uuyRxOrT1Sj5
	 h2ibwQaob3QgQ==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-17v.sys.comcast.net with ESMTPSA
	id r7C2kR17xhgVpr7CWk2vNu; Sun, 20 Dec 2020 22:29:16 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgedujedrvddttddgudeilecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddunecunecujfgurhepuffvfhfhkffffgggjggtgfesthejredttdefheenucfhrhhomheptfhosgcurfhrohifvghluceorhhprhhofigvlhestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepgedvhfekgeetudeuiedtudektefhffeukeevgfettdeggfettedvgedvvdetleeunecukfhppeejfedrudejgedrvdegrdegvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegluddtrddurdduuddruddtvdgnpdhinhgvthepjeefrddujeegrddvgedrgedvpdhmrghilhhfrhhomheprhhprhhofigvlhestghomhgtrghsthdrnhgvthdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehrphhjuggrhiestghrrghshhgtohhurhhsvgdrtggr
X-Xfinity-VMeta: sc=0.00;st=legit
Subject: Re: [yocto] Can a single recipe .bb file be used to generate both Python2 and Python3 packages?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
References: <20201220084627.Horde.bD0u6njbQfLERYjsoqBMhWn@crashcourse.ca>
From: "Rob Prowel" <rprowel@comcast.net>
Message-ID: <5f347009-f38b-34d2-59c3-bae74032fe87@comcast.net>
Date: Sun, 20 Dec 2020 17:28:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201220084627.Horde.bD0u6njbQfLERYjsoqBMhWn@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/20/20 8:46 AM, Robert P. J. Day wrote:

> I asked if that is what she was thinking of, but she was adamant
> that she remembers a single recipe .bb file that could do this.
> Is there such a thing? I suspect one could hack something up,
> but is such an approach considered standard? Or even doable?

Doable?  Yes...Smart to do? IMHO, absolutely not.

With the recipe class methods that accomplish each stage of the build 
you can customize them any way you want, but at the expense of 
maintaining clear intent and keeping it maintainable.

Your initial approach of using common includes and a heirarchical 
inheritance for separate recipes makes more sense.

