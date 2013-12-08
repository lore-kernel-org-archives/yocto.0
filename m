Return-Path: <mikelewis@alphalem.com>
Received: from oproxy1-pub.mail.unifiedlayer.com
	(oproxy1-pub.mail.unifiedlayer.com [66.147.249.253])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9B2C9E007A8
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2013 14:16:40 -0800 (PST)
Received: (qmail 21909 invoked by uid 0); 8 Dec 2013 22:16:37 -0000
Received: from unknown (HELO box891.bluehost.com) (69.195.124.91)
	by oproxy1.mail.unifiedlayer.com with SMTP; 8 Dec 2013 22:16:37 -0000
Received: from [50.202.37.133] (port=11871 helo=[10.12.4.243])
	by box891.bluehost.com with esmtpsa (TLSv1:CAMELLIA256-SHA:256)
	(Exim 4.80) (envelope-from <mikelewis@alphalem.com>)
	id 1VpmeT-0000ei-EX
	for yocto@yoctoproject.org; Sun, 08 Dec 2013 15:16:37 -0700
Message-ID: <52A4EFC4.7070600@alphalem.com>
Date: Sun, 08 Dec 2013 14:16:36 -0800
From: Mike Lewis <mikelewis@alphalem.com>
Organization: Alphalem
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Identified-User: {2749:box891.bluehost.com:alphalem:alphalem.com}
	{sentby:smtp auth 50.202.37.133 authed with
	mikelewis+alphalem.com}
Subject: Java and scons
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 08 Dec 2013 22:16:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to put together a package recipe that builds some software 
using the scons build system. The software depends on openjdk-6-jdk and 
the SConscript fails when it tries to get the output of "java -version", 
so I believe I'm not setting up the Java dependency correctly. The build 
works fine for my x86 host system, in which I do have Java installed.

I've followed the meta-java instructions to set the PREFERRED_* 
according to openjdk-6. I've also got "openjdk-6-jdk" in DEPENDS in the 
recipe. Is there anything else I'm missing?

Thanks,
Mike

