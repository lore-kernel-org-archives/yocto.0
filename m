Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.52782.1629286960247469233
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 04:42:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1mGJxt-0004BV-44; Wed, 18 Aug 2021 13:42:37 +0200
Message-ID: <56e5332da238e42ad2ea05c3e8a38a5926f3a5dc.camel@delisys.ch>
Subject: Re: [yocto] raspberrypi GPIO #raspberrypi
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
Date: Wed, 18 Aug 2021 13:42:26 +0200
In-Reply-To: <Xgw8.1629284369935190708.ztUj@lists.yoctoproject.org>
References: <Xgw8.1629284369935190708.ztUj@lists.yoctoproject.org>
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1629286960;b6e88e6f;
X-HE-SMSGID: 1mGJxt-0004BV-44
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-08-18 at 03:59 -0700, yasminebenghozzi6@gmail.com wrote:
> Hello, 
> 
> I have a problem importing python RPi.GPIO in yocto, not found, while
> they should be there only by cloning the meta-raspberry right? 

There is a recipe for RPi.GPIO available in meta-raspberrypi [1]. I
doubt that it's installed in any of the default images. You should add
it to your image by appending to the IMAGE_INSTALL variable. See the
Customizing Images section in the manual [2] for more information.

[1]: https://layers.openembedded.org/layerindex/recipe/5769/
[2]:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usingpoky-extend-customimage

> Any answer please on how to get them? 
> thank you


