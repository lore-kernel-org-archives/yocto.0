Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C338FE00348;
	Fri, 28 Jun 2013 06:56:52 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5SE3XvT002618; Fri, 28 Jun 2013 15:03:33 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LpldzHm1J0CF; Fri, 28 Jun 2013 15:03:33 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5SE3UqX002614
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 28 Jun 2013 15:03:31 +0100
Message-ID: <1372427783.9930.258.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 28 Jun 2013 14:56:23 +0100
In-Reply-To: <51CD9264.2040609@windriver.com>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>, yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Fri, 28 Jun 2013 13:56:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-06-28 at 09:40 -0400, Bruce Ashfield wrote:
> On 13-06-28 09:22 AM, Rifenbark, Scott M wrote:
> > All I need is the name to make some initial changes.
> 
> Personally, I'm fine with 'meta-yocto-kernel'. Naming things is
> never easy, so I won't agonize over whether or not an "extras"
> should be on the end. But the name should be clear that it isn't
> the main yocto kernel, it's just a few crappy bbappends that make
> working with it locally easier for some :)
> 
> So my only counter proposal is: meta-yocto-kernel-extras
> 
> I'm going to de-crapify the bbappends so they are more useful, and
> have started on that work, but haven't finished it yet.

No strong feelings here. I just wiped out meta-linaro from there (hoping
Darren won't mind) and that checksums.ini file.

Cheers,

Richard


