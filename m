Received: from resqmta-ch2-11v.sys.comcast.net (resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
 by mx.groups.io with SMTP id smtpd.web12.53505.1597700502524935233
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 14:41:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=KOiBuBwE;
 spf=pass (domain: comcast.net, ip: 69.252.207.43, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-04v.sys.comcast.net ([69.252.207.100])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id 7mMbkildVPdj97msvkSRDS; Mon, 17 Aug 2020 21:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1597700501;
	bh=CIrSeTlXAQwYuGPI39hLQCZC1KSIly2ord0XykA5vmI=;
	h=Received:Received:Subject:From:To:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=KOiBuBwE4eUvwhADAhYqRn5OEzrLH3ORQs51yn0icIe+jSX65NGUmqdFHD+TERJhV
	 LfLxN9x6/hFNvjqazg++t8NRWIZKJG6P8f1rrJxlJ7HXDMlLza3tgXMRyv61ki4dIA
	 KD2fRakOP+1C2ZDV//zdXseG6ho6VBUWQJIvp7CCMBOybmMbj2S2BtFkhkGmZfOYkb
	 sJJdmEOQF7VTGERWjI0WQnsMHODS+n9UsWbQP32Dldy9ecfnmWf5OAjsfk3JkYqlhW
	 d4mODdV5GtyjjJD+s/6EhDE7AqXXiDB5cyZoLduL8Tbwg6ndfkoAXxDGPKVRNjUiUf
	 WxSYp/ZNalYZw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-04v.sys.comcast.net with ESMTPSA
	id 7mstkeGOFTiZS7msukgPns; Mon, 17 Aug 2020 21:41:41 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedruddtgedgjedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefuhffvfhfkffgfgggjtgfgsehtkeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeejuefhfffhvddtudegveektdetuedukeeuheegtdfgfeetteefhfdvuedvjeevffenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
Subject: Re: [yocto] pkg-config dependencies?
From: "Rob Prowel" <rprowel@comcast.net>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <162C1D8BA0DB625C.7353@lists.yoctoproject.org>
Message-ID: <5b3cdd4f-b966-d2ac-9e4a-efaf7cbe9a92@comcast.net>
Date: Mon, 17 Aug 2020 17:41:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <162C1D8BA0DB625C.7353@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2020-08-17 13:13, Rob Prowel wrote:
> I'm trying to add the ipset utility to my arm build so that I can group 
> IP/ports for use in tc and netfilter.  I was able to update the vendor 
> supplied iptools2 recipe to install tc and iptables, but ipset is a 
> fresh recipe, not included in another existing layer.
> 

As a followup...

Some of the inheritance and dependencies of the thread referenced 
openWRT bb file was necessary to make it work.

Should note that inheriting autotools hopelessly breaks the build, but 
as shown below, the ipset utility is correctly staged in my target 
image, with no errors or warnings.

Thanks, all!

# --------------------------------------------------------------------
DEPENDS = "libtool libmnl"
RDEPENDS_${PN} = "kernel-module-ip-set"

SRC_URI =  "file://ipset-7.6.tar.bz2;name=tar"
SRC_URI[md5sum] = "e107b679c3256af795261cece864d6d9"

# inherit autotools pkgconfig module-base
inherit pkgconfig module-base

S = "${WORKDIR}/ipset-7.6"

EXTRA_OECONF += "-with-kbuild=${KBUILD_OUTPUT} 
--with-ksource=${STAGING_KERNEL_DIR}"

do_configure(){
         ./configure --prefix=/ --host=arm-vendor-linuxeabi
}

do_compile(){
         make DESTDIR=${D}
}

do_install(){
         oe_runmake install DESTDIR=${D}

         rm -rf ${D}/share
         rm -rf ${D}/include
         rm -rf ${D}/lib

}

