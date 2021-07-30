Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web12.21064.1627632354787590093
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 01:05:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1m9NWh-0006ky-Kq; Fri, 30 Jul 2021 10:05:51 +0200
Message-ID: <4d53db74437d5a537fbddfc98193b18b35706acd.camel@delisys.ch>
Subject: Re: [yocto] (Go) Library for configuring Yocto based boxes?
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: Christofer Dutz <christofer.dutz@c-ware.de>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 30 Jul 2021 10:05:51 +0200
In-Reply-To: <AM7PR05MB68079F0EE9AA57AAC765E903A2EC9@AM7PR05MB6807.eurprd05.prod.outlook.com>
References: 
	<AM7PR05MB68079F0EE9AA57AAC765E903A2EC9@AM7PR05MB6807.eurprd05.prod.outlook.com>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1627632355;c4e38def;
X-HE-SMSGID: 1m9NWh-0006ky-Kq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-07-30 at 07:43 +0000, Christofer Dutz wrote:
> Hi all,
>  
> I’m very new to the Yocto world.
>  
> We are currently working on migrating away from OpenWRT based edge
> devices towards ones that we now have Yocto builds for.
>  
> All seems to be working nicely on the yocto side.
>  
> Our application uses a baseline configuration in order to connect to
> our cloud service and there it fetches it’s configuration (We’ve got a
> cellular fallback if connectivity doesn’t work at all).
>  
> With OpenWRT there was a tool called UCI which even had a Go wrapper
> which we used to apply the configuration to the box (set IP addresses,
> connect to WiFi neworks, configure the serial ports etc.)
>  
> Is there some equivalent in the Yocto world?
>  

The OpenWRT wiki has a section on porting UCI to different linux
distributions [1], but you can probably skip that completely. Searching
for UCI in the recipe index [2] yields a result from the meta-openwrt
[3] layer. I would start with adding that layer and using the UCI
recipe from there.

[1]: https://openwrt.org/docs/techref/uci#usage_outside_of_openwrt
[2]:
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=uci
[3]: https://github.com/kraj/meta-openwrt

> I would like to avoid generating the file content in the /etc directory
> by hand and firing „restart“ commands to the corresponding services, if
> there isn’t a better way.
>  
> Help greatly appreciated :-)
>  
> Chris
> 

