Received: from resqmta-ch2-10v.sys.comcast.net (resqmta-ch2-10v.sys.comcast.net [69.252.207.42])
 by mx.groups.io with SMTP id smtpd.web11.2578.1596479404128065905
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Aug 2020 11:30:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=hDgWZpPc;
 spf=pass (domain: comcast.net, ip: 69.252.207.42, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-12v.sys.comcast.net ([69.252.207.108])
	by resqmta-ch2-10v.sys.comcast.net with ESMTP
	id 2f6Pkh4uYG7kL2fDnkZeHS; Mon, 03 Aug 2020 18:30:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596479403;
	bh=YWmiWMn/09aJW72td+SZNDNXhkNTlnrQ9HTOAhFaEEQ=;
	h=Received:Received:To:From:Subject:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=hDgWZpPcBaHLTjJcspqiJYNh1djg7OWHWk+/FW+hIQXmsw9Z5xsMjfniYKTkS6U/Z
	 UmqWD0vKCNBe8FiX/dOOGWWf6+sUb09I4Pky5eemmir77rKrHNHVdJMoKyLxFT6t5i
	 0EsX50Sbf4D85OPQ8w2933/y/+QNZwXCSMN7mXYF99EGTMRTkvjIW3qH5oDmdLk5SW
	 pyvafokUxcmoHkpIfCy9pkMmb5qn6jJVUuT4zicUzzQwgDgwD1EJbBmz4wfRwtWqoW
	 7tFwHXENvo83LXjCGOVI586M6f3VozPvbHERTSh3Db3YUJyjqODOSxzXAVaFZ1075h
	 wF7dH/7RofAzw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-12v.sys.comcast.net with ESMTPSA
	id 2fDlk6lxuIeMx2fDmk8Fa8; Mon, 03 Aug 2020 18:30:02 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrjeeggdduvdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefvhffukffffgggtgfgsehtjeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeeiteethefhvdektefgkefhvdfhgeevfeehuedutdehfeefveffleeuieeuieefteenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
To: yocto@lists.yoctoproject.org
From: "Rob Prowel" <rprowel@comcast.net>
Subject: any kernel changes break module sysmtable
Message-ID: <573b2409-f9ac-eaf5-3a8b-a7c0f9aaceb5@comcast.net>
Date: Mon, 3 Aug 2020 14:30:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

More hassle dealing with vendor supplied yocto distro.

In the original "sumo" yocto release that the vendor sent us I could 
easily change their static flash image to a rootnfs image and tftpboot 
the kernel, bitstream, and DTB, and use nfs as a root filesystem.  This 
works great for development and not having to constantly go thru the 
slow flash update process.

Problem is that their updated release (also sumo) breaks any time I 
introduce a new kernel fragment like turning on rootnfs.  The resulting 
image will boot but all attempts to modprobe or insmod any modules 
result in the error

[    8.237421] xxx_dev: disagrees about version of symbol module_layout

and an modprobe says

xxx: disagrees about version of symbol module_layout
modprobe: ERROR: could not insert 'xxx': Exec format error


In the bbappend I APPEND the new config filepath and add the cfg file to 
SRC_URI...and it seemingly finds the config file just fine.

# -----------------------------------------------------------
FILESEXTRAPATHS_append := "${THISDIR}/cfg:"


SRC_URI += "file://rootnfs.cfg"

#SRC_URI += "file://debug.cfg"
#SRC_URI += "file://networking.cfg"


The fragment itself just allows for IP autoconfig, enables NFS 
filesystem (in kernel, not modules), and brings in the DNS resolver.

# -------------------------------------------------------
CONFIG_IP_PNP=y
CONFIG_IP_PNP_DHCP=y
CONFIG_IP_PNP_BOOTP=y
CONFIG_IP_PNP_RARP=y

CONFIG_DNS_RESOLVER=y

CONFIG_NFS_FS=y
CONFIG_NFS_V2=y
CONFIG_NFS_V3=y
CONFIG_NFS_V4=y

CONFIG_PNFS_FILE_LAYOUT=y

CONFIG_ROOT_NFS=y

CONFIG_GRACE_PERIOD=y
CONFIG_LOCKD=y

CONFIG_SUNRPC=y
CONFIG_SUNRPC_GSS=y


Where in the process would the kernel modules and the kernel be getting 
out of sync when I make a change?  Even forced modules loading fails.


