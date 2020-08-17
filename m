Received: from resqmta-ch2-11v.sys.comcast.net (resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
 by mx.groups.io with SMTP id smtpd.web12.47788.1597684453064929342
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 10:14:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=nC4XlXWO;
 spf=pass (domain: comcast.net, ip: 69.252.207.43, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-09v.sys.comcast.net ([69.252.207.105])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id 7ewXki9rCPdj97ii3kRaNh; Mon, 17 Aug 2020 17:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1597684451;
	bh=br413C1B+HN0gJs3PeK8ujkScmBw9q/2GHG4TC7AWpI=;
	h=Received:Received:From:Subject:To:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=nC4XlXWOEyx8ZEL+vDOwONXObZofji7mGwtES0l8lJAJR+ozLq/Yw44cmay3BJlXA
	 kXcECEzYJjOKFndflv8ymQQwwqdkS4evi1lDwB4LFYx2IHMbNihadL3IW64BYflz7M
	 UAJKUGUDRMUIEJ+EV/Y4UHLzI99qkcT/NVpHoEUtO6e+HDGLC6NZrF8LdMe+7Hk1WJ
	 /ImxuVawJEUQ2FGARJbxIsPGdye3pFYljFNzNHn47tMeVsGZpylbr5hz0uQe8TYrKH
	 kckX1JX9xB9lMD+G+EO+KphqxptQPfFqFixuGO8MSEwPuvhK27bFWmaL54TWfdubEC
	 F2dh9wziZk6pQ==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-09v.sys.comcast.net with ESMTPSA
	id 7ihhkWqUdOgom7ii3kh3PM; Mon, 17 Aug 2020 17:14:11 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedruddtgedgudejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhuffvkffffgggtgfgsehtjeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeehjeelgeelhfehkeefueffvdfhhffhjeefieefvdekkeekgefhffdtveefvdekueenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
From: "Rob Prowel" <rprowel@comcast.net>
Subject: pkg-config dependencies?
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
Date: Mon, 17 Aug 2020 13:13:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I'm trying to add the ipset utility to my arm build so that I can group 
IP/ports for use in tc and netfilter.  I was able to update the vendor 
supplied iptools2 recipe to install tc and iptables, but ipset is a 
fresh recipe, not included in another existing layer.

I'm adding the following in its bb file:

# -----------------------------------------------------------------
SRC_URI =  "file://ipset-7.6.tar.bz2"
SRC_URI[md5sum] = "3a6f5952fd1bcf0eefb9c7c087acbfc9"


inherit pkgconfig

S = "${WORKDIR}/ipset-7.6"

RDEPENDS_${PN} += "libmnl"

FILES_${PN} =  ""
# list will be populated once I know what the package wants to install

do_configure(){
         ./configure --prefix=/ --host=arm-linuxeabi
}

do_compile(){
         make DESTDIR=${D}
}

do_install(){
         oe_runmake install DESTDIR=${D}
}

# -----------------------------------------------------------------

problem is that it depends on libmnl (which already exists as a lower 
layer recipe), and the ipset configure script barfs on pkg-config with 
the following message.

| checking whether ln -s works... yes
| checking for libmnl... no
| configure: error: Package requirements (libmnl >= 1) were not met:
|
| No package 'libmnl' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables libmnl_CFLAGS
| and libmnl_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| WARNING: exit code 1 from a shell command.


the PKG_CONFIG_PATH variable seems correct under devshell, but there is 
no libmnl.pc file in there.  How do I force libmnl to create and stage a 
proper pkg-config .pc file where it needs to be?


