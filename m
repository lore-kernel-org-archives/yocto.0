Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37F80E01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 08:21:15 -0700 (PDT)
Received: from [192.168.0.49] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id BDD0B600CA
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 16:03:47 +0100 (BST)
Message-ID: <4FEB2521.3020203@communistcode.co.uk>
Date: Wed, 27 Jun 2012 16:22:09 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20317992.tBZ1YY1I5v@helios>
In-Reply-To: <20317992.tBZ1YY1I5v@helios>
Subject: Re: LAMP layer
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
X-List-Received-Date: Wed, 27 Jun 2012 15:21:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 27/06/12 15:05, Paul Eggleton wrote:
> Hi all,
>
> In conjunction with the folks at Wind River I'm currently in the process of
> putting together a layer to support the traditional LAMP stack, and wanted to
> solicit some opinions on how this might be structured/named/etc.
>
> I think we have the "L" pretty much covered ;) and we have MySQL in meta-oe
> (I'm not convinced that's where it should stay, although perhaps it need not
> be tied to this layer either). So the layer would at the very least be adding
> Apache and PHP, with the possibility of web-related python and perl recipes
> being added at a later date.
>
> Some of the other things I'm looking at adding more immediately:
>
> * collectd
> * mysql-connector-odbc
> * phpMyAdmin
> * unixODBC
> * xdebug
>
> The question of how this should all be structured is still not fully
> determined. I'm thinking this ought to be at least one additional layer (i.e.
> meta-lamp, or some other name), even in the face of the proposed meta-
> networking, since the number of recipes in the LAMP layer is likely to grow
> over time and it's a specific set of functionality that people would explicitly
> select.
>
> I now have updated apache and modphp recipes building and working reasonably
> well, although further testing will be needed. Initially I'm prepared to
> maintain these recipes, however if not immediately at some point in the near
> future it would be good to see a maintainer step forward with more specific
> knowledge of these particular pieces of software.
>
> Thoughts?
>
> Cheers,
> Paul
>
>

Hi Paul,

I think this is a fantastic idea in general and if I remember correctly 
someone from Linaro was attempting to do something similar to this the 
other day - so I can't only be me who would appreciate something like this.

The one issue I have (initially) is why should it be limited to the 
Apache web server? There are a couple of good web servers out there 
which lend themselves much more to an embedded style development than 
(IMO) the bloat that is Apache.

For example:

Lighttpd (already in core)
nginx
Hiawatha (my personal favourite - I have a recipe I already use in 
conjunction with PHP)

I also remember someone from WindRiver posted recently regarding a 
meta-networking layer, which I also thought was a great idea if not only 
for (in my use case) tftp/net-snmp support all rolled up and supported. 
Maybe this could be a layer with that "section"?

i.e.

meta-networking
     meta-webserver (meta-l*mp?)
         recipes-*
         recipes-*
     meta-*
         ....
         ....

I'm sure you get the idea...

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


