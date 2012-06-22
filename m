Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 563EFE006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 07:58:50 -0700 (PDT)
Received: from [192.168.0.46] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id AD509600CA
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 15:58:05 +0100 (BST)
Message-ID: <4FE48866.5040600@communistcode.co.uk>
Date: Fri, 22 Jun 2012 15:59:50 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAG+EMXg1Gu3UbAeD6p7cpVy_cjhez60jTD6uBeLgVobsrE1aJQ@mail.gmail.com>
In-Reply-To: <CAG+EMXg1Gu3UbAeD6p7cpVy_cjhez60jTD6uBeLgVobsrE1aJQ@mail.gmail.com>
Subject: Re: Web Hob design update
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
X-List-Received-Date: Fri, 22 Jun 2012 14:58:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 22/06/12 15:16, Jim Kosem wrote:
> Hi,
>
> The update of the WebHob design is up on the wiki
> https://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design
>
> There's a PDF of all the screens of the latest version (v.1.9) of the 
> application 
> <https://wiki.yoctoproject.org/wiki/images/0/01/Webhob.1.pdf>, a link 
> to the GitHub <https://github.com/jkosem/Yocto-WebHob-Design> we have 
> setup for the HTML5 prototype development and a screencast of the 
> v.1.8 
> <https://wiki.yoctoproject.org/wiki/images/c/cb/Yocto_webHob.1.9_screencast.0.2.mov> 
> showing our design thinking around WebHob and our vision for how it 
> will work.
>
> As always, feedback is welcome. Thanks.
>
> -- 
> Jim Kosem
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I like the design screens in the PDF, however it looks like it will be a 
LOT of work! Just one question, how is it intended that this will be 
setup? Will it be a standalone application with included web server 
(twisted-web? I assume it will be python based...).

Are you intending to use Twitter's bootstrap (as that is what the design 
screens resemble)? How about initial implementation, will it be using 
websockets or event driven AJAX? What happens when two people try to 
edit things at the same time? Is there going to be a separate 
database/configuration files or will it be editing config files directly?

I'm not being awkward here, it's just the project I've been working on 
the last 6 months is using some very similar technology and these are 
some of the design decisions I've made (and still attempting to make!), 
so it's more interest and understanding design decisions than anything else.

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


