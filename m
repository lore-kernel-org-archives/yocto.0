Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA74E01482;
	Fri, 28 Jun 2013 05:57:40 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5SD4Gwr031579; Fri, 28 Jun 2013 14:04:16 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ANk-HyGSpIDW; Fri, 28 Jun 2013 14:04:16 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5SD4ASA031575
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 28 Jun 2013 14:04:11 +0100
Message-ID: <1372424223.9930.257.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 28 Jun 2013 13:57:03 +0100
In-Reply-To: <51CD86F1.7090409@windriver.com>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
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
X-List-Received-Date: Fri, 28 Jun 2013 12:57:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-06-28 at 08:52 -0400, Bruce Ashfield wrote:
> On 13-06-28 04:51 AM, Richard Purdie wrote:
> > Hi Bruce/Darren,
> >
> > My attention was drawn to the existence of poky-extras. This was really
> > a short term gap filling repository and I think the time has come to
> > remove it. There are basically two chunks of code in there.
> >
> > The meta-linaro pieces in there haven't been touched in two years and
> > are therefore dead. I think we should delete them to alleviate any
> > confusion.
> >
> > The kernel pieces have been touched more recently. Some moved into the
> > core, mostly its just example boiler plate type code now. I think this
> > needs moving to a better named repository if its still wanted/useful, or
> > we delete it. I personally don't have a strong preference.
> >
> > Can someone take care of sorting this out?
> 
> I can take care of finding it a new home. I use the repo daily, and keep
> bumping it with examples with each new kernel update or release. I was
> working on some urlremapper code for the layer, to replace the old
> boiler plate "uncomment this" examples that are current in the recipes ..
> that work has been backgrounded, but I can pick it up again as part
> of relocating the changes.
> 
> I'm out of the office for the next week and a half, but can have a look
> after that. Does that timeframe work ?

Yes, its not urgent and I don't want to remove something people use. I
do think that this would better as a meta-yocto-kernel or something
similar. How about we simply rename it to that and delete meta-linaro
from it?

Cheers,

Richard



