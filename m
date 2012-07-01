Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83412E013D4
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2012 09:23:06 -0700 (PDT)
Received: (qmail 24465 invoked by uid 1003); 1 Jul 2012 16:23:05 -0000
Received: from unknown (HELO ?192.168.1.114?)
	(philip@opensdr.com@96.240.167.50)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	1 Jul 2012 16:23:05 -0000
Message-ID: <4FF07968.8040103@balister.org>
Date: Sun, 01 Jul 2012 12:23:04 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
	<4FEACDE6.7040701@r-finger.com>
	<83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
	<4FEB69BB.2080906@r-finger.com>
	<02DD1E77-2FBE-413A-B852-6DC3EEC6A7E2@beagleboard.org>
	<4FEC0B65.5060104@r-finger.com>
In-Reply-To: <4FEC0B65.5060104@r-finger.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 01 Jul 2012 16:23:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/28/2012 03:44 AM, Tomas Frydrych wrote:
> Hi Koen,
>
> On 27/06/12 22:58, Koen Kooi wrote:
>> I have no problem with poky-the-distro, I have a problem with
>> poky-the-buildsystem. I warned mallum about this confusion years ago,
>> but you know how stubborn he can be :)
>
> The Yocto naming confusion is entirely of Yocto making, nothing at all
> to do with days of yore. There was never any confusion about what Poky
> was before Yocto, just unhappiness of some that Poky was not just a
> distro. :)
>
> Poky-the-buildsystem was simply necessary. OE-the-buildsystem is a
> wonderful, rich, community project, but one in a constant and
> unpredictable flux. This is great for tinkering, but PITA when trying to
> develop and long term maintain a product (much bigger problem than what
> sparked this thread for sure). In the absence of a clearly defined
> process for the OE-the-buildsystem Poky had to bring sanity to the
> buildsystem itself and could not be just a distro. It introduced QA,
> releases, it focused on facilitating customization and manageable
> upgrade paths (and even provided some documentation!).

Poky used to be a build system + distro based on OpenEmbedded. Anything 
else is marketing :) Poky is now a distribution built with Yocto Project 
tooling.

The Yocto Project is a project to help you create a distribution based 
on OpenEmbedded Core + some other things.

I think this is the most accurate description possible.

Philip
>
> Yocto is based on Poky; if it was not, it would need to create something
> just like Poky (the alternative would be asserting complete control over
> OE as a whole, not good I think). OE has benefited from the Poky effort
> over the last seven years, and it is a better ecosystem for it. At the
> same time, the OE systemd situation (a major system level change without
> adequate consideration of the upgrade path) suggests to me that the need
> for a sanitized OE-derivative remains.
>
> I shut up now. Really. Maybe. :-)
>
> (Perhaps I should add that I am not formally affiliated with the Yocto
> project in any way, my opinions are really my own, not someone else's or
> driven by a policy, I have a long history with Poky, so I am definitely
> biased in a particular way, I work with Poky on daily basis, and I
> tinker with Poky after hours.)
>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


