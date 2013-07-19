Return-Path: <Maxin.John@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C5C96E01492
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 05:54:54 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Fri, 19 Jul 2013 14:54:47 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 73BF6288FCE;
	Fri, 19 Jul 2013 14:54:47 +0200 (CEST)
Date: Fri, 19 Jul 2013 14:54:47 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Rich Bayliss <richbayliss@gmail.com>
Message-ID: <20130719125447.GA37574@sestofb10.enea.se>
MIME-Version: 1.0
In-Reply-To: <CAHLvMfaDVCOe925=5LK_p_M+wUNf7CzbvBXC0p97tnS1SqEBig@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding Python support to build
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
X-List-Received-Date: Fri, 19 Jul 2013 12:54:57 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

> I have added a recipe to my build which RDEPENDS_${PN} = "python".
> Although the package doesn't "need" python to run, it exposes a Python
> library which I would like to use on the system in a Python script.
RDEPENDS on "python-math" should do the trick. 

RDEPENDS_${PN} = "python-math" 

<snip>
> Rich Bayliss

Best Regards,
Maxin

