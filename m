Received: from resqmta-ch2-02v.sys.comcast.net (resqmta-ch2-02v.sys.comcast.net [69.252.207.34])
 by mx.groups.io with SMTP id smtpd.web10.52483.1597695389249154165
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 13:16:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=Bq9d8Fw9;
 spf=pass (domain: comcast.net, ip: 69.252.207.34, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-20v.sys.comcast.net ([69.252.207.116])
	by resqmta-ch2-02v.sys.comcast.net with ESMTP
	id 7lXGkpSQYP03C7lYSkLBNg; Mon, 17 Aug 2020 20:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1597695388;
	bh=j53XC5KsUSuFFPe71SrQ5d15C6jzMj69K+PmsGe1y7g=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=Bq9d8Fw9UFB+PxAJq99wqpOppcIlM/AFYsmIs4S+Mf3tkgBLdp+De0Z4zfZzz/NrI
	 nFsVWAQmJhQd02hxJtGb3PWDgwqqfJro3sjrkmAu2p7lrmwzodqZ1AEPvVy3e3vwaj
	 dNyv+O4Xol+xhglqGqUHJTwdCVvpBfuA2qdLJPe3iroeFT6BGZQMC+O/fb7JZLtmkC
	 vHAvBoGwymZRZtVv062HF8DaRkl3D8vtWZ8WtjWaCUOzAQEQf+zhFMCS0OcIJ+cjpy
	 9RkcqCUnmfzFOD5CceuHzIFAnzFBglQC+iUc6TY8FXdYQrexYBN8TpFQ5wzDPYJu2B
	 P1qTZHCHgvkNw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-20v.sys.comcast.net with ESMTPSA
	id 7lYQkBCX7Hxi27lYRk6CHX; Mon, 17 Aug 2020 20:16:27 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedruddtgedgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthejredttdefheenucfhrhhomheptfhosgcurfhrohifvghluceorhhprhhofigvlhestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepueeivdeuieeftdeujeetffetgfeutdffvdelgefhheelffdtjeehffevieeitdegnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepkhifvghihhhmrghnnhesohhuthhlohhokhdrtghomh
X-Xfinity-VMeta: sc=-100.00;st=legit
Subject: Re: [yocto] pkg-config dependencies?
To: Konrad Weihmann <kweihmann@outlook.com>, yocto@lists.yoctoproject.org
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
 <CANNYZj_e+_H1+MKGDGeDnz92GS8JkvTvCLwFw=rQRMC+iFBpGg@mail.gmail.com>
 <AM7PR05MB6881CBB43DD119169321ECE7A85F0@AM7PR05MB6881.eurprd05.prod.outlook.com>
From: "Rob Prowel" <rprowel@comcast.net>
Message-ID: <4a3af635-6f5b-1e1c-6280-5ea76c184598@comcast.net>
Date: Mon, 17 Aug 2020 16:16:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <AM7PR05MB6881CBB43DD119169321ECE7A85F0@AM7PR05MB6881.eurprd05.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2020-08-17 15:38, Konrad Weihmann wrote:
> Did you had a look at 
> https://github.com/kraj/meta-openwrt/blob/master/recipes-networking/ipset/ipset_6.38.bb 
> yet?
> That pretty much looks like the one you were looking for, but for an 
> older version, right?
> Maybe you can try to use that recipe as a basis for your update package
> 

Thanks for the suggestion, but that breaks it worse than the "from 
scratch" recipe.

At the point I was at, I just need to know how to "correctly" make 
PKG_CONFIG_PATH locate the libmnl.pc that already exists and is a 
requirement for other packages.

Need a better explanation of environment variables that are available 
during the tasks phases.  Since libmnl is already available then in 
theory it should just be pointing the PKG_CONFIG_PATH correctly.
