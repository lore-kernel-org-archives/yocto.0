Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by mx.groups.io with SMTP id smtpd.web12.1704.1587369395946121565
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 00:56:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: 2net.co.uk, ip: 212.227.126.131, mailfrom: chris@2net.co.uk)
Received: from [192.168.1.126] ([82.8.164.237]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.163]) with ESMTPSA (Nemesis) id
 1MORN0-1jaoEq49gk-00PwQX; Mon, 20 Apr 2020 09:56:31 +0200
Reply-To: chris@2net.co.uk
Subject: Re: [yocto] how to establish a link between source code and s specific execuable #yocto
To: zhangyifan46@huawei.com, yocto@lists.yoctoproject.org
References: <RikM.1587367031772173274.5Exh@lists.yoctoproject.org>
From: "csimmonds" <chris@2net.co.uk>
Organization: 2net
Message-ID: <8da7ca40-3ff9-4ce4-fcfc-09790997bd65@2net.co.uk>
Date: Mon, 20 Apr 2020 08:56:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <RikM.1587367031772173274.5Exh@lists.yoctoproject.org>
X-Provags-ID: V03:K1:OK2CWmoZB64/sdiafdBkIUjlWWM+mqtlrJUY9szXqOv9AqTRC4l
 xYzoW7zjgjTGMQ4mYFll4oX8dMqes7jOVGDjI6NAsB8LkJLWwZE7MLpMa44DYaYebH/02hI
 9RjX3WWG8kI/S9y5f0nFvOnvl0MDUVKBE/72gwGkKavq/ljd4EXwdPXU8YSQaCpoOQ9tHX+
 nr6uhzW/m8jJRGOBJWPfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BxpUA29kHvA=:xSlkovOdQ58pYjLiE1k2sl
 CQ6XaVk36zZicdgYU5uK+JouT+t3HhOByRQRQBY1wdd3bJ1ri5a3ISxZPjs1p96q0RZfW4nsc
 9zJ/bqcOrNGPzHFsVUsuA/kfSl5jza3tixx/wRgEtQZdFlpg6s8ysDeV441J1hM5OyhBjYa4E
 SyYUtNgrPbC2PiASCrPzJB4goj66ah/gHn52I8/5IH/YvQ27K4yBvQDs93MsrBp6e1elNReP+
 ug182t9yIzxVKCIlyt8vuW0Z2CCZx384AIRhQTy9zfmkNqVVzJgzXBiGV6YUji2WfO/jQ4aUB
 kFTqyuL3f48sxtE1lrS87Vkl+JpEY+JliqMdyIk+cXDyIYSVsZoZR65Guq8S8sEDa7QqVTL+g
 M6pPe/ZtnMZimwmukxUe1aTBnzQlGpIhxTLKpSMUearN9/3INUfB9zNE9gU9ke1k9ZSXu+1x4
 mdr44oKNH+JdhA2fZtyGv1LtCxLXLBALnka03NsnYFKs1Rif6qeEol7MwahLND5iQdGtFTQkr
 tlAeuA0aJ6VBcatcVWTwiuhaAUPePFnnC+sOnzf78v/KVlL7zO6pwuUwR4yBQ0fD8AcVNUfue
 8/TmNrgT+tpyl8mE/V6J+MVTGqCCuw+oVv2iwQ0vU98cwtMgWa9oU/zhwfpuuwocQ78TnTCIJ
 Ah5q8CfEtWrj6Vfc77JVGD936aYO1p+sxcgZzjiiptuWwA1WsERS5xlfdhqLRGWOTBGwnwNbI
 n+7vs7kP31YL8tTLdNV2Pk6GoTRFo56JGOoGXfzzi2JjR84lkBozXylVrNawqonPu3JqY1tlh
 /8drqBVhUwMDTj+AMGlk7xpqIC9aIZxbstfyLIBk7Q3bSPTS3lk8EmE9+wfszBrEmrUt75V
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit


On 20/04/2020 08:17, zhangyifan46@huawei.com wrote:
> Hello,
> I have a question about the question, how to establish a link between
> source code and s specific execuable.
> Let me explain this.
> For example ,  the output of a project has many excutables,like lzma,xz,
> etc. Then i'd like to know what code(.c files) produces xz, what code
> produces lzma. I know log.do_compile can provide clue about it(like gcc
> -o xz xxx.c , but it is indirective and also confusing). Dose yocto
> provide users with a clearer way for the link?
> Also, I am not sure if objdump shows all the headers of the execuable.
> thanks 


If you have compiled the executables with debug info then you can use
'objdump --dwarf' and look for the DW_AT_name and DW_AT_comp_dir
records. They will give you the full path to each source file at the
time of compilation


> 
> 
> 


-- 
Chris Simmonds, trainer and consultant at 2net
http://www.2net.co.uk
Author of "Mastering Embedded Linux Programming"
